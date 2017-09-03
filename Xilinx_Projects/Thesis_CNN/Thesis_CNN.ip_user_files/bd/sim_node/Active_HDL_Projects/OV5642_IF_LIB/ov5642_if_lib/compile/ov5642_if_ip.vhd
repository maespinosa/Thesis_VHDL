-------------------------------------------------------------------------------
--
-- Title       : ov5642_if_ip
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\compile\ov5642_if_ip.vhd
-- Generated   : Mon May 29 00:50:43 2017
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\ov5642_if_ip.bde
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


entity ov5642_if_ip is
  port(
       i_HREF : in STD_LOGIC;
       i_PCLK : in STD_LOGIC;
       i_VSYNC : in STD_LOGIC;
       i_axi_master_clk : in STD_LOGIC;
       i_axi_slave_clk : in STD_LOGIC;
       i_btn_config : in STD_LOGIC;
       i_burst_write_active : in STD_LOGIC;
       i_config_bypass : in STD_LOGIC;
       i_config_capture_clk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_slv_reg_rden : in STD_LOGIC;
       i_wready : in STD_LOGIC;
       i_write_done : in STD_LOGIC;
       i_write_next : in STD_LOGIC;
       i_SDATA : in STD_LOGIC_VECTOR(9 downto 0);
       i_diag_reg_0 : in STD_LOGIC_VECTOR(31 downto 0);
       i_diag_reg_1 : in STD_LOGIC_VECTOR(31 downto 0);
       i_diag_reg_2 : in STD_LOGIC_VECTOR(31 downto 0);
       i_diag_reg_3 : in STD_LOGIC_VECTOR(31 downto 0);
       i_image_data_addr_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_slv_reg_wren : in STD_LOGIC_VECTOR(31 downto 0);
       i_start_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_status_reg : in STD_LOGIC_VECTOR(31 downto 0);
       o_INIT_AXI_TXN : out STD_LOGIC;
       o_PWDN : out STD_LOGIC;
       o_SIOC : out STD_LOGIC;
       o_SIOD : out STD_LOGIC;
       o_i2c_busy : out STD_LOGIC;
       o_outbuff_almost_empty : out STD_LOGIC;
       o_outbuff_empty : out STD_LOGIC;
       o_outbuff_prog_empty : out STD_LOGIC;
       o_outbuff_valid : out STD_LOGIC;
       o_DATA_TO_WRITE : out STD_LOGIC_VECTOR(15 downto 0);
       o_capture_state_debug : out STD_LOGIC_VECTOR(3 downto 0);
       o_debug_state : out STD_LOGIC_VECTOR(2 downto 0);
       o_diag_reg_0 : out STD_LOGIC_VECTOR(31 downto 0);
       o_diag_reg_1 : out STD_LOGIC_VECTOR(31 downto 0);
       o_diag_reg_2 : out STD_LOGIC_VECTOR(31 downto 0);
       o_diag_reg_3 : out STD_LOGIC_VECTOR(31 downto 0);
       o_image_data_addr_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_sioc_state_debug : out STD_LOGIC_VECTOR(2 downto 0);
       o_siod_state_debug : out STD_LOGIC_VECTOR(4 downto 0);
       o_start_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_status_reg : out STD_LOGIC_VECTOR(31 downto 0)
  );
end ov5642_if_ip;

architecture arch of ov5642_if_ip is

---- Component declarations -----

component cross_clk
  port (
       i_X_pos : in STD_LOGIC_VECTOR(11 downto 0);
       i_Y_pos : in STD_LOGIC_VECTOR(11 downto 0);
       i_capture_busy : in STD_LOGIC;
       i_clk1 : in STD_LOGIC;
       i_clk2 : in STD_LOGIC;
       i_config_done : in STD_LOGIC;
       i_debug_state : in STD_LOGIC_VECTOR(2 downto 0);
       i_frame_done : in STD_LOGIC;
       i_i2c_busy : in STD_LOGIC;
       i_image_enable : in STD_LOGIC;
       i_outbuff_almost_full : in STD_LOGIC;
       i_outbuff_full : in STD_LOGIC;
       i_outbuff_prog_full : in STD_LOGIC;
       i_pclk_counter : in STD_LOGIC_VECTOR(7 downto 0);
       i_pixel_number : in STD_LOGIC_VECTOR(31 downto 0);
       i_prog_full_thresh : in STD_LOGIC_VECTOR(10 downto 0);
       i_reset_n : in STD_LOGIC;
       i_start_capture : in STD_LOGIC;
       i_sw_config_bypass : in STD_LOGIC;
       o_X_pos : out STD_LOGIC_VECTOR(11 downto 0);
       o_Y_pos : out STD_LOGIC_VECTOR(11 downto 0);
       o_capture_busy : out STD_LOGIC;
       o_config_done : out STD_LOGIC;
       o_debug_state : out STD_LOGIC_VECTOR(2 downto 0);
       o_frame_done : out STD_LOGIC;
       o_i2c_busy : out STD_LOGIC;
       o_image_enable : out STD_LOGIC;
       o_outbuff_almost_full : out STD_LOGIC;
       o_outbuff_full : out STD_LOGIC;
       o_outbuff_prog_full : out STD_LOGIC;
       o_pclk_counter : out STD_LOGIC_VECTOR(7 downto 0);
       o_pixel_number : out STD_LOGIC_VECTOR(31 downto 0);
       o_prog_full_thresh : out STD_LOGIC_VECTOR(10 downto 0);
       o_start_capture : out STD_LOGIC;
       o_sw_config_bypass : out STD_LOGIC
  );
end component;
component OV5642_FIFO
  port (
       din : in STD_LOGIC_VECTOR(11 downto 0);
       prog_empty_thresh : in STD_LOGIC_VECTOR(10 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(10 downto 0);
       rd_clk : in STD_LOGIC;
       rd_en : in STD_LOGIC;
       rst : in STD_LOGIC;
       wr_clk : in STD_LOGIC;
       wr_en : in STD_LOGIC;
       almost_empty : out STD_LOGIC;
       almost_full : out STD_LOGIC;
       dout : out STD_LOGIC_VECTOR(11 downto 0);
       empty : out STD_LOGIC;
       full : out STD_LOGIC;
       prog_empty : out STD_LOGIC;
       prog_full : out STD_LOGIC;
       valid : out STD_LOGIC
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
       i_almost_full : in STD_LOGIC;
       i_btn_config : in STD_LOGIC;
       i_config_capture_clk : in STD_LOGIC;
       i_full : in STD_LOGIC;
       i_prog_full : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_start_capture : in STD_LOGIC;
       i_sw_config_bypass : in STD_LOGIC;
       o_FRAME_DONE : out STD_LOGIC;
       o_IMAGE_DATA : out STD_LOGIC_VECTOR(11 downto 0);
       o_PIXEL_NUMBER : out STD_LOGIC_VECTOR(31 downto 0);
       o_PIXEL_VALID : out STD_LOGIC;
       o_PWDN : out STD_LOGIC;
       o_RST : out STD_LOGIC;
       o_SIOC : out STD_LOGIC;
       o_SIOD : out STD_LOGIC;
       o_X_POS : out STD_LOGIC_VECTOR(11 downto 0);
       o_Y_POS : out STD_LOGIC_VECTOR(11 downto 0);
       o_capture_busy : out STD_LOGIC;
       o_capture_state_debug : out STD_LOGIC_VECTOR(3 downto 0);
       o_config_done : out STD_LOGIC;
       o_debug_state : out STD_LOGIC_VECTOR(2 downto 0);
       o_i2c_busy : out STD_LOGIC;
       o_image_enable : out STD_LOGIC;
       o_pclk : out STD_LOGIC;
       o_pclk_counter : out STD_LOGIC_VECTOR(7 downto 0);
       o_sioc_state_debug : out STD_LOGIC_VECTOR(2 downto 0);
       o_siod_state_debug : out STD_LOGIC_VECTOR(4 downto 0)
  );
end component;
component ov5642_controller
  port (
       i_axi_master_clk : in STD_LOGIC;
       i_axi_slave_clk : in STD_LOGIC;
       i_burst_write_active : in STD_LOGIC;
       i_capture_busy : in STD_LOGIC;
       i_diag_FRAME_DONE : in STD_LOGIC;
       i_diag_PIXEL_NUMBER : in STD_LOGIC_VECTOR(31 downto 0);
       i_diag_X_POS : in STD_LOGIC_VECTOR(11 downto 0);
       i_diag_Y_POS : in STD_LOGIC_VECTOR(11 downto 0);
       i_diag_config_bypass : in STD_LOGIC;
       i_diag_debug_state : in STD_LOGIC_VECTOR(2 downto 0);
       i_diag_image_enable : in STD_LOGIC;
       i_diag_outbuff_almost_empty : in STD_LOGIC;
       i_diag_outbuff_almost_full : in STD_LOGIC;
       i_diag_outbuff_empty : in STD_LOGIC;
       i_diag_outbuff_full : in STD_LOGIC;
       i_diag_outbuff_prog_empty : in STD_LOGIC;
       i_diag_outbuff_prog_full : in STD_LOGIC;
       i_diag_outbuff_valid : in STD_LOGIC;
       i_diag_pclk_counter : in STD_LOGIC_VECTOR(7 downto 0);
       i_diag_reg_0 : in STD_LOGIC_VECTOR(31 downto 0);
       i_diag_reg_1 : in STD_LOGIC_VECTOR(31 downto 0);
       i_diag_reg_2 : in STD_LOGIC_VECTOR(31 downto 0);
       i_diag_reg_3 : in STD_LOGIC_VECTOR(31 downto 0);
       i_diag_sensor_config_done : in STD_LOGIC;
       i_i2c_busy : in STD_LOGIC;
       i_image_data_addr_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_outbuff_almost_empty : in STD_LOGIC;
       i_outbuff_almost_full : in STD_LOGIC;
       i_outbuff_dout : in STD_LOGIC_VECTOR(11 downto 0);
       i_outbuff_empty : in STD_LOGIC;
       i_outbuff_full : in STD_LOGIC;
       i_outbuff_prog_empty : in STD_LOGIC;
       i_outbuff_prog_full : in STD_LOGIC;
       i_outbuff_valid : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_slv_reg_rden : in STD_LOGIC;
       i_slv_reg_wren : in STD_LOGIC_VECTOR(31 downto 0);
       i_start_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_status_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_wready : in STD_LOGIC;
       i_write_done : in STD_LOGIC;
       i_write_next : in STD_LOGIC;
       o_DATA_TO_WRITE : out STD_LOGIC_VECTOR(15 downto 0);
       o_INIT_AXI_TXN : out STD_LOGIC;
       o_diag_reg_0 : out STD_LOGIC_VECTOR(31 downto 0);
       o_diag_reg_1 : out STD_LOGIC_VECTOR(31 downto 0);
       o_diag_reg_2 : out STD_LOGIC_VECTOR(31 downto 0);
       o_diag_reg_3 : out STD_LOGIC_VECTOR(31 downto 0);
       o_image_data_addr_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_outbuff_almost_empty : out STD_LOGIC;
       o_outbuff_empty : out STD_LOGIC;
       o_outbuff_prog_empty : out STD_LOGIC;
       o_outbuff_valid : out STD_LOGIC;
       o_prog_empty_threshold : out STD_LOGIC_VECTOR(10 downto 0);
       o_prog_full_threshold : out STD_LOGIC_VECTOR(10 downto 0);
       o_read_en : out STD_LOGIC;
       o_start_capture : out STD_LOGIC;
       o_start_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_status_reg : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal almost_empty : STD_LOGIC;
signal almost_full : STD_LOGIC;
signal empty : STD_LOGIC;
signal full : STD_LOGIC;
signal i2c_busy : STD_LOGIC;
signal i_clk_100MHz : STD_LOGIC;
signal i_clk_150MHz : STD_LOGIC;
signal NET154 : STD_LOGIC;
signal NET204 : STD_LOGIC;
signal NET2374 : STD_LOGIC;
signal NET2390 : STD_LOGIC;
signal NET2398 : STD_LOGIC;
signal NET2406 : STD_LOGIC;
signal NET2478 : STD_LOGIC;
signal NET2575 : STD_LOGIC;
signal NET2578 : STD_LOGIC;
signal NET2596 : STD_LOGIC;
signal NET2604 : STD_LOGIC;
signal NET2619 : STD_LOGIC;
signal NET2634 : STD_LOGIC;
signal NET2703 : STD_LOGIC;
signal NET320 : STD_LOGIC;
signal NET3400 : STD_LOGIC;
signal NET3435 : STD_LOGIC;
signal NET3444 : STD_LOGIC;
signal NET3468 : STD_LOGIC;
signal NET3791 : STD_LOGIC;
signal NET3817 : STD_LOGIC;
signal NET95 : STD_LOGIC;
signal prog_empty : STD_LOGIC;
signal rd_en : STD_LOGIC;
signal valid : STD_LOGIC;
signal BUS2093 : STD_LOGIC_VECTOR(7 downto 0);
signal BUS2101 : STD_LOGIC_VECTOR(10 downto 0);
signal BUS2493 : STD_LOGIC_VECTOR(7 downto 0);
signal BUS2508 : STD_LOGIC_VECTOR(11 downto 0);
signal BUS2523 : STD_LOGIC_VECTOR(11 downto 0);
signal BUS2538 : STD_LOGIC_VECTOR(31 downto 0);
signal BUS2649 : STD_LOGIC_VECTOR(2 downto 0);
signal BUS2718 : STD_LOGIC_VECTOR(7 downto 0);
signal BUS2733 : STD_LOGIC_VECTOR(11 downto 0);
signal BUS2748 : STD_LOGIC_VECTOR(11 downto 0);
signal BUS2763 : STD_LOGIC_VECTOR(31 downto 0);
signal BUS2824 : STD_LOGIC_VECTOR(10 downto 0);
signal debug_state : STD_LOGIC_VECTOR(2 downto 0);
signal dout : STD_LOGIC_VECTOR(11 downto 0);
signal IMAGE_DATA : STD_LOGIC_VECTOR(11 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

---- Declarations for Dangling outputs ----
signal DANGLING_CONTROLLER_o_prog_full_threshold_2 : STD_LOGIC;
signal DANGLING_CONTROLLER_o_prog_full_threshold_1 : STD_LOGIC;
signal DANGLING_CONTROLLER_o_prog_full_threshold_0 : STD_LOGIC;

begin

---- User Signal Assignments ----
o_debug_state <= debug_state; 
o_i2c_busy <= i2c_busy; 

----  Component instantiations  ----

CONTROLLER : ov5642_controller
  port map(
       o_prog_full_threshold(0) => DANGLING_CONTROLLER_o_prog_full_threshold_0,
       o_prog_full_threshold(1) => DANGLING_CONTROLLER_o_prog_full_threshold_1,
       o_prog_full_threshold(2) => DANGLING_CONTROLLER_o_prog_full_threshold_2,
       o_prog_full_threshold(3) => BUS2093(0),
       o_prog_full_threshold(4) => BUS2093(1),
       o_prog_full_threshold(5) => BUS2093(2),
       o_prog_full_threshold(6) => BUS2093(3),
       o_prog_full_threshold(7) => BUS2093(4),
       o_prog_full_threshold(8) => BUS2093(5),
       o_prog_full_threshold(9) => BUS2093(6),
       o_prog_full_threshold(10) => BUS2093(7),
       i_axi_master_clk => i_axi_master_clk,
       i_axi_slave_clk => i_axi_slave_clk,
       i_burst_write_active => i_burst_write_active,
       i_capture_busy => NET2604,
       i_diag_FRAME_DONE => NET2703,
       i_diag_PIXEL_NUMBER => BUS2763,
       i_diag_X_POS => BUS2733,
       i_diag_Y_POS => BUS2748,
       i_diag_config_bypass => NET3400,
       i_diag_debug_state => BUS2649,
       i_diag_image_enable => NET2634,
       i_diag_outbuff_almost_empty => almost_empty,
       i_diag_outbuff_almost_full => NET3444,
       i_diag_outbuff_empty => empty,
       i_diag_outbuff_full => NET3435,
       i_diag_outbuff_prog_empty => prog_empty,
       i_diag_outbuff_prog_full => NET3468,
       i_diag_outbuff_valid => valid,
       i_diag_pclk_counter => BUS2718,
       i_diag_reg_0 => i_diag_reg_0,
       i_diag_reg_1 => i_diag_reg_1,
       i_diag_reg_2 => i_diag_reg_2,
       i_diag_reg_3 => i_diag_reg_3,
       i_diag_sensor_config_done => NET2619,
       i_i2c_busy => NET2596,
       i_image_data_addr_reg => i_image_data_addr_reg,
       i_outbuff_almost_empty => almost_empty,
       i_outbuff_almost_full => NET3444,
       i_outbuff_dout => dout,
       i_outbuff_empty => empty,
       i_outbuff_full => NET3435,
       i_outbuff_prog_empty => prog_empty,
       i_outbuff_prog_full => NET3468,
       i_outbuff_valid => valid,
       i_reset_n => i_reset_n,
       i_slv_reg_rden => i_slv_reg_rden,
       i_slv_reg_wren => i_slv_reg_wren,
       i_start_reg => i_start_reg,
       i_status_reg => i_status_reg,
       i_wready => i_wready,
       i_write_done => i_write_done,
       i_write_next => i_write_next,
       o_DATA_TO_WRITE => o_DATA_TO_WRITE,
       o_INIT_AXI_TXN => o_INIT_AXI_TXN,
       o_diag_reg_0 => o_diag_reg_0,
       o_diag_reg_1 => o_diag_reg_1,
       o_diag_reg_2 => o_diag_reg_2,
       o_diag_reg_3 => o_diag_reg_3,
       o_image_data_addr_reg => o_image_data_addr_reg,
       o_outbuff_almost_empty => o_outbuff_almost_empty,
       o_outbuff_empty => o_outbuff_empty,
       o_outbuff_prog_empty => o_outbuff_prog_empty,
       o_outbuff_valid => o_outbuff_valid,
       o_prog_empty_threshold => BUS2101,
       o_read_en => rd_en,
       o_start_capture => NET2578,
       o_start_reg => o_start_reg,
       o_status_reg => o_status_reg
  );

CROSS_CLOCKING_MODULE : cross_clk
  port map(
       i_prog_full_thresh(0) => Dangling_Input_Signal,
       i_prog_full_thresh(1) => Dangling_Input_Signal,
       i_prog_full_thresh(2) => Dangling_Input_Signal,
       i_prog_full_thresh(3) => BUS2093(0),
       i_prog_full_thresh(4) => BUS2093(1),
       i_prog_full_thresh(5) => BUS2093(2),
       i_prog_full_thresh(6) => BUS2093(3),
       i_prog_full_thresh(7) => BUS2093(4),
       i_prog_full_thresh(8) => BUS2093(5),
       i_prog_full_thresh(9) => BUS2093(6),
       i_prog_full_thresh(10) => BUS2093(7),
       i_X_pos => BUS2508,
       i_Y_pos => BUS2523,
       i_capture_busy => NET2390,
       i_clk1 => i_config_capture_clk,
       i_clk2 => i_clk_150MHz,
       i_config_done => NET2398,
       i_debug_state => debug_state,
       i_frame_done => NET2478,
       i_i2c_busy => i2c_busy,
       i_image_enable => NET2406,
       i_outbuff_almost_full => almost_full,
       i_outbuff_full => full,
       i_outbuff_prog_full => NET2575,
       i_pclk_counter => BUS2493,
       i_pixel_number => BUS2538,
       i_reset_n => i_reset_n,
       i_start_capture => NET2578,
       i_sw_config_bypass => i_config_bypass,
       o_X_pos => BUS2733,
       o_Y_pos => BUS2748,
       o_capture_busy => NET2604,
       o_config_done => NET2619,
       o_debug_state => BUS2649,
       o_frame_done => NET2703,
       o_i2c_busy => NET2596,
       o_image_enable => NET2634,
       o_outbuff_almost_full => NET3444,
       o_outbuff_full => NET3435,
       o_outbuff_prog_full => NET3468,
       o_pclk_counter => BUS2718,
       o_pixel_number => BUS2763,
       o_prog_full_thresh => BUS2824,
       o_start_capture => NET2374,
       o_sw_config_bypass => NET3400
  );

OUTPUT_BUFFER : OV5642_FIFO
  port map(
       almost_empty => almost_empty,
       almost_full => almost_full,
       din => IMAGE_DATA,
       dout => dout,
       empty => empty,
       full => full,
       prog_empty => prog_empty,
       prog_empty_thresh => BUS2101,
       prog_full => NET2575,
       prog_full_thresh => BUS2824,
       rd_clk => i_axi_master_clk,
       rd_en => rd_en,
       rst => NET204,
       valid => valid,
       wr_clk => NET3817,
       wr_en => NET154
  );

OV5642_INTERFACE : arducam_if
  generic map(
       data_width => 10
  )
  port map(
       i_HREF => i_HREF,
       i_PCLK => NET3791,
       i_SDATA => i_SDATA,
       i_VSYNC => NET320,
       i_almost_full => almost_full,
       i_btn_config => i_btn_config,
       i_config_capture_clk => i_clk_100MHz,
       i_full => full,
       i_prog_full => NET2575,
       i_reset_n => i_reset_n,
       i_start_capture => NET2374,
       i_sw_config_bypass => i_config_bypass,
       o_FRAME_DONE => NET2478,
       o_IMAGE_DATA => IMAGE_DATA,
       o_PIXEL_NUMBER => BUS2538,
       o_PIXEL_VALID => NET154,
       o_PWDN => o_PWDN,
       o_RST => NET95,
       o_SIOC => o_SIOC,
       o_SIOD => o_SIOD,
       o_X_POS => BUS2508,
       o_Y_POS => BUS2523,
       o_capture_busy => NET2390,
       o_capture_state_debug => o_capture_state_debug,
       o_config_done => NET2398,
       o_debug_state => debug_state,
       o_i2c_busy => i2c_busy,
       o_image_enable => NET2406,
       o_pclk => NET3817,
       o_pclk_counter => BUS2493,
       o_sioc_state_debug => o_sioc_state_debug,
       o_siod_state_debug => o_siod_state_debug
  );

NET204 <= not(i_reset_n);

NET320 <= not(i_VSYNC);


---- Terminal assignment ----

    -- Inputs terminals
	NET3791 <= i_PCLK;
	i_clk_150MHz <= i_axi_slave_clk;
	i_clk_100MHz <= i_config_capture_clk;


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end arch;
