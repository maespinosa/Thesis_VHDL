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


entity volume_router is		
	port(
	i_clk						: in std_logic; 
	i_reset_n 					: in std_logic; 
	i_enable 					: in std_logic;
	
	i_number_of_filters			: in std_logic_vector(11 downto 0); 
	
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
	i_row_size					: in std_logic_vector(9 downto 0)
	
	); 
end volume_router;

--}} End of automatically maintained section

architecture arch of volume_router is	 
																			 
type router_state is (IDLE, PRIMING, PROCESSING); 
signal current_state 		: router_state; 
signal next_state			: router_state; 

signal data_return 			: std_logic_vector(15 downto 0); 
signal data_return_wr_en 	: std_logic; 

signal data_mult			: std_logic_vector(15 downto 0); 
signal data_valid 			: std_logic; 

signal rows_complete 		: std_logic; 
signal rd_en 				: std_logic; 

signal element_counter 		: unsigned(9 downto 0);    
signal filter_counter 		: unsigned(11 downto 0); 


begin
	
	o_data_return 		<= data_return; 
	o_data_return_wr_en <= data_return_wr_en; 
	
	o_data_mult 		<= data_mult; 
	o_data_valid 		<= data_valid; 
	
	o_prog_empty_thresh <= (others => '0');
	o_rd_en				<= rd_en; 
	o_rows_complete 	<= rows_complete; 
	
	
	
	state_transitions: process(i_clk, i_reset_n) is 
	begin 	
		if(i_reset_n = '0') then
			current_state <= IDLE; 
		elsif(rising_edge(i_clk)) then 
			current_state <= next_state; 
		end if; 
	end process; 
	
	
	next_state_comb: process(current_state, i_empty, i_stop_stack_en, i_next_fifo_full, i_fifo_data_valid, i_filters_loaded, i_convolution_en) is 
	begin 	
		o_data_return 		<= (others => '0'); 
		o_data_return_wr_en <= '0'; 
		o_data_mult 		<= (others => '0'); 
		o_data_valid 		<= '0'; 

		case current_state is 
			
			when IDLE => 	  
				if(i_empty = '0') then 
					next_state <= PRIMING; 
				else 
					next_state <= IDLE; 
				end if; 

			when PRIMING => 

				if(i_empty = '0') then 
					if(i_stop_stack_en = '1' or i_next_fifo_full = '1') then 
						rd_en <= '0'; 
						data_return_wr_en <= '0'; 
						data_return <= (others => '0'); 
					else 
						rd_en <= '1';
						if(i_fifo_data_valid = '1') then 
							data_return_wr_en <= '1'; 	
							data_return <= i_volume_data;  
						end if; 
						
					end if; 	
				else 	 
					rd_en <= '0'; 
					data_return_wr_en <= '0'; 	
					data_return <= (others => '0');
				end if; 
				
				if(i_filters_loaded = '1' and i_convolution_en = '1') then 
					next_state <= PROCESSING; 
				else
					next_state <= PRIMING; 
				end if; 

			when PROCESSING => 
				rd_en <= '1';
				if(i_fifo_data_valid = '1') then 
					data_return_wr_en <= '1'; 
					data_return <= i_volume_data;
					data_mult <= i_volume_data; 
					data_valid <= '1'; 
				else 
					data_return_wr_en <= '0'; 
					data_return <= (others => '0');
					data_mult <= (others => '0'); 
					data_valid <= '0'; 
				end if; 
				
				if(filter_counter = unsigned(i_number_of_filters)) then  
					next_state <= IDLE;  
				else 
					next_state <= PROCESSING;  
				end if; 
				
			when others => 
				next_state <= IDLE; 

			
		end case; 
		
	end process; 
	
	
	
	sequential_logic: process(i_clk, i_reset_n) is 
	begin 
		if(i_reset_n = '0') then 
			element_counter <= (others => '0');  
			filter_counter <= (others => '0'); 	
			rows_complete <= '0'; 
		elsif(rising_edge(i_clk)) then 
			element_counter <= element_counter; 
			filter_counter <= filter_counter; 
			rows_complete <= rows_complete; 
			
			case current_state is 
				when IDLE => 
					element_counter <= (others => '0'); 
					filter_counter <= (others => '0'); 	
					rows_complete <= '0'; 
				
				when PRIMING => 
					element_counter <= (others => '0');   
					filter_counter <= (others => '0'); 	 
					rows_complete <= '0'; 
				
				when PROCESSING => 
					rows_complete <= '0'; 
				
					if(element_counter = unsigned(i_row_size)) then 
						element_counter <= (others => '0');
						if(filter_counter = unsigned(i_number_of_filters)) then  
							filter_counter <= (others => '0'); 	
							rows_complete <= '1'; 
						else 
							filter_counter <= filter_counter + 1; 
						end if; 
						
					else
						element_counter <= element_counter + 1; 
						filter_counter <= filter_counter; 
					end if;
					
				when others => 
					element_counter <= (others => '0');   
					filter_counter <= (others => '0'); 	 
					rows_complete <= '0'; 
			end case; 
				
		end if; 
		
	end process; 
	



end arch;
