-------------------------------------------------------------------------------
--
-- Title       : volume_mux
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\volume_mux.vhd
-- Generated   : Sat Sep 16 18:40:52 2017
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
--{entity {volume_mux} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity volume_mux is	
	generic(
	g_mux_id	: integer := 0
	); 
	port(
	i_clk 				: in std_logic; 
	i_reset_n 			: in std_logic;  
	i_enable			: in std_logic;

	i_filter_size 		: in std_logic_vector(3 downto 0); 
	i_recycled_data		: in std_logic_vector(15 downto 0); 
	i_new_data 			: in std_logic_vector(15 downto 0); 
	i_prev_data			: in std_logic_vector(15 downto 0); 
	i_filters_processed : in std_logic; 
	o_data 				: out std_logic_vector(15 downto 0);   
	i_new_data_select	: in std_logic; 

	
	o_data_valid		: out std_logic;
	i_full				: in std_logic; 
	i_almost_full		: in std_logic; 
	i_prog_full			: in std_logic; 
	o_prog_full_thresh	: out std_logic_vector(9 downto 0); 
	
	o_get_volume_row	: out std_logic; 
	
	i_fifo_we			: in std_logic; 
	o_fifo_full			: out std_logic; 
	o_fifo_almost_full		: out std_logic; 
	o_fifo_prog_full			: out std_logic;  
	i_fifo_prog_full_thresh  : in std_logic_vector(9 downto 0)

	
	
	); 
	
	
	
	
end volume_mux;

--}} End of automatically maintained section

architecture arch of volume_mux is
begin

	 -- enter your statements here --

end arch;
