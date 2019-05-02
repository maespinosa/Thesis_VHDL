--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
--Date        : Tue Jun 13 22:14:16 2017
--Host        : Marks-M3800-PC running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target node_wrapper.bd
--Design      : node_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity node_wrapper is
  port (
    DDR2_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    DDR2_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR2_cas_n : out STD_LOGIC;
    DDR2_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR2_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_ras_n : out STD_LOGIC;
    DDR2_we_n : out STD_LOGIC;
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    i_HREF : in STD_LOGIC;
    i_PCLK : in STD_LOGIC;
    i_SDATA : in STD_LOGIC_VECTOR ( 9 downto 0 );
    i_VSYNC : in STD_LOGIC;
    i_btn_config : in STD_LOGIC;
    i_config_bypass : in STD_LOGIC;
    o_PWDN : out STD_LOGIC;
    o_SIOC : out STD_LOGIC;
    o_SIOD : inout STD_LOGIC;
    o_XCLK : out STD_LOGIC;
    o_capture_state_debug : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_debug_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_hsync : out STD_LOGIC;
    o_i2c_busy : out STD_LOGIC;
    o_locked_up : out STD_LOGIC;
    o_sioc_state_debug : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_siod_state_debug : out STD_LOGIC_VECTOR ( 4 downto 0 );
    o_vga_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_vsync : out STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    sys_clk : in STD_LOGIC
  );
end node_wrapper;

architecture STRUCTURE of node_wrapper is
  component node is
  port (
    DDR2_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR2_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    DDR2_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR2_ras_n : out STD_LOGIC;
    DDR2_cas_n : out STD_LOGIC;
    DDR2_we_n : out STD_LOGIC;
    DDR2_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    o_locked_up : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    o_XCLK : out STD_LOGIC;
    o_SIOD : inout STD_LOGIC;
    o_hsync : out STD_LOGIC;
    o_vsync : out STD_LOGIC;
    o_vga_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    i_PCLK : in STD_LOGIC;
    i_HREF : in STD_LOGIC;
    i_VSYNC : in STD_LOGIC;
    i_btn_config : in STD_LOGIC;
    i_config_bypass : in STD_LOGIC;
    i_SDATA : in STD_LOGIC_VECTOR ( 9 downto 0 );
    o_PWDN : out STD_LOGIC;
    o_SIOC : out STD_LOGIC;
    o_debug_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_i2c_busy : out STD_LOGIC;
    o_sioc_state_debug : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_siod_state_debug : out STD_LOGIC_VECTOR ( 4 downto 0 );
    o_capture_state_debug : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component node;
begin
node_i: component node
     port map (
      DDR2_addr(12 downto 0) => DDR2_addr(12 downto 0),
      DDR2_ba(2 downto 0) => DDR2_ba(2 downto 0),
      DDR2_cas_n => DDR2_cas_n,
      DDR2_ck_n(0) => DDR2_ck_n(0),
      DDR2_ck_p(0) => DDR2_ck_p(0),
      DDR2_cke(0) => DDR2_cke(0),
      DDR2_cs_n(0) => DDR2_cs_n(0),
      DDR2_dm(1 downto 0) => DDR2_dm(1 downto 0),
      DDR2_dq(15 downto 0) => DDR2_dq(15 downto 0),
      DDR2_dqs_n(1 downto 0) => DDR2_dqs_n(1 downto 0),
      DDR2_dqs_p(1 downto 0) => DDR2_dqs_p(1 downto 0),
      DDR2_odt(0) => DDR2_odt(0),
      DDR2_ras_n => DDR2_ras_n,
      DDR2_we_n => DDR2_we_n,
      UART_rxd => UART_rxd,
      UART_txd => UART_txd,
      i_HREF => i_HREF,
      i_PCLK => i_PCLK,
      i_SDATA(9 downto 0) => i_SDATA(9 downto 0),
      i_VSYNC => i_VSYNC,
      i_btn_config => i_btn_config,
      i_config_bypass => i_config_bypass,
      o_PWDN => o_PWDN,
      o_SIOC => o_SIOC,
      o_SIOD => o_SIOD,
      o_XCLK => o_XCLK,
      o_capture_state_debug(3 downto 0) => o_capture_state_debug(3 downto 0),
      o_debug_state(2 downto 0) => o_debug_state(2 downto 0),
      o_hsync => o_hsync,
      o_i2c_busy => o_i2c_busy,
      o_locked_up => o_locked_up,
      o_sioc_state_debug(2 downto 0) => o_sioc_state_debug(2 downto 0),
      o_siod_state_debug(4 downto 0) => o_siod_state_debug(4 downto 0),
      o_vga_data(11 downto 0) => o_vga_data(11 downto 0),
      o_vsync => o_vsync,
      reset_rtl => reset_rtl,
      sys_clk => sys_clk
    );
end STRUCTURE;
