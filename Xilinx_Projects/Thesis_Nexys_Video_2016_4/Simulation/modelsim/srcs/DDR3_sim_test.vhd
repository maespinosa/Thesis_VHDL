----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2018 11:59:47 PM
-- Design Name: 
-- Module Name: DDR3_sim_test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DDR3_sim_test is
--  Port ( );
end DDR3_sim_test;

architecture Behavioral of DDR3_sim_test is

-- component declaration for the unit under test (uut)
component DDR3_sim_wrapper is
  port (
    i_debug_en : in STD_LOGIC;
    i_reset_n : in STD_LOGIC;
    i_sys_clk : in STD_LOGIC;
    i_trigger : in STD_LOGIC
  );
end component DDR3_sim_wrapper;


--declare inputs and initialize them to zero.
signal Clk : std_logic := '0';
signal reset_n : std_logic := '0';

--declare outputs
signal count : unsigned(3 downto 0);
signal trigger : std_logic := '0'; 

-- define the period of clock here.
-- It's recommended to use CAPITAL letters to define constants.
constant CLK_PERIOD : time := 10 ns;

begin

    uut: DDR3_sim_wrapper
      port map(
        i_debug_en => '1', 
        i_reset_n => reset_n, 
        i_sys_clk => Clk, 
        i_trigger => trigger
      );


   -- Clock process definitions( clock with 50% duty cycle is generated here.
   Clk_process :process
   begin
        Clk <= '0';
        wait for CLK_PERIOD/2;  --for half of clock period clk stays at '0'.
        Clk <= '1';
        wait for CLK_PERIOD/2;  --for next half of clock period clk stays at '1'.
   end process;
    
   -- Stimulus process, Apply inputs here.
  stim_proc: process
   begin  
        reset_n <= '0';      
        wait for CLK_PERIOD*10; --wait for 10 clock cycles.
        reset_n <='1';                    --then apply reset for 2 clock cycles.
        wait for CLK_PERIOD*2;
        trigger <='0';                    --then pull down reset for 20 clock cycles.
        wait;
  end process;

end;


