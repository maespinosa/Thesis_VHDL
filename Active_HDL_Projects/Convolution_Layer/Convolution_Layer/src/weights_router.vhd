-------------------------------------------------------------------------------
--
-- Title       : weights_router
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\weights_router.vhd
-- Generated   : Sat Sep 16 19:33:27 2017
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
--{entity {weights_router} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;  
use ieee.numeric_std.all;

entity weights_router is	  
	port(
	i_clk					: in std_logic; 
	i_reset_n 				: in std_logic;   
	i_enable				: in std_logic; 
	
	i_filter_data 			: in std_logic_vector(15 downto 0); 
	i_volume_primed 		: in std_logic; 
	i_num_filters			: in std_logic_vector(11 downto 0); 
	
	o_data_valid			: out std_logic;   
	o_recycle_filter_en		: out std_logic; 
	o_recycle_filter_data	: out std_logic_vector(15 downto 0);
	o_weights_mult			: out std_logic_vector(15 downto 0);
	o_filter_loaded			: out std_logic; 
	o_filters_processed		: out std_logic; 
	
	i_fifo_data_valid 		: in std_logic; 
	o_rd_en 				: out std_logic; 
	i_empty					: in std_logic; 
	i_almost_empty 			: in std_logic; 
	i_prog_empty			: in std_logic; 
	o_prog_empty_thresh 	: out std_logic_vector(12 downto 0) 
	
	); 
end weights_router;

--}} End of automatically maintained section

architecture arch of weights_router is
begin

	 -- enter your statements here --

end arch;
