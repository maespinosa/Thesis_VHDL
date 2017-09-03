-------------------------------------------------------------------------------
--
-- Title       : multiplier_types
-- Design      : Multiplier_Bank
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : C:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Multiplier_bank\Multiplier_Bank\src\multiplier_types.vhd
-- Generated   : Mon Jul 10 21:46:40 2017
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
--{entity {multiplier_types} architecture {types}}

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

package multiplier_types is 
	type array_type_240x16bit is array (239 downto 0) of std_logic_vector(15 downto 0);
	type array_type_240x32bit is array (239 downto 0) of std_logic_vector(31 downto 0); 
end multiplier_types; 
