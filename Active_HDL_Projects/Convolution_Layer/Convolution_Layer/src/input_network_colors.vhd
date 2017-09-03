-------------------------------------------------------------------------------
--
-- Title       : input_network_colors
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : C:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\input_network_colors.vhd
-- Generated   : Sat Sep  2 20:11:29 2017
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
--{entity {input_network_colors} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all; 

entity input_network_colors is	
	generic(
	g_data_width: integer := 16;   
	g_red_bits 	: integer := 4; 
	g_green_bits	: integer := 4; 
	g_blue_bits	: integer := 4
	); 
	port( 
	
	i_clk: in std_logic; 
	i_reset_n : in std_logic; 
	
	i_dout0 : in std_logic_vector(g_data_width-1 downto 0);   
	i_dout1 : in std_logic_vector(g_data_width-1 downto 0); 
	i_dout2 : in std_logic_vector(g_data_width-1 downto 0); 
	i_dout3 : in std_logic_vector(g_data_width-1 downto 0); 
	i_dout4 : in std_logic_vector(g_data_width-1 downto 0); 
	i_dout5 : in std_logic_vector(g_data_width-1 downto 0); 
	i_dout6 : in std_logic_vector(g_data_width-1 downto 0); 
	i_dout7 : in std_logic_vector(g_data_width-1 downto 0); 
	i_dout8 : in std_logic_vector(g_data_width-1 downto 0); 
	i_dout9 : in std_logic_vector(g_data_width-1 downto 0); 
	i_dout10 : in std_logic_vector(g_data_width-1 downto 0); 
	
	o_dout0_red : out std_logic_vector(g_red_bits-1 downto 0);   
	o_dout1_red : out std_logic_vector(g_red_bits-1 downto 0); 
	o_dout2_red : out std_logic_vector(g_red_bits-1 downto 0); 
	o_dout3_red : out std_logic_vector(g_red_bits-1 downto 0); 
	o_dout4_red : out std_logic_vector(g_red_bits-1 downto 0); 
	o_dout5_red : out std_logic_vector(g_red_bits-1 downto 0); 
	o_dout6_red : out std_logic_vector(g_red_bits-1 downto 0); 
	o_dout7_red : out std_logic_vector(g_red_bits-1 downto 0); 
	o_dout8_red : out std_logic_vector(g_red_bits-1 downto 0); 
	o_dout9_red : out std_logic_vector(g_red_bits-1 downto 0); 
	o_dout10_red : out std_logic_vector(g_red_bits-1 downto 0); 

	o_dout0_green : out std_logic_vector(g_green_bits-1 downto 0);   
	o_dout1_green : out std_logic_vector(g_green_bits-1 downto 0); 
	o_dout2_green : out std_logic_vector(g_green_bits-1 downto 0); 
	o_dout3_green : out std_logic_vector(g_green_bits-1 downto 0); 
	o_dout4_green : out std_logic_vector(g_green_bits-1 downto 0); 
	o_dout5_green : out std_logic_vector(g_green_bits-1 downto 0); 
	o_dout6_green : out std_logic_vector(g_green_bits-1 downto 0); 
	o_dout7_green : out std_logic_vector(g_green_bits-1 downto 0); 
	o_dout8_green : out std_logic_vector(g_green_bits-1 downto 0); 
	o_dout9_green : out std_logic_vector(g_green_bits-1 downto 0); 
	o_dout10_green : out std_logic_vector(g_green_bits-1 downto 0); 
	
	o_dout0_blue : out std_logic_vector(g_blue_bits-1 downto 0);   
	o_dout1_blue : out std_logic_vector(g_blue_bits-1 downto 0); 
	o_dout2_blue : out std_logic_vector(g_blue_bits-1 downto 0); 
	o_dout3_blue : out std_logic_vector(g_blue_bits-1 downto 0); 
	o_dout4_blue : out std_logic_vector(g_blue_bits-1 downto 0); 
	o_dout5_blue : out std_logic_vector(g_blue_bits-1 downto 0); 
	o_dout6_blue : out std_logic_vector(g_blue_bits-1 downto 0); 
	o_dout7_blue : out std_logic_vector(g_blue_bits-1 downto 0); 
	o_dout8_blue : out std_logic_vector(g_blue_bits-1 downto 0); 
	o_dout9_blue : out std_logic_vector(g_blue_bits-1 downto 0); 
	o_dout10_blue : out std_logic_vector(g_blue_bits-1 downto 0)
	); 
		
end input_network_colors;

--}} End of automatically maintained section

architecture arch of input_network_colors is
begin

	 -- enter your statements here --

end arch;
