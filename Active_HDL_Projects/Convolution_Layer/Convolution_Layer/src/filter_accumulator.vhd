-------------------------------------------------------------------------------
--
-- Title       : filter_accumulator
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\filter_accumulator.vhd
-- Generated   : Sat Sep 16 21:03:07 2017
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
--{entity {filter_accumulator} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all; 


entity filter_accumulator is
	generic(
		g_data_width : integer := 16
	); 
	port(
	i_clk 					: in std_logic; 
	i_reset_n 				: in std_logic; 
	
	i_acc_data_valid 		: in std_logic; 
	i_acc_data 				: in std_logic_vector(g_data_width-1 downto 0); 
	
	i_recycled_acc_data_en 	: in std_logic;
	i_recycled_acc_data		: in std_logic_vector(g_data_width-1 downto 0); 
	
	o_acc_filter_data 		: out std_logic_vector(g_data_width-1 downto 0); 
	
	o_data_valid 			: out std_logic; 
	i_full					: in std_logic; 
	i_almost_full			: in std_logic; 
	i_prog_full				: in std_logic; 
	o_prog_full_thresh		: out std_logic_vector(10 downto 0); 
	o_hold					: out std_logic; 
	i_hold_clear			: in std_logic; 
	i_num_filters			: in std_logic_vector(11 downto 0); 
	i_num_iterations		: in std_logic_vector(7 downto 0)
	); 
end filter_accumulator;
																					  
--}} End of automatically maintained section

architecture arch of filter_accumulator is		
signal hold_flag : std_logic;  
signal filter_iteration : unsigned(7 downto 0);   
signal filter_counter : unsigned(11 downto 0); 


begin 
	o_hold <= hold_flag;
	o_prog_full_thresh <= (others => '0'); 
	
	
	main: process(i_acc_data_valid,i_recycled_acc_data_en,hold_flag) 	 	
	begin 
		
		o_data_valid 			<= '0'; 
		o_acc_filter_data 		<= (others => '0');  
		
		if(hold_flag = '1') then 
			o_data_valid 			<= '0'; 
			o_acc_filter_data 		<= (others => '0');  
		elsif(i_acc_data_valid = '1' and i_recycled_acc_data_en = '1') then 
			o_acc_filter_data 	<= std_logic_vector(unsigned(i_acc_data) + unsigned(i_recycled_acc_data)); 
			o_data_valid 		<= '1'; 
		elsif(i_acc_data_valid = '1' and i_recycled_acc_data_en = '0') then 
			o_acc_filter_data 	<= i_acc_data; 
			o_data_valid 		<= '1'; 
		end if;   
	
	end process;  
	
	filter_counting: process(i_clk, i_reset_n) is 
	begin  	 
		if(i_reset_n = '0') then 
			filter_iteration <= (others => '0'); 
			filter_counter <= (others => '0'); 	
			
			
		elsif(filter_counter = unsigned(i_num_filters)) then  
			if(filter_iteration = unsigned(i_num_iterations)) then 

				if(i_hold_clear = '1') then 
					hold_flag <= '0'; 
					filter_iteration <= (others => '0');  
				else 
					filter_iteration <= filter_iteration;
					hold_flag <= '1';  
				end if;

			else 
				filter_iteration <= filter_iteration + 1;
			end if; 
			
		else 
			filter_counter <= filter_counter + 1; 
			filter_iteration <= filter_iteration; 
		end if; 
		
		
		
		
	end process; 
	
	
end arch;
