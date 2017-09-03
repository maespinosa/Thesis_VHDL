-------------------------------------------------------------------------------
--
-- Title       : input_fifo_net_controller
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\input_fifo_net_controller.vhd
-- Generated   : Tue Aug 15 22:46:45 2017
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
--{entity {input_fifo_net_controller} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity input_fifo_net_controller is	   
	generic(
	g_weight_width : integer := 16
	); 
	port(
	i_clk 				: in std_logic; 
	i_reset_n 			: in std_logic; 	

    i_inbuff_valid				: in std_logic; 
	i_inbuff_dout				: in std_logic_vector(15 downto 0);  
	o_inbuff_rd_en				: out std_logic; 
	i_inbuff_empty				: in std_logic; 
	i_inbuff_almost_empty		: in std_logic; 

	i_inbuff_prog_empty			: in std_logic; 
	o_inbuff_prog_empty_thresh 	: out std_logic_vector(9 downto 0); 
	
	
	o_wr_en						: out std_logic_vector(10 downto 0); 
	i_full						: in std_logic_vector(10 downto 0); 
	i_almost_full 				: in std_logic_vector(10 downto 0); 
	i_prog_full					: in std_logic_vector(10 downto 0);	  
	o_prog_full_thresh			: out std_logic_vector(9 downto 0);
	
	i_valid						: in std_logic_vector(10 downto 0);	 
	o_rd_en						: out std_logic_vector(10 downto 0);
	i_empty						: in std_logic_vector(10 downto 0);
	i_almost_empty				: in std_logic_vector(10 downto 0);
	i_prog_empty				: in std_logic_vector(10 downto 0);
	o_prog_empty_thresh 		: out std_logic_vector(9 downto 0); 
	
	w0_red						: out std_logic_vector(g_weight_width-1 downto 0); 
	w1_red	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w2_red	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w3_red	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w4_red	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w5_red	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w6_red	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w7_red	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w8_red	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w9_red	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w10_red	 					: out std_logic_vector(g_weight_width-1 downto 0); 	 
	
	w0_green					: out std_logic_vector(g_weight_width-1 downto 0); 
	w1_green	 				: out std_logic_vector(g_weight_width-1 downto 0); 
	w2_green	 				: out std_logic_vector(g_weight_width-1 downto 0); 
	w3_green	 				: out std_logic_vector(g_weight_width-1 downto 0); 
	w4_green	 				: out std_logic_vector(g_weight_width-1 downto 0); 
	w5_green	 				: out std_logic_vector(g_weight_width-1 downto 0); 
	w6_green	 				: out std_logic_vector(g_weight_width-1 downto 0); 
	w7_green	 				: out std_logic_vector(g_weight_width-1 downto 0); 
	w8_green	 				: out std_logic_vector(g_weight_width-1 downto 0); 
	w9_green	 				: out std_logic_vector(g_weight_width-1 downto 0); 
	w10_green	 				: out std_logic_vector(g_weight_width-1 downto 0); 	 
	
	w0_blue						: out std_logic_vector(g_weight_width-1 downto 0); 
	w1_blue	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w2_blue	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w3_blue	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w4_blue	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w5_blue	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w6_blue	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w7_blue	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w8_blue	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w9_blue	 					: out std_logic_vector(g_weight_width-1 downto 0); 
	w10_blue	 				: out std_logic_vector(g_weight_width-1 downto 0) 	 
	
	); 	
end input_fifo_net_controller;

--}} End of automatically maintained section

architecture arch of input_fifo_net_controller is
begin

	 -- enter your statements here --

end arch;
