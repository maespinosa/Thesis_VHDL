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
-- Generated   : Mon Apr 17 20:13:54 2017
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
       i_btn_config : in STD_LOGIC;
       i_btn_reset_n : in STD_LOGIC;
       i_sys_clk : in STD_LOGIC;
       i_SDATA : in STD_LOGIC_VECTOR(9 downto 0);
       o_FRAME_DONE : out STD_LOGIC;
       o_PWDN : out STD_LOGIC;
       o_RST : out STD_LOGIC;
       o_SIOC : out STD_LOGIC;
       o_XCLK : out STD_LOGIC;
       o_hsync : out STD_LOGIC;
       o_locked_up : out STD_LOGIC;
       o_vsync : out STD_LOGIC;
       o_vga_data : out STD_LOGIC_VECTOR(11 downto 0);
       o_SIOD : inout STD_LOGIC
  );
end sensor_to_monitor_node;

architecture sensor_to_monitor_node of sensor_to_monitor_node is

---- Component declarations -----

component fifo_generator_v9_3
  port (
       din : in STD_LOGIC_VECTOR(9 downto 0);
       rd_clk : in STD_LOGIC;
       rd_en : in STD_LOGIC;
       rst : in STD_LOGIC;
       wr_clk : in STD_LOGIC;
       wr_en : in STD_LOGIC;
       almost_empty : out STD_LOGIC;
       almost_full : out STD_LOGIC;
       dout : out STD_LOGIC_VECTOR(9 downto 0);
       empty : out STD_LOGIC;
       full : out STD_LOGIC;
       prog_empty : out STD_LOGIC;
       prog_full : out STD_LOGIC;
       valid : out STD_LOGIC
  );
end component;
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
       i_btn_config : in STD_LOGIC;
       i_clk_100MHz : in STD_LOGIC;
       i_clk_150MHz : in STD_LOGIC;
       i_not_almost_full : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_FRAME_DONE : out STD_LOGIC;
       o_IMAGE_DATA : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_PIXEL_NUMBER : out integer;
       o_PIXEL_VALID : out STD_LOGIC;
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
component vga_sync
  port (
       i_clk : in STD_LOGIC;
       i_not_almost_empty : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_vga_data : in STD_LOGIC_VECTOR(9 downto 0);
       o_hsync : out STD_LOGIC;
       o_pixel_x : out STD_LOGIC_VECTOR(9 downto 0);
       o_pixel_y : out STD_LOGIC_VECTOR(9 downto 0);
       o_vga_data : out STD_LOGIC_VECTOR(11 downto 0);
       o_video_on : out STD_LOGIC;
       o_vsync : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal clk_100MHz : STD_LOGIC;
signal clk_150MHz : STD_LOGIC;
signal clk_after_bufg : STD_LOGIC;
signal CLK_IN1 : STD_LOGIC;
signal locked : STD_LOGIC;
signal NET1239 : STD_LOGIC;
signal NET1454 : STD_LOGIC;
signal NET1475 : STD_LOGIC;
signal NET1477 : STD_LOGIC;
signal NET1479 : STD_LOGIC;
signal NET1481 : STD_LOGIC;
signal NET1495 : STD_LOGIC;
signal NET1500 : STD_LOGIC;
signal NET1527 : STD_LOGIC;
signal Output1 : STD_LOGIC;
signal o_PIXEL_NUMBER : INTEGER;
signal o_X_POS : INTEGER;
signal o_Y_POS : INTEGER;
signal RESET : STD_LOGIC;
signal reset_n : STD_LOGIC;
signal vga_clk : STD_LOGIC;
signal xclk_25MHz : STD_LOGIC;
signal BUS1451 : STD_LOGIC_VECTOR(9 downto 0);
signal BUS1456 : STD_LOGIC_VECTOR(9 downto 0);
signal BUS1461 : STD_LOGIC_VECTOR(9 downto 0);
signal IMAGE_DATA : STD_LOGIC_VECTOR(data_width-1 downto 0);

begin

---- User Signal Assignments ----
vga_clk <= xclk_25MHz; 
o_locked_up <= locked; 
o_XCLK <= xclk_25MHz; 


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
       i_btn_config => i_btn_config,
       i_clk_100MHz => clk_100MHz,
       i_clk_150MHz => clk_150MHz,
       i_not_almost_full => NET1477,
       i_reset_n => reset_n,
       o_FRAME_DONE => o_FRAME_DONE,
       o_IMAGE_DATA => IMAGE_DATA(data_width-1 downto 0),
       o_PIXEL_NUMBER => o_PIXEL_NUMBER,
       o_PIXEL_VALID => NET1239,
       o_PWDN => o_PWDN,
       o_RST => o_RST,
       o_SIOC => o_SIOC,
       o_SIOD => o_SIOD,
       o_X_POS => o_X_POS,
       o_Y_POS => o_Y_POS
  );

FIFO : fifo_generator_v9_3
  port map(
       almost_empty => NET1475,
       almost_full => NET1527,
       din => IMAGE_DATA(data_width-1 downto 0),
       dout => BUS1451,
       empty => NET1479,
       full => NET1481,
       rd_clk => xclk_25MHz,
       rd_en => NET1454,
       rst => NET1500,
       wr_clk => clk_150MHz,
       wr_en => NET1239
  );

PLL : clk_wiz_v3_6
  port map(
       CLKIN_BUFG_OUT => clk_after_bufg,
       CLK_IN1 => CLK_IN1,
       CLK_OUT1 => clk_150MHz,
       CLK_OUT2 => xclk_25MHz,
       CLK_OUT3 => clk_100MHz,
       LOCKED => locked,
       RESET => RESET
  );

NET1495 <= not(NET1475);

NET1500 <= not(reset_n);

NET1477 <= not(NET1527);

VGA_CONTROLLER : vga_sync
  port map(
       i_clk => vga_clk,
       i_not_almost_empty => NET1495,
       i_reset_n => reset_n,
       i_vga_data => BUS1451,
       o_hsync => o_hsync,
       o_pixel_x => BUS1456,
       o_pixel_y => BUS1461,
       o_vga_data => o_vga_data,
       o_video_on => NET1454,
       o_vsync => o_vsync
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
	o_locked_up <= Output1;


end sensor_to_monitor_node;
