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

-- IP VLNV: xilinx.com:user:OV5642_IF:1.0
-- IP Revision: 128

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT node_OV5642_IF_0_1
  PORT (
    i_HREF : IN STD_LOGIC;
    i_PCLK : IN STD_LOGIC;
    i_VSYNC : IN STD_LOGIC;
    i_btn_config : IN STD_LOGIC;
    i_axi_master_clk : IN STD_LOGIC;
    i_axi_slave_clk : IN STD_LOGIC;
    i_config_bypass : IN STD_LOGIC;
    i_config_capture_clk : IN STD_LOGIC;
    i_reset_n : IN STD_LOGIC;
    i_SDATA : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    o_PWDN : OUT STD_LOGIC;
    o_SIOC : OUT STD_LOGIC;
    o_SIOD : INOUT STD_LOGIC;
    o_write_done_irq : OUT STD_LOGIC;
    o_debug_state : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    o_i2c_busy : OUT STD_LOGIC;
    o_sioc_state_debug : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    o_siod_state_debug : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    o_capture_state_debug : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
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
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
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
    s00_axi_araddr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC;
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_aresetn : IN STD_LOGIC;
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
    irq : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : node_OV5642_IF_0_1
  PORT MAP (
    i_HREF => i_HREF,
    i_PCLK => i_PCLK,
    i_VSYNC => i_VSYNC,
    i_btn_config => i_btn_config,
    i_axi_master_clk => i_axi_master_clk,
    i_axi_slave_clk => i_axi_slave_clk,
    i_config_bypass => i_config_bypass,
    i_config_capture_clk => i_config_capture_clk,
    i_reset_n => i_reset_n,
    i_SDATA => i_SDATA,
    o_PWDN => o_PWDN,
    o_SIOC => o_SIOC,
    o_SIOD => o_SIOD,
    o_write_done_irq => o_write_done_irq,
    o_debug_state => o_debug_state,
    o_i2c_busy => o_i2c_busy,
    o_sioc_state_debug => o_sioc_state_debug,
    o_siod_state_debug => o_siod_state_debug,
    o_capture_state_debug => o_capture_state_debug,
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
    m00_axi_rvalid => m00_axi_rvalid,
    m00_axi_rready => m00_axi_rready,
    m00_axi_aclk => m00_axi_aclk,
    m00_axi_aresetn => m00_axi_aresetn,
    m00_axi_init_axi_txn => m00_axi_init_axi_txn,
    m00_axi_txn_done => m00_axi_txn_done,
    m00_axi_error => m00_axi_error,
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
    s00_axi_aresetn => s00_axi_aresetn,
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
    irq => irq
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file node_OV5642_IF_0_1.vhd when simulating
-- the core, node_OV5642_IF_0_1. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

