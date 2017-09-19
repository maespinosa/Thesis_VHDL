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

library Convolution_Layer; 
use Convolution_Layer.types_pkg.all;

entity accumulator is
	generic( 
	g_product_width : integer := 32; 
	g_accumulator_width	: integer := 32; 
	g_dsps_used	: integer := 200
	); 
	port(
	i_clk 				: in std_logic; 
	i_reset_n 			: in std_logic; 
	i_enable			: in std_logic; 
	
	i_products_array	: in array_type_varx32bit(g_dsps_used-1 downto 0); 
	i_filter_size		: in std_logic_vector(3 downto 0); 
	o_acc_valid			: out std_logic; 
	o_acc_data			: out std_logic_vector(g_accumulator_width-1 downto 0)
	); 
end accumulator;

--}} End of automatically maintained section

architecture arch of accumulator is
begin

	 -- enter your statements here --

end arch;
