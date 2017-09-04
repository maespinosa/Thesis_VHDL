-------------------------------------------------------------------------------
--
-- Title       : filter_weight_controller
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\filter_weight_controller.vhd
-- Generated   : Mon Sep  4 15:19:23 2017
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
--{entity {filter_weight_controller} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all; 

entity filter_weight_controller is	 
	generic(
	g_weight_width : integer := 16
	); 
	port(
	i_clk				: in std_logic; 
	i_reset_n			: in std_logic;   		
	i_enable			: in std_logic; 
	
	i_filter_weights	: in std_logic_vector(g_weight_width-1 downto 0); 
	i_filter_height		: in std_logic_vector(3 downto 0); 
	i_filter_width		: in std_logic_vector(3 downto 0); 
	
	o_weights_loaded	: out std_logic; 
	
	o_w0_red			: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w1_red	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w2_red	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w3_red	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w4_red	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w5_red	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w6_red	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w7_red	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w8_red	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w9_red	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w10_red	 		: out std_logic_vector(g_weight_width-1 downto 0); 	 
	
	o_w0_green			: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w1_green	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w2_green	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w3_green	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w4_green	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w5_green	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w6_green	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w7_green	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w8_green	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w9_green	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w10_green	 		: out std_logic_vector(g_weight_width-1 downto 0); 	 
	
	o_w0_blue			: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w1_blue	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w2_blue	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w3_blue	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w4_blue	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w5_blue	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w6_blue	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w7_blue	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w8_blue	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w9_blue	 		: out std_logic_vector(g_weight_width-1 downto 0); 
	o_w10_blue	 		: out std_logic_vector(g_weight_width-1 downto 0) 	
	); 
end filter_weight_controller;

--}} End of automatically maintained section

architecture arch of filter_weight_controller is	 

	type state_types is (idle); 


begin	
	
	state_transition: process(i_clk, i_reset_n) is 
	begin 
		
		
		
	end process; 
	
	
	next_state_comb: process(i_enable) is
	begin 
		
		
	end process; 
	
	
	sequential_logic: process(i_clk, i_reset_n) is 
	begin 
		
		
		
	end process; 
	

	 -- enter your statements here --

end arch;
