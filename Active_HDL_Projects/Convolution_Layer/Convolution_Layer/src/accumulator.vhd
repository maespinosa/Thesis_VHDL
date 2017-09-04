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

entity accumulator is
	generic( 
	g_product_width : integer := 32; 
	g_conv_width	: integer := 16
	); 
	port(
	i_clk 				: in std_logic; 
	i_reset_n 			: in std_logic; 
	i_enable			: in std_logic; 
	
	i_product0_red 		: in std_logic_vector(g_product_width-1 downto 0); 
	i_product1_red 		: in std_logic_vector(g_product_width-1 downto 0); 
	i_product2_red 		: in std_logic_vector(g_product_width-1 downto 0); 
	i_product3_red 		: in std_logic_vector(g_product_width-1 downto 0); 
	i_product4_red 		: in std_logic_vector(g_product_width-1 downto 0); 
	i_product5_red 		: in std_logic_vector(g_product_width-1 downto 0); 
	i_product6_red 		: in std_logic_vector(g_product_width-1 downto 0); 
	i_product7_red 		: in std_logic_vector(g_product_width-1 downto 0); 
	i_product8_red 		: in std_logic_vector(g_product_width-1 downto 0); 
	i_product9_red 		: in std_logic_vector(g_product_width-1 downto 0); 
	i_product10_red 	: in std_logic_vector(g_product_width-1 downto 0); 
	
    i_product0_green 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product1_green 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product2_green 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product3_green 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product4_green 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product5_green 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product6_green 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product7_green 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product8_green 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product9_green 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product10_green 	: in std_logic_vector(g_product_width-1 downto 0); 
		
	i_product0_blue 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product1_blue 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product2_blue 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product3_blue 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product4_blue 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product5_blue 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product6_blue 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product7_blue 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product8_blue 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product9_blue 	: in std_logic_vector(g_product_width-1 downto 0); 
	i_product10_blue 	: in std_logic_vector(g_product_width-1 downto 0);
	
	o_conv_out			: out std_logic_vector(g_conv_width -1 downto 0)
	); 
end accumulator;

--}} End of automatically maintained section

architecture arch of accumulator is
begin

	 -- enter your statements here --

end arch;
