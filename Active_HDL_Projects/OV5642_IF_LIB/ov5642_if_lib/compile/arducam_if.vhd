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
-- Generated   : Fri Apr 14 18:11:26 2017
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
       i_btn_config : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_SDATA : in STD_LOGIC_VECTOR(9 downto 0);
       o_IMAGE_DATA : out STD_LOGIC;
       o_PIXEL_NUMBER : out INTEGER;
       o_PIXEL_VALID : out STD_LOGIC;
       o_PWDN : out STD_LOGIC;
       o_RST : out STD_LOGIC;
       o_X_POS : out INTEGER;
       o_Y_POS : out INTEGER;
       o_SIOC : inout STD_LOGIC;
       o_SIOD : inout STD_LOGIC
  );
end arducam_if;

architecture arducam_if of arducam_if is

---- Component declarations -----

component dist_mem_gen_v7_2
  port (
       a : in STD_LOGIC_VECTOR(9 downto 0);
       clk : in STD_LOGIC;
       d : in STD_LOGIC_VECTOR(15 downto 0);
       we : in STD_LOGIC;
       spo : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component i2c_master
  generic(
       input_clk : INTEGER := 50000000;
       bus_clk : INTEGER := 400000
  );
  port (
       addr : in STD_LOGIC_VECTOR(6 downto 0);
       clk : in STD_LOGIC;
       data_wr : in STD_LOGIC_VECTOR(7 downto 0);
       ena : in STD_LOGIC;
       reset_n : in STD_LOGIC;
       rw : in STD_LOGIC;
       busy : out STD_LOGIC;
       data_rd : out STD_LOGIC_VECTOR(7 downto 0);
       scl : inout STD_LOGIC;
       sda : inout STD_LOGIC;
       ack_error : buffer STD_LOGIC
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
       i_clk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_IMAGE_DATA : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_PIXEL_NUMBER : out INTEGER;
       o_PIXEL_VALID : out STD_LOGIC;
       o_PWDN : out STD_LOGIC;
       o_RST : out STD_LOGIC;
       o_X_POS : out INTEGER;
       o_Y_POS : out INTEGER
  );
end component;
component camera_configurator
  port (
       i_ack_error : in STD_LOGIC;
       i_bram_data : in STD_LOGIC_VECTOR(15 downto 0);
       i_btn_config : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_i2c_busy : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       config_done : out STD_LOGIC;
       o_addr : out STD_LOGIC_VECTOR(15 downto 0);
       o_bram_addr : out STD_LOGIC_VECTOR(9 downto 0);
       o_bram_we : out STD_LOGIC;
       o_data : out STD_LOGIC_VECTOR(7 downto 0);
       o_i2c_en : out STD_LOGIC;
       o_i2c_rw : out STD_LOGIC
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal NET1056 : STD_LOGIC;
signal NET886 : STD_LOGIC;
signal NET890 : STD_LOGIC;
signal NET894 : STD_LOGIC;
signal NET898 : STD_LOGIC;
signal NET952 : STD_LOGIC;
signal BUS875 : STD_LOGIC_VECTOR(7 downto 0);
signal BUS882 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS902 : STD_LOGIC_VECTOR(9 downto 0);
signal BUS909 : STD_LOGIC_VECTOR(15 downto 0);
signal IMAGE_DATA : STD_LOGIC_VECTOR(data_width-1 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

CONFIG_BRAM : dist_mem_gen_v7_2
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
       clk => i_clk,
       spo => BUS909,
       we => NET1056
  );

CONFIG_CONTROLLER : camera_configurator
  port map(
       config_done => NET952,
       i_ack_error => NET886,
       i_bram_data => BUS909,
       i_btn_config => i_btn_config,
       i_clk => i_clk,
       i_i2c_busy => NET898,
       i_reset_n => i_reset_n,
       o_addr => BUS882,
       o_bram_addr => BUS902,
       o_bram_we => NET1056,
       o_data => BUS875,
       o_i2c_en => NET890,
       o_i2c_rw => NET894
  );

MASTER_I2C : i2c_master
  port map(
       addr(0) => BUS882(9),
       addr(1) => BUS882(10),
       addr(2) => BUS882(11),
       addr(3) => BUS882(12),
       addr(4) => BUS882(13),
       addr(5) => BUS882(14),
       addr(6) => BUS882(15),
       ack_error => NET886,
       busy => NET898,
       clk => i_clk,
       data_wr => BUS875,
       ena => NET890,
       reset_n => i_reset_n,
       rw => NET894,
       scl => o_SIOC,
       sda => o_SIOD
  );

U2 : image_capture_control
  generic map(
       data_width => 10
  )
  port map(
       i_EN => NET952,
       i_HREF => i_HREF,
       i_PCLK => i_PCLK,
       i_SDATA => i_SDATA(9 downto 0),
       i_VSYNC => i_VSYNC,
       i_clk => i_clk,
       i_reset_n => i_reset_n,
       o_IMAGE_DATA => IMAGE_DATA(data_width-1 downto 0),
       o_PIXEL_NUMBER => o_PIXEL_NUMBER,
       o_PIXEL_VALID => o_PIXEL_VALID,
       o_PWDN => o_PWDN,
       o_RST => o_RST,
       o_X_POS => o_X_POS,
       o_Y_POS => o_Y_POS
  );


---- Terminal assignment ----

    -- Output\buffer terminals
	o_IMAGE_DATA <= IMAGE_DATA(data_width-1);


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end arducam_if;
