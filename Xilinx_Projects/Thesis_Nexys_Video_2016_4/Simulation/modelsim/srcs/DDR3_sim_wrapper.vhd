--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Sun Nov 11 10:35:08 2018
--Host        : Marks-M3800 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target DDR3_sim_wrapper.bd
--Design      : DDR3_sim_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDR3_sim_wrapper is
  port (
    i_debug_en : in STD_LOGIC;
    i_reset_n : in STD_LOGIC;
    i_sys_clk : in STD_LOGIC;
    i_trigger : in STD_LOGIC
  );
end DDR3_sim_wrapper;

architecture STRUCTURE of DDR3_sim_wrapper is
  component DDR3_sim is
  port (
    i_sys_clk : in STD_LOGIC;
    i_trigger : in STD_LOGIC;
    i_debug_en : in STD_LOGIC;
    i_reset_n : in STD_LOGIC
  );
  end component DDR3_sim;
begin
DDR3_sim_i: component DDR3_sim
     port map (
      i_debug_en => i_debug_en,
      i_reset_n => i_reset_n,
      i_sys_clk => i_sys_clk,
      i_trigger => i_trigger
    );
end STRUCTURE;
