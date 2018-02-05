-------------------------------------------------------------------------------
--
-- Title       : Convolution_Layer_Top
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\compile\Convolution_Layer_Top.vhd
-- Generated   : Sun Feb  4 14:12:54 2018
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\Convolution_Layer_Top.bde
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


entity Convolution_Layer_Top is
  generic(
       -- name : type := value
       g_axi_bus_width : integer := 16;
       g_data_width : integer := 16;
       g_weight_width : integer := 16;
       g_multiplier_width : integer := 16;
       g_product_width : integer := 16;
       g_conv_width : integer := 16;
       g_relu_width : integer := 16;
       g_dsps_used : integer := 200;
       g_norm_width : integer := 16
  );
  port(
       i_ext_reset_n : in STD_LOGIC;
       i_master_clk : in STD_LOGIC;
       i_slave_clk : in STD_LOGIC;
       i_we : in STD_LOGIC_VECTOR(19 downto 0);
       o_wd : in STD_LOGIC_VECTOR((32*20)-1 downto 0);
       i_rd : out STD_LOGIC_VECTOR((32*20)-1 downto 0)
  );
end Convolution_Layer_Top;

architecture arch of Convolution_Layer_Top is

---- Component declarations -----

component conv_input_buffer
  port (
       din : in STD_LOGIC_VECTOR(15 downto 0);
       prog_empty_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       rd_clk : in STD_LOGIC;
       rd_en : in STD_LOGIC;
       rst : in STD_LOGIC;
       wr_clk : in STD_LOGIC;
       wr_en : in STD_LOGIC;
       almost_empty : out STD_LOGIC;
       almost_full : out STD_LOGIC;
       dout : out STD_LOGIC_VECTOR(15 downto 0);
       empty : out STD_LOGIC;
       full : out STD_LOGIC;
       prog_empty : out STD_LOGIC;
       prog_full : out STD_LOGIC;
       valid : out STD_LOGIC
  );
end component;
component conv_output_buffer
  port (
       din : in STD_LOGIC_VECTOR(15 downto 0);
       prog_empty_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       rd_clk : in STD_LOGIC;
       rd_en : in STD_LOGIC;
       rst : in STD_LOGIC;
       wr_clk : in STD_LOGIC;
       wr_en : in STD_LOGIC;
       almost_empty : out STD_LOGIC;
       almost_full : out STD_LOGIC;
       dout : out STD_LOGIC_VECTOR(15 downto 0);
       empty : out STD_LOGIC;
       full : out STD_LOGIC;
       prog_empty : out STD_LOGIC;
       prog_full : out STD_LOGIC;
       valid : out STD_LOGIC
  );
end component;
component Convolution_Controller
  generic(
       g_axi_bus_width : INTEGER := 32;
       g_relu_width : INTEGER := 16;
       g_data_width : INTEGER := 16;
       g_weight_width : INTEGER := 16
  );
  port (
       i_control_reg : in STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       i_conv_params_reg : in STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       i_conv_relu_output : in STD_LOGIC_VECTOR(g_relu_width-1 downto 0);
       i_ext_reset_n : in STD_LOGIC;
       i_filter_bytes_reg : in STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       i_filter_weights_addr_reg : in STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       i_inbuff_almost_empty : in STD_LOGIC;
       i_inbuff_almost_full : in STD_LOGIC;
       i_inbuff_empty : in STD_LOGIC;
       i_inbuff_full : in STD_LOGIC;
       i_inbuff_prog_empty : in STD_LOGIC;
       i_inbuff_prog_full : in STD_LOGIC;
       i_input_data_addr_reg : in STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       i_input_image_params_reg : in STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       i_master_clk : in STD_LOGIC;
       i_outbuff_almost_empty : in STD_LOGIC;
       i_outbuff_almost_full : in STD_LOGIC;
       i_outbuff_empty : in STD_LOGIC;
       i_outbuff_full : in STD_LOGIC;
       i_outbuff_prog_empty : in STD_LOGIC;
       i_outbuff_prog_full : in STD_LOGIC;
       i_outbuff_valid : in STD_LOGIC;
       i_output_data_addr_reg : in STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       i_output_image_params_reg : in STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       i_slave_clk : in STD_LOGIC;
       i_status_reg : in STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       i_we : in STD_LOGIC_VECTOR(19 downto 0);
       o_control_reg : out STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       o_conv_params_reg : out STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       o_enable : out STD_LOGIC;
       o_filter_bytes_reg : out STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       o_filter_weights_addr_reg : out STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       o_image_data : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_inbuff_prog_full_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_inbuff_wr_en : out STD_LOGIC;
       o_input_data_addr_reg : out STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       o_input_image_params_reg : out STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       o_input_volume_channels : out STD_LOGIC_VECTOR(11 downto 0);
       o_input_volume_size : out STD_LOGIC_VECTOR(7 downto 0);
       o_number_of_filters : out STD_LOGIC_VECTOR(11 downto 0);
       o_outbuff_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_outbuff_rd_en : out STD_LOGIC;
       o_output_data_addr_reg : out STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       o_output_image_params_reg : out STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       o_output_volume_channels : out STD_LOGIC_VECTOR(11 downto 0);
       o_output_volume_size : out STD_LOGIC_VECTOR(3 downto 0);
       o_pad : out STD_LOGIC_VECTOR(3 downto 0);
       o_relu_en : out STD_LOGIC;
       o_start : out STD_LOGIC;
       o_status_reg : out STD_LOGIC_VECTOR(g_axi_bus_width-1 downto 0);
       o_stride : out STD_LOGIC_VECTOR(3 downto 0);
       o_weight_filter_channels : out STD_LOGIC_VECTOR(11 downto 0);
       o_weight_filter_size : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;
component filter_top
  generic(
       g_data_width : integer := 16;
       g_weight_width : integer := 16;
       g_multiplier_width : integer := 16;
       g_product_width : integer := 16;
       g_conv_width : integer := 16;
       g_dsps_used : integer := 200
  );
  port (
       i_clk : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_inbuff_almost_empty : in STD_LOGIC;
       i_inbuff_dout : in STD_LOGIC_VECTOR(15 downto 0);
       i_inbuff_empty : in STD_LOGIC;
       i_inbuff_prog_empty : in STD_LOGIC;
       i_inbuff_valid : in STD_LOGIC;
       i_input_volume_channels : in STD_LOGIC_VECTOR(11 downto 0);
       i_input_volume_size : in STD_LOGIC_VECTOR(7 downto 0);
       i_normalizer_ready : in STD_LOGIC;
       i_number_of_filters : in STD_LOGIC_VECTOR(11 downto 0);
       i_pad : in STD_LOGIC_VECTOR(3 downto 0);
       i_reset_n : in STD_LOGIC;
       i_start : in STD_LOGIC;
       i_stride : in STD_LOGIC_VECTOR(3 downto 0);
       i_weight_filter_channels : in STD_LOGIC_VECTOR(11 downto 0);
       i_weight_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       o_conv_data_valid : out STD_LOGIC;
       o_conv_volume_out : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_inbuff_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_inbuff_rd_en : out STD_LOGIC
  );
end component;
component normalizer
  generic(
       g_data_width : integer := 16
  );
  port (
       i_beta : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_clk : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_epsilon : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_fresh_params : in STD_LOGIC;
       i_gamma : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_input_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_input_data_valid : in STD_LOGIC;
       i_mean : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_outbuff_prog_full : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_variance : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_normalized_data : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_normalized_data_valid : out STD_LOGIC;
       o_normalizer_ready : out STD_LOGIC
  );
end component;
component relu_unit
  generic(
       g_conv_width : INTEGER := 16;
       g_relu_width : INTEGER := 16
  );
  port (
       i_clk : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_fifo_almost_full : in STD_LOGIC;
       i_fifo_full : in STD_LOGIC;
       i_fifo_prog_full : in STD_LOGIC;
       i_normalized_data : in STD_LOGIC_VECTOR(g_conv_width-1 downto 0);
       i_normalized_data_valid : in STD_LOGIC;
       i_relu_en : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_fifo_prog_full_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_outbuff_prog_full : out STD_LOGIC;
       o_relu_out : out STD_LOGIC_VECTOR(g_relu_width-1 downto 0);
       o_wr_en : out STD_LOGIC
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal conv_data_valid : STD_LOGIC;
signal enable : STD_LOGIC;
signal inbuff_almost_empty : STD_LOGIC;
signal inbuff_almost_full : STD_LOGIC;
signal inbuff_empty : STD_LOGIC;
signal inbuff_full : STD_LOGIC;
signal inbuff_prog_empty : STD_LOGIC;
signal inbuff_prog_full : STD_LOGIC;
signal inbuff_rd_en : STD_LOGIC;
signal inbuff_valid : STD_LOGIC;
signal inbuff_wr_en : STD_LOGIC;
signal i_fresh_params : STD_LOGIC;
signal normalized_data_valid : STD_LOGIC;
signal normalizer_ready : STD_LOGIC;
signal outbuff_almost_empty : STD_LOGIC;
signal outbuff_almost_full : STD_LOGIC;
signal outbuff_empty : STD_LOGIC;
signal outbuff_full : STD_LOGIC;
signal outbuff_prog_empty : STD_LOGIC;
signal outbuff_prog_full : STD_LOGIC;
signal outbuff_rd_en : STD_LOGIC;
signal outbuff_valid : STD_LOGIC;
signal outbuff_wr_en : STD_LOGIC;
signal o_start : STD_LOGIC;
signal relu_en : STD_LOGIC;
signal BUS3154 : STD_LOGIC_VECTOR(11 downto 0);
signal conv_volume_out : STD_LOGIC_VECTOR(g_conv_width-1 downto 0);
signal inbuff_din : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal inbuff_dout : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal inbuff_prog_empty_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal inbuff_prog_full_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal i_beta : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal i_epsilon : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal i_gamma : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal i_mean : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal i_variance : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal normalized_data : STD_LOGIC_VECTOR(g_norm_width-1 downto 0);
signal outbuff_din : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal outbuff_dout : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal outbuff_prog_empty_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal outbuff_prog_full_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal o_input_volume_channels : STD_LOGIC_VECTOR(11 downto 0);
signal o_input_volume_size : STD_LOGIC_VECTOR(7 downto 0);
signal o_output_volume_channels : STD_LOGIC_VECTOR(11 downto 0);
signal o_output_volume_size : STD_LOGIC_VECTOR(3 downto 0);
signal o_pad : STD_LOGIC_VECTOR(3 downto 0);
signal o_stride : STD_LOGIC_VECTOR(3 downto 0);
signal o_weight_filter_channels : STD_LOGIC_VECTOR(11 downto 0);
signal weight_filter_size : STD_LOGIC_VECTOR(3 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

BATCH_NORMALIZER : normalizer
  generic map(
       g_data_width => g_norm_width
  )
  port map(
       i_beta => i_beta(g_data_width-1 downto 0),
       i_clk => i_master_clk,
       i_enable => enable,
       i_epsilon => i_epsilon(g_data_width-1 downto 0),
       i_fresh_params => i_fresh_params,
       i_gamma => i_gamma(g_data_width-1 downto 0),
       i_input_data => conv_volume_out(g_conv_width-1 downto 0),
       i_input_data_valid => conv_data_valid,
       i_mean => i_mean(g_data_width-1 downto 0),
       i_outbuff_prog_full => outbuff_prog_full,
       i_reset_n => i_ext_reset_n,
       i_variance => i_variance(g_data_width-1 downto 0),
       o_normalized_data => normalized_data(g_norm_width-1 downto 0),
       o_normalized_data_valid => normalized_data_valid,
       o_normalizer_ready => normalizer_ready
  );

CONVOLUTION : filter_top
  generic map(
       g_data_width => g_data_width,
       g_weight_width => g_weight_width,
       g_multiplier_width => g_multiplier_width,
       g_product_width => g_product_width,
       g_conv_width => g_conv_width,
       g_dsps_used => g_dsps_used
  )
  port map(
       i_clk => i_master_clk,
       i_enable => enable,
       i_inbuff_almost_empty => inbuff_almost_empty,
       i_inbuff_dout => inbuff_dout(g_data_width-1 downto 0),
       i_inbuff_empty => inbuff_empty,
       i_inbuff_prog_empty => inbuff_prog_empty,
       i_inbuff_valid => inbuff_valid,
       i_input_volume_channels => o_input_volume_channels,
       i_input_volume_size => o_input_volume_size,
       i_normalizer_ready => normalizer_ready,
       i_number_of_filters => BUS3154,
       i_pad => o_pad,
       i_reset_n => i_ext_reset_n,
       i_start => Dangling_Input_Signal,
       i_stride => o_stride,
       i_weight_filter_channels => o_weight_filter_channels,
       i_weight_filter_size => weight_filter_size,
       o_conv_data_valid => conv_data_valid,
       o_conv_volume_out => conv_volume_out(g_conv_width-1 downto 0),
       o_inbuff_prog_empty_thresh => inbuff_prog_empty_thresh,
       o_inbuff_rd_en => inbuff_rd_en
  );

INPUT_BUFFER : conv_input_buffer
  port map(
       almost_empty => inbuff_almost_empty,
       almost_full => inbuff_almost_full,
       din => inbuff_din(g_data_width-1 downto 0),
       dout => inbuff_dout(g_data_width-1 downto 0),
       empty => inbuff_empty,
       full => inbuff_full,
       prog_empty => inbuff_prog_empty,
       prog_empty_thresh => inbuff_prog_empty_thresh,
       prog_full => inbuff_prog_full,
       prog_full_thresh => inbuff_prog_full_thresh,
       rd_clk => i_master_clk,
       rd_en => inbuff_rd_en,
       rst => i_ext_reset_n,
       valid => inbuff_valid,
       wr_clk => i_master_clk,
       wr_en => inbuff_wr_en
  );

OUTPUT_BUFFER : conv_output_buffer
  port map(
       almost_empty => outbuff_almost_empty,
       almost_full => outbuff_almost_full,
       din => outbuff_din(g_data_width-1 downto 0),
       dout => outbuff_dout(g_data_width-1 downto 0),
       empty => outbuff_empty,
       full => outbuff_full,
       prog_empty => outbuff_prog_empty,
       prog_empty_thresh => outbuff_prog_empty_thresh,
       prog_full => outbuff_prog_full,
       prog_full_thresh => outbuff_prog_full_thresh,
       rd_clk => i_master_clk,
       rd_en => outbuff_rd_en,
       rst => i_ext_reset_n,
       valid => outbuff_valid,
       wr_clk => i_master_clk,
       wr_en => outbuff_wr_en
  );

RELU_ACTIVATION : relu_unit
  generic map(
       g_conv_width => g_conv_width,
       g_relu_width => g_relu_width
  )
  port map(
       i_clk => i_master_clk,
       i_enable => enable,
       i_fifo_almost_full => outbuff_almost_full,
       i_fifo_full => outbuff_full,
       i_fifo_prog_full => outbuff_prog_full,
       i_normalized_data => normalized_data(g_norm_width-1 downto 0),
       i_normalized_data_valid => normalized_data_valid,
       i_relu_en => relu_en,
       i_reset_n => i_ext_reset_n,
       o_fifo_prog_full_thresh => outbuff_prog_full_thresh,
       o_outbuff_prog_full => outbuff_prog_full,
       o_relu_out => outbuff_din(g_data_width-1 downto 0),
       o_wr_en => outbuff_wr_en
  );

ROUTER : Convolution_Controller
  generic map(
       g_axi_bus_width => g_axi_bus_width,
       g_relu_width => g_relu_width,
       g_data_width => g_data_width
  )
  port map(
       i_control_reg => o_wd(31 downto 0),
       i_conv_params_reg => o_wd(31+32*7 downto 0+32*7),
       i_conv_relu_output => outbuff_dout(g_data_width-1 downto 0),
       i_ext_reset_n => i_ext_reset_n,
       i_filter_bytes_reg => o_wd(31+32*8 downto 0+32*8),
       i_filter_weights_addr_reg => o_wd(31+32*4 downto 0+32*4),
       i_inbuff_almost_empty => inbuff_almost_empty,
       i_inbuff_almost_full => inbuff_almost_full,
       i_inbuff_empty => inbuff_prog_empty,
       i_inbuff_full => inbuff_full,
       i_inbuff_prog_empty => inbuff_empty,
       i_inbuff_prog_full => inbuff_prog_full,
       i_input_data_addr_reg => o_wd(31+32*2 downto 0+32*2),
       i_input_image_params_reg => o_wd(31+32*5 downto 0+32*5),
       i_master_clk => i_master_clk,
       i_outbuff_almost_empty => outbuff_almost_empty,
       i_outbuff_almost_full => outbuff_almost_full,
       i_outbuff_empty => outbuff_empty,
       i_outbuff_full => outbuff_full,
       i_outbuff_prog_empty => outbuff_prog_empty,
       i_outbuff_prog_full => outbuff_prog_full,
       i_outbuff_valid => outbuff_valid,
       i_output_data_addr_reg => o_wd(31+32*3 downto 0+32*3),
       i_output_image_params_reg => o_wd(31+32*6 downto 0+32*6),
       i_slave_clk => i_slave_clk,
       i_status_reg => o_wd(31+32*1 downto 0+32*1),
       i_we => i_we,
       o_control_reg => i_rd(31+32*8 downto 0+32*8),
       o_conv_params_reg => i_rd(31+32*1 downto 0+32*1),
       o_enable => enable,
       o_filter_bytes_reg => i_rd(31 downto 0),
       o_filter_weights_addr_reg => i_rd(31+32*4 downto 0+32*4),
       o_image_data => inbuff_din(g_data_width-1 downto 0),
       o_inbuff_prog_full_thresh => inbuff_prog_full_thresh,
       o_inbuff_wr_en => inbuff_wr_en,
       o_input_data_addr_reg => i_rd(31+32*6 downto 0+32*6),
       o_input_image_params_reg => i_rd(31+32*3 downto 0+32*3),
       o_input_volume_channels => o_input_volume_channels,
       o_input_volume_size => o_input_volume_size,
       o_number_of_filters => BUS3154,
       o_outbuff_prog_empty_thresh => outbuff_prog_empty_thresh,
       o_outbuff_rd_en => outbuff_rd_en,
       o_output_data_addr_reg => i_rd(31+32*5 downto 0+32*5),
       o_output_image_params_reg => i_rd(31+32*2 downto 0+32*2),
       o_output_volume_channels => o_output_volume_channels,
       o_output_volume_size => o_output_volume_size,
       o_pad => o_pad,
       o_relu_en => relu_en,
       o_start => o_start,
       o_status_reg => i_rd(31+32*7 downto 0+32*7),
       o_stride => o_stride,
       o_weight_filter_channels => o_weight_filter_channels,
       o_weight_filter_size => weight_filter_size
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end arch;
