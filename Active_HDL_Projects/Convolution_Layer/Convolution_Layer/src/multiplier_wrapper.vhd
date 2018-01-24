-------------------------------------------------------------------------------
--
-- Title       : multiplier_wrapper
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\multiplier_wrapper.vhd
-- Generated   : Thu Jan 18 20:44:15 2018
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
--{entity {multiplier_wrapper} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;	 
use ieee.numeric_std.all; 

library convolution_layer; 
use convolution_layer.types_pkg.all;

entity multiplier_wrapper is  
	generic(
		g_data_width : integer:= 16
	port(
	i_clk 				: in std_logic; 
	i_reset_n 			: in std_logic; 
	
	i_volume_data 		: in std_logic_vector(15 downto 0);  
	i_volume_data_valid : in std_logic; 
	
	i_weight_data   	: in std_logic_vector(g_data_width-1 downto 0); 
	i_weight_data_valid : in std_logic; 
	
	i_stride			: in std_logic_vector(3 downto 0); 	   
	i_filter_size		: in std_logic_vector(3 downto 0); 
	
	o_result			: out std_logic_vector(g_data_width-1 downto 0); 
	o_result_valid		: out std_logic
	); 
end multiplier_wrapper;

--}} End of automatically maintained section

architecture arch of multiplier_wrapper is 

component conv_fp_multiplier IS
  PORT (
    a 		: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b 		: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    clk 	: IN STD_LOGIC;
    result 	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END component;


signal weight_shift_register : array_type_varx16bit(10 downto 0); 
signal volume_shift_register : array_type_varx16bit(10 downto 0); 

signal result : std_logic_vector(g_data_width-1 downto 0); 
signal result_valid : std_logic; 	   

signal stride_counter : std_logic_vector(4 downto 0); 



begin		 
	
	
	multiply_unit: conv_fp_multiplier
	  port_map (
	    a 		: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	    b 		: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	    clk 	: IN STD_LOGIC;
	    result 	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	  );

	
	
	main: process(i_clk, i_reset_n) 
	begin  
		if(i_reset_n = '0') then   
			weight_shift_register <= (others => (others => '0')); 
			volume_shift_register <= (others => (others => '0')); 
			
			result <= (others => '0'); 
			result_valid <= '0';
			
			stride_counter <= (others => '0'); 

		elsif(rising_edge(i_clk)) then 	 
			
			
			
			
			
			
			
			
		end if; 
		
	end process; 
	



end arch;
