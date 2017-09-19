-------------------------------------------------------------------------------
--
-- Title       : volume_router
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\volume_router.vhd
-- Generated   : Sat Sep 16 18:49:23 2017
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
--{entity {volume_router} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all;


entity volume_router is		
	port(
	i_clk				: in std_logic; 
	i_reset_n 			: in std_logic; 
	i_enable 			: in std_logic; 
	
	i_filters_loaded 	: in std_logic; 
	i_is_last_volume_primed 	: in std_logic; 
	i_volume_data 		: in std_logic_vector(15 downto 0); 
	o_this_last_volume_primed: out std_logic; 
	o_recycled_data 	: out std_logic_vector(15 downto 0); 
	o_data_mult			: out std_logic_vector(15 downto 0);    
	o_data_valid  		: out std_logic; 	
    o_rows_complete 	: out std_logic; 
	
	i_fifo_data_valid		: in std_logic; 
	o_rd_en				: out std_logic;   
	i_empty				: in std_logic; 
	i_almost_empty		: in std_logic; 
	i_prog_empty		: in std_logic; 
	o_prog_empty_thresh : out std_logic_vector(9 downto 0)
	
	); 
end volume_router;

--}} End of automatically maintained section

architecture arch of volume_router is
begin

	 -- enter your statements here --

end arch;
