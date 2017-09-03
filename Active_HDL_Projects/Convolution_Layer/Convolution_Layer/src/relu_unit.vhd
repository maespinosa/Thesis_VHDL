-------------------------------------------------------------------------------
--
-- Title       : relu_unit
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\relu_unit.vhd
-- Generated   : Sun Sep  3 08:38:20 2017
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
--{entity {relu_unit} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;  
use ieee.numeric_std.all; 


entity relu_unit is	 
	generic(
	g_conv_width : integer := 16; 
	g_relu_width : integer := 16
	); 
	port(
	i_clk 		: in std_logic; 
	i_reset_n	: in std_logic; 	
	i_conv_out : in std_logic_vector(g_conv_width-1 downto 0); 	 	
	i_fifo_full	: in std_logic; 
	i_fifo_almost_full : in std_logic; 
	i_fifo_prog_full	: in std_logic; 
	
	o_relu_out : out std_logic_vector(g_relu_width-1 downto 0); 
	o_wr_en 		: out std_logic; 	  
	o_fifo_prog_full_thresh : out std_logic_vector(9 downto 0)
	); 
	
end relu_unit;

--}} End of automatically maintained section

architecture arch of relu_unit is
begin

	 -- enter your statements here --

end arch;
