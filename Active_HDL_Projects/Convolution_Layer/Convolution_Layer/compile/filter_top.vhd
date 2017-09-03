-------------------------------------------------------------------------------
--
-- Title       : filter_top
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\compile\filter_top.vhd
-- Generated   : Sun Sep  3 09:27:55 2017
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\filter_top.bde
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


entity filter_top is
  generic(
       -- name : type := value
       g_data_width : integer := 16;
       g_red_bits : integer := 4;
       g_green_bits : integer := 4;
       g_blue_bits : integer := 4;
       g_weight_width : integer := 16;
       g_multiplier_width : integer := 16;
       g_product_width : integer := 32;
       g_conv_width : integer := 16
  );
  port(
       i_clk : in STD_LOGIC;
       i_inbuff_almost_empty : in STD_LOGIC;
       i_inbuff_empty : in STD_LOGIC;
       i_inbuff_prog_empty : in STD_LOGIC;
       i_inbuff_valid : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_inbuff_dout : in STD_LOGIC_VECTOR(15 downto 0);
       o_inbuff_rd_en : out STD_LOGIC;
       o_conv_out : out STD_LOGIC_VECTOR(g_conv_width-1 downto 0);
       o_inbuff_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0)
  );
end filter_top;

architecture arch of filter_top is

---- Component declarations -----

component multiplier_bank
  generic(
       g_multiplier_width : INTEGER := 16;
       g_product_width : INTEGER := 32
  );
  port (
       i_clk : in STD_LOGIC;
       i_data0 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data1 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data10 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data2 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data3 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data4 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data5 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data6 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data7 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data8 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data9 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w0 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w1 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w10 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w2 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w3 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w4 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w5 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w6 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w7 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w8 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w9 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       o_product0 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product1 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product10 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product2 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product3 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product4 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product5 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product6 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product7 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product8 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product9 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0)
  );
end component;
component accumulator
  generic(
       g_product_width : INTEGER := 32;
       g_conv_width : INTEGER := 16
  );
  port (
       i_clk : in STD_LOGIC;
       i_product0_blue : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product0_green : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product0_red : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product10_blue : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product10_green : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product10_red : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product1_blue : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product1_green : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product1_red : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product2_blue : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product2_green : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product2_red : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product3_blue : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product3_green : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product3_red : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product4_blue : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product4_green : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product4_red : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product5_blue : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product5_green : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product5_red : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product6_blue : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product6_green : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product6_red : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product7_blue : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product7_green : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product7_red : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product8_blue : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product8_green : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product8_red : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product9_blue : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product9_green : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_product9_red : in STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       i_reset_n : in STD_LOGIC;
       o_conv_out : out STD_LOGIC_VECTOR(g_conv_width-1 downto 0)
  );
end component;
component input_fifo_network
  generic(
       g_data_width : integer := 16;
       g_red_bits : integer := 4;
       g_green_bits : integer := 4;
       g_blue_bits : integer := 4
  );
  port (
       din : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_rd_clk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_wr_clk : in STD_LOGIC;
       prog_empty_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       rd_en : in STD_LOGIC_VECTOR(10 downto 0);
       wr_en : in STD_LOGIC_VECTOR(10 downto 0);
       almost_empty : out STD_LOGIC_VECTOR(10 downto 0);
       almost_full : out STD_LOGIC_VECTOR(10 downto 0);
       empty : out STD_LOGIC_VECTOR(10 downto 0);
       full : out STD_LOGIC_VECTOR(10 downto 0);
       o_dout0_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout0_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout0_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout10_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout10_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout10_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout1_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout1_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout1_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout2_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout2_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout2_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout3_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout3_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout3_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout4_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout4_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout4_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout5_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout5_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout5_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout6_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout6_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout6_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout7_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout7_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout7_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout8_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout8_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout8_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout9_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout9_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout9_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       prog_empty : out STD_LOGIC_VECTOR(10 downto 0);
       prog_full : out STD_LOGIC_VECTOR(10 downto 0);
       valid : out STD_LOGIC_VECTOR(10 downto 0)
  );
end component;
component input_fifo_net_controller
  generic(
       g_weight_width : INTEGER := 16;
       g_data_width : INTEGER := 16
  );
  port (
       i_almost_empty : in STD_LOGIC_VECTOR(10 downto 0);
       i_almost_full : in STD_LOGIC_VECTOR(10 downto 0);
       i_clk : in STD_LOGIC;
       i_empty : in STD_LOGIC_VECTOR(10 downto 0);
       i_full : in STD_LOGIC_VECTOR(10 downto 0);
       i_inbuff_almost_empty : in STD_LOGIC;
       i_inbuff_dout : in STD_LOGIC_VECTOR(15 downto 0);
       i_inbuff_empty : in STD_LOGIC;
       i_inbuff_prog_empty : in STD_LOGIC;
       i_inbuff_valid : in STD_LOGIC;
       i_prog_empty : in STD_LOGIC_VECTOR(10 downto 0);
       i_prog_full : in STD_LOGIC_VECTOR(10 downto 0);
       i_reset_n : in STD_LOGIC;
       i_valid : in STD_LOGIC_VECTOR(10 downto 0);
       o_fifo_net_din : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_inbuff_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_inbuff_rd_en : out STD_LOGIC;
       o_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_prog_full_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_rd_en : out STD_LOGIC_VECTOR(10 downto 0);
       o_wr_en : out STD_LOGIC_VECTOR(10 downto 0);
       w0_blue : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w0_green : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w0_red : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w10_blue : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w10_green : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w10_red : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w1_blue : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w1_green : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w1_red : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w2_blue : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w2_green : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w2_red : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w3_blue : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w3_green : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w3_red : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w4_blue : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w4_green : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w4_red : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w5_blue : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w5_green : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w5_red : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w6_blue : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w6_green : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w6_red : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w7_blue : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w7_green : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w7_red : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w8_blue : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w8_green : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w8_red : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w9_blue : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w9_green : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0);
       w9_red : out STD_LOGIC_VECTOR(g_weight_width-1 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal i_rd_clk : STD_LOGIC;
signal almost_empty : STD_LOGIC_VECTOR(10 downto 0);
signal almost_full : STD_LOGIC_VECTOR(10 downto 0);
signal data0_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data0_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data0_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data10_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data10_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data10_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data1_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data1_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data1_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data2_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data2_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data2_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data3_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data3_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data3_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data4_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data4_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data4_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data5_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data5_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data5_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data6_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data6_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data6_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data7_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data7_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data7_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data8_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data8_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data8_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data9_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data9_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal data9_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal din : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal empty : STD_LOGIC_VECTOR(10 downto 0);
signal full : STD_LOGIC_VECTOR(10 downto 0);
signal product0_blue : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product0_green : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product0_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product10_blue : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product10_green : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product10_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product1_blue : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product1_green : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product1_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product2_blue : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product2_green : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product2_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product3_blue : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product3_green : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product3_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product4_blue : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product4_green : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product4_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product5_blue : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product5_green : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product5_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product6_blue : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product6_green : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product6_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product7_blue : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product7_green : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product7_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product8_blue : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product8_green : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product8_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product9_blue : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product9_green : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal product9_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal prog_empty : STD_LOGIC_VECTOR(10 downto 0);
signal prog_empty_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal prog_full : STD_LOGIC_VECTOR(10 downto 0);
signal prog_full_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal rd_en : STD_LOGIC_VECTOR(10 downto 0);
signal valid : STD_LOGIC_VECTOR(10 downto 0);
signal w0_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w0_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w0_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w10_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w10_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w10_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w1_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w1_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w1_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w2_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w2_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w2_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w3_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w3_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w3_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w4_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w4_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w4_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w5_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w5_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w5_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w6_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w6_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w6_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w7_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w7_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w7_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w8_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w8_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w8_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w9_blue : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w9_green : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal w9_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal wr_en : STD_LOGIC_VECTOR(10 downto 0);

begin

----  Component instantiations  ----

BLUE : multiplier_bank
  generic map(
       g_multiplier_width => g_multiplier_width,
       g_product_width => g_product_width
  )
  port map(
       i_clk => i_clk,
       i_data0 => data0_blue(g_multiplier_width-1 downto 0),
       i_data1 => data1_blue(g_multiplier_width-1 downto 0),
       i_data10 => data10_blue(g_multiplier_width-1 downto 0),
       i_data2 => data2_blue(g_multiplier_width-1 downto 0),
       i_data3 => data3_blue(g_multiplier_width-1 downto 0),
       i_data4 => data4_blue(g_multiplier_width-1 downto 0),
       i_data5 => data5_blue(g_multiplier_width-1 downto 0),
       i_data6 => data6_blue(g_multiplier_width-1 downto 0),
       i_data7 => data7_blue(g_multiplier_width-1 downto 0),
       i_data8 => data8_blue(g_multiplier_width-1 downto 0),
       i_data9 => data9_blue(g_multiplier_width-1 downto 0),
       i_w0 => w0_blue(g_multiplier_width-1 downto 0),
       i_w1 => w1_blue(g_multiplier_width-1 downto 0),
       i_w10 => w10_blue(g_multiplier_width-1 downto 0),
       i_w2 => w2_blue(g_multiplier_width-1 downto 0),
       i_w3 => w3_blue(g_multiplier_width-1 downto 0),
       i_w4 => w4_blue(g_multiplier_width-1 downto 0),
       i_w5 => w5_blue(g_multiplier_width-1 downto 0),
       i_w6 => w6_blue(g_multiplier_width-1 downto 0),
       i_w7 => w7_blue(g_multiplier_width-1 downto 0),
       i_w8 => w8_blue(g_multiplier_width-1 downto 0),
       i_w9 => w9_blue(g_multiplier_width-1 downto 0),
       o_product0 => product0_blue(g_product_width-1 downto 0),
       o_product1 => product1_blue(g_product_width-1 downto 0),
       o_product10 => product10_blue(g_product_width-1 downto 0),
       o_product2 => product2_blue(g_product_width-1 downto 0),
       o_product3 => product3_blue(g_product_width-1 downto 0),
       o_product4 => product4_blue(g_product_width-1 downto 0),
       o_product5 => product5_blue(g_product_width-1 downto 0),
       o_product6 => product6_blue(g_product_width-1 downto 0),
       o_product7 => product7_blue(g_product_width-1 downto 0),
       o_product8 => product8_blue(g_product_width-1 downto 0),
       o_product9 => product9_blue(g_product_width-1 downto 0)
  );

GREEN : multiplier_bank
  generic map(
       g_multiplier_width => g_multiplier_width,
       g_product_width => g_product_width
  )
  port map(
       i_clk => i_clk,
       i_data0 => data0_green(g_multiplier_width-1 downto 0),
       i_data1 => data1_green(g_multiplier_width-1 downto 0),
       i_data10 => data10_green(g_multiplier_width-1 downto 0),
       i_data2 => data2_green(g_multiplier_width-1 downto 0),
       i_data3 => data3_green(g_multiplier_width-1 downto 0),
       i_data4 => data4_green(g_multiplier_width-1 downto 0),
       i_data5 => data5_green(g_multiplier_width-1 downto 0),
       i_data6 => data6_green(g_multiplier_width-1 downto 0),
       i_data7 => data7_green(g_multiplier_width-1 downto 0),
       i_data8 => data8_green(g_multiplier_width-1 downto 0),
       i_data9 => data9_green(g_multiplier_width-1 downto 0),
       i_w0 => w0_green(g_multiplier_width-1 downto 0),
       i_w1 => w1_green(g_multiplier_width-1 downto 0),
       i_w10 => w10_green(g_multiplier_width-1 downto 0),
       i_w2 => w2_green(g_multiplier_width-1 downto 0),
       i_w3 => w3_green(g_multiplier_width-1 downto 0),
       i_w4 => w4_green(g_multiplier_width-1 downto 0),
       i_w5 => w5_green(g_multiplier_width-1 downto 0),
       i_w6 => w6_green(g_multiplier_width-1 downto 0),
       i_w7 => w7_green(g_multiplier_width-1 downto 0),
       i_w8 => w8_green(g_multiplier_width-1 downto 0),
       i_w9 => w9_green(g_multiplier_width-1 downto 0),
       o_product0 => product0_green(g_product_width-1 downto 0),
       o_product1 => product1_green(g_product_width-1 downto 0),
       o_product10 => product10_green(g_product_width-1 downto 0),
       o_product2 => product2_green(g_product_width-1 downto 0),
       o_product3 => product3_green(g_product_width-1 downto 0),
       o_product4 => product4_green(g_product_width-1 downto 0),
       o_product5 => product5_green(g_product_width-1 downto 0),
       o_product6 => product6_green(g_product_width-1 downto 0),
       o_product7 => product7_green(g_product_width-1 downto 0),
       o_product8 => product8_green(g_product_width-1 downto 0),
       o_product9 => product9_green(g_product_width-1 downto 0)
  );

RED : multiplier_bank
  generic map(
       g_multiplier_width => g_multiplier_width,
       g_product_width => g_product_width
  )
  port map(
       i_clk => i_clk,
       i_data0 => data0_red(g_multiplier_width-1 downto 0),
       i_data1 => data1_red(g_multiplier_width-1 downto 0),
       i_data10 => data10_red(g_multiplier_width-1 downto 0),
       i_data2 => data2_red(g_multiplier_width-1 downto 0),
       i_data3 => data3_red(g_multiplier_width-1 downto 0),
       i_data4 => data4_red(g_multiplier_width-1 downto 0),
       i_data5 => data5_red(g_multiplier_width-1 downto 0),
       i_data6 => data6_red(g_multiplier_width-1 downto 0),
       i_data7 => data7_red(g_multiplier_width-1 downto 0),
       i_data8 => data8_red(g_multiplier_width-1 downto 0),
       i_data9 => data9_red(g_multiplier_width-1 downto 0),
       i_w0 => w0_red(g_multiplier_width-1 downto 0),
       i_w1 => w1_red(g_multiplier_width-1 downto 0),
       i_w10 => w10_red(g_multiplier_width-1 downto 0),
       i_w2 => w2_red(g_multiplier_width-1 downto 0),
       i_w3 => w3_red(g_multiplier_width-1 downto 0),
       i_w4 => w4_red(g_multiplier_width-1 downto 0),
       i_w5 => w5_red(g_multiplier_width-1 downto 0),
       i_w6 => w6_red(g_multiplier_width-1 downto 0),
       i_w7 => w7_red(g_multiplier_width-1 downto 0),
       i_w8 => w8_red(g_multiplier_width-1 downto 0),
       i_w9 => w9_red(g_multiplier_width-1 downto 0),
       o_product0 => product0_red(g_product_width-1 downto 0),
       o_product1 => product1_red(g_product_width-1 downto 0),
       o_product10 => product10_red(g_product_width-1 downto 0),
       o_product2 => product2_red(g_product_width-1 downto 0),
       o_product3 => product3_red(g_product_width-1 downto 0),
       o_product4 => product4_red(g_product_width-1 downto 0),
       o_product5 => product5_red(g_product_width-1 downto 0),
       o_product6 => product6_red(g_product_width-1 downto 0),
       o_product7 => product7_red(g_product_width-1 downto 0),
       o_product8 => product8_red(g_product_width-1 downto 0),
       o_product9 => product9_red(g_product_width-1 downto 0)
  );

U1 : input_fifo_network
  generic map(
       g_data_width => g_data_width,
       g_red_bits => g_red_bits,
       g_green_bits => g_green_bits,
       g_blue_bits => g_blue_bits
  )
  port map(
       almost_empty => almost_empty,
       almost_full => almost_full,
       din => din(g_data_width-1 downto 0),
       empty => empty,
       full => full,
       i_rd_clk => i_rd_clk,
       i_reset_n => i_reset_n,
       i_wr_clk => i_rd_clk,
       o_dout0_blue => data0_blue(g_multiplier_width-1 downto 0),
       o_dout0_green => data0_green(g_multiplier_width-1 downto 0),
       o_dout0_red => data0_red(g_multiplier_width-1 downto 0),
       o_dout10_blue => data10_blue(g_multiplier_width-1 downto 0),
       o_dout10_green => data10_green(g_multiplier_width-1 downto 0),
       o_dout10_red => data10_red(g_multiplier_width-1 downto 0),
       o_dout1_blue => data1_blue(g_multiplier_width-1 downto 0),
       o_dout1_green => data1_green(g_multiplier_width-1 downto 0),
       o_dout1_red => data1_red(g_multiplier_width-1 downto 0),
       o_dout2_blue => data2_blue(g_multiplier_width-1 downto 0),
       o_dout2_green => data2_green(g_multiplier_width-1 downto 0),
       o_dout2_red => data2_red(g_multiplier_width-1 downto 0),
       o_dout3_blue => data3_blue(g_multiplier_width-1 downto 0),
       o_dout3_green => data3_green(g_multiplier_width-1 downto 0),
       o_dout3_red => data3_red(g_multiplier_width-1 downto 0),
       o_dout4_blue => data4_blue(g_multiplier_width-1 downto 0),
       o_dout4_green => data4_green(g_multiplier_width-1 downto 0),
       o_dout4_red => data4_red(g_multiplier_width-1 downto 0),
       o_dout5_blue => data5_blue(g_multiplier_width-1 downto 0),
       o_dout5_green => data5_green(g_multiplier_width-1 downto 0),
       o_dout5_red => data5_red(g_multiplier_width-1 downto 0),
       o_dout6_blue => data6_blue(g_multiplier_width-1 downto 0),
       o_dout6_green => data6_green(g_multiplier_width-1 downto 0),
       o_dout6_red => data6_red(g_multiplier_width-1 downto 0),
       o_dout7_blue => data7_blue(g_multiplier_width-1 downto 0),
       o_dout7_green => data7_green(g_multiplier_width-1 downto 0),
       o_dout7_red => data7_red(g_multiplier_width-1 downto 0),
       o_dout8_blue => data8_blue(g_multiplier_width-1 downto 0),
       o_dout8_green => data8_green(g_multiplier_width-1 downto 0),
       o_dout8_red => data8_red(g_multiplier_width-1 downto 0),
       o_dout9_blue => data9_blue(g_multiplier_width-1 downto 0),
       o_dout9_green => data9_green(g_multiplier_width-1 downto 0),
       o_dout9_red => data9_red(g_multiplier_width-1 downto 0),
       prog_empty => prog_empty,
       prog_empty_thresh => prog_empty_thresh,
       prog_full => prog_full,
       prog_full_thresh => prog_full_thresh,
       rd_en => rd_en,
       valid => valid,
       wr_en => wr_en
  );

U13 : input_fifo_net_controller
  generic map(
       g_weight_width => g_weight_width,
       g_data_width => g_data_width
  )
  port map(
       i_almost_empty => almost_empty,
       i_almost_full => almost_full,
       i_clk => i_rd_clk,
       i_empty => empty,
       i_full => full,
       i_inbuff_almost_empty => i_inbuff_almost_empty,
       i_inbuff_dout => i_inbuff_dout,
       i_inbuff_empty => i_inbuff_empty,
       i_inbuff_prog_empty => i_inbuff_prog_empty,
       i_inbuff_valid => i_inbuff_valid,
       i_prog_empty => prog_empty,
       i_prog_full => prog_full,
       i_reset_n => i_reset_n,
       i_valid => valid,
       o_fifo_net_din => din(g_data_width-1 downto 0),
       o_inbuff_prog_empty_thresh => o_inbuff_prog_empty_thresh,
       o_inbuff_rd_en => o_inbuff_rd_en,
       o_prog_empty_thresh => prog_empty_thresh,
       o_prog_full_thresh => prog_full_thresh,
       o_rd_en => rd_en,
       o_wr_en => wr_en,
       w0_blue => w0_blue(g_multiplier_width-1 downto 0),
       w0_green => w0_green(g_multiplier_width-1 downto 0),
       w0_red => w0_red(g_multiplier_width-1 downto 0),
       w10_blue => w10_blue(g_multiplier_width-1 downto 0),
       w10_green => w10_green(g_multiplier_width-1 downto 0),
       w10_red => w10_red(g_multiplier_width-1 downto 0),
       w1_blue => w1_blue(g_multiplier_width-1 downto 0),
       w1_green => w1_green(g_multiplier_width-1 downto 0),
       w1_red => w1_red(g_multiplier_width-1 downto 0),
       w2_blue => w2_blue(g_multiplier_width-1 downto 0),
       w2_green => w2_green(g_multiplier_width-1 downto 0),
       w2_red => w2_red(g_multiplier_width-1 downto 0),
       w3_blue => w3_blue(g_multiplier_width-1 downto 0),
       w3_green => w3_green(g_multiplier_width-1 downto 0),
       w3_red => w3_red(g_multiplier_width-1 downto 0),
       w4_blue => w4_blue(g_multiplier_width-1 downto 0),
       w4_green => w4_green(g_multiplier_width-1 downto 0),
       w4_red => w4_red(g_multiplier_width-1 downto 0),
       w5_blue => w5_blue(g_multiplier_width-1 downto 0),
       w5_green => w5_green(g_multiplier_width-1 downto 0),
       w5_red => w5_red(g_multiplier_width-1 downto 0),
       w6_blue => w6_blue(g_multiplier_width-1 downto 0),
       w6_green => w6_green(g_multiplier_width-1 downto 0),
       w6_red => w6_red(g_multiplier_width-1 downto 0),
       w7_blue => w7_blue(g_multiplier_width-1 downto 0),
       w7_green => w7_green(g_multiplier_width-1 downto 0),
       w7_red => w7_red(g_multiplier_width-1 downto 0),
       w8_blue => w8_blue(g_multiplier_width-1 downto 0),
       w8_green => w8_green(g_multiplier_width-1 downto 0),
       w8_red => w8_red(g_multiplier_width-1 downto 0),
       w9_blue => w9_blue(g_multiplier_width-1 downto 0),
       w9_green => w9_green(g_multiplier_width-1 downto 0),
       w9_red => w9_red(g_multiplier_width-1 downto 0)
  );

U2 : accumulator
  generic map(
       g_product_width => g_product_width,
       g_conv_width => g_conv_width
  )
  port map(
       i_clk => i_clk,
       i_product0_blue => product0_blue(g_product_width-1 downto 0),
       i_product0_green => product0_green(g_product_width-1 downto 0),
       i_product0_red => product0_red(g_product_width-1 downto 0),
       i_product10_blue => product10_blue(g_product_width-1 downto 0),
       i_product10_green => product10_green(g_product_width-1 downto 0),
       i_product10_red => product10_red(g_product_width-1 downto 0),
       i_product1_blue => product1_blue(g_product_width-1 downto 0),
       i_product1_green => product1_green(g_product_width-1 downto 0),
       i_product1_red => product1_red(g_product_width-1 downto 0),
       i_product2_blue => product2_blue(g_product_width-1 downto 0),
       i_product2_green => product2_green(g_product_width-1 downto 0),
       i_product2_red => product2_red(g_product_width-1 downto 0),
       i_product3_blue => product3_blue(g_product_width-1 downto 0),
       i_product3_green => product3_green(g_product_width-1 downto 0),
       i_product3_red => product3_red(g_product_width-1 downto 0),
       i_product4_blue => product4_blue(g_product_width-1 downto 0),
       i_product4_green => product4_green(g_product_width-1 downto 0),
       i_product4_red => product4_red(g_product_width-1 downto 0),
       i_product5_blue => product5_blue(g_product_width-1 downto 0),
       i_product5_green => product5_green(g_product_width-1 downto 0),
       i_product5_red => product5_red(g_product_width-1 downto 0),
       i_product6_blue => product6_blue(g_product_width-1 downto 0),
       i_product6_green => product6_green(g_product_width-1 downto 0),
       i_product6_red => product6_red(g_product_width-1 downto 0),
       i_product7_blue => product7_blue(g_product_width-1 downto 0),
       i_product7_green => product7_green(g_product_width-1 downto 0),
       i_product7_red => product7_red(g_product_width-1 downto 0),
       i_product8_blue => product8_blue(g_product_width-1 downto 0),
       i_product8_green => product8_green(g_product_width-1 downto 0),
       i_product8_red => product8_red(g_product_width-1 downto 0),
       i_product9_blue => product9_blue(g_product_width-1 downto 0),
       i_product9_green => product9_green(g_product_width-1 downto 0),
       i_product9_red => product9_red(g_product_width-1 downto 0),
       i_reset_n => i_reset_n,
       o_conv_out => o_conv_out(g_conv_width-1 downto 0)
  );


---- Terminal assignment ----

    -- Inputs terminals
	i_rd_clk <= i_clk;


end arch;
