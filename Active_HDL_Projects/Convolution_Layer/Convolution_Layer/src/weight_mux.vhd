-------------------------------------------------------------------------------
--
-- Title       : weight_mux
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\weight_mux.vhd
-- Generated   : Sat Sep 16 19:14:20 2017
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
--{entity {weight_mux} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all;

entity weight_mux is
	generic(
	g_mux_id	: integer := 0
	); 
	port(
	i_clk		: in std_logic; 
	i_reset_n	: in std_logic;    
	i_enable	: in std_logic; 
	
	i_recycled_filter 		: in std_logic_vector(15 downto 0); 
	i_new_filter_data		: in std_logic_vector(15 downto 0); 
	i_recycled_filter_en 	: in std_logic; 
	i_filter_size			: in std_logic_vector(3 downto 0); 	
	i_num_filters			: in std_logic_vector(11 downto 0); 
	
	o_filter_data			: out std_logic_vector(15 downto 0); 
	o_current_filter_num	: out std_logic_vector(11 downto 0); 
	
	o_data_valid			: out std_logic; 
	i_full					: in std_logic; 
	i_almost_full			: in std_logic; 
	i_prog_full				: in std_logic; 
	o_prog_full_thresh		: out std_logic_vector(12 downto 0); 
	o_get_weight_row		: out std_logic
	); 
end weight_mux;

--}} End of automatically maintained section

architecture arch of weight_mux is
begin

	 -- enter your statements here --

end arch;
