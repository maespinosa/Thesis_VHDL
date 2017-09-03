-------------------------------------------------------------------------------
--
-- Title       : bubble_sorter_tb
-- Design      : Bubble_Sorter
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : C:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Bubble_Sorter\Bubble_Sorter\src\bubble_sorter_tb.vhd
-- Generated   : Wed Jun 14 01:17:07 2017
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
--{entity {bubble_sorter_tb} architecture {tb}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;  	
use ieee.numeric_std.all;

library Bubble_Sorter; 
use Bubble_Sorter.cnn_types.all;

entity bubble_sorter_tb is
end bubble_sorter_tb;

--}} End of automatically maintained section

architecture tb of bubble_sorter_tb is	   


component bubble_sorter is
    Port ( i_clk            : in STD_LOGIC;
           i_reset_n        : in STD_LOGIC;
           i_data           : in array_type_9x16bit;
           o_sorted_data    : out array_type_9x16bit
           );
end component;	   

  signal i_clk 	    : STD_LOGIC := '0';
  signal i_reset_n  : STD_LOGIC := '0';	
  
  signal data : array_type_9x16bit := (others => (others => '0')); 
  signal data_out : array_type_9x16bit := (others => (others => '0')); 
  -- Clock Period Definitions
  constant clk_period : time := 10 ns; 

begin

	
	bubble_sorter_UUT : bubble_sorter
    Port Map ( i_clk        => i_clk, 
           i_reset_n        => i_reset_n, 
           i_data           => data, 
           o_sorted_data    => data_out
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
		i_reset_n <= '1';	  
		
		data(0) <= to_unsigned(20000,16);   
		data(1) <= to_unsigned(15000,16); 
		data(2) <= to_unsigned(10000,16); 
		data(3) <= to_unsigned(5000,16); 
		data(4) <= to_unsigned(1000,16); 
		data(5) <= to_unsigned(500,16); 
		data(6) <= to_unsigned(100,16); 
		data(7) <= to_unsigned(50,16); 
		data(8) <= to_unsigned(10,16); 

		
		
		wait; 
	end process; 

end tb;