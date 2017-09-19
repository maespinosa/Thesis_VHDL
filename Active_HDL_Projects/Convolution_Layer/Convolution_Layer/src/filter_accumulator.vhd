-------------------------------------------------------------------------------
--
-- Title       : filter_accumulator
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\filter_accumulator.vhd
-- Generated   : Sat Sep 16 21:03:07 2017
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
--{entity {filter_accumulator} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all; 


entity filter_accumulator is	 
	port(
	i_clk : in std_logic; 
	i_reset_n : in std_logic; 
	
	i_acc_data_valid : in std_logic; 
	i_acc_data : in std_logic_vector(31 downto 0); 
	i_recycled_acc_data_en : in std_logic;
	
	i_recycled_acc_data	: in std_logic_vector(31 downto 0); 
	
	o_acc_filter_data : out std_logic_vector(31 downto 0); 
	
	o_data_valid 	: out std_logic; 
	i_full			: in std_logic; 
	i_almost_full	: in std_logic; 
	i_prog_full		: in std_logic; 
	o_prog_full_thresh	: out std_logic_vector(10 downto 0)
	); 
end filter_accumulator;

--}} End of automatically maintained section

architecture arch of filter_accumulator is
begin

	 -- enter your statements here --

end arch;
