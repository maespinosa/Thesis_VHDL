-------------------------------------------------------------------------------
--
-- Title       : filter_top_tb
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\filter_top_tb.vhd
-- Generated   : Thu Dec 28 14:37:47 2017
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
--{entity {filter_top_tb} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;	
use std.textio.all;
use ieee.std_logic_textio.all;

--library convolution_layer; 
--use convolution_layer.types_pkg.all;

entity exponential_function_tb is
end exponential_function_tb;

--}} End of automatically maintained section

architecture arch of exponential_function_tb is
	 
-- component declaration for the unit under test (uut)
component exponential_function is 
  generic ( 
    g_mult_delay : integer := 8;
    g_adder_delay : integer := 10
    ); 
  port (
    i_clk : in std_logic; 
    i_reset_n : in std_logic; 
    i_data : in std_logic_vector(15 downto 0); 
    i_valid : in std_logic; 
    i_ready : in std_logic; 
    
    o_data : out std_logic_vector(15 downto 0); 
    o_valid : out std_logic; 
    o_ready : out std_logic

  ); 
end component; 	


signal clk : std_logic := '0';
signal reset_n : std_logic := '0'; 
signal reset: std_logic := '1'; 
--signal count : unsigned(3 downto 0);

constant CLK_PERIOD : time := 10 ns; 	
constant DATA_WIDTH : integer := 16; 

--signal memory_unit : array_type_varx16bit(40000-1 downto 0);   
signal exp_input : std_logic_vector(15 downto 0); 
signal exp_input_valid : std_logic; 
signal sender_ready : std_logic; 

signal exp_result : std_logic_vector(15 downto 0);     
signal exp_result_valid : std_logic;  
signal function_ready : std_logic;   


begin 
	
  reset <= not(reset_n); 



uut: exponential_function 
  generic map( 
    g_mult_delay => 8,
    g_adder_delay => 10
    )
  port map(
    i_clk     => clk,
    i_reset_n => reset_n, 
    i_data    => exp_input,  
    i_valid   => exp_input_valid, 
    i_ready   => sender_ready, 
    o_data    => exp_result,
    o_valid   => exp_result_valid, 
    o_ready   => function_ready

  );

  
   clk_process :process
   begin
        clk <= '0';
        wait for CLK_PERIOD/2;  --for half of clock period clk stays at '0'.
        clk <= '1';
        wait for CLK_PERIOD/2;  --for next half of clock period clk stays at '1'.
   end process;
    
   -- Stimulus process, Apply inputs here.
  stim_proc: process
  begin  
	  
	  reset_n <= '0'; 

	  wait for CLK_PERIOD*10;	
	  
	  reset_n <= '1'; 

    exp_input <= x"3E80";
    exp_input_valid <= '1'; 
    sender_ready <= '1';  
	  
	  wait for CLK_PERIOD*10;	 
	  
 
	  wait until rising_edge(clk);

	  
	  while(sender_ready = '1')	 loop
        wait until rising_edge(clk);
	  end loop; 
	  
	 
	  
    wait;
  end process; 


end arch;
