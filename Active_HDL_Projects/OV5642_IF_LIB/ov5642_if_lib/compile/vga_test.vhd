-------------------------------------------------------------------------------
--
-- Title       : vga_test
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\compile\vga_test.vhd
-- Generated   : Mon Apr 17 19:55:57 2017
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\vga_test.bde
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


entity vga_test is
  port(
       CLK_IN1 : in STD_LOGIC;
       RESET : in STD_LOGIC;
       o_hsync : out STD_LOGIC;
       o_locked_up : out STD_LOGIC;
       o_vsync : out STD_LOGIC;
       o_vga_data : out STD_LOGIC_VECTOR(11 downto 0)
  );
end vga_test;

architecture arch of vga_test is

---- Component declarations -----

component system_reset_manager
  port (
       i_clk : in STD_LOGIC;
       i_hardware_reset : in STD_LOGIC;
       i_locked : in STD_LOGIC;
       o_reset_n : out STD_LOGIC
  );
end component;
component vga_sim
  port (
       i_clk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_video_on : in STD_LOGIC;
       o_not_almost_empty : out STD_LOGIC;
       o_vga_data : out STD_LOGIC_VECTOR(9 downto 0)
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
component vga_clk
  port (
       CLK_IN1 : in STD_LOGIC;
       RESET : in STD_LOGIC;
       CLKIN_BUFG_OUT : out STD_LOGIC;
       CLK_OUT1 : out STD_LOGIC;
       LOCKED : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal clk_after_bufg : STD_LOGIC;
signal CLK_OUT1 : STD_LOGIC;
signal i_not_almost_empty : STD_LOGIC;
signal LOCKED : STD_LOGIC;
signal Output2 : STD_LOGIC;
signal o_video_on : STD_LOGIC;
signal reset_n : STD_LOGIC;
signal i_vga_data : STD_LOGIC_VECTOR(9 downto 0);
signal o_pixel_x : STD_LOGIC_VECTOR(9 downto 0);
signal o_pixel_y : STD_LOGIC_VECTOR(9 downto 0);

begin

---- User Signal Assignments ----
o_locked_up <= locked; 

----  Component instantiations  ----

CLK_VGA : vga_clk
  port map(
       CLKIN_BUFG_OUT => clk_after_bufg,
       CLK_IN1 => CLK_IN1,
       CLK_OUT1 => CLK_OUT1,
       LOCKED => LOCKED,
       RESET => RESET
  );

RESET_MANAGER : system_reset_manager
  port map(
       i_clk => clk_after_bufg,
       i_hardware_reset => RESET,
       i_locked => locked,
       o_reset_n => reset_n
  );

U5 : vga_sim
  port map(
       i_clk => CLK_OUT1,
       i_reset_n => reset_n,
       i_video_on => o_video_on,
       o_not_almost_empty => i_not_almost_empty,
       o_vga_data => i_vga_data
  );

VGA_CONTROLLER : vga_sync
  port map(
       i_clk => CLK_OUT1,
       i_not_almost_empty => i_not_almost_empty,
       i_reset_n => reset_n,
       i_vga_data => i_vga_data,
       o_hsync => o_hsync,
       o_pixel_x => o_pixel_x,
       o_pixel_y => o_pixel_y,
       o_vga_data => o_vga_data,
       o_video_on => o_video_on,
       o_vsync => o_vsync
  );


---- Terminal assignment ----

    -- Output\buffer terminals
	o_locked_up <= Output2;


end arch;
