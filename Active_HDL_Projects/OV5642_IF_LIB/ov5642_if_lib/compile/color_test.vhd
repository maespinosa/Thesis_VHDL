-------------------------------------------------------------------------------
--
-- Title       : Deep_Learning_Implementation
-- Design      : ov5642_if_lib
-- Author      : Unknown
-- Company     : Unknown
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\compile\color_test.vhd
-- Generated   : Tue Apr 25 17:05:13 2017
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\color_test.bde
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


entity Deep_Learning_Implementation is
  generic(
       data_width : integer := 10
  );
  port(
       match_B : out STD_LOGIC;
       match_G : out STD_LOGIC;
       match_R : out STD_LOGIC;
       o_SIOC : out STD_LOGIC;
       o_SIOD : inout STD_LOGIC
  );
end Deep_Learning_Implementation;

architecture behavioral of Deep_Learning_Implementation is

---- Component declarations -----

component matlab_compare
  generic(
       data_width : POSITIVE;
       filename : STRING := ""
  );
  port (
       data_to_write : in STD_LOGIC_VECTOR(data_width-1 downto 0);
       enable : in STD_LOGIC;
       pixel_valid : in STD_LOGIC;
       reset_n : in STD_LOGIC;
       sys_clk : in STD_LOGIC;
       match : out STD_LOGIC
  );
end component;
component read_file
  generic(
       data_width : POSITIVE;
       filename : STRING := ""
  );
  port (
       i_enable : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_xclk : in STD_LOGIC;
       o_HREF : out STD_LOGIC;
       o_PCLK : out STD_LOGIC;
       o_SDATA : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_VSYNC : out STD_LOGIC
  );
end component;
component sensor_to_monitor_node
  generic(
       data_width : INTEGER := 10
  );
  port (
       i_HREF : in STD_LOGIC;
       i_PCLK : in STD_LOGIC;
       i_SDATA : in STD_LOGIC_VECTOR(9 downto 0);
       i_VSYNC : in STD_LOGIC;
       i_btn_reset_n : in STD_LOGIC;
       i_sys_clk : in STD_LOGIC;
       o_DOUT_B : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_DOUT_G : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_DOUT_R : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_PIXEL_NUMBER : out INTEGER;
       o_PWDN : out STD_LOGIC;
       o_RST : out STD_LOGIC;
       o_SIOC : out STD_LOGIC;
       o_XCLK : out STD_LOGIC;
       o_X_POS : out INTEGER;
       o_Y_POS : out INTEGER;
       o_SIOD : inout STD_LOGIC
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal i_clk : STD_LOGIC;
signal i_enable : STD_LOGIC;
signal i_HREF : STD_LOGIC;
signal i_PCLK : STD_LOGIC;
signal i_reset_n : STD_LOGIC;
signal i_VSYNC : STD_LOGIC;
signal match : STD_LOGIC;
signal o_PWDN : STD_LOGIC;
signal o_RST : STD_LOGIC;
signal o_XCLK : STD_LOGIC;
signal BUS1846 : STD_LOGIC_VECTOR(data_width-1 downto 0);
signal BUS1854 : STD_LOGIC_VECTOR(data_width-1 downto 0);
signal BUS1862 : STD_LOGIC_VECTOR(data_width-1 downto 0);
signal BUS2911 : STD_LOGIC_VECTOR(data_width-1 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

COMPARE_BLUE : matlab_compare
  generic map(
       data_width => 10
  )
  port map(
       data_to_write => BUS1862(data_width-1 downto 0),
       enable => i_enable,
       match => match_B,
       pixel_valid => Dangling_Input_Signal,
       reset_n => i_reset_n,
       sys_clk => i_clk
  );

COMPARE_GREEN : matlab_compare
  generic map(
       data_width => 10
  )
  port map(
       data_to_write => BUS1854(data_width-1 downto 0),
       enable => i_enable,
       match => match_G,
       pixel_valid => Dangling_Input_Signal,
       reset_n => i_reset_n,
       sys_clk => i_clk
  );

COMPARE_RED : matlab_compare
  generic map(
       data_width => 10
  )
  port map(
       data_to_write => BUS1846(data_width-1 downto 0),
       enable => i_enable,
       match => match,
       pixel_valid => Dangling_Input_Signal,
       reset_n => i_reset_n,
       sys_clk => i_clk
  );

OV5642_MODEL : read_file
  generic map(
       data_width => 10
  )
  port map(
       i_enable => o_PWDN,
       i_reset_n => o_RST,
       i_xclk => o_XCLK,
       o_HREF => i_HREF,
       o_PCLK => i_PCLK,
       o_SDATA => BUS2911(data_width-1 downto 0),
       o_VSYNC => i_VSYNC
  );

ZYNQ_FPGA : sensor_to_monitor_node
  port map(
       i_HREF => i_HREF,
       i_PCLK => i_PCLK,
       i_SDATA => BUS2911(data_width-1 downto 0),
       i_VSYNC => i_VSYNC,
       i_btn_reset_n => Dangling_Input_Signal,
       i_sys_clk => Dangling_Input_Signal,
       o_DOUT_B => BUS1862(data_width-1 downto 0),
       o_DOUT_G => BUS1854(data_width-1 downto 0),
       o_DOUT_R => BUS1846(data_width-1 downto 0),
       o_PWDN => o_PWDN,
       o_RST => o_RST,
       o_SIOC => o_SIOC,
       o_SIOD => o_SIOD,
       o_XCLK => o_XCLK
  );


---- Terminal assignment ----

    -- Output\buffer terminals
	match_R <= match;


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end behavioral;
