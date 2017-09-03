-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\compile\arducam_if.vhd
-- Generated   : Mon May 29 00:50:06 2017
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\arducam_if.bde
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


entity arducam_if is
  generic(
       data_width : integer := 10
  );
  port(
       i_HREF : in STD_LOGIC;
       i_PCLK : in STD_LOGIC;
       i_VSYNC : in STD_LOGIC;
       i_almost_full : in STD_LOGIC;
       i_btn_config : in STD_LOGIC;
       i_config_capture_clk : in STD_LOGIC;
       i_full : in STD_LOGIC;
       i_prog_full : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_start_capture : in STD_LOGIC;
       i_sw_config_bypass : in STD_LOGIC;
       i_SDATA : in STD_LOGIC_VECTOR(9 downto 0);
       o_FRAME_DONE : out STD_LOGIC;
       o_PIXEL_VALID : out STD_LOGIC;
       o_PWDN : out STD_LOGIC;
       o_RST : out STD_LOGIC;
       o_SIOC : out STD_LOGIC;
       o_SIOD : out STD_LOGIC;
       o_capture_busy : out STD_LOGIC;
       o_config_done : out STD_LOGIC;
       o_i2c_busy : out STD_LOGIC;
       o_image_enable : out STD_LOGIC;
       o_pclk : out STD_LOGIC;
       o_IMAGE_DATA : out STD_LOGIC_VECTOR(11 downto 0);
       o_PIXEL_NUMBER : out STD_LOGIC_VECTOR(31 downto 0);
       o_X_POS : out STD_LOGIC_VECTOR(11 downto 0);
       o_Y_POS : out STD_LOGIC_VECTOR(11 downto 0);
       o_capture_state_debug : out STD_LOGIC_VECTOR(3 downto 0);
       o_debug_state : out STD_LOGIC_VECTOR(2 downto 0);
       o_pclk_counter : out STD_LOGIC_VECTOR(7 downto 0);
       o_sioc_state_debug : out STD_LOGIC_VECTOR(2 downto 0);
       o_siod_state_debug : out STD_LOGIC_VECTOR(4 downto 0)
  );
end arducam_if;

architecture arducam_if of arducam_if is

---- Component declarations -----

component config_bram_generator
  port (
       a : in STD_LOGIC_VECTOR(10 downto 0);
       clk : in STD_LOGIC;
       d : in STD_LOGIC_VECTOR(15 downto 0);
       we : in STD_LOGIC;
       spo : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component camera_configurator
  port (
       i_bram_data : in STD_LOGIC_VECTOR(15 downto 0);
       i_btn_config : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_i2c_busy : in STD_LOGIC;
       i_i2c_sent : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_bram_address : out STD_LOGIC_VECTOR(10 downto 0);
       o_bram_we : out STD_LOGIC;
       o_capture_state_debug : out STD_LOGIC_VECTOR(3 downto 0);
       o_config_done : out STD_LOGIC;
       o_i2c_address : out STD_LOGIC_VECTOR(15 downto 0);
       o_i2c_data : out STD_LOGIC_VECTOR(7 downto 0);
       o_i2c_ena : out STD_LOGIC;
       o_i2c_rw : out STD_LOGIC
  );
end component;
component image_capture_control
  generic(
       data_width : INTEGER
  );
  port (
       i_EN : in STD_LOGIC;
       i_HREF : in STD_LOGIC;
       i_PCLK : in STD_LOGIC;
       i_SDATA : in STD_LOGIC_VECTOR(data_width-1 downto 0);
       i_VSYNC : in STD_LOGIC;
       i_almost_full : in STD_LOGIC;
       i_full : in STD_LOGIC;
       i_prog_full : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_FRAME_DONE : out STD_LOGIC;
       o_IMAGE_DATA : out STD_LOGIC_VECTOR(11 downto 0);
       o_PIXEL_NUMBER : out STD_LOGIC_VECTOR(31 downto 0);
       o_PIXEL_VALID : out STD_LOGIC;
       o_PWDN : out STD_LOGIC;
       o_RST : out STD_LOGIC;
       o_X_POS : out STD_LOGIC_VECTOR(11 downto 0);
       o_Y_POS : out STD_LOGIC_VECTOR(11 downto 0);
       o_busy : out STD_LOGIC;
       o_debug_state : out STD_LOGIC_VECTOR(2 downto 0);
       o_pclk : out STD_LOGIC;
       o_pclk_counter : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component OV5462_SCCB_CNTRL
  generic(
       g_slave_id : STD_LOGIC_VECTOR(7 downto 0) := x"78"
  );
  port (
       i_clk : in STD_LOGIC;
       i_i2c_addr : in STD_LOGIC_VECTOR(15 downto 0);
       i_i2c_data : in STD_LOGIC_VECTOR(7 downto 0);
       i_i2c_ena : in STD_LOGIC;
       i_i2c_rw : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       io_siod : out STD_LOGIC;
       o_busy : out STD_LOGIC;
       o_config_done : out STD_LOGIC;
       o_i2c_sent : out STD_LOGIC;
       o_sioc : out STD_LOGIC;
       o_sioc_state_debug : out STD_LOGIC_VECTOR(2 downto 0);
       o_siod_state_debug : out STD_LOGIC_VECTOR(4 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal config_done : STD_LOGIC;
signal enable : STD_LOGIC;
signal i2c_busy : STD_LOGIC;
signal NET1056 : STD_LOGIC;
signal NET1707 : STD_LOGIC;
signal NET2683 : STD_LOGIC;
signal NET2863 : STD_LOGIC := '1';
signal NET890 : STD_LOGIC;
signal NET894 : STD_LOGIC;
signal o_busy : STD_LOGIC;
signal BUS875 : STD_LOGIC_VECTOR(7 downto 0);
signal BUS882 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS902 : STD_LOGIC_VECTOR(10 downto 0);
signal BUS909 : STD_LOGIC_VECTOR(15 downto 0);
signal IMAGE_DATA : STD_LOGIC_VECTOR(11 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

---- User Signal Assignments ----
o_image_enable <= enable;
o_config_done	<= config_done; 
o_i2c_busy <= i2c_busy; 

----  Component instantiations  ----

CONFIG_BRAM : config_bram_generator
  port map(
       d(0) => Dangling_Input_Signal,
       d(1) => Dangling_Input_Signal,
       d(2) => Dangling_Input_Signal,
       d(3) => Dangling_Input_Signal,
       d(4) => Dangling_Input_Signal,
       d(5) => Dangling_Input_Signal,
       d(6) => Dangling_Input_Signal,
       d(7) => Dangling_Input_Signal,
       d(8) => Dangling_Input_Signal,
       d(9) => Dangling_Input_Signal,
       d(10) => Dangling_Input_Signal,
       d(11) => Dangling_Input_Signal,
       d(12) => Dangling_Input_Signal,
       d(13) => Dangling_Input_Signal,
       d(14) => Dangling_Input_Signal,
       d(15) => Dangling_Input_Signal,
       a => BUS902,
       clk => i_config_capture_clk,
       spo => BUS909,
       we => NET1056
  );

CONFIG_CONTROLLER : camera_configurator
  port map(
       i_bram_data => BUS909,
       i_btn_config => i_btn_config,
       i_clk => i_config_capture_clk,
       i_i2c_busy => i2c_busy,
       i_i2c_sent => NET1707,
       i_reset_n => i_reset_n,
       o_bram_address => BUS902,
       o_bram_we => NET1056,
       o_capture_state_debug => o_capture_state_debug,
       o_config_done => config_done,
       o_i2c_address => BUS882,
       o_i2c_data => BUS875,
       o_i2c_ena => NET890,
       o_i2c_rw => NET894
  );

IMAGE_CONTROLLER : image_capture_control
  generic map(
       data_width => 10
  )
  port map(
       i_EN => enable,
       i_HREF => i_HREF,
       i_PCLK => i_PCLK,
       i_SDATA => i_SDATA(9 downto 0),
       i_VSYNC => i_VSYNC,
       i_almost_full => i_almost_full,
       i_full => i_full,
       i_prog_full => i_prog_full,
       i_reset_n => i_reset_n,
       o_FRAME_DONE => o_FRAME_DONE,
       o_IMAGE_DATA => IMAGE_DATA,
       o_PIXEL_NUMBER => o_PIXEL_NUMBER,
       o_PIXEL_VALID => o_PIXEL_VALID,
       o_PWDN => o_PWDN,
       o_RST => o_RST,
       o_X_POS => o_X_POS,
       o_Y_POS => o_Y_POS,
       o_busy => o_busy,
       o_debug_state => o_debug_state,
       o_pclk => o_pclk,
       o_pclk_counter => o_pclk_counter
  );

SCCB_CONROLLER : OV5462_SCCB_CNTRL
  port map(
       i_clk => i_config_capture_clk,
       i_i2c_addr => BUS882,
       i_i2c_data => BUS875,
       i_i2c_ena => NET890,
       i_i2c_rw => NET894,
       i_reset_n => i_reset_n,
       io_siod => o_SIOD,
       o_busy => i2c_busy,
       o_config_done => o_config_done,
       o_i2c_sent => NET1707,
       o_sioc => o_SIOC,
       o_sioc_state_debug => o_sioc_state_debug,
       o_siod_state_debug => o_siod_state_debug
  );

NET2683 <= config_done or i_sw_config_bypass;

enable <= NET2683 and NET2863;


---- Terminal assignment ----

    -- Output\buffer terminals
	o_IMAGE_DATA <= IMAGE_DATA;
	o_capture_busy <= o_busy;


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end arducam_if;
