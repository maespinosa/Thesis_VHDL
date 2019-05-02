
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--library Max_Pool_Layer; 
--use Max_Pool_Layer.cnn_types.all;

library work; 
use work.cnn_types.all;


entity pool_row_controller is
	generic(
		-- name : type := value
		g_data_width : integer := 32
	);
	port(
		i_clk 					: in STD_LOGIC;
		i_reset_n 				: in STD_LOGIC;
		i_start					: in std_logic; 
		--Data Parameters
		i_input_volume_size 		: in STD_LOGIC_VECTOR(7 downto 0);
		i_output_volume_size 	: in STD_LOGIC_VECTOR(7 downto 0);
		i_pool_kernel_size		: in std_logic_vector(3 downto 0); 
		i_stride 				: in STD_LOGIC_VECTOR(3 downto 0);
		i_master_ack			: in std_logic; 
		o_channel_complete		: out std_logic; 
		--o_operation_complete   : out std_logic; 
		o_row_complete			: out std_logic; 
		o_busy					: out std_logic; 
		o_fsm_state				: out std_logic_vector(3 downto 0); 

		--INPUT BUFFER SIGNALS
		i_inbuff_dout 			: in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
		i_inbuff_almost_empty 	: in STD_LOGIC;
		i_inbuff_empty 			: in STD_LOGIC;
		i_inbuff_valid 			: in STD_LOGIC;

		--POOL ROW 0 SIGNALS 
		i_PR0_dout 				: in std_logic_vector(g_data_width-1 downto 0); 
		i_PR0_valid 				: in std_logic; 
		i_PR0_full 				: in std_logic; 
		i_PR0_almost_full 		: in std_logic; 
		i_PR0_empty 				: in std_logic; 
		i_PR0_almost_empty 		: in std_logic;  

		--POOL ROW 1 SIGNALS 
		i_PR1_dout 				: in std_logic_vector(g_data_width-1 downto 0); 
		i_PR1_valid 				: in std_logic;
		i_PR1_full 				: in std_logic; 
		i_PR1_almost_full 		: in std_logic;
		i_PR1_empty 				: in std_logic; 
		i_PR1_almost_empty 		: in std_logic;  

		--POOL ROW 2 SIGNALS 
		i_PR2_dout 				: in std_logic_vector(g_data_width-1 downto 0); 
		i_PR2_valid 				: in std_logic; 
		i_PR2_full 				: in std_logic; 
		i_PR2_almost_full 		: in std_logic;
		i_PR2_empty 				: in std_logic; 
		i_PR2_almost_empty 		: in std_logic;  

		--SIGNALS TO SORTER 
		i_sorter_ready			: in std_logic; 

		o_inbuff_rd_en 			: out std_logic;  
		--POOL ROW WRITE AND READ ENABLE SIGNALS
		o_PR0_din				: out std_logic_vector(g_data_width-1 downto 0); 
		o_PR0_wr_en 				: out std_logic; 
		o_PR0_rd_en				: out std_logic; 
		o_PR1_din				: out std_logic_vector(g_data_width-1 downto 0); 
		o_PR1_wr_en 				: out std_logic; 
		o_PR1_rd_en				: out std_logic; 
		o_PR2_din				: out std_logic_vector(g_data_width-1 downto 0); 
		o_PR2_wr_en 				: out std_logic; 
		o_PR2_rd_en				: out std_logic; 

		--MUX CONTROL SIGNALS
		o_recycle_en 			: out std_logic; 
		o_prime_PR0_en 			: out std_logic; 
		o_prime_PR1_en			: out std_logic; 
		o_prime_PR2_en 			: out std_logic; 

		-- SIGNALS TO SORTER 
		o_sorter_data			: out array_type_9x32bit; 
		o_sorter_data_valid		: out std_logic; 

		--ILA SIGNALS 
		ila_row_cntrl_PR0_din 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_PR0_wr_en 			: out std_logic; 
		ila_row_cntrl_PR0_rd_en			: out std_logic; 
		ila_row_cntrl_PR1_din 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_PR1_wr_en 			: out std_logic; 
		ila_row_cntrl_PR1_rd_en			: out std_logic; 
		ila_row_cntrl_PR2_din 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_PR2_wr_en 			: out std_logic; 
		ila_row_cntrl_PR2_rd_en			: out std_logic; 
		ila_row_cntrl_third_row_activate : out std_logic; 
		ila_row_cntrl_recycle_en 			: out std_logic; 
		ila_row_cntrl_prime_PR0_en 		: out std_logic; 
		ila_row_cntrl_prime_PR1_en 		: out std_logic;
		ila_row_cntrl_prime_PR2_en			: out std_logic; 

		ila_row_cntrl_pixel_counter		: out unsigned(7 downto 0); 
		ila_row_cntrl_column_counter		: out unsigned(7 downto 0);
		ila_row_cntrl_row_counter			: out unsigned(15 downto 0);  
		ila_row_cntrl_sorter_data_valid	: out std_logic; 
		ila_row_cntrl_stride_counter		: out unsigned(3 downto 0); 

		ila_row_cntrl_inbuff_rd_en			: out std_logic; 
		ila_row_cntrl_volume_processed		: out std_logic; 
		ila_row_cntrl_volume_rows_processed : out unsigned(7 downto 0); 
		ila_row_cntrl_output_rows_generated : out unsigned(7 downto 0);
		ila_row_cntrl_output_volume_size	: out std_logic_vector(7 downto 0);  
		ila_row_cntrl_channel_counter		: out unsigned(15 downto 0); 
		ila_row_cntrl_channel_complete		: out std_logic; 
		ila_row_cntrl_row_complete			: out std_logic; 
		ila_row_cntrl_busy 				: out std_logic; 
		ila_row_cntrl_fsm_state 			: out unsigned(3 downto 0); 
		
		ila_row_cntrl_kernel_data_0		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_kernel_data_1		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_kernel_data_2		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_kernel_data_3		: out std_logic_vector(g_data_width-1 downto 0);  
		ila_row_cntrl_kernel_data_4		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_kernel_data_5		: out std_logic_vector(g_data_width-1 downto 0);  
		ila_row_cntrl_kernel_data_6		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_kernel_data_7		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_kernel_data_8		: out std_logic_vector(g_data_width-1 downto 0);  
		ila_row_cntrl_kernel_data_9		: out std_logic_vector(g_data_width-1 downto 0);  

		ila_row_cntrl_sorter_data_0		: out std_logic_vector(g_data_width-1 downto 0);  
		ila_row_cntrl_sorter_data_1		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_sorter_data_2		: out std_logic_vector(g_data_width-1 downto 0);  
		ila_row_cntrl_sorter_data_3		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_sorter_data_4		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_sorter_data_5		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_sorter_data_6		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_sorter_data_7		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_sorter_data_8		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_sorter_data_9		: out std_logic_vector(g_data_width-1 downto 0)
		
		
	);
end pool_row_controller;

architecture arch of pool_row_controller is


type state_type is (IDLE, PRIME_ROW_0, PRIME_ROW_1, PRIME_ROW_2, PRIME_SORTER, ROW_STRIDE_SHIFT, COLUMN_STRIDE_SHIFT, P01_WAIT, P12_WAIT, P2S_WAIT, CHANNEL_CLEAR,CLEAR_COUNTERS, ACK_WAIT);
signal current_state 		: state_type; 
signal next_state			: state_type; 

signal PR0_din				: std_logic_vector(g_data_width-1 downto 0); 
signal PR0_wr_en 			: std_logic; 
signal PR0_rd_en			: std_logic; 
signal PR1_din				: std_logic_vector(g_data_width-1 downto 0); 
signal PR1_wr_en 			: std_logic; 
signal PR1_rd_en			: std_logic; 
signal PR2_din				: std_logic_vector(g_data_width-1 downto 0); 
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
signal kernel_data			: array_type_9x32bit; 
signal sorter_data			: array_type_9x32bit; 
signal sorter_data_valid	: std_logic; 
signal stride_counter		: unsigned(3 downto 0); 

signal inbuff_rd_en			: std_logic; 
signal volume_processed		: std_logic; 
signal volume_rows_processed : unsigned(7 downto 0); 
signal output_rows_generated : unsigned(7 downto 0);
signal output_volume_size	: std_logic_vector(7 downto 0);  
signal channel_counter		: unsigned(15 downto 0); 
signal channel_complete		: std_logic; 
signal row_complete			: std_logic; 
signal busy : std_logic; 
signal fsm_state : unsigned(3 downto 0); 


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
o_row_complete <= row_complete; 
o_busy <= busy; 
o_fsm_state <= std_logic_vector(fsm_state); 
		

third_row_activate <= '1' when unsigned(i_pool_kernel_size) = 3 else  
					  '0';   

					  
					  
--ILA SIGNALS 
ila_row_cntrl_PR0_din			<= PR0_din; 
ila_row_cntrl_PR0_wr_en 		<= PR0_wr_en;
ila_row_cntrl_PR0_rd_en			<= PR0_rd_en;
ila_row_cntrl_PR1_din			<= PR1_din; 
ila_row_cntrl_PR1_wr_en 		<= PR1_wr_en;
ila_row_cntrl_PR1_rd_en			<= PR1_rd_en;
ila_row_cntrl_PR2_din			<= PR2_din; 
ila_row_cntrl_PR2_wr_en 		<= PR2_wr_en;
ila_row_cntrl_PR2_rd_en			<= PR2_rd_en;
ila_row_cntrl_third_row_activate<= third_row_activate;
ila_row_cntrl_recycle_en 		<= recycle_en;
ila_row_cntrl_prime_PR0_en 		<= prime_PR0_en;
ila_row_cntrl_prime_PR1_en 		<= prime_PR1_en;
ila_row_cntrl_prime_PR2_en		<= prime_PR2_en;

ila_row_cntrl_pixel_counter		<= pixel_counter;
ila_row_cntrl_column_counter		<= column_counter;
ila_row_cntrl_row_counter			<= row_counter;
ila_row_cntrl_sorter_data_valid	<= sorter_data_valid;
ila_row_cntrl_stride_counter		<= stride_counter;

ila_row_cntrl_inbuff_rd_en		<= inbuff_rd_en;
ila_row_cntrl_volume_processed	<= volume_processed;
ila_row_cntrl_volume_rows_processed <= volume_rows_processed;
ila_row_cntrl_output_rows_generated <= output_rows_generated;
ila_row_cntrl_output_volume_size	<= output_volume_size;
ila_row_cntrl_channel_counter		<= channel_counter;
ila_row_cntrl_channel_complete	<= channel_complete;
ila_row_cntrl_row_complete		<= row_complete;
ila_row_cntrl_busy 				<= busy;
ila_row_cntrl_fsm_state 			<= fsm_state;			  
					  
					  
ila_row_cntrl_kernel_data_0		<= kernel_data(0); 
ila_row_cntrl_kernel_data_1		<= kernel_data(1); 
ila_row_cntrl_kernel_data_2		<= kernel_data(2); 
ila_row_cntrl_kernel_data_3		<= kernel_data(3); 
ila_row_cntrl_kernel_data_4		<= kernel_data(4); 
ila_row_cntrl_kernel_data_5		<= kernel_data(5); 
ila_row_cntrl_kernel_data_6		<= kernel_data(6); 
ila_row_cntrl_kernel_data_7		<= kernel_data(7); 
ila_row_cntrl_kernel_data_8		<= kernel_data(8); 
ila_row_cntrl_kernel_data_9		<= (others => '0'); --kernel_data(9); 

ila_row_cntrl_sorter_data_0		<= sorter_data(0); 
ila_row_cntrl_sorter_data_1		<= sorter_data(1); 
ila_row_cntrl_sorter_data_2		<= sorter_data(2); 
ila_row_cntrl_sorter_data_3		<= sorter_data(3); 
ila_row_cntrl_sorter_data_4		<= sorter_data(4); 
ila_row_cntrl_sorter_data_5		<= sorter_data(5); 
ila_row_cntrl_sorter_data_6		<= sorter_data(6); 
ila_row_cntrl_sorter_data_7		<= sorter_data(7); 
ila_row_cntrl_sorter_data_8		<= sorter_data(8); 
ila_row_cntrl_sorter_data_9		<= (others => '0');--sorter_data(9); 


					  
					  
state_transitions: process(i_clk, i_reset_n) is 
begin 
	if(i_reset_n = '0') then 
		current_state <= IDLE; 
	elsif(rising_edge(i_clk)) then
		current_state <= next_state; 
	end if; 
end process; 



next_state_comb : process(current_state,i_start, i_inbuff_valid,channel_complete,i_inbuff_valid,i_inbuff_empty,i_PR0_almost_full,pixel_counter,i_input_volume_size,i_PR1_almost_full,i_pool_kernel_size,i_PR2_almost_full,i_PR0_valid,i_PR0_empty,i_PR1_valid,i_PR1_empty,i_PR2_valid,i_PR2_empty,stride_counter,i_stride,column_counter,output_rows_generated,output_volume_size, third_row_activate,i_sorter_ready) is 
begin

	-- recycle_en 			<= '0';  
	-- prime_PR0_en 		<= '0'; 
	-- prime_PR1_en 		<= '0'; 
	-- prime_PR2_en		<= '0';
	-- inbuff_rd_en		<= '0'; 
	
	-- PR0_rd_en 			<= '0'; 
	-- PR1_rd_en 			<= '0'; 
	-- PR2_rd_en 			<= '0'; 
	-- busy 				<= '1'; 
	
	case current_state is 
	
		when IDLE => 		
			recycle_en 			<= '0';  
			prime_PR0_en 		<= '1'; 
			prime_PR1_en 		<= '0'; 
			prime_PR2_en		<= '0';
			inbuff_rd_en		<= '0'; 
			
			PR0_rd_en 			<= '0'; 
			PR1_rd_en 			<= '0'; 
			PR2_rd_en 			<= '0'; 
			busy 				<= '0'; 
	
		
			-- inbuff_rd_en		<= '0';
			-- recycle_en 			<= '0'; 
			-- prime_PR0_en 		<= '1';
			-- prime_PR1_en 		<= '0'; 
			-- prime_PR2_en 		<= '0'; 
			-- busy 				<= '0'; 
			
			if(i_inbuff_valid = '1' and channel_complete = '0' and i_start = '1') then 
				next_state <= PRIME_ROW_0; 
			elsif(channel_complete = '1' and i_start = '1') then 
				next_state <= CHANNEL_CLEAR; 
			else 
				next_state <= IDLE; 
			end if; 
			
		when PRIME_ROW_0 => 
		
			recycle_en 			<= '0';  
			prime_PR0_en 		<= '1'; 
			prime_PR1_en 		<= '0'; 
			prime_PR2_en		<= '0';
			inbuff_rd_en		<= '0'; 
			
			PR0_rd_en 			<= '0'; 
			PR1_rd_en 			<= '0'; 
			PR2_rd_en 			<= '0'; 
			busy 				<= '1'; 
				
			--recycle_en <= '0'; 
			--prime_PR0_en <= '1';
			--prime_PR1_en <= '0'; 
			--prime_PR2_en <= '0'; 
			next_state <= PRIME_ROW_0;
			--inbuff_rd_en		<= '0'; 
			
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
		
			recycle_en 			<= '0';  
			prime_PR0_en 		<= '0'; 
			prime_PR1_en 		<= '0'; 
			prime_PR2_en		<= '0';
			inbuff_rd_en		<= '0'; 
			
			PR0_rd_en 			<= '0'; 
			PR1_rd_en 			<= '0'; 
			PR2_rd_en 			<= '0'; 
			busy 				<= '1'; 
			next_state <= PRIME_ROW_1; 
				
		
		when PRIME_ROW_1 => 
		
			recycle_en 			<= '0';  
			prime_PR0_en 		<= '1'; 
			prime_PR1_en 		<= '1'; 
			prime_PR2_en		<= '0';
			inbuff_rd_en		<= '0'; 
			
			PR0_rd_en 			<= '0'; 
			PR1_rd_en 			<= '0'; 
			PR2_rd_en 			<= '0'; 
			busy 				<= '1'; 
	
			
			--recycle_en <= '0'; 
			--prime_PR0_en <= '1';
			--prime_PR1_en <= '1'; 
			--prime_PR2_en <= '0'; 
			next_state <= PRIME_ROW_1;
			--inbuff_rd_en		<= '0'; 
			--PR0_rd_en		<= '0';
			
			if(i_inbuff_valid = '1' and i_inbuff_empty = '0' and i_PR0_almost_full = '0' and i_PR1_almost_full = '0') then 
				
				if(pixel_counter < unsigned(i_input_volume_size)) then 
					PR0_rd_en		<= '1'; 
					next_state <= PRIME_ROW_1; 
					inbuff_rd_en		<= '1'; 
				else 
					PR0_rd_en		<= '0'; 
					inbuff_rd_en		<= '0'; 
					if(unsigned(i_pool_kernel_size) = 3) then 
						next_state <= P12_WAIT; 
					else 
						next_state <= P2S_WAIT; 
					end if; 
						
				end if; 
			end if; 

			
		when P12_WAIT => 
			recycle_en 			<= '0';  
			prime_PR0_en 		<= '0'; 
			prime_PR1_en 		<= '0'; 
			prime_PR2_en		<= '0';
			inbuff_rd_en		<= '0'; 
			
			PR0_rd_en 			<= '0'; 
			PR1_rd_en 			<= '0'; 
			PR2_rd_en 			<= '0'; 
			busy 				<= '1'; 
	
			next_state <= PRIME_ROW_2; 


		when PRIME_ROW_2 => 
		
			recycle_en 			<= '0';  
			prime_PR0_en 		<= '1'; 
			prime_PR1_en 		<= '1'; 
			prime_PR2_en		<= '1';
			inbuff_rd_en		<= '0'; 
			
			PR0_rd_en 			<= '0'; 
			PR1_rd_en 			<= '0'; 
			PR2_rd_en 			<= '0'; 
			busy 				<= '1'; 
	
			
			--recycle_en <= '0'; 
			--prime_PR0_en <= '1';
			--prime_PR1_en <= '1'; 
			--prime_PR2_en <= '1'; 
			next_state <= PRIME_ROW_2; 
			--PR0_rd_en		<= '0'; 
			--PR1_rd_en		<= '0'; 
			--inbuff_rd_en		<= '0'; 
			--if(i_inbuff_valid = '1' and i_inbuff_empty = '0' and i_PR0_almost_full = '0' and i_PR1_almost_full = '0' and i_PR2_almost_full = '0') then 
			if(i_PR0_almost_full = '0' and i_PR1_almost_full = '0' and i_PR2_almost_full = '0') then 
				
				if(pixel_counter < unsigned(i_input_volume_size)) then 
					PR0_rd_en		<= '1'; 
					PR1_rd_en		<= '1'; 
					next_state <= PRIME_ROW_2; 
					inbuff_rd_en		<= '1'; 
				else 
					PR0_rd_en		<= '0'; 
					PR1_rd_en		<= '0'; 
					next_state <= P2S_WAIT; 
					inbuff_rd_en		<= '0'; 
				end if; 
			end if; 
		
		when P2S_WAIT =>
			recycle_en 			<= '0';  
			prime_PR0_en 		<= '0'; 
			prime_PR1_en 		<= '0'; 
			prime_PR2_en		<= '0';
			inbuff_rd_en		<= '0'; 
			
			PR0_rd_en 			<= '0'; 
			PR1_rd_en 			<= '0'; 
			PR2_rd_en 			<= '0'; 
			busy 				<= '1'; 
			
			next_state <= PRIME_SORTER; 
		
		when PRIME_SORTER => 
		
			recycle_en 			<= '0';  
			prime_PR0_en 		<= '0'; 
			prime_PR1_en 		<= '0'; 
			prime_PR2_en		<= '0';
			inbuff_rd_en		<= '0'; 
			
			PR0_rd_en 			<= '0'; 
			PR1_rd_en 			<= '0'; 
			PR2_rd_en 			<= '0'; 
			busy 				<= '1'; 
	
		
			--inbuff_rd_en		<= '0'; 
			next_state <= PRIME_SORTER; 
			--recycle_en <= '0'; 
			--PR0_rd_en <= '0'; 
			--PR1_rd_en <= '0'; 
			--PR2_rd_en <= '0'; 
			
			if(i_sorter_ready = '1' and i_PR0_valid = '1' and i_PR0_empty = '0' and i_PR1_valid = '1'  and i_PR1_empty = '0' and i_PR2_valid = '1' and i_PR2_empty = '0') then 
				
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
			recycle_en 			<= '0';  
			prime_PR0_en 		<= '0'; 
			prime_PR1_en 		<= '0'; 
			prime_PR2_en		<= '0';
			inbuff_rd_en		<= '0'; 
			
			PR0_rd_en 			<= '0'; 
			PR1_rd_en 			<= '0'; 
			PR2_rd_en 			<= '0'; 
			busy 				<= '1'; 
	
		
			--inbuff_rd_en		<= '0'; 
			next_state <= COLUMN_STRIDE_SHIFT; 
			--recycle_en <= '0'; 
			--PR0_rd_en <= '0'; 
			--PR1_rd_en <= '0'; 
			--PR2_rd_en <= '0'; 
			if(i_sorter_ready = '1' and i_PR0_valid = '1' and i_PR0_empty = '0' and i_PR1_valid = '1'  and i_PR1_empty = '0' and i_PR2_valid = '1' and i_PR2_empty = '0') then 
				
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
						next_state <= ACK_WAIT; 
						-- if(output_rows_generated < unsigned(output_volume_size)) then 
							-- next_state <= ROW_STRIDE_SHIFT; --COLUMN_STRIDE_SHIFT; 
						-- elsif (output_rows_generated = unsigned(output_volume_size) and column_counter = unsigned(i_input_volume_size)) then 
							-- next_state <= IDLE; 
							
						-- else 
							-- next_state <= ROW_STRIDE_SHIFT; 
						-- end if; 
							
					end if; 
					
				end if; 

			end if; 
		
		when ACK_WAIT => 
			if(output_rows_generated < unsigned(output_volume_size)) then 
				if(i_master_ack = '1') then 
					next_state <= ROW_STRIDE_SHIFT; --COLUMN_STRIDE_SHIFT; 
				else 
					next_state <= ACK_WAIT; 
				end if; 
			elsif (output_rows_generated = unsigned(output_volume_size) and column_counter = unsigned(i_input_volume_size)) then 
				if(i_master_ack = '1') then 
					next_state <= IDLE;
				else 
					next_state <= ACK_WAIT; 
				end if; 
				
			else 
				if(i_master_ack = '1') then 
					next_state <= ROW_STRIDE_SHIFT; --COLUMN_STRIDE_SHIFT; 
				else 
					next_state <= ACK_WAIT; 
				end if; 
			end if; 
							
		
		when ROW_STRIDE_SHIFT => 
			-- inbuff_rd_en		<= '1'; 
			recycle_en <= '0'; 
			prime_PR0_en <= '1';
			prime_PR1_en <= '1'; 
			prime_PR2_en <= '1'; 
			next_state <= ROW_STRIDE_SHIFT;
			inbuff_rd_en <= '0'; 
			PR0_rd_en <= '0'; 
			PR1_rd_en <= '0'; 
			PR2_rd_en <= '0';
			busy <= '1'; 
			
			if(i_inbuff_valid = '1' and i_inbuff_empty = '0' and i_sorter_ready = '1' and i_PR0_almost_full = '0' and i_PR0_empty = '0' and i_PR1_almost_full = '0' and i_PR1_empty = '0' and i_PR2_almost_full = '0') then 
				
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
			else 
				if(pixel_counter < unsigned(i_input_volume_size)) then 
					next_state <= ROW_STRIDE_SHIFT; 
				elsif(stride_counter >= unsigned(i_stride)-1) then 
					next_state <= CLEAR_COUNTERS; 
				end if; 

			end if; 
			

		
		
		when CHANNEL_CLEAR => 
			recycle_en 			<= '0';  
			prime_PR0_en 		<= '0'; 
			prime_PR1_en 		<= '0'; 
			prime_PR2_en		<= '0';
			inbuff_rd_en		<= '0'; 
			busy 				<= '1'; 
	
		
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
			busy <= '1'; 
			
								
								
			
		when others => 
			next_state <= IDLE; 
			recycle_en 			<= '0';  
			prime_PR0_en 		<= '0'; 
			prime_PR1_en 		<= '0'; 
			prime_PR2_en		<= '0';
			inbuff_rd_en		<= '0'; 
			
			PR0_rd_en 			<= '0'; 
			PR1_rd_en 			<= '0'; 
			PR2_rd_en 			<= '0'; 
			busy 				<= '0'; 
	
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
		row_complete <= '0'; 
		fsm_state <= (others => '0'); 
	
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
		row_complete <= '0'; 
	
		case current_state is 
		
			when IDLE => 
				fsm_state <= "0000";  
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
				row_complete <= '0'; 

				
				
				
			when PRIME_ROW_0 => 
				fsm_state <= "0001"; 
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
				fsm_state <= "0010"; 			
				pixel_counter <= (others => '0'); 
				PR0_wr_en 		<= '0'; 
				PR0_din			<= (others => '0'); 
				row_counter 	<= row_counter + 1; 

					
			when PRIME_ROW_1 => 
				fsm_state <= "0011"; 
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
				fsm_state <= "0100"; 
				pixel_counter <= (others => '0'); 
				PR0_wr_en 		<= '0'; 
				PR0_din 		<= (others => '0'); 
				PR1_wr_en 		<= '0'; 
				PR1_din 		<= (others => '0'); 
				row_counter		<= row_counter + 1; 
		
			when PRIME_ROW_2 => 
				fsm_state <= "0101"; 
				--if(i_inbuff_valid = '1' and i_inbuff_empty = '0' and i_PR0_almost_full = '0' and i_PR1_almost_full = '0' and i_PR2_almost_full = '0') then 			
				if(i_PR0_almost_full = '0' and i_PR1_almost_full = '0' and i_PR2_almost_full = '0') then 
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
				fsm_state <= "0110"; 
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
				fsm_state <= "0111"; 
				stride_counter <= (others => '0'); 
				
				if(i_sorter_ready = '1' and i_PR0_valid = '1' and i_PR0_empty = '0' and i_PR1_valid = '1'  and i_PR1_empty = '0' and i_PR2_valid = '1' and i_PR2_empty = '0') then 
					
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
				fsm_state <= "1000"; 
				if(i_sorter_ready = '1' and i_PR0_valid = '1' and i_PR0_empty = '0' and i_PR1_valid = '1'  and i_PR1_empty = '0' and i_PR2_valid = '1' and i_PR2_empty = '0') then 
					
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
							row_complete <= '1'; 
							-- if(output_rows_generated < unsigned(output_volume_size)) then 
								-- volume_processed <= '0'; 
								
							-- elsif (output_rows_generated = unsigned(output_volume_size) and column_counter = unsigned(i_input_volume_size)) then 
								-- --volume_processed <= '1' ; 
								-- channel_counter <= channel_counter + 1; 
								-- channel_complete <= '1'; 
							-- end if; 
						end if; 
					end if; 

				end if; 
				
		when ACK_WAIT => 

			if(output_rows_generated < unsigned(output_volume_size)) then 
				volume_processed <= '0'; 
				
			elsif (output_rows_generated = unsigned(output_volume_size) and column_counter = unsigned(i_input_volume_size)) then 
				--volume_processed <= '1' ; 
				channel_counter <= channel_counter + 1; 
				channel_complete <= '1'; 
			end if; 
			
		when ROW_STRIDE_SHIFT => 
			fsm_state <= "1001"; 
			column_counter <= (others => '0');
		
			kernel_data <= (others => (others => '1')); 
			sorter_data <= (others => (others => '1')); 
			--sorter_data_valid <= '0'; 
			
			if(i_inbuff_valid = '1' and i_inbuff_empty = '0' and i_sorter_ready = '1' and  i_PR0_almost_full = '0' and i_PR0_empty = '0' and i_PR1_almost_full = '0' and i_PR1_empty = '0' and i_PR2_almost_full = '0') then 
				
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
			-- else 
				-- if(stride_counter >= unsigned(i_stride)-1) then 
					-- stride_counter <= (others => '0'); 
					-- row_counter		<= row_counter + 1;
					-- volume_rows_processed <= volume_rows_processed + 1; 
					-- pixel_counter 	<= (others => '0');
				-- end if; 
			end if; 
			
			
		when CHANNEL_CLEAR => 
			fsm_state <= "1010"; 
			channel_complete <= '0'; 
			
		when CLEAR_COUNTERS => 		
			fsm_state <= "1011"; 
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
