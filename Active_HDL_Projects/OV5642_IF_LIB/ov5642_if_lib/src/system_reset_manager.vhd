-------------------------------------------------------------------------------
--
-- Title       : system_reset_manager
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\system_reset_manager.vhd
-- Generated   : Sun Apr  9 18:05:22 2017
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
--{entity {system_reset_manager} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity system_reset_manager is
	port(
	i_clk : in std_logic; 
	i_hardware_reset: in std_logic;  
	i_locked : in std_logic; 
	o_reset_n : out std_logic
	); 
end system_reset_manager;

--}} End of automatically maintained section

architecture arch of system_reset_manager is 

signal reset_n : std_logic; 

begin  
	
o_reset_n <= reset_n; 
	
reset_proc: process(all) is 
begin 
	if(i_locked = '1') then 
		if(i_hardware_reset = '1') then 	
			reset_n <= '0'; 
	    else 
			reset_n <= '1';   
		end if; 
		
	else 
		reset_n <= '0'; 
	end if; 
end process; 


end arch;
