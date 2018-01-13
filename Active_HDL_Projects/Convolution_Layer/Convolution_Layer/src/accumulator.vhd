-------------------------------------------------------------------------------
--
-- Title       : accumulator
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\accumulator.vhd
-- Generated   : Sat Sep  2 22:35:03 2017
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
--{entity {accumulator} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;  
use ieee.numeric_std.all;  
use ieee.std_logic_misc.all;

library Convolution_Layer; 
use Convolution_Layer.types_pkg.all;

entity accumulator is
	generic( 
	g_data_width  : integer := 16; 
	g_product_width : integer := 32; 
	g_accumulator_width	: integer := 32; 
	g_dsps_used	: integer := 200
	); 
	port(
	i_clk 					: in std_logic; 
	i_reset_n 				: in std_logic; 
	i_enable				: in std_logic; 
	
	i_products_array		: in array_type_varx16bit(g_dsps_used-1 downto 0); 
	i_products_array_valid 	: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_filter_size			: in std_logic_vector(3 downto 0); 
	o_acc_valid				: out std_logic; 
	o_acc_data				: out std_logic_vector(g_data_width-1 downto 0)
	); 
end accumulator;

--}} End of automatically maintained section

architecture arch of accumulator is	 

signal dsp_sums : signed(g_data_width-1 downto 0);   
signal filter_element_counter : unsigned(3 downto 0); 
signal kernel_sum : signed(g_data_width-1 downto 0); 	 
signal kernel_sum_valid : std_logic; 


begin
	
	o_acc_valid <= kernel_sum_valid; 
	o_acc_data	<= std_logic_vector(kernel_sum); 
	
	
	

	dsp_sum: process(i_enable, i_products_array, i_filter_size) is
	begin 
		if(i_enable = '1' and and_reduce(i_products_array_valid) = '1') then 
			for i in 0 to g_dsps_used-1 loop 
				dsp_sums <= dsp_sums + signed(i_products_array(i)); 
			end loop;
		else 
			dsp_sums <= (others => '0'); 
		end if; 

	end process; 
	
	
	kernel_sums: process(i_clk, i_reset_n) is 
	begin 
		if(i_reset_n = '0') then  
			kernel_sum <= (others => '0'); 
			filter_element_counter <= (others => '0');
			kernel_sum_valid <= '0'; 
			
		elsif(rising_edge(i_clk)) then 	
			kernel_sum <= kernel_sum; 
			filter_element_counter <= filter_element_counter; 
			
			if(i_enable = '1' and and_reduce(i_products_array_valid) = '1') then 
				if(filter_element_counter = unsigned(i_filter_size)) then 
					kernel_sum <= (others => '0'); 	
					kernel_sum_valid <= '0'; 
					filter_element_counter <= (others => '0'); 
				else 
					kernel_sum <= kernel_sum + dsp_sums;  
					kernel_sum_valid <= '0'; 
					filter_element_counter <= filter_element_counter + 1;  
					if(filter_element_counter = unsigned(i_filter_size)-1) then 
						kernel_sum_valid <= '1'; 
					end if; 
					
						
				end if; 
			else   
				filter_element_counter <= filter_element_counter; 
				kernel_sum <= (others => '0'); 
				kernel_sum_valid <= '0'; 
			end if; 
			
		end if; 

		
	end process; 
	
	
	

end arch;
