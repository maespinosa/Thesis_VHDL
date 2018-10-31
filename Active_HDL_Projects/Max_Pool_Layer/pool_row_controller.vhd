
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library Max_Pool_Layer; 
use Max_Pool_Layer.cnn_types.all;


entity pool_row_controller is
  generic(
       -- name : type := value
       g_data_width : integer := 16
  );
  port(
       i_clk 						: in STD_LOGIC;
       i_reset_n 				: in STD_LOGIC;
	   
	   --Data Parameters
       i_input_volume_size 		: in STD_LOGIC_VECTOR(7 downto 0);
       i_output_volume_size 	: in STD_LOGIC_VECTOR(7 downto 0);
	   i_pool_kernel_size			: in std_logic_vector(3 downto 0); 
       i_stride 						: in STD_LOGIC_VECTOR(3 downto 0);
	   o_channel_complete		: out std_logic; 
	   
	   --INPUT BUFFER SIGNALS
       i_inbuff_dout 				: in STD_LOGIC_VECTOR(15 downto 0);
       i_inbuff_almost_empty 	: in STD_LOGIC;
       i_inbuff_empty 			: in STD_LOGIC;
       i_inbuff_valid 				: in STD_LOGIC;
	   
	   --POOL ROW 0 SIGNALS 
	   i_PR0_dout 				: in std_logic_vector(15 downto 0); 
	   i_PR0_valid 				: in std_logic; 
	   i_PR0_full 					: in std_logic; 
	   i_PR0_almost_full 		: in std_logic; 
	   i_PR0_empty 				: in std_logic; 
	   i_PR0_almost_empty 		: in std_logic;  
	   
	   --POOL ROW 1 SIGNALS 
	   i_PR1_dout 				: in std_logic_vector(15 downto 0); 
	   i_PR1_valid 				: in std_logic;
	   i_PR1_full 					: in std_logic; 
	   i_PR1_almost_full 		: in std_logic;
	   i_PR1_empty 				: in std_logic; 
	   i_PR1_almost_empty 		: in std_logic;  
	   
	   --POOL ROW 2 SIGNALS 
	   i_PR2_dout 				: in std_logic_vector(15 downto 0); 
	   i_PR2_valid 				: in std_logic; 
	   i_PR2_full 					: in std_logic; 
	   i_PR2_almost_full 		: in std_logic;
	   i_PR2_empty 				: in std_logic; 
	   i_PR2_almost_empty 		: in std_logic;  
	   
	   
	   o_inbuff_rd_en 			: out std_logic;  
	   --POOL ROW WRITE AND READ ENABLE SIGNALS
	   o_PR0_din			: out std_logic_vector(15 downto 0); 
	   o_PR0_wr_en 			: out std_logic; 
	   o_PR0_rd_en				: out std_logic; 
	   o_PR1_din			: out std_logic_vector(15 downto 0); 
	   o_PR1_wr_en 			: out std_logic; 
	   o_PR1_rd_en				: out std_logic; 
	   o_PR2_din			: out std_logic_vector(15 downto 0); 
	   o_PR2_wr_en 			: out std_logic; 
	   o_PR2_rd_en				: out std_logic; 
	   
	   --MUX CONTROL SIGNALS
	   o_recycle_en 				: out std_logic; 
	   o_prime_PR0_en 		: out std_logic; 
	   o_prime_PR1_en		: out std_logic; 
	   o_prime_PR2_en 		: out std_logic; 
	   
	   -- SIGNALS TO SORTER 
	   o_sorter_data				: out array_type_9x16bit; 
	   o_sorter_data_valid	: out std_logic
	   
	   
  );
end pool_row_controller;

architecture arch of pool_row_controller is


type state_type is (IDLE, PRIME_ROW_0, PRIME_ROW_1, PRIME_ROW_2, PRIME_SORTER, ROW_STRIDE_SHIFT, COLUMN_STRIDE_SHIFT, P01_WAIT, P12_WAIT, P2S_WAIT, CHANNEL_CLEAR,CLEAR_COUNTERS);
signal current_state 		: state_type; 
signal next_state			: state_type; 

signal PR0_din				: std_logic_vector(15 downto 0); 
signal PR0_wr_en 			: std_logic; 
signal PR0_rd_en			: std_logic; 
signal PR1_din				: std_logic_vector(15 downto 0); 
signal PR1_wr_en 			: std_logic; 
signal PR1_rd_en			: std_logic; 
signal PR2_din				: std_logic_vector(15 downto 0); 
signal PR2_wr_en 			: std_logic; 
signal PR2_rd_en			: std_logic; 
	   

signal third_row_activate : std_logic; 
signal recycle_en 			: std_logic; 
signal prime_PR0_en 		: std_logic; 
signal prime_PR1_en 		: std_logic;
signal prime_PR2_en			: std_logic; 

signal pixel_counter		: unsigned(7 downto 0); 
signal column_counter		: unsigned(7 downto 0);
signal row_counter			: unsigned(15 downto 0);  
signal kernel_data			: array_type_9x16bit; 
signal sorter_data			: array_type_9x16bit; 
signal sorter_data_valid	: std_logic; 
signal stride_counter		: unsigned(3 downto 0); 

signal inbuff_rd_en			: std_logic; 
signal volume_processed		: std_logic; 
signal volume_rows_processed : unsigned(7 downto 0); 
signal output_rows_generated : unsigned(7 downto 0);
signal output_volume_size	: std_logic_vector(7 downto 0);  
signal channel_counter		: unsigned(15 downto 0); 
signal channel_complete		: std_logic; 


begin 


o_recycle_en 	<= recycle_en; 
o_prime_PR0_en 	<= prime_PR0_en;
o_prime_PR1_en 	<= prime_PR1_en; 
o_prime_PR2_en 	<= prime_PR2_en; 

o_PR0_din		<= PR0_din; 
o_PR0_wr_en 	<= PR0_wr_en; 
o_PR0_rd_en		<= PR0_rd_en;
o_PR1_din		<= PR1_din;   	   
o_PR1_wr_en 	<= PR1_wr_en; 
o_PR1_rd_en		<= PR1_rd_en; 
o_PR2_din		<= PR2_din;  
o_PR2_wr_en 	<= PR2_wr_en; 
o_PR2_rd_en		<= PR2_rd_en; 

o_sorter_data 	<= sorter_data;  
o_inbuff_rd_en  <= inbuff_rd_en; 
o_sorter_data_valid   <= sorter_data_valid;  
o_channel_complete	<= channel_complete; 
		

third_row_activate <= '1' when unsigned(i_pool_kernel_size) = 3 else  
					  '0';   

state_transitions: process(i_clk, i_reset_n) is 
begin 
	if(i_reset_n = '0') then 
		current_state <= next_state; 
	elsif(rising_edge(i_clk)) then
		current_state <= next_state; 
	end if; 
end process; 



next_state_comb : process(all) is 
begin

	recycle_en 			<= '0';  
	prime_PR0_en 		<= '0'; 
	prime_PR1_en 		<= '0'; 
	prime_PR2_en		<= '0';
	inbuff_rd_en		<= '0'; 
	
	PR0_rd_en 			<= '0'; 
	PR1_rd_en 			<= '0'; 
	PR2_rd_en 			<= '0'; 
	
	

	case current_state is 
	
		when IDLE => 
		
			inbuff_rd_en		<= '0';
			recycle_en <= '0'; 
			prime_PR0_en <= '1';
			prime_PR1_en <= '0'; 
			prime_PR2_en <= '0'; 

			
			if(i_inbuff_valid = '1' and channel_complete = '0') then 
				next_state <= PRIME_ROW_0; 
			elsif(channel_complete = '1') then 
				next_state <= CHANNEL_CLEAR; 
			else 
				next_state <= IDLE; 
			end if; 
			
		when PRIME_ROW_0 => 
			
			recycle_en <= '0'; 
			prime_PR0_en <= '1';
			prime_PR1_en <= '0'; 
			prime_PR2_en <= '0'; 
			
			if(i_inbuff_valid = '1' and i_inbuff_empty = '0' and i_PR0_almost_full = '0') then
							
				if(pixel_counter < unsigned(i_input_volume_size)) then 
					next_state <= PRIME_ROW_0; 
					inbuff_rd_en		<= '1'; 
				else 
					next_state <= P01_WAIT; 
					inbuff_rd_en		<= '0'; 
				end if; 
			end if; 
			
		when P01_WAIT => 
			next_state <= PRIME_ROW_1; 
				
		
		when PRIME_ROW_1 => 
			
			recycle_en <= '0'; 
			prime_PR0_en <= '1';
			prime_PR1_en <= '1'; 
			prime_PR2_en <= '0'; 
			
			if(i_inbuff_valid = '1' and i_inbuff_empty = '0' and i_PR0_almost_full = '0' and i_PR1_almost_full = '0') then 
				inbuff_rd_en		<= '1'; 
				if(pixel_counter < unsigned(i_input_volume_size)) then 
					PR0_rd_en		<= '1'; 
					next_state <= PRIME_ROW_1; 
				else 
					PR0_rd_en		<= '0'; 
					if(unsigned(i_pool_kernel_size) = 3) then 
						next_state <= P12_WAIT; 
					else 
						next_state <= P2S_WAIT; 
					end if; 
						
				end if; 
			end if; 

			
		when P12_WAIT => 
			next_state <= PRIME_ROW_2; 

		when PRIME_ROW_2 => 
			
			recycle_en <= '0'; 
			prime_PR0_en <= '1';
			prime_PR1_en <= '1'; 
			prime_PR2_en <= '1'; 
			
			if(i_inbuff_valid = '1' and i_inbuff_empty = '0' and i_PR0_almost_full = '0' and i_PR1_almost_full = '0' and i_PR2_almost_full = '0') then 
				inbuff_rd_en		<= '1'; 
				if(pixel_counter < unsigned(i_input_volume_size)) then 
					PR0_rd_en		<= '1'; 
					PR1_rd_en		<= '1'; 
					next_state <= PRIME_ROW_2; 
				else 
					PR0_rd_en		<= '0'; 
					PR1_rd_en		<= '0'; 
					next_state <= P2S_WAIT; 
				end if; 
			end if; 
		
		when P2S_WAIT => 
			next_state <= PRIME_SORTER; 
		
		when PRIME_SORTER => 
			inbuff_rd_en		<= '0'; 
			if(i_PR0_valid = '1' and i_PR0_empty = '0' and i_PR1_valid = '1'  and i_PR1_empty = '0' and i_PR2_valid = '1' and i_PR2_empty = '0') then 
				
				if(pixel_counter < unsigned(i_pool_kernel_size)) then 
					recycle_en <= '1'; 
					PR0_rd_en <= '1'; 
					PR1_rd_en <= '1'; 
					PR2_rd_en <= third_row_activate; 
					next_state <= PRIME_SORTER; 
				else 
					recycle_en <= '0'; 
					PR0_rd_en <= '0'; 
					PR1_rd_en <= '0'; 
					PR2_rd_en <= '0'; 
					next_state <= COLUMN_STRIDE_SHIFT; 
					-- if(column_counter < unsigned(i_input_volume_size)) then 
						-- next_state <= COLUMN_STRIDE_SHIFT; 
					-- else 
						-- next_state <= COLUMN_STRIDE_SHIFT; 
					-- end if; 
					
				end if; 

			end if; 
		
		when COLUMN_STRIDE_SHIFT => 
			inbuff_rd_en		<= '0'; 
			if(i_PR0_valid = '1' and i_PR0_empty = '0' and i_PR1_valid = '1'  and i_PR1_empty = '0' and i_PR2_valid = '1' and i_PR2_empty = '0') then 
				
				if(stride_counter < unsigned(i_stride)) then 
					recycle_en <= '1'; 
					PR0_rd_en <= '1'; 
					PR1_rd_en <= '1'; 
					PR2_rd_en <= third_row_activate; 
					next_state <= COLUMN_STRIDE_SHIFT; 
				else 
					recycle_en <= '0'; 
					PR0_rd_en <= '0'; 
					PR1_rd_en <= '0'; 
					PR2_rd_en <= '0'; 

					--next_state <= PRIME_SORTER;
					
					if(column_counter < unsigned(i_input_volume_size)) then 
						next_state <= COLUMN_STRIDE_SHIFT; --ROW_STRIDE_SHIFT; 
					else
						if(output_rows_generated < unsigned(output_volume_size)) then 
							next_state <= ROW_STRIDE_SHIFT; --COLUMN_STRIDE_SHIFT; 
						elsif (output_rows_generated = unsigned(output_volume_size) and column_counter = unsigned(i_input_volume_size)) then 
							next_state <= IDLE; 
							
						else 
							next_state <= ROW_STRIDE_SHIFT; 
						end if; 
							
					end if; 
					
				end if; 

			end if; 
		

		
		when ROW_STRIDE_SHIFT => 
			-- inbuff_rd_en		<= '1'; 
			recycle_en <= '0'; 
			prime_PR0_en <= '1';
			prime_PR1_en <= '1'; 
			prime_PR2_en <= '1'; 
			

			
			if(i_inbuff_valid = '1' and i_PR0_almost_full = '0' and i_PR0_empty = '0' and i_PR1_almost_full = '0' and i_PR1_empty = '0' and i_PR2_almost_full = '0') then 
				
				if(pixel_counter < unsigned(i_input_volume_size)) then 
					inbuff_rd_en <= '1'; 
					PR0_rd_en <= '1'; 
					PR1_rd_en <= '1'; 
					PR2_rd_en <= third_row_activate; 
					next_state <= ROW_STRIDE_SHIFT;
				else 
					inbuff_rd_en <= '0'; 
					PR0_rd_en <= '0'; 
					PR1_rd_en <= '0'; 
					PR2_rd_en <= '0'; 
					
					if(stride_counter < unsigned(i_stride)-1) then 
						next_state <= ROW_STRIDE_SHIFT;--COLUMN_STRIDE_SHIFT;  
					else 
						next_state <= CLEAR_COUNTERS;
					end if; 
					
				end if; 

			end if; 
			

		
		
		when CHANNEL_CLEAR => 
		
			if(i_PR0_empty = '0' or i_PR1_empty = '0' or i_PR2_empty = '0') then 
				next_state <= CHANNEL_CLEAR; 
				PR0_rd_en <= '1'; 
				PR1_rd_en <= '1'; 
				PR2_rd_en <= '1'; 	
			else 
				next_state <= IDLE; 
				PR0_rd_en <= '0'; 
				PR1_rd_en <= '0'; 
				PR2_rd_en <= '0'; 	
			end if;
		
		when CLEAR_COUNTERS => 
			inbuff_rd_en <= '0'; 
			PR0_rd_en <= '0'; 
			PR1_rd_en <= '0'; 
			PR2_rd_en <= '0'; 
			next_state <= PRIME_SORTER;
			recycle_en <= '0'; 
			prime_PR0_en <= '0';
			prime_PR1_en <= '0'; 
			prime_PR2_en <= '0'; 
			
								
								
			
		when others => 
			next_state <= IDLE; 
	
	end case; 
	
	
	
	
	
	
	

end process; 

 
sequential_logic: process(i_clk, i_reset_n) is 
begin 
	if(i_reset_n = '0') then 
		PR0_din				<= (others => '0'); 
		PR0_wr_en 			<= '0';   
		PR1_din				<= (others => '0'); 
		PR1_wr_en 			<= '0'; 
		PR2_din				<= (others => '0'); 
		PR2_wr_en 			<= '0'; 
		stride_counter 		<= (others => '0'); 
		
		kernel_data			<= (others => (others => '0')); 
		sorter_data			<= (others => (others => '0')); 
		pixel_counter		<= (others => '0'); 
		column_counter 		<= (others => '0'); 
		row_counter			<= (others => '0'); 
		sorter_data_valid   <= '0'; 
		volume_rows_processed <= (others => '0'); 
		volume_processed 	<= '0'; 
		output_rows_generated <= (others => '0'); 
		output_volume_size	<= (others => '0'); 
		channel_counter <= (others => '0'); 
		channel_complete	<= '0'; 
	
	elsif(rising_edge(i_clk)) then 
		PR0_din 			<= PR0_din; 
		PR0_wr_en 			<= '0';  
		PR1_din 			<= PR1_din;		
		PR1_wr_en 			<='0'; 
		PR2_din 			<= PR2_din;
		PR2_wr_en 			<= '0';  
		stride_counter		<= stride_counter; 
		
		kernel_data			<= kernel_data; 
		sorter_data			<= sorter_data;
		pixel_counter 		<= pixel_counter; 
		column_counter		<= column_counter; 
		row_counter			<= row_counter; 
		sorter_data_valid   <= '0'; 
		volume_rows_processed <= volume_rows_processed; 
		volume_processed 	<= volume_processed; 
		output_rows_generated <= output_rows_generated;
		output_volume_size	<= output_volume_size; 
		channel_counter <= channel_counter; 
		channel_complete <= channel_complete; 
	
		case current_state is 
		
			when IDLE => 
				volume_processed <= '0'; 
				output_volume_size <= '0' & i_input_volume_size(7 downto 1); 
				
				PR0_din				<= (others => '0'); 
				PR0_wr_en 			<= '0';   
				PR1_din				<= (others => '0'); 
				PR1_wr_en 			<= '0'; 
				PR2_din				<= (others => '0'); 
				PR2_wr_en 			<= '0'; 
				stride_counter 		<= (others => '0'); 
				
				kernel_data			<= (others => (others => '0')); 
				sorter_data			<= (others => (others => '0')); 
				pixel_counter		<= (others => '0'); 
				column_counter 		<= (others => '0'); 
				row_counter			<= (others => '0'); 
				sorter_data_valid   <= '0'; 
				volume_rows_processed <= (others => '0'); 
				volume_processed 	<= '0'; 
				output_rows_generated <= (others => '0'); 

				
				
				
			when PRIME_ROW_0 => 
			
				if(i_inbuff_valid = '1' and i_inbuff_empty = '0' and i_PR0_almost_full = '0') then
					if(pixel_counter < unsigned(i_input_volume_size)) then 
						pixel_counter 	<= pixel_counter + 1; 
						PR0_wr_en		<= '1'; 	
						PR0_din			<= i_inbuff_dout; 
					else 
						pixel_counter 	<= (others => '0');
						PR0_wr_en		<= '0'; 	
						PR0_din			<= (others => '0'); 
						
					end if; 
				end if; 
				
			when P01_WAIT => 
				pixel_counter <= (others => '0'); 
				PR0_wr_en 		<= '0'; 
				PR0_din			<= (others => '0'); 
				row_counter 	<= row_counter + 1; 

					
			when PRIME_ROW_1 => 

				if(i_inbuff_valid = '1' and i_inbuff_empty = '0' and i_PR0_almost_full = '0' and i_PR1_almost_full = '0') then 
					if(pixel_counter < unsigned(i_input_volume_size)) then 
						pixel_counter 	<= pixel_counter + 1; 
						PR0_wr_en		<= '1'; 
						PR0_din			<= i_inbuff_dout; 
						PR1_wr_en		<= '1'; 
						PR1_din 		<= i_PR0_dout; 
					else 
						pixel_counter 	<= (others => '0');
						PR0_wr_en		<= '0'; 
						PR0_din			<= (others => '0');
						PR1_wr_en		<= '0'; 
						PR1_din 		<= (others => '0'); 
						
					end if; 
				end if; 
				
			when P12_WAIT => 
				pixel_counter <= (others => '0'); 
				PR0_wr_en 		<= '0'; 
				PR0_din 		<= (others => '0'); 
				PR1_wr_en 		<= '0'; 
				PR1_din 		<= (others => '0'); 
				row_counter		<= row_counter + 1; 
		
			when PRIME_ROW_2 => 			
				if(i_inbuff_valid = '1' and i_inbuff_empty = '0' and i_PR0_almost_full = '0' and i_PR1_almost_full = '0' and i_PR2_almost_full = '0') then 
					if(pixel_counter < unsigned(i_input_volume_size)) then 
						pixel_counter 	<= pixel_counter + 1; 
						PR0_wr_en		<= '1'; 
						PR0_din			<= i_inbuff_dout; 
						PR1_wr_en		<= '1';
						PR1_din			<= i_PR0_dout; 
						PR2_wr_en		<= '1'; 
						PR2_din 		<= i_PR1_dout; 
					else 
						pixel_counter 	<= (others => '0');
						PR0_wr_en		<= '0'; 	
						PR0_din			<= (others => '0'); 
						PR1_wr_en		<= '0';
						PR1_din			<= (others => '0'); 
						PR2_wr_en		<= '0'; 
						PR2_din			<= (others => '0'); 
						
					end if; 
				end if;

			when P2S_WAIT => 
				pixel_counter <= (others => '0'); 
				PR0_wr_en 		<= '0'; 
				PR0_din 		<= (others => '0'); 
				PR1_wr_en 		<= '0'; 
				PR1_din 		<= (others => '0'); 
				PR2_wr_en		<= '0';
				PR2_din			<= (others => '0'); 
				row_counter		<= row_counter + 1; 
				
				volume_rows_processed <= volume_rows_processed + unsigned(i_pool_kernel_size); 
		
			when PRIME_SORTER => 
				stride_counter <= (others => '0'); 
				
				if(i_PR0_valid = '1' and i_PR0_empty = '0' and i_PR1_valid = '1'  and i_PR1_empty = '0' and i_PR2_valid = '1' and i_PR2_empty = '0') then 
					
					if(pixel_counter < unsigned(i_pool_kernel_size)) then 
						pixel_counter <= pixel_counter + 1;
						kernel_data(0 + 3*to_integer(pixel_counter)) <= i_PR0_dout; 
						kernel_data(1 + 3*to_integer(pixel_counter)) <= i_PR1_dout;
						kernel_data(2 + 3*to_integer(pixel_counter)) <= i_PR2_dout; 
						column_counter 	<= column_counter + 1; 
						PR0_din			<= i_PR0_dout; 
						PR0_wr_en 		<= '1'; 
						PR1_din 		<= i_PR1_dout; 
						PR1_wr_en 		<= '1'; 
						PR2_din 		<= i_PR2_dout; 
						PR2_wr_en		<= '1'; 
					else 
						output_rows_generated <= output_rows_generated + 1; 
						pixel_counter <= (others => '0'); 
						sorter_data <= kernel_data; 
						sorter_data_valid <= '1'; 
						column_counter <= column_counter; 
						PR0_din	<= (others => '0'); 
						PR0_wr_en 		<= '0'; 						
						PR1_din <= (others => '0'); 
						PR1_wr_en 		<= '0'; 
						PR2_din <= (others => '0');  
						PR2_wr_en 		<= '0'; 
					end if; 

				end if; 

			when COLUMN_STRIDE_SHIFT => 
				if(i_PR0_valid = '1' and i_PR0_empty = '0' and i_PR1_valid = '1'  and i_PR1_empty = '0' and i_PR2_valid = '1' and i_PR2_empty = '0') then 
					
					if(stride_counter < unsigned(i_stride)) then 
						stride_counter <= stride_counter + 1; 
						kernel_data(8) <= i_PR2_dout; 
						kernel_data(7) <= i_PR1_dout; 
						kernel_data(6) <= i_PR0_dout; 
						kernel_data(5) <= kernel_data(8); 
						kernel_data(4) <= kernel_data(7); 
						kernel_data(3) <= kernel_data(6); 
						kernel_data(2) <= kernel_data(5); 
						kernel_data(1) <= kernel_data(4); 
						kernel_data(0) <= kernel_data(3); 

						column_counter <= column_counter + 1; 
						PR0_din			<= i_PR0_dout; 
						PR0_wr_en 		<= '1'; 
						PR1_din 		<= i_PR1_dout; 
						PR1_wr_en 		<= '1'; 
						PR2_din 		<= i_PR2_dout; 
						PR2_wr_en		<= '1'; 
					else 
						stride_counter <= (others => '0'); 
						sorter_data <= kernel_data; 
						sorter_data_valid <= '1'; 
						column_counter <= column_counter; 
						PR0_din	<= (others => '0'); 
						PR0_wr_en 		<= '0'; 						
						PR1_din <= (others => '0'); 
						PR1_wr_en 		<= '0'; 
						PR2_din <= (others => '0');  
						PR2_wr_en 		<= '0'; 
						
						if(column_counter < unsigned(i_input_volume_size)) then 
							channel_counter <= channel_counter; 
							volume_processed <= '0'; 
						else
							if(output_rows_generated < unsigned(output_volume_size)) then 
								volume_processed <= '0'; 
							elsif (output_rows_generated = unsigned(output_volume_size) and column_counter = unsigned(i_input_volume_size)) then 
								--volume_processed <= '1' ; 
								channel_counter <= channel_counter + 1; 
								channel_complete <= '1'; 
							end if; 
						end if; 
					end if; 

				end if; 
				
				
		when ROW_STRIDE_SHIFT => 
			column_counter <= (others => '0');
		
			kernel_data <= (others => (others => '1')); 
			sorter_data <= (others => (others => '1')); 
			--sorter_data_valid <= '0'; 
			
			if(i_inbuff_valid = '1' and i_PR0_almost_full = '0' and i_PR0_empty = '0' and i_PR1_almost_full = '0' and i_PR1_empty = '0' and i_PR2_almost_full = '0') then 
				
				if(pixel_counter < unsigned(i_input_volume_size)) then 
					PR0_wr_en		<= '1'; 
					PR0_din			<= i_inbuff_dout; 
					PR1_wr_en		<= '1';
					PR1_din			<= i_PR0_dout; 
					PR2_wr_en		<= '1'; 
					PR2_din 		<= i_PR1_dout; 
					stride_counter	<= stride_counter;
					pixel_counter 	<= pixel_counter + 1; 
					row_counter 	<= row_counter; 
					
				else 				
					pixel_counter 	<= (others => '0');
					PR0_wr_en		<= '0'; 	
					PR0_din			<= (others => '0'); 
					PR1_wr_en		<= '0';
					PR1_din			<= (others => '0'); 
					PR2_wr_en		<= '0'; 
					PR2_din			<= (others => '0'); 
					
					
					if(stride_counter < unsigned(i_stride)-1) then 
						stride_counter <= stride_counter + 1; 
						row_counter		<= row_counter + 1; 
						volume_rows_processed <= volume_rows_processed + 1; 
					else 
						stride_counter <= (others => '0'); 
						row_counter		<= row_counter + 1;
						volume_rows_processed <= volume_rows_processed + 1; 
						pixel_counter 	<= (others => '0');
					end if; 
						
				end if; 

			end if; 
			
			
		when CHANNEL_CLEAR => 
			channel_complete <= '0'; 
			
		when CLEAR_COUNTERS => 		
			PR0_din				<= (others => '0'); 
			PR0_wr_en 			<= '0';   
			PR1_din				<= (others => '0'); 
			PR1_wr_en 			<= '0'; 
			PR2_din				<= (others => '0'); 
			PR2_wr_en 			<= '0'; 
			stride_counter 		<= (others => '0'); 
			
			kernel_data			<= (others => (others => '1')); 
			sorter_data			<= (others => (others => '1')); 
			pixel_counter		<= (others => '0'); 
			sorter_data_valid   <= '0'; 

			
		end case; 
		

				
	end if; 
end process;  
  

end arch;
