-------------------------------------------------------------------------------
--
-- Title       : volume_router
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\volume_router.vhd
-- Generated   : Sat Sep 16 18:49:23 2017
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {volume_router} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all;


--library Convolution_Layer; 
--use Convolution_Layer.types_pkg.all;
library xil_defaultlib; 
use xil_defaultlib.types_pkg.all; 

entity volume_router is
	generic(
		g_mult_delay : integer := 8; 
		g_data_width : integer := 32
	); 
	port(
	i_clk						: in std_logic; 
	i_reset_n 					: in std_logic; 
	i_enable 					: in std_logic;
	i_number_of_filters			: in std_logic_vector(15 downto 0);  
	i_filter_size				: in std_logic_vector(3 downto 0); 
	i_stride					: in std_logic_vector(3 downto 0); 
	i_filters_in_set			: in std_logic_vector(15 downto 0); 
	i_filters_loaded 			: in std_logic; 
	i_volume_data 				: in std_logic_vector(g_data_width-1 downto 0); 
	i_input_volume_size			: in std_logic_vector(7 downto 0); 
	i_pad                       : in std_logic_vector(3 downto 0); 
	i_calc_params				: in std_logic; 
	i_fifo_data_valid			: in std_logic; 
	i_empty						: in std_logic; 
	i_almost_empty				: in std_logic; 
	i_next_fifo_full			: in std_logic; 
	i_stop_stack_en				: in std_logic; 
	i_convolution_en			: in std_logic; 	  
	--i_padded_volume_size		: in std_logic_vector(7 downto 0); 
	i_acc_ready					: in std_logic; 
	i_empty_data_en				: in std_logic; 
	i_affine_en 				: in std_logic; 
	o_data_return 				: out std_logic_vector(g_data_width-1 downto 0); 
	o_data_return_wr_en			: out std_logic;  
	o_data_mult					: out std_logic_vector(g_data_width-1 downto 0);    
	o_data_valid  				: out std_logic; 
    o_rows_complete 			: out std_logic; 
	o_rd_en						: out std_logic;  
	o_sending					: out std_logic; 
	o_conv_complete				: out std_logic; 
	o_affine_complete			: out std_logic; 
	o_filter_complete			: out std_logic; 
	o_snake_fill_complete		: out std_logic;
	o_empty_data_complete		: out std_logic; 
	o_volume_router_ready		: out std_logic; 
	o_fsm_state 				: out std_logic_vector(3 downto 0); 
	
	--ILA Signals 
	ila_element_counter 		: out std_logic_vector(9 downto 0);    
	ila_filter_counter 			: out std_logic_vector(15 downto 0);   
	ila_column_counter			: out std_logic_vector(7 downto 0);   
	ila_delay_shift_register 	: out std_logic_vector(g_mult_delay-1 downto 0);  
	ila_pad_16bit				: out std_logic_vector(15 downto 0);  
	ila_padded_volume_size		: out std_logic_vector(15 downto 0); 
	ila_empty_done				: out std_logic

	
	); 
end volume_router;

--}} End of automatically maintained section

architecture arch of volume_router is	 
																			 
type router_state is (IDLE, FILL, SEND, SHIFT,SNAKE_FILL,ACC_HOLD, TOP_ROW_EMPTY, EMPTY_RESET); --PRIMING, PROCESSING); 
signal current_state 		: router_state; 
signal next_state			: router_state; 

signal data_return 			: std_logic_vector(31 downto 0); 
signal data_return_wr_en 	: std_logic; 

signal data_mult			: std_logic_vector(31 downto 0); 
signal data_valid 			: std_logic;  

--type array_type_varx32bit is array(integer range <>) of std_logic_vector(15 downto 0); 
signal data_array 			: array_type_varx32bit(10 downto 0); 

signal rows_complete 		: std_logic; 
signal rd_en 				: std_logic; 

signal element_counter 		: unsigned(9 downto 0);    
signal filter_counter 		: unsigned(15 downto 0);   

signal sending 				: std_logic; 
signal column_counter		: unsigned(7 downto 0);   
signal conv_complete		: std_logic; 	 
signal affine_complete		: std_logic; 
signal filter_complete		: std_logic; 

signal snake_fill_complete : std_logic;	

signal delay_shift_register : std_logic_vector(g_mult_delay-1 downto 0);  
signal empty_data_complete : std_logic; 
signal volume_router_ready : std_logic;

signal pad_16bit					: std_logic_vector(15 downto 0);  
signal padded_volume_size		: unsigned(15 downto 0); 
signal empty_done			: std_logic; 
signal fsm_state			: std_logic_vector(3 downto 0); 

begin
	
	o_data_return 		<= data_return; 
	o_data_return_wr_en <= data_return_wr_en; 
	
	o_data_mult 		<= data_mult; 
	o_data_valid 		<= delay_shift_register(g_mult_delay-1) when i_enable = '1' else 
						   '1' ; --data_valid; 
						   
	--o_data_valid 		<= delay_shift_register(g_mult_delay-1); --data_valid; 
	
	o_rd_en				<= rd_en; 
	o_rows_complete 	<= rows_complete; 
	
	o_sending <= sending; 	  
	o_conv_complete <= conv_complete; 
	o_affine_complete <= affine_complete; 
	o_snake_fill_complete <= snake_fill_complete;	
	o_empty_data_complete <= empty_data_complete;
	o_filter_complete <= filter_complete; 
	
	o_volume_router_ready <= volume_router_ready; 
	
	o_fsm_state	<= fsm_state; 
	
	pad_16bit						<= "000000000000" & i_pad; 
	
	ila_element_counter 		<= std_logic_vector(element_counter);  
	ila_filter_counter 			<= std_logic_vector(filter_counter);    
	ila_column_counter			<= std_logic_vector(column_counter);   
	ila_delay_shift_register 	<= std_logic_vector(delay_shift_register); 
	ila_pad_16bit				<= std_logic_vector(pad_16bit); 
	ila_padded_volume_size		<= std_logic_vector(padded_volume_size); 
	ila_empty_done				<= empty_done; 

	
	calculations: process(i_clk, i_reset_n) is 
	begin 
		if(i_reset_n = '0') then 
			padded_volume_size <= (others => '0'); 
		elsif(rising_edge(i_clk)) then 
			if(i_calc_params = '1') then 
				padded_volume_size <= unsigned(i_input_volume_size) + unsigned(pad_16bit) + unsigned(pad_16bit); 
			end if; 
		end if; 
	end process; 
	
	
	
	
	delay_unit : process(i_clk, i_reset_n) is
	begin
		if(i_reset_n = '0') then
			delay_shift_register <= (others => '0');
		elsif(rising_edge(i_clk)) then 
			delay_shift_register <= delay_shift_register(g_mult_delay-2 downto 0) & data_valid; 
		end if; 
		
	end process;  
	
	state_transitions: process(i_clk, i_reset_n) is 
	begin 	
		if(i_reset_n = '0') then
			current_state <= IDLE; 
		elsif(rising_edge(i_clk)) then 
			current_state <= next_state; 
		end if; 
	end process; 
	
	
	next_state_comb: process(current_state, filter_complete, empty_done, i_empty, i_enable, padded_volume_size, i_stop_stack_en, i_next_fifo_full, i_fifo_data_valid, i_filters_loaded, i_convolution_en,element_counter, column_counter, conv_complete,snake_fill_complete,i_acc_ready,i_empty_data_en,i_affine_en,i_filter_size,i_stride) is 
	begin 
		rd_en <= '0'; 
		sending <= '0'; 
		volume_router_ready <= '0'; 
		fsm_state <= "0000"; 	
		
		case current_state is 
			
			when IDLE => 
				fsm_state <= "0000"; 			
				rd_en <= '0';
				sending <= '0'; 
				volume_router_ready <= '1'; 
				
				if(i_enable = '0') then 
					next_state <= IDLE; 
				elsif(i_stop_stack_en = '0' and snake_fill_complete = '0' and i_empty_data_en = '0' and i_enable = '1') then
					next_state <= SNAKE_FILL;
				elsif(i_empty = '0' and i_filters_loaded = '1' and i_convolution_en = '1' and i_empty_data_en = '0' and i_enable = '1') then 
					next_state <= FILL; 
				elsif(filter_counter = unsigned(i_filters_in_set(11 downto 0)) and column_counter = unsigned(padded_volume_size) and i_affine_en = '1')then 
					next_state <= IDLE; 
				elsif(i_empty = '0' and i_filters_loaded = '1' and i_affine_en = '1' and i_empty_data_en = '0' and i_enable = '1') then 
					next_state <= FILL; 
				elsif(i_empty_data_en = '1' and i_enable = '1' and empty_done = '0') then
					next_state <= TOP_ROW_EMPTY; 
				else 
					next_state <= IDLE; 
				end if; 

			when FILL => 
				fsm_state <= "0001"; 				
				rd_en <= '0';
				sending <= '0'; 			
					
				if(i_empty = '0' and i_fifo_data_valid = '1') then 
					if(element_counter < unsigned(i_filter_size)) then 
						rd_en <= '1'; 
						next_state <= FILL; 
					else 
						rd_en <= '0'; 
						next_state <= SEND; 
					end if; 
				else
					rd_en <= '0';
					next_state <= FILL; 
				end if; 

			when SEND =>
				fsm_state <= "0010"; 	
				rd_en <= '0'; 
				sending <= '1'; 

				if(element_counter < unsigned(i_filter_size)) then 
					next_state <= SEND;
				else
					if(column_counter = unsigned(padded_volume_size) and i_affine_en = '0')then 
						next_state <= IDLE; 
					elsif(column_counter = unsigned(i_filter_size) and i_affine_en = '1') then 
						next_state <= IDLE; 
					else
						next_state <= ACC_HOLD;
					end if; 
				end if; 
				
		    when SHIFT => 
				fsm_state <= "0011"; 	
				sending <= '0'; 
				rd_en <= '0'; 
			
				if(i_empty = '0') then 
					if(element_counter < unsigned(i_stride)) then 
						next_state <= SHIFT;   
						rd_en <= '1'; 
					else 
						next_state <= SEND;  
						rd_en <= '0'; 
					end if; 
				else 
					next_state <= SHIFT;
				end if; 


			when SNAKE_FILL =>
						
				fsm_state <= "0100"; 	
				if(i_empty = '0' and i_fifo_data_valid = '1' and i_next_fifo_full = '0') then 
					if(element_counter < unsigned(padded_volume_size)) then 
						rd_en <= '1'; 
						next_state <= SNAKE_FILL; 
					else 
						rd_en <= '0'; 
						next_state <= IDLE; 	
					end if; 
				else
					rd_en <= '0';
					next_state <= SNAKE_FILL; 
				end if; 
				
			when ACC_HOLD => 
				fsm_state <= "0101"; 	
				if(i_acc_ready = '1' and i_affine_en = '0') then 
					next_state <= SHIFT; 
				elsif(i_acc_ready = '1' and i_affine_en = '1') then 
					next_state <= IDLE; 
				else
					next_state <= ACC_HOLD; 
				end if; 
			
			when TOP_ROW_EMPTY => 
				fsm_state <= "0110";
				volume_router_ready <= '1'; 				
				if(element_counter <= unsigned(padded_volume_size)-1) then 
					rd_en <= '1'; 
					next_state <= TOP_ROW_EMPTY; 
				else				
					rd_en <= '0'; 
					-- if(i_affine_en = '1') then 
						-- next_state <= IDLE;
					-- else
						-- next_state <= EMPTY_RESET; 
					-- end if; 
					--if(i_empty_data_en = '1' and i_affine_en = '1') then 
						--next_state <= TOP_ROW_EMPTY; 
					--else 
						next_state <= EMPTY_RESET;
					--end if; 
					
					
				end if; 
				
			when EMPTY_RESET => 
				fsm_state <= "0111"; 
				--next_state <= IDLE; 
				rd_en <='0'; 
				volume_router_ready <= '1'; 
				
				if(i_empty_data_en = '0') then 
					next_state <= IDLE; 
				else 
					next_state <= EMPTY_RESET; 
				end if; 
				
				

				

			when others => 
				fsm_state <= "1000"; 	
				next_state <= IDLE; 

			
		end case; 
		
	end process; 
	
	
	
	sequential_logic: process(i_clk, i_reset_n) is 
	begin 
		if(i_reset_n = '0') then 
			element_counter 	<= (others => '0');  
			filter_counter 		<= (others => '0'); 	
			rows_complete 		<= '0'; 	
			data_mult 			<= (others => '0'); 
			data_valid 			<= '0';   
			data_return 		<= (others => '0'); 
			data_return_wr_en 	<= '0';   
			data_array 			<= (others => (others => '0'));    
			column_counter		<= (others => '0'); 
			conv_complete 		<= '0'; 
			snake_fill_complete <= '0';	 
			affine_complete 	<= '0'; 
			empty_done 			<= '0'; 
			empty_data_complete <= '0'; 
			
		elsif(rising_edge(i_clk)) then 
			-- element_counter 	<= element_counter; 
			-- filter_counter 		<= filter_counter; 
			-- rows_complete 		<= rows_complete; 
			-- data_mult 			<= data_mult; 
			-- data_valid 			<= data_valid; 	 
			-- data_return 		<= data_return; 
			-- data_return_wr_en 	<= data_return_wr_en; 	 
			-- data_array 			<= data_array; 
			-- column_counter		<= column_counter; 
			-- conv_complete		<= conv_complete; 
			-- snake_fill_complete <= snake_fill_complete;	
			-- affine_complete 	<= affine_complete; 
		
			
			case current_state is 
				when IDLE => 
					element_counter 	<= (others => '0'); 
					rows_complete 		<= '0'; 	
					data_mult 			<= (others => '0'); 
					data_valid 			<= '0';   
					data_return 		<= (others => '0'); 
					data_return_wr_en 	<= '0';    
					column_counter 		<= (others => '0'); 
					conv_complete		<= '0'; 
					affine_complete 	<= '0'; 
					filter_complete 	<= '0'; 
					--empty_data_complete <= '0';
					
					if(i_empty_data_en = '0') then 
						empty_done <= '0'; 
					end if; 
						
			

					if(filter_counter = unsigned(i_filters_in_set(11 downto 0)) and column_counter = unsigned(padded_volume_size) and i_affine_en = '1')then 
						filter_counter <= (others => '0'); 
						column_counter 		<= (others => '0'); 
						affine_complete <= '1'; 
						filter_complete	<= '1'; 				
					elsif(i_empty = '0' and i_filters_loaded = '1' and (i_convolution_en = '1' or i_affine_en = '1') and i_enable = '1') then 
						filter_counter <= filter_counter + 1; 
						affine_complete <= '0'; 
					else 
						filter_counter <= filter_counter; 
						affine_complete <= '0'; 
					end if;

				when FILL => 
					empty_data_complete <= '0';
					empty_done <= '0'; 
					rows_complete <= '0'; 
					snake_fill_complete <= '0'; 
					affine_complete 	<= '0';
					
					if(i_empty = '0' and  i_fifo_data_valid = '1') then
						
						if(element_counter < unsigned(i_filter_size)) then 
							data_array <= data_array(9 downto 0) & i_volume_data; 	
							element_counter <= element_counter + 1; 	 	
							data_return_wr_en <= '1'; 	
							data_return <= i_volume_data;  
							column_counter <= column_counter + 1; 
						else 
							data_array <= data_array;    
							element_counter <= (others => '0'); 
							data_return_wr_en <= '0'; 
							data_return <= (others => '0');
							column_counter <= column_counter;

							--if(filter_counter = unsigned(i_filters_in_set(11 downto 0)) and column_counter = unsigned(padded_volume_size) and i_affine_en = '1')then 
								--filter_counter <= (others => '0'); 
								--rows_complete <= '1'; 
							--else 
								--rows_complete <= '0'; 
							--end if; 

						end if; 
						
					else
						data_array <= data_array; 
						element_counter <= element_counter; 
						data_return_wr_en <= '0'; 	
						data_return <= (others => '0');	 
						column_counter <= column_counter; 
					end if; 
					
					
				when SEND =>
				    empty_done <= '0'; 
					data_return_wr_en <= '0'; 
					data_return <= (others => '0'); 
					
					if(element_counter < unsigned(i_filter_size)) then 
						data_mult <= data_array(to_integer(element_counter));  
						data_valid <= '1'; 	
						element_counter <= element_counter + 1; 
					else 	 
						data_mult <= (others => '0'); 
						data_valid <= '0'; 
						element_counter <= (others => '0');    
						
						if(column_counter = unsigned(padded_volume_size) and i_affine_en = '0')then 
							conv_complete <= '1'; 
							--affine_complete <= '0'; 
							filter_complete <= '0'; 
						elsif(column_counter = unsigned(i_filter_size) and i_affine_en = '1')then 
							conv_complete <= '0'; 
							--affine_complete <= '1'; 
							--column_counter 		<= (others => '0'); 
							filter_complete <= '1'; 
						else
							--affine_complete <= '0'; 
							conv_complete <= '0'; 
							filter_complete <= '0'; 
						end if; 
					end if; 
				
			    when SHIFT =>  
				    empty_done <= '0'; 
					if(i_empty = '0') then 
						if(element_counter < unsigned(i_stride) and i_fifo_data_valid = '1') then 
							data_array <= data_array(9 downto 0) & i_volume_data; 	
							element_counter <= element_counter + 1;  
							data_return_wr_en 	<= '1'; 
							data_return 		<= i_volume_data;	  
							column_counter <= column_counter + 1; 
						else 
							data_array <= data_array; 	
							element_counter <= (others => '0');  	
							data_return_wr_en 	<= '0'; 
							data_return 		<= (others => '0');	 
							column_counter <= column_counter; 
							
							if(filter_counter = unsigned(i_number_of_filters) and column_counter = unsigned(padded_volume_size))then 
								filter_counter <= (others => '0'); 
								rows_complete <= '1'; 
							else 
								rows_complete <= '0'; 
							end if; 
							
						end if; 
					end if; 
						
				when SNAKE_FILL =>
					empty_data_complete <= '0';					
				    empty_done <= '0'; 
					rows_complete <= '0'; 
					
					if(i_empty = '0' and  i_fifo_data_valid = '1' and i_next_fifo_full = '0') then  
						
						
						if(element_counter < unsigned(padded_volume_size)) then 
							--data_array <= data_array(9 downto 0) & i_volume_data; 	
							element_counter <= element_counter + 1; 	 	
							data_return_wr_en <= '1'; 	
							data_return <= i_volume_data;  
						else   
							element_counter <= (others => '0'); 
							data_return_wr_en <= '0'; 
							data_return <= (others => '0');	 

						end if; 
						
					else
						element_counter <= element_counter; 
						data_return_wr_en <= '0'; 	
						data_return <= (others => '0');	 
						snake_fill_complete <= '0'; 
						
						if(element_counter >= unsigned(padded_volume_size)) then 
							snake_fill_complete <= '1'; 
						end if; 

					end if;   
					
				when ACC_HOLD => 
					null;
					
				when TOP_ROW_EMPTY => 
					if(element_counter <= unsigned(padded_volume_size)-1) then 
						element_counter <= element_counter + 1; 
					else
						element_counter <= (others => '0'); 
						empty_done <= '1'; 
						empty_data_complete <= '1'; 
					end if; 
					
				when EMPTY_RESET => 
					element_counter <= (others => '0'); 
					--empty_data_complete <= '0'; 
					--empty_done <= '0'; 
					
					if(i_empty_data_en = '0') then 
						empty_data_complete <= '0'; 
					else 
						empty_data_complete <= empty_data_complete;  
					end if; 
					
				when others => 
					element_counter 	<= (others => '0'); 
					rows_complete 		<= '0'; 	
					data_mult 			<= (others => '0'); 
					data_valid 			<= '0';   
					data_return 		<= (others => '0'); 
					data_return_wr_en 	<= '0';    
					column_counter 		<= (others => '0'); 
					conv_complete		<= '0'; 
					affine_complete 	<= '0'; 
					empty_data_complete <= '0'; 
					filter_complete 	<= '0'; 
					
			end case; 
				
		end if; 
		
	end process; 
	



end arch;
