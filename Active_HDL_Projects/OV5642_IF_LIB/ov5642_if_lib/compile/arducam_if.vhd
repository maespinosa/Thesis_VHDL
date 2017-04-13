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
-- Generated   : Mon Apr 10 18:00:34 2017
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
       i_clk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_SDATA : in STD_LOGIC_VECTOR(9 downto 0);
       o_PIXEL_NUMBER : out INTEGER;
       o_PWDN : out STD_LOGIC;
       o_RST : out STD_LOGIC;
       o_SIOC : out STD_LOGIC;
       o_X_POS : out INTEGER;
       o_Y_POS : out INTEGER;
       o_DOUT_B : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_DOUT_G : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_DOUT_R : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_SIOD : inout STD_LOGIC
  );
end arducam_if;

architecture arducam_if of arducam_if is

---- Component declarations -----

component bayer_demosaic
  generic(
       data_width : INTEGER
  );
  port (
       i_DIN0 : in STD_LOGIC_VECTOR(data_width-1 downto 0);
       i_DIN1 : in STD_LOGIC_VECTOR(data_width-1 downto 0);
       i_DIN2 : in STD_LOGIC_VECTOR(data_width-1 downto 0);
       i_clk : in STD_LOGIC;
       i_network_primed : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_DOUT_B : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_DOUT_G : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_DOUT_R : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_read_en : out STD_LOGIC
  );
end component;
component FIFO_NETWORK
  generic(
       DATA_WIDTH : INTEGER := 10
  );
  port (
       DI : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
       i_clk : in STD_LOGIC;
       i_data_valid : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_read_en : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_DO0 : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
       o_DO1 : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
       o_DO2 : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
       o_network_primed : out STD_LOGIC;
       o_wready : out STD_LOGIC
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
component OV5462_SCCB_CNTRL
  port (
       clk : in STD_LOGIC;
       config_finished : out STD_LOGIC;
       sioc : out STD_LOGIC;
       siod : inout STD_LOGIC
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal i_enable : STD_LOGIC;
signal NET144 : STD_LOGIC;
signal NET160 : STD_LOGIC;
signal NET162 : STD_LOGIC;
signal NET18 : STD_LOGIC;
signal BUS1672 : STD_LOGIC_VECTOR(data_width-1 downto 0);
signal BUS1682 : STD_LOGIC_VECTOR(data_width-1 downto 0);
signal BUS1686 : STD_LOGIC_VECTOR(data_width-1 downto 0);
signal BUS1690 : STD_LOGIC_VECTOR(data_width-1 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : OV5462_SCCB_CNTRL
  port map(
       clk => i_clk,
       config_finished => NET18,
       sioc => o_SIOC,
       siod => o_SIOD
  );

U2 : image_capture_control
  generic map(
       data_width => 10
  )
  port map(
       i_EN => NET18,
       i_HREF => i_HREF,
       i_PCLK => i_PCLK,
       i_SDATA => i_SDATA(9 downto 0),
       i_VSYNC => i_VSYNC,
       i_clk => i_clk,
       i_reset_n => i_reset_n,
       o_IMAGE_DATA => BUS1672(data_width-1 downto 0),
       o_PIXEL_NUMBER => o_PIXEL_NUMBER,
       o_PIXEL_VALID => NET144,
       o_PWDN => o_PWDN,
       o_RST => o_RST,
       o_X_POS => o_X_POS,
       o_Y_POS => o_Y_POS
  );

U3 : FIFO_NETWORK
  generic map(
       DATA_WIDTH => 10
  )
  port map(
       DI => BUS1672(data_width-1 downto 0),
       i_clk => i_clk,
       i_data_valid => NET144,
       i_enable => i_enable,
       i_read_en => NET162,
       i_reset_n => i_reset_n,
       o_DO0 => BUS1682(data_width-1 downto 0),
       o_DO1 => BUS1686(data_width-1 downto 0),
       o_DO2 => BUS1690(data_width-1 downto 0),
       o_network_primed => NET160
  );

U4 : bayer_demosaic
  generic map(
       data_width => 10
  )
  port map(
       i_DIN0 => BUS1682(data_width-1 downto 0),
       i_DIN1 => BUS1686(data_width-1 downto 0),
       i_DIN2 => BUS1690(data_width-1 downto 0),
       i_clk => i_clk,
       i_network_primed => NET160,
       i_reset_n => i_reset_n,
       o_DOUT_B => o_DOUT_B(data_width-1 downto 0),
       o_DOUT_G => o_DOUT_G(data_width-1 downto 0),
       o_DOUT_R => o_DOUT_R(data_width-1 downto 0),
       o_read_en => NET162
  );

U5 : i2c_master
  port map(
       addr(0) => Dangling_Input_Signal,
       addr(1) => Dangling_Input_Signal,
       addr(2) => Dangling_Input_Signal,
       addr(3) => Dangling_Input_Signal,
       addr(4) => Dangling_Input_Signal,
       addr(5) => Dangling_Input_Signal,
       addr(6) => Dangling_Input_Signal,
       data_wr(0) => Dangling_Input_Signal,
       data_wr(1) => Dangling_Input_Signal,
       data_wr(2) => Dangling_Input_Signal,
       data_wr(3) => Dangling_Input_Signal,
       data_wr(4) => Dangling_Input_Signal,
       data_wr(5) => Dangling_Input_Signal,
       data_wr(6) => Dangling_Input_Signal,
       data_wr(7) => Dangling_Input_Signal,
       clk => Dangling_Input_Signal,
       ena => Dangling_Input_Signal,
       reset_n => Dangling_Input_Signal,
       rw => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end arducam_if;
