--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Wed Oct 03 01:04:01 2018
--Host        : Marks-M3800-PC running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target sim_smax_test_wrapper.bd
--Design      : sim_smax_test_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sim_smax_test_wrapper is
  port (
    clock_rtl : in STD_LOGIC;
    reset_rtl : in STD_LOGIC
  );
end sim_smax_test_wrapper;

architecture STRUCTURE of sim_smax_test_wrapper is
  component sim_smax_test is
  port (
    reset_rtl : in STD_LOGIC;
    clock_rtl : in STD_LOGIC
  );
  end component sim_smax_test;
begin
sim_smax_test_i: component sim_smax_test
     port map (
      clock_rtl => clock_rtl,
      reset_rtl => reset_rtl
    );
end STRUCTURE;
