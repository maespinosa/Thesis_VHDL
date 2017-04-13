-------------------------------------------------------------------------------
--
-- Title       : sim_clk_generator
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\sim_clk_generator.vhd
-- Generated   : Mon Apr 10 17:48:34 2017
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
--{entity {sim_clk_generator} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity sim_clk_generator is	 
	generic(	 
		clk_period : time -- Clock period desired 
	); 
	 port(
		 o_clk : out STD_LOGIC;
		 o_reset_n : out STD_LOGIC
	     );
end sim_clk_generator;

--}} End of automatically maintained section

architecture arch of sim_clk_generator is
begin

   -- Clock process definitions( clock with 50% duty cycle is generated here.
   clk_process :process
   begin
        o_clk <= '0';
        wait for clk_period/2;  --for 0.5 ns signal is '0'.
        o_clk <= '1';
        wait for clk_period/2;  --for next 0.5 ns signal is '1'.
   end process;	
   
   reset_process: process 
   begin  
	   o_reset_n <= '0'; 
	   wait for 50 ns; 
	   o_reset_n <= '1';
	   wait;
   end process; 
   
	   
   
   

end arch;
