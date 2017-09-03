----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/04/2017 10:48:08 PM
-- Design Name: 
-- Module Name: sensor_to_FPGA_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sensor_to_FPGA_tb is
--  Port ( );
end sensor_to_FPGA_tb;

architecture Behavioral of sensor_to_FPGA_tb is

component sensor_to_FPGA_model is
  Port ( 
    i_clk_100MHz : in std_logic; 
    i_reset_n    : in std_logic; 
    i_PCLK_sim   : in std_logic
  );
end component sensor_to_FPGA_model;


signal pclk : std_logic := '0';
signal clk_100MHz : std_logic := '0';  
signal reset_n : std_logic := '0'; 
signal count : std_logic_vector(3 downto 0); 

constant pclk_period : time := 40 ns; 
constant clk_100MHz_period : time := 10ns; 

begin

    uut: sensor_to_FPGA_model 
     port map(
        i_clk_100MHz => clk_100MHz, 
        i_reset_n => reset_n, 
        i_PCLK_sim => pclk
        ); 
    
    
   -- Clock process definitions( clock with 50% duty cycle is generated here.
   pclk_process :process
   begin
        pclk <= '0';
        wait for pclk_period/2;  --for 0.5 ns signal is '0'.
        pclk <= '1';
        wait for pclk_period/2;  --for next 0.5 ns signal is '1'.
   end process;
   
   -- Clock process definitions( clock with 50% duty cycle is generated here.
   clk_100MHz_process :process
   begin
        clk_100MHz <= '0';
        wait for clk_100MHz_period/2;  --for 0.5 ns signal is '0'.
        clk_100MHz <= '1';
        wait for clk_100MHz_period/2;  --for next 0.5 ns signal is '1'.
   end process;
   
   
   
   stim_proc: process
   begin 
   
    wait for 10 ns; 
    reset_n <= '1'; 
    wait; 
    
    end process; 
    
    
end Behavioral;
