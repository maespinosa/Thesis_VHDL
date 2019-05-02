-------------------------------------------------------------------------------
--
-- Title       : types_pkg
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\types_pkg.vhd
-- Generated   : Wed Sep 13 19:49:18 2017
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
--{entity {types_pkg} architecture {\package\}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all; 

package types_pkg is	
	
type array_type_220x16bit is array (219 downto 0) of std_logic_vector(15 downto 0);  
type array_type_220x32bit is array (219 downto 0) of std_logic_vector(31 downto 0); 	 

type array_type_varx32bit is array(integer range <>) of std_logic_vector(31 downto 0); 
type array_type_varx16bit is array(integer range <>) of std_logic_vector(31 downto 0); 

type array_type_varx11bit is array(integer range <>) of std_logic_vector(10 downto 0); 
type array_type_varx7bit is array(integer range <>) of std_logic_vector(6 downto 0); 
type array_type_varx3bit is array(integer range <>) of std_logic_vector(2 downto 0);  
type array_type_varx64bit is array(integer range <>) of std_logic_vector(63 downto 0); 
	
	
	
end types_pkg;

