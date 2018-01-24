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


library convolution_layer; 
use convolution_layer.types_pkg.all;

entity volume_router is		
	port(
	i_clk						: in std_logic; 
	i_reset_n 					: in std_logic; 
	i_enable 					: in std_logic;
	
	i_number_of_filters			: in std_logic_vector(11 downto 0);  
	i_filter_size				: in std_logic_vector(3 downto 0); 
	i_stride					: in std_logic_vector(3 downto 0); 
	
	i_filters_loaded 			: in std_logic; 

	i_volume_data 				: in std_logic_vector(15 downto 0); 

	o_data_return 				: out std_logic_vector(15 downto 0); 
	o_data_return_wr_en			: out std_logic;  
	
--	o_prev_data_wr_en			: out std_logic; 
	
	o_data_mult					: out std_logic_vector(15 downto 0);    
	o_data_valid  				: out std_logic; 
	
    o_rows_complete 			: out std_logic; 
	
	i_fifo_data_valid			: in std_logic; 
	o_rd_en						: out std_logic;  
	
	i_empty						: in std_logic; 
	i_almost_empty				: in std_logic; 
	i_prog_empty				: in std_logic; 
	o_prog_empty_thresh 		: out std_logic_vector(9 downto 0);
	i_next_fifo_full			: in std_logic; 
	
	i_stop_stack_en				: in std_logic; 
	i_convolution_en			: in std_logic; 
	i_row_size					: in std_logic_vector(9 downto 0); 	  
	i_padded_volume_size		: in std_logic_vector(7 downto 0); 
	
	o_sending					: out std_logic; 
	o_conv_complete				: out std_logic; 
	o_snake_fill_complete		: out std_logic
	
	); 
end volume_router;

--}} End of automatically maintained section

architecture arch of volume_router is	 
																			 
type router_state is (IDLE, FILL, SEND, SHIFT, PROCESSING,SNAKE_FILL); --PRIMING, PROCESSING); 
signal current_state 		: router_state; 
signal next_state			: router_state; 

signal data_return 			: std_logic_vector(15 downto 0); 
signal data_return_wr_en 	: std_logic; 

signal data_mult			: std_logic_vector(15 downto 0); 
signal data_valid 			: std_logic;  
signal data_array 			: array_type_varx16bit(10 downto 0); 

signal rows_complete 		: std_logic; 
signal rd_en 				: std_logic; 

signal element_counter 		: unsigned(9 downto 0);    
signal filter_counter 		: unsigned(11 downto 0);   

signal sending 				: std_logic; 
signal column_counter		: unsigned(7 downto 0);   
signal conv_complete		: std_logic; 	 

signal snake_fill_complete : std_logic;


begin
	
	o_data_return 		<= data_return; 
	o_data_return_wr_en <= data_return_wr_en; 
	
	o_data_mult 		<= data_mult; 
	o_data_valid 		<= data_valid; 
	
	o_prog_empty_thresh <= (others => '0');
	o_rd_en				<= rd_en; 
	o_rows_complete 	<= rows_complete; 
	
	o_sending <= sending; 	  
	o_conv_complete <= conv_complete;  
	o_snake_fill_complete <= snake_fill_complete;
	
	
	
	state_transitions: process(i_clk, i_reset_n) is 
	begin 	
		if(i_reset_n = '0') then
			current_state <= IDLE; 
		elsif(rising_edge(i_clk)) then 
			current_state <= next_state; 
		end if; 
	end process; 
	
	
	next_state_comb: process(current_state, i_empty, i_stop_stack_en, i_next_fifo_full, i_fifo_data_valid, i_filters_loaded, i_convolution_en,element_counter, column_counter, conv_complete,snake_fill_complete) is 
	begin 
		rd_en <= '0'; 
		sending <= '0'; 

		case current_state is 
			
			when IDLE => 	
				rd_en <= '0';
				sending <= '0'; 
				if(i_stop_stack_en = '0' and snake_fill_complete = '0') then
					next_state <= SNAKE_FILL;
				elsif(i_empty = '0' and i_filters_loaded = '1' and i_convolution_en = '1') then 
					next_state <= FILL; 
				else 
					next_state <= IDLE; 
				end if; 

			when FILL =>  
				sending <= '0'; 
					
				if(i_empty = '0' and i_fifo_data_valid = '1') then -- and i_next_fifo_full = '0') then 
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
				rd_en <= '0'; 
				sending <= '1'; 

				if(element_counter < unsigned(i_filter_size)) then 
					next_state <= SEND;
				else
					if(column_counter = unsigned(i_padded_volume_size))then 
						next_state <= IDLE; 
					else
						next_state <= SHIFT; 
					end if; 
				end if; 
				
		    when SHIFT => 
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
				end if; 


			when SNAKE_FILL => 
				if(i_empty = '0' and i_fifo_data_valid = '1' and i_next_fifo_full = '0') then 
					if(element_counter < unsigned(i_padded_volume_size)) then 
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
					
				
			when others => 
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
			
			
		elsif(rising_edge(i_clk)) then 
			element_counter 	<= element_counter; 
			filter_counter 		<= filter_counter; 
			rows_complete 		<= rows_complete; 
			data_mult 			<= data_mult; 
			data_valid 			<= data_valid; 	 
			data_return 		<= data_return; 
			data_return_wr_en 	<= data_return_wr_en; 	 
			data_array 			<= data_array; 
			column_counter		<= column_counter; 
			conv_complete		<= conv_complete; 
			snake_fill_complete <= snake_fill_complete;
			
			
			case current_state is 
				when IDLE => 
					element_counter 	<= (others => '0'); 
					--filter_counter 		<= (others => '0'); 	
					rows_complete 		<= '0'; 	
					data_mult 			<= (others => '0'); 
					data_valid 			<= '0';   
					data_return 		<= (others => '0'); 
					data_return_wr_en 	<= '0';    
					column_counter 		<= (others => '0'); 
					conv_complete		<= '0'; 	 
					
					
					if(i_empty = '0' and i_filters_loaded = '1' and i_convolution_en = '1') then 
						filter_counter <= filter_counter + 1; 
					else 
						filter_counter <= filter_counter; 
					end if;
					
				
				when FILL => 
					--element_counter <= (others => '0');   
					--filter_counter <= (others => '0'); 	 
					rows_complete <= '0'; 
					snake_fill_complete <= '0'; 
					
					if(i_empty = '0' and  i_fifo_data_valid = '1') then -- and i_next_fifo_full = '0') then 
						
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
							--filter_counter <= filter_counter + 1; 
						end if; 
						
					else
						data_array <= data_array; 
						element_counter <= element_counter; 
						data_return_wr_en <= '0'; 	
						data_return <= (others => '0');	 
						column_counter <= column_counter; 
					end if; 
					
					
				when SEND =>
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
						
						if(column_counter = unsigned(i_padded_volume_size))then 
							conv_complete <= '1'; 
						else
							conv_complete <= '0'; 
						end if; 
					end if; 
				
			    when SHIFT => 
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
							
							if(filter_counter = unsigned(i_number_of_filters) and column_counter = unsigned(i_padded_volume_size))then 
								filter_counter <= (others => '0'); --filter_counter; 
								rows_complete <= '1'; 
							else 
								--filter_counter <= filter_counter + 1;
								rows_complete <= '0'; 
							end if; 
							
						end if; 
					end if; 
						
				when SNAKE_FILL => 
					--element_counter <= (others => '0');   
					--filter_counter <= (others => '0'); 	 
					rows_complete <= '0'; 
					
					if(i_empty = '0' and  i_fifo_data_valid = '1' and i_next_fifo_full = '0') then  
						
						
						if(element_counter < unsigned(i_padded_volume_size)) then 
							--data_array <= data_array(9 downto 0) & i_volume_data; 	
							element_counter <= element_counter + 1; 	 	
							data_return_wr_en <= '1'; 	
							data_return <= i_volume_data;  
							--column_counter <= column_counter + 1; 
						else 
							--data_array <= data_array;    
							element_counter <= (others => '0'); 
							data_return_wr_en <= '0'; 
							data_return <= (others => '0');	 
							snake_fill_complete <= '1';
							--column_counter <= column_counter;
							--filter_counter <= filter_counter + 1; 
						end if; 
						
					else
						--data_array <= data_array; 
						element_counter <= element_counter; 
						data_return_wr_en <= '0'; 	
						data_return <= (others => '0');	 
						snake_fill_complete <= '0'; 
						
						if(element_counter >= unsigned(i_padded_volume_size)) then 
							snake_fill_complete <= '1'; 
						end if; 

					end if; 
					
				when others => 
					element_counter 	<= (others => '0'); 
					filter_counter 		<= (others => '0'); 	
					rows_complete 		<= '0'; 	
					data_mult 			<= (others => '0'); 
					data_valid 			<= '0';   
					data_return 		<= (others => '0'); 
					data_return_wr_en 	<= '0';   
					column_counter		<= (others => '0'); 
					
			end case; 
				
		end if; 
		
	end process; 
	



end arch;
