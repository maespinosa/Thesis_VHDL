-------------------------------------------------------------------------------
--
-- Title       : OV5642_IF_TOP_tb
-- Design      : masters_thesis_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Masters_Thesis\masters_thesis_lib\src\OV5642_IF_TOP_tb.vhd
-- Generated   : Fri Jun 17 19:51:13 2016
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
--{entity {OV5642_IF_TOP_tb} architecture {testbench}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity OV5642_IF_TOP_tb is
end OV5642_IF_TOP_tb;

--}} End of automatically maintained section

architecture testbench of OV5642_IF_TOP_tb is  

component OV5642_IF_TEST 
  port(
       i_EN 		: in STD_LOGIC;
       i_clk 		: in STD_LOGIC;
       i_reset_n 	: in STD_LOGIC;
       match 		: out STD_LOGIC;
       o_X_POS 		: out INTEGER;
       o_Y_POS 		: out INTEGER
  	);
  end component;

  signal i_EN 	    : STD_LOGIC := '0';
  signal i_clk 	    : STD_LOGIC := '0';
  signal i_reset_n  : STD_LOGIC := '0';
  signal match 		: STD_LOGIC := '0';
  signal o_X_POS 	: INTEGER := 0;
  signal o_Y_POS 	: INTEGER := 0; 
  
  -- Clock Period Definitions
  constant clk_period : time := 10 ns; 
  

begin

	OV5642_IF_TEST_UUT : OV5642_IF_TEST PORT MAP(  
	   i_EN 		=> i_EN,
       i_clk 		=> i_clk, 
       i_reset_n 	=> i_reset_n, 
       match 		=> match,
       o_X_POS 		=> o_X_POS,
       o_Y_POS 		=> o_Y_POS 
	); 
	
	clk_process : process
	begin 
		i_clk <= '1'; 
		wait for clk_period/2; --for xx ns signal is '1'.
	    i_clk <= '0'; 
		wait for clk_period/2; --for xx ns signal is '0'.
	end process; 
	
	--Stimulus process
	stim_proc: process
	begin 
		wait for 20 ns; 
		i_EN <= '1'; 
		i_reset_n <= '1';
		wait; 
	end process; 
	

end;
