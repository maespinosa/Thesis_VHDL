-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:VGA_IF:1.0
-- IP Revision: 39

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY node_VGA_IF_0_0 IS
  PORT (
    i_VGA_CLK : IN STD_LOGIC;
    i_axi_master_clk : IN STD_LOGIC;
    i_axi_slave_clk : IN STD_LOGIC;
    i_reset_n : IN STD_LOGIC;
    o_hsync : OUT STD_LOGIC;
    o_vsync : OUT STD_LOGIC;
    o_vga_data : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    i_start_display_irq : IN STD_LOGIC;
    vga_data_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    pixel_valid_out : OUT STD_LOGIC;
    read_en_out : OUT STD_LOGIC;
    m00_axi_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m00_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_awlock : OUT STD_LOGIC;
    m00_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_awvalid : OUT STD_LOGIC;
    m00_axi_awready : IN STD_LOGIC;
    m00_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_wlast : OUT STD_LOGIC;
    m00_axi_wvalid : OUT STD_LOGIC;
    m00_axi_wready : IN STD_LOGIC;
    m00_axi_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_bvalid : IN STD_LOGIC;
    m00_axi_bready : OUT STD_LOGIC;
    m00_axi_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m00_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_arlock : OUT STD_LOGIC;
    m00_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_arvalid : OUT STD_LOGIC;
    m00_axi_arready : IN STD_LOGIC;
    m00_axi_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_rlast : IN STD_LOGIC;
    m00_axi_rvalid : IN STD_LOGIC;
    m00_axi_rready : OUT STD_LOGIC;
    m00_axi_aclk : IN STD_LOGIC;
    m00_axi_aresetn : IN STD_LOGIC;
    m00_axi_init_axi_txn : IN STD_LOGIC;
    m00_axi_txn_done : OUT STD_LOGIC;
    m00_axi_error : OUT STD_LOGIC;
    s_axi_intr_awaddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_intr_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_intr_awvalid : IN STD_LOGIC;
    s_axi_intr_awready : OUT STD_LOGIC;
    s_axi_intr_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_intr_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_intr_wvalid : IN STD_LOGIC;
    s_axi_intr_wready : OUT STD_LOGIC;
    s_axi_intr_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_intr_bvalid : OUT STD_LOGIC;
    s_axi_intr_bready : IN STD_LOGIC;
    s_axi_intr_araddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_intr_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_intr_arvalid : IN STD_LOGIC;
    s_axi_intr_arready : OUT STD_LOGIC;
    s_axi_intr_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_intr_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_intr_rvalid : OUT STD_LOGIC;
    s_axi_intr_rready : IN STD_LOGIC;
    s_axi_intr_aclk : IN STD_LOGIC;
    s_axi_intr_aresetn : IN STD_LOGIC;
    irq : OUT STD_LOGIC;
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awvalid : IN STD_LOGIC;
    s00_axi_awready : OUT STD_LOGIC;
    s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_wvalid : IN STD_LOGIC;
    s00_axi_wready : OUT STD_LOGIC;
    s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_bvalid : OUT STD_LOGIC;
    s00_axi_bready : IN STD_LOGIC;
    s00_axi_araddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC;
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_aresetn : IN STD_LOGIC
  );
END node_VGA_IF_0_0;

ARCHITECTURE node_VGA_IF_0_0_arch OF node_VGA_IF_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF node_VGA_IF_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT VGA_IF_v1_0 IS
    GENERIC (
      C_M00_AXI_TARGET_SLAVE_BASE_ADDR : STD_LOGIC_VECTOR; -- Base address of targeted slave
      C_M00_AXI_BURST_LEN : INTEGER; -- Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
      C_M00_AXI_ID_WIDTH : INTEGER; -- Thread ID Width
      C_M00_AXI_ADDR_WIDTH : INTEGER; -- Width of Address Bus
      C_M00_AXI_DATA_WIDTH : INTEGER; -- Width of Data Bus
      C_M00_AXI_AWUSER_WIDTH : INTEGER; -- Width of User Write Address Bus
      C_M00_AXI_ARUSER_WIDTH : INTEGER; -- Width of User Read Address Bus
      C_M00_AXI_WUSER_WIDTH : INTEGER; -- Width of User Write Data Bus
      C_M00_AXI_RUSER_WIDTH : INTEGER; -- Width of User Read Data Bus
      C_M00_AXI_BUSER_WIDTH : INTEGER; -- Width of User Response Bus
      C_S_AXI_INTR_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S_AXI_INTR_ADDR_WIDTH : INTEGER; -- Width of S_AXI address bus
      C_NUM_OF_INTR : INTEGER; -- Number of Interrupts
      C_INTR_SENSITIVITY : STD_LOGIC_VECTOR; -- Each bit corresponds to Sensitivity of interrupt :  0 - EDGE, 1 - LEVEL
      C_INTR_ACTIVE_STATE : STD_LOGIC_VECTOR; -- Each bit corresponds to Sub-type of INTR: [0 - FALLING_EDGE, 1 - RISING_EDGE : if C_INTR_SENSITIVITY is EDGE(0)] and [ 0 - LEVEL_LOW, 1 - LEVEL_LOW : if C_INTR_SENSITIVITY is LEVEL(1) ]
      C_IRQ_SENSITIVITY : INTEGER; -- Sensitivity of IRQ: 0 - EDGE, 1 - LEVEL
      C_IRQ_ACTIVE_STATE : INTEGER; -- Sub-type of IRQ: [0 - FALLING_EDGE, 1 - RISING_EDGE : if C_IRQ_SENSITIVITY is EDGE(0)] and [ 0 - LEVEL_LOW, 1 - LEVEL_LOW : if C_IRQ_SENSITIVITY is LEVEL(1) ]
      C_S00_AXI_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S00_AXI_ADDR_WIDTH : INTEGER -- Width of S_AXI address bus
    );
    PORT (
      i_VGA_CLK : IN STD_LOGIC;
      i_axi_master_clk : IN STD_LOGIC;
      i_axi_slave_clk : IN STD_LOGIC;
      i_reset_n : IN STD_LOGIC;
      o_hsync : OUT STD_LOGIC;
      o_vsync : OUT STD_LOGIC;
      o_vga_data : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      i_start_display_irq : IN STD_LOGIC;
      vga_data_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pixel_valid_out : OUT STD_LOGIC;
      read_en_out : OUT STD_LOGIC;
      m00_axi_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m00_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_awlock : OUT STD_LOGIC;
      m00_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_awuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_awvalid : OUT STD_LOGIC;
      m00_axi_awready : IN STD_LOGIC;
      m00_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_wlast : OUT STD_LOGIC;
      m00_axi_wuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_wvalid : OUT STD_LOGIC;
      m00_axi_wready : IN STD_LOGIC;
      m00_axi_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_buser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_bvalid : IN STD_LOGIC;
      m00_axi_bready : OUT STD_LOGIC;
      m00_axi_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m00_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_arlock : OUT STD_LOGIC;
      m00_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_aruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_arvalid : OUT STD_LOGIC;
      m00_axi_arready : IN STD_LOGIC;
      m00_axi_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_rlast : IN STD_LOGIC;
      m00_axi_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_rvalid : IN STD_LOGIC;
      m00_axi_rready : OUT STD_LOGIC;
      m00_axi_aclk : IN STD_LOGIC;
      m00_axi_aresetn : IN STD_LOGIC;
      m00_axi_init_axi_txn : IN STD_LOGIC;
      m00_axi_txn_done : OUT STD_LOGIC;
      m00_axi_error : OUT STD_LOGIC;
      s_axi_intr_awaddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_intr_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_intr_awvalid : IN STD_LOGIC;
      s_axi_intr_awready : OUT STD_LOGIC;
      s_axi_intr_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_intr_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_intr_wvalid : IN STD_LOGIC;
      s_axi_intr_wready : OUT STD_LOGIC;
      s_axi_intr_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_intr_bvalid : OUT STD_LOGIC;
      s_axi_intr_bready : IN STD_LOGIC;
      s_axi_intr_araddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_intr_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_intr_arvalid : IN STD_LOGIC;
      s_axi_intr_arready : OUT STD_LOGIC;
      s_axi_intr_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_intr_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_intr_rvalid : OUT STD_LOGIC;
      s_axi_intr_rready : IN STD_LOGIC;
      s_axi_intr_aclk : IN STD_LOGIC;
      s_axi_intr_aresetn : IN STD_LOGIC;
      irq : OUT STD_LOGIC;
      s00_axi_awaddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_awvalid : IN STD_LOGIC;
      s00_axi_awready : OUT STD_LOGIC;
      s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_wvalid : IN STD_LOGIC;
      s00_axi_wready : OUT STD_LOGIC;
      s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_bvalid : OUT STD_LOGIC;
      s00_axi_bready : IN STD_LOGIC;
      s00_axi_araddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_arvalid : IN STD_LOGIC;
      s00_axi_arready : OUT STD_LOGIC;
      s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_rvalid : OUT STD_LOGIC;
      s00_axi_rready : IN STD_LOGIC;
      s00_axi_aclk : IN STD_LOGIC;
      s00_axi_aresetn : IN STD_LOGIC
    );
  END COMPONENT VGA_IF_v1_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF node_VGA_IF_0_0_arch: ARCHITECTURE IS "VGA_IF_v1_0,Vivado 2015.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF node_VGA_IF_0_0_arch : ARCHITECTURE IS "node_VGA_IF_0_0,VGA_IF_v1_0,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF node_VGA_IF_0_0_arch: ARCHITECTURE IS "node_VGA_IF_0_0,VGA_IF_v1_0,{x_ipProduct=Vivado 2015.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=VGA_IF,x_ipVersion=1.0,x_ipCoreRevision=39,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_M00_AXI_TARGET_SLAVE_BASE_ADDR=0x80000000,C_M00_AXI_BURST_LEN=256,C_M00_AXI_ID_WIDTH=1,C_M00_AXI_ADDR_WIDTH=32,C_M00_AXI_DATA_WIDTH=32,C_M00_AXI_AWUSER_WIDTH=1,C_M00_AXI_ARUSER_WIDTH=1,C_M00_AXI_WUSER_WIDTH=1,C_M00_AXI_RUSER_WIDTH=1,C_M00_AXI_BUSER_WIDTH=1,C_S_AXI_INTR_DATA_WIDTH=32,C_S_AXI_INTR_ADDR_WIDTH=5,C_NUM_OF_INTR=1,C_INTR_SENSITIVITY=0xFFFFFFFF,C_INTR_ACTIVE_STATE=0xFFFFFFFF,C_IRQ_SENSITIVITY=1,C_IRQ_ACTIVE_STATE=1,C_S00_AXI_DATA_WIDTH=32,C_S00_AXI_ADDR_WIDTH=5}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 M00_AXI_RST RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S_AXI_INTR_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S_AXI_INTR_RST RST";
  ATTRIBUTE X_INTERFACE_INFO OF irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
BEGIN
  U0 : VGA_IF_v1_0
    GENERIC MAP (
      C_M00_AXI_TARGET_SLAVE_BASE_ADDR => X"80000000",
      C_M00_AXI_BURST_LEN => 256,
      C_M00_AXI_ID_WIDTH => 1,
      C_M00_AXI_ADDR_WIDTH => 32,
      C_M00_AXI_DATA_WIDTH => 32,
      C_M00_AXI_AWUSER_WIDTH => 1,
      C_M00_AXI_ARUSER_WIDTH => 1,
      C_M00_AXI_WUSER_WIDTH => 1,
      C_M00_AXI_RUSER_WIDTH => 1,
      C_M00_AXI_BUSER_WIDTH => 1,
      C_S_AXI_INTR_DATA_WIDTH => 32,
      C_S_AXI_INTR_ADDR_WIDTH => 5,
      C_NUM_OF_INTR => 1,
      C_INTR_SENSITIVITY => X"FFFFFFFF",
      C_INTR_ACTIVE_STATE => X"FFFFFFFF",
      C_IRQ_SENSITIVITY => 1,
      C_IRQ_ACTIVE_STATE => 1,
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ADDR_WIDTH => 5
    )
    PORT MAP (
      i_VGA_CLK => i_VGA_CLK,
      i_axi_master_clk => i_axi_master_clk,
      i_axi_slave_clk => i_axi_slave_clk,
      i_reset_n => i_reset_n,
      o_hsync => o_hsync,
      o_vsync => o_vsync,
      o_vga_data => o_vga_data,
      i_start_display_irq => i_start_display_irq,
      vga_data_out => vga_data_out,
      pixel_valid_out => pixel_valid_out,
      read_en_out => read_en_out,
      m00_axi_awid => m00_axi_awid,
      m00_axi_awaddr => m00_axi_awaddr,
      m00_axi_awlen => m00_axi_awlen,
      m00_axi_awsize => m00_axi_awsize,
      m00_axi_awburst => m00_axi_awburst,
      m00_axi_awlock => m00_axi_awlock,
      m00_axi_awcache => m00_axi_awcache,
      m00_axi_awprot => m00_axi_awprot,
      m00_axi_awqos => m00_axi_awqos,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_awready => m00_axi_awready,
      m00_axi_wdata => m00_axi_wdata,
      m00_axi_wstrb => m00_axi_wstrb,
      m00_axi_wlast => m00_axi_wlast,
      m00_axi_wvalid => m00_axi_wvalid,
      m00_axi_wready => m00_axi_wready,
      m00_axi_bid => m00_axi_bid,
      m00_axi_bresp => m00_axi_bresp,
      m00_axi_buser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_arid => m00_axi_arid,
      m00_axi_araddr => m00_axi_araddr,
      m00_axi_arlen => m00_axi_arlen,
      m00_axi_arsize => m00_axi_arsize,
      m00_axi_arburst => m00_axi_arburst,
      m00_axi_arlock => m00_axi_arlock,
      m00_axi_arcache => m00_axi_arcache,
      m00_axi_arprot => m00_axi_arprot,
      m00_axi_arqos => m00_axi_arqos,
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_arready => m00_axi_arready,
      m00_axi_rid => m00_axi_rid,
      m00_axi_rdata => m00_axi_rdata,
      m00_axi_rresp => m00_axi_rresp,
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_ruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_rready => m00_axi_rready,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_init_axi_txn => m00_axi_init_axi_txn,
      m00_axi_txn_done => m00_axi_txn_done,
      m00_axi_error => m00_axi_error,
      s_axi_intr_awaddr => s_axi_intr_awaddr,
      s_axi_intr_awprot => s_axi_intr_awprot,
      s_axi_intr_awvalid => s_axi_intr_awvalid,
      s_axi_intr_awready => s_axi_intr_awready,
      s_axi_intr_wdata => s_axi_intr_wdata,
      s_axi_intr_wstrb => s_axi_intr_wstrb,
      s_axi_intr_wvalid => s_axi_intr_wvalid,
      s_axi_intr_wready => s_axi_intr_wready,
      s_axi_intr_bresp => s_axi_intr_bresp,
      s_axi_intr_bvalid => s_axi_intr_bvalid,
      s_axi_intr_bready => s_axi_intr_bready,
      s_axi_intr_araddr => s_axi_intr_araddr,
      s_axi_intr_arprot => s_axi_intr_arprot,
      s_axi_intr_arvalid => s_axi_intr_arvalid,
      s_axi_intr_arready => s_axi_intr_arready,
      s_axi_intr_rdata => s_axi_intr_rdata,
      s_axi_intr_rresp => s_axi_intr_rresp,
      s_axi_intr_rvalid => s_axi_intr_rvalid,
      s_axi_intr_rready => s_axi_intr_rready,
      s_axi_intr_aclk => s_axi_intr_aclk,
      s_axi_intr_aresetn => s_axi_intr_aresetn,
      irq => irq,
      s00_axi_awaddr => s00_axi_awaddr,
      s00_axi_awprot => s00_axi_awprot,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_wdata => s00_axi_wdata,
      s00_axi_wstrb => s00_axi_wstrb,
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_bresp => s00_axi_bresp,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_araddr => s00_axi_araddr,
      s00_axi_arprot => s00_axi_arprot,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_arready => s00_axi_arready,
      s00_axi_rdata => s00_axi_rdata,
      s00_axi_rresp => s00_axi_rresp,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_rready => s00_axi_rready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
END node_VGA_IF_0_0_arch;
