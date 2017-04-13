-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\compile\sensor_to_monitor_node.vhd
-- Generated   : Mon Apr 10 18:00:34 2017
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\sensor_to_monitor_node.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;


entity sensor_to_monitor_node is
  generic(
       data_width : integer := 10
  );
  port(
       i_HREF : in STD_LOGIC;
       i_PCLK : in STD_LOGIC;
       i_VSYNC : in STD_LOGIC;
       i_btn_reset_n : in STD_LOGIC;
       i_sys_clk : in STD_LOGIC;
       i_SDATA : in STD_LOGIC_VECTOR(9 downto 0);
       o_PIXEL_NUMBER : out INTEGER;
       o_PWDN : out STD_LOGIC;
       o_RST : out STD_LOGIC;
       o_SIOC : out STD_LOGIC;
       o_XCLK : out STD_LOGIC;
       o_X_POS : out INTEGER;
       o_Y_POS : out INTEGER;
       o_DOUT_B : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_DOUT_G : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_DOUT_R : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_SIOD : inout STD_LOGIC
  );
end sensor_to_monitor_node;

architecture sensor_to_monitor_node of sensor_to_monitor_node is

---- Component declarations -----

component system_reset_manager
  port (
       i_clk : in STD_LOGIC;
       i_hardware_reset : in STD_LOGIC;
       i_locked : in STD_LOGIC;
       o_reset_n : out STD_LOGIC
  );
end component;
component arducam_if
  generic(
       data_width : integer := 10
  );
  port (
       i_HREF : in STD_LOGIC;
       i_PCLK : in STD_LOGIC;
       i_SDATA : in STD_LOGIC_VECTOR(9 downto 0);
       i_VSYNC : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_DOUT_B : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_DOUT_G : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_DOUT_R : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_PIXEL_NUMBER : out integer;
       o_PWDN : out STD_LOGIC;
       o_RST : out STD_LOGIC;
       o_SIOC : out STD_LOGIC;
       o_X_POS : out integer;
       o_Y_POS : out integer;
       o_SIOD : inout STD_LOGIC
  );
end component;
component clk_wiz_v3_6
  port (
       CLK_IN1 : in STD_LOGIC;
       RESET : in STD_LOGIC;
       CLKIN_BUFG_OUT : out STD_LOGIC;
       CLK_OUT1 : out STD_LOGIC;
       CLK_OUT2 : out STD_LOGIC;
       CLK_OUT3 : out STD_LOGIC;
       LOCKED : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal clk_150MHz : STD_LOGIC;
signal clk_200MHz : STD_LOGIC;
signal clk_after_bufg : STD_LOGIC;
signal CLK_IN1 : STD_LOGIC;
signal locked : STD_LOGIC;
signal RESET : STD_LOGIC;
signal reset_n : STD_LOGIC;
signal xclk_25MHz : STD_LOGIC;

begin

----  Component instantiations  ----

Arducam_B0019_Interface : arducam_if
  generic map(
       data_width => 10
  )
  port map(
       i_HREF => i_HREF,
       i_PCLK => i_PCLK,
       i_SDATA => i_SDATA,
       i_VSYNC => i_VSYNC,
       i_clk => clk_150MHz,
       i_reset_n => reset_n,
       o_DOUT_B => o_DOUT_B(data_width-1 downto 0),
       o_DOUT_G => o_DOUT_G(data_width-1 downto 0),
       o_DOUT_R => o_DOUT_R(data_width-1 downto 0),
       o_PIXEL_NUMBER => o_PIXEL_NUMBER,
       o_PWDN => o_PWDN,
       o_RST => o_RST,
       o_SIOC => o_SIOC,
       o_SIOD => o_SIOD,
       o_X_POS => o_X_POS,
       o_Y_POS => o_Y_POS
  );

PLL : clk_wiz_v3_6
  port map(
       CLKIN_BUFG_OUT => clk_after_bufg,
       CLK_IN1 => CLK_IN1,
       CLK_OUT1 => clk_150MHz,
       CLK_OUT2 => xclk_25MHz,
       CLK_OUT3 => clk_200MHz,
       LOCKED => locked,
       RESET => RESET
  );

reset_manager : system_reset_manager
  port map(
       i_clk => clk_after_bufg,
       i_hardware_reset => RESET,
       i_locked => locked,
       o_reset_n => reset_n
  );


---- Terminal assignment ----

    -- Inputs terminals
	RESET <= i_btn_reset_n;
	CLK_IN1 <= i_sys_clk;

    -- Output\buffer terminals
	o_XCLK <= xclk_25MHz;


end sensor_to_monitor_node;
