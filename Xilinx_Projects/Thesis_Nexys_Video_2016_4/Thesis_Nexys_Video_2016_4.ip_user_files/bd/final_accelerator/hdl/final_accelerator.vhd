--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Tue Apr 23 20:52:25 2019
--Host        : Marks-M3800 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target final_accelerator.bd
--Design      : final_accelerator
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1Z0RVQI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1Z0RVQI;

architecture STRUCTURE of m00_couplers_imp_1Z0RVQI is
  component final_accelerator_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 28 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 28 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component final_accelerator_auto_cc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal auto_cc_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal auto_cc_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_RLAST : STD_LOGIC;
  signal auto_cc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m00_couplers_WLAST : STD_LOGIC;
  signal auto_cc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_cc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_cc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_cc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_cc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_cc_BUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_cc_RUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal NLW_auto_cc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_cc_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_auto_cc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_cc_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_auto_cc_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(28 downto 0) <= auto_cc_to_m00_couplers_ARADDR(28 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_cc_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_cc_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(3 downto 0) <= auto_cc_to_m00_couplers_ARID(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_cc_to_m00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_cc_to_m00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_cc_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_cc_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_cc_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_cc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(28 downto 0) <= auto_cc_to_m00_couplers_AWADDR(28 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_cc_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_cc_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(3 downto 0) <= auto_cc_to_m00_couplers_AWID(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_cc_to_m00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_cc_to_m00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_cc_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_cc_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_cc_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_cc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_cc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_cc_to_m00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_cc_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_cc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_cc_AWREADY;
  S_AXI_bid(3 downto 0) <= m00_couplers_to_auto_cc_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_buser(0) <= m00_couplers_to_auto_cc_BUSER(0);
  S_AXI_bvalid <= m00_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= m00_couplers_to_auto_cc_RID(3 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_cc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_ruser(0) <= m00_couplers_to_auto_cc_RUSER(0);
  S_AXI_rvalid <= m00_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_cc_WREADY;
  auto_cc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_m00_couplers_BID(3 downto 0) <= M_AXI_bid(3 downto 0);
  auto_cc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_m00_couplers_RID(3 downto 0) <= M_AXI_rid(3 downto 0);
  auto_cc_to_m00_couplers_RLAST <= M_AXI_rlast;
  auto_cc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_cc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_cc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_cc_ARID(3 downto 0) <= S_AXI_arid(3 downto 0);
  m00_couplers_to_auto_cc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_cc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_cc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_cc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_cc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_cc_ARUSER(0) <= S_AXI_aruser(0);
  m00_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_cc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_cc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_cc_AWID(3 downto 0) <= S_AXI_awid(3 downto 0);
  m00_couplers_to_auto_cc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_cc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_cc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_cc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_cc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_cc_AWUSER(0) <= S_AXI_awuser(0);
  m00_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_cc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_cc_WUSER(0) <= S_AXI_wuser(0);
  m00_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component final_accelerator_auto_cc_0
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(28 downto 0) => auto_cc_to_m00_couplers_ARADDR(28 downto 0),
      m_axi_arburst(1 downto 0) => auto_cc_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_cc_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arid(3 downto 0) => auto_cc_to_m00_couplers_ARID(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_cc_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_cc_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_cc_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_cc_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_cc_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_cc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_cc_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_aruser(0) => NLW_auto_cc_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => auto_cc_to_m00_couplers_ARVALID,
      m_axi_awaddr(28 downto 0) => auto_cc_to_m00_couplers_AWADDR(28 downto 0),
      m_axi_awburst(1 downto 0) => auto_cc_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_cc_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(3 downto 0) => auto_cc_to_m00_couplers_AWID(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_cc_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_cc_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_cc_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_cc_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_cc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_cc_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awuser(0) => NLW_auto_cc_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => auto_cc_to_m00_couplers_AWVALID,
      m_axi_bid(3 downto 0) => auto_cc_to_m00_couplers_BID(3 downto 0),
      m_axi_bready => auto_cc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => auto_cc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(3 downto 0) => auto_cc_to_m00_couplers_RID(3 downto 0),
      m_axi_rlast => auto_cc_to_m00_couplers_RLAST,
      m_axi_rready => auto_cc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => auto_cc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_cc_to_m00_couplers_WLAST,
      m_axi_wready => auto_cc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wuser(0) => NLW_auto_cc_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => auto_cc_to_m00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(28 downto 0) => m00_couplers_to_auto_cc_ARADDR(28 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_cc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_cc_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(3 downto 0) => m00_couplers_to_auto_cc_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_cc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_cc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_cc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_cc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_cc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_cc_ARSIZE(2 downto 0),
      s_axi_aruser(0) => m00_couplers_to_auto_cc_ARUSER(0),
      s_axi_arvalid => m00_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(28 downto 0) => m00_couplers_to_auto_cc_AWADDR(28 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_cc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_cc_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => m00_couplers_to_auto_cc_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_cc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_cc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_cc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_cc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_cc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_cc_AWSIZE(2 downto 0),
      s_axi_awuser(0) => m00_couplers_to_auto_cc_AWUSER(0),
      s_axi_awvalid => m00_couplers_to_auto_cc_AWVALID,
      s_axi_bid(3 downto 0) => m00_couplers_to_auto_cc_BID(3 downto 0),
      s_axi_bready => m00_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_buser(0) => m00_couplers_to_auto_cc_BUSER(0),
      s_axi_bvalid => m00_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rid(3 downto 0) => m00_couplers_to_auto_cc_RID(3 downto 0),
      s_axi_rlast => m00_couplers_to_auto_cc_RLAST,
      s_axi_rready => m00_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_ruser(0) => m00_couplers_to_auto_cc_RUSER(0),
      s_axi_rvalid => m00_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_cc_WLAST,
      s_axi_wready => m00_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wuser(0) => m00_couplers_to_auto_cc_WUSER(0),
      s_axi_wvalid => m00_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_W0EVCR is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_W0EVCR;

architecture STRUCTURE of m00_couplers_imp_W0EVCR is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_89WOL6 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_89WOL6;

architecture STRUCTURE of m01_couplers_imp_89WOL6 is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m01_couplers_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m01_couplers_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1CCT9DL is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_1CCT9DL;

architecture STRUCTURE of m02_couplers_imp_1CCT9DL is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_1HHRIM0 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_1HHRIM0;

architecture STRUCTURE of m03_couplers_imp_1HHRIM0 is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m03_couplers_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m03_couplers_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_50ZIPQ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m04_couplers_imp_50ZIPQ;

architecture STRUCTURE of m04_couplers_imp_50ZIPQ is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m04_couplers_to_m04_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m04_couplers_to_m04_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m04_couplers_to_m04_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m04_couplers_to_m04_couplers_AWVALID(0);
  M_AXI_bready(0) <= m04_couplers_to_m04_couplers_BREADY(0);
  M_AXI_rready(0) <= m04_couplers_to_m04_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m04_couplers_to_m04_couplers_WVALID(0);
  S_AXI_arready(0) <= m04_couplers_to_m04_couplers_ARREADY(0);
  S_AXI_awready(0) <= m04_couplers_to_m04_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m04_couplers_to_m04_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m04_couplers_to_m04_couplers_RVALID(0);
  S_AXI_wready(0) <= m04_couplers_to_m04_couplers_WREADY(0);
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m04_couplers_to_m04_couplers_ARREADY(0) <= M_AXI_arready(0);
  m04_couplers_to_m04_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m04_couplers_to_m04_couplers_AWREADY(0) <= M_AXI_awready(0);
  m04_couplers_to_m04_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m04_couplers_to_m04_couplers_BREADY(0) <= S_AXI_bready(0);
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY(0) <= S_AXI_rready(0);
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY(0) <= M_AXI_wready(0);
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_YKBAKF is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m05_couplers_imp_YKBAKF;

architecture STRUCTURE of m05_couplers_imp_YKBAKF is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m05_couplers_to_m05_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m05_couplers_to_m05_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m05_couplers_to_m05_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m05_couplers_to_m05_couplers_AWVALID(0);
  M_AXI_bready(0) <= m05_couplers_to_m05_couplers_BREADY(0);
  M_AXI_rready(0) <= m05_couplers_to_m05_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m05_couplers_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m05_couplers_to_m05_couplers_WVALID(0);
  S_AXI_arready(0) <= m05_couplers_to_m05_couplers_ARREADY(0);
  S_AXI_awready(0) <= m05_couplers_to_m05_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m05_couplers_to_m05_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m05_couplers_to_m05_couplers_RVALID(0);
  S_AXI_wready(0) <= m05_couplers_to_m05_couplers_WREADY(0);
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m05_couplers_to_m05_couplers_ARREADY(0) <= M_AXI_arready(0);
  m05_couplers_to_m05_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m05_couplers_to_m05_couplers_AWREADY(0) <= M_AXI_awready(0);
  m05_couplers_to_m05_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m05_couplers_to_m05_couplers_BREADY(0) <= S_AXI_bready(0);
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY(0) <= S_AXI_rready(0);
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY(0) <= M_AXI_wready(0);
  m05_couplers_to_m05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_m05_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_1LFWSN0 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_1LFWSN0;

architecture STRUCTURE of m06_couplers_imp_1LFWSN0 is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m06_couplers_to_m06_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m06_couplers_to_m06_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m06_couplers_to_m06_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m06_couplers_to_m06_couplers_AWVALID;
  M_AXI_bready <= m06_couplers_to_m06_couplers_BREADY;
  M_AXI_rready <= m06_couplers_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m06_couplers_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m06_couplers_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m06_couplers_to_m06_couplers_WVALID;
  S_AXI_arready <= m06_couplers_to_m06_couplers_ARREADY;
  S_AXI_awready <= m06_couplers_to_m06_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_m06_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_m06_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_m06_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_m06_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_m06_couplers_RVALID;
  S_AXI_wready <= m06_couplers_to_m06_couplers_WREADY;
  m06_couplers_to_m06_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_m06_couplers_ARREADY <= M_AXI_arready;
  m06_couplers_to_m06_couplers_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_m06_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_m06_couplers_AWREADY <= M_AXI_awready;
  m06_couplers_to_m06_couplers_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_m06_couplers_BREADY <= S_AXI_bready;
  m06_couplers_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m06_couplers_to_m06_couplers_BVALID <= M_AXI_bvalid;
  m06_couplers_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m06_couplers_to_m06_couplers_RREADY <= S_AXI_rready;
  m06_couplers_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m06_couplers_to_m06_couplers_RVALID <= M_AXI_rvalid;
  m06_couplers_to_m06_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_m06_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_m06_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_18TKWXP is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m07_couplers_imp_18TKWXP;

architecture STRUCTURE of m07_couplers_imp_18TKWXP is
  signal m07_couplers_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_ARREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_AWREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_BREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_BVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_RREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_RVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_WREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_m07_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m07_couplers_to_m07_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m07_couplers_to_m07_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m07_couplers_to_m07_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m07_couplers_to_m07_couplers_AWVALID;
  M_AXI_bready <= m07_couplers_to_m07_couplers_BREADY;
  M_AXI_rready <= m07_couplers_to_m07_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m07_couplers_to_m07_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m07_couplers_to_m07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m07_couplers_to_m07_couplers_WVALID;
  S_AXI_arready <= m07_couplers_to_m07_couplers_ARREADY;
  S_AXI_awready <= m07_couplers_to_m07_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m07_couplers_to_m07_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m07_couplers_to_m07_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m07_couplers_to_m07_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m07_couplers_to_m07_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m07_couplers_to_m07_couplers_RVALID;
  S_AXI_wready <= m07_couplers_to_m07_couplers_WREADY;
  m07_couplers_to_m07_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m07_couplers_to_m07_couplers_ARREADY <= M_AXI_arready;
  m07_couplers_to_m07_couplers_ARVALID <= S_AXI_arvalid;
  m07_couplers_to_m07_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m07_couplers_to_m07_couplers_AWREADY <= M_AXI_awready;
  m07_couplers_to_m07_couplers_AWVALID <= S_AXI_awvalid;
  m07_couplers_to_m07_couplers_BREADY <= S_AXI_bready;
  m07_couplers_to_m07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m07_couplers_to_m07_couplers_BVALID <= M_AXI_bvalid;
  m07_couplers_to_m07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m07_couplers_to_m07_couplers_RREADY <= S_AXI_rready;
  m07_couplers_to_m07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m07_couplers_to_m07_couplers_RVALID <= M_AXI_rvalid;
  m07_couplers_to_m07_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m07_couplers_to_m07_couplers_WREADY <= M_AXI_wready;
  m07_couplers_to_m07_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m07_couplers_to_m07_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_0_local_memory_imp_1TQRLI4 is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end microblaze_0_local_memory_imp_1TQRLI4;

architecture STRUCTURE of microblaze_0_local_memory_imp_1TQRLI4 is
  component final_accelerator_dlmb_v10_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component final_accelerator_dlmb_v10_1;
  component final_accelerator_ilmb_v10_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component final_accelerator_ilmb_v10_1;
  component final_accelerator_dlmb_bram_if_cntlr_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component final_accelerator_dlmb_bram_if_cntlr_1;
  component final_accelerator_ilmb_bram_if_cntlr_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component final_accelerator_ilmb_bram_if_cntlr_1;
  component final_accelerator_lmb_bram_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component final_accelerator_lmb_bram_1;
  signal SYS_Rst_1 : STD_LOGIC;
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_CE : STD_LOGIC;
  signal microblaze_0_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_READY : STD_LOGIC;
  signal microblaze_0_dlmb_UE : STD_LOGIC;
  signal microblaze_0_dlmb_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_bus_CE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READY : STD_LOGIC;
  signal microblaze_0_dlmb_bus_UE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_dlmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_CE : STD_LOGIC;
  signal microblaze_0_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_READY : STD_LOGIC;
  signal microblaze_0_ilmb_UE : STD_LOGIC;
  signal microblaze_0_ilmb_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_bus_CE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READY : STD_LOGIC;
  signal microblaze_0_ilmb_bus_UE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_ilmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x00000000 32 > final_accelerator microblaze_0_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  DLMB_ce <= microblaze_0_dlmb_CE;
  DLMB_readdbus(0 to 31) <= microblaze_0_dlmb_READDBUS(0 to 31);
  DLMB_ready <= microblaze_0_dlmb_READY;
  DLMB_ue <= microblaze_0_dlmb_UE;
  DLMB_wait <= microblaze_0_dlmb_WAIT;
  ILMB_ce <= microblaze_0_ilmb_CE;
  ILMB_readdbus(0 to 31) <= microblaze_0_ilmb_READDBUS(0 to 31);
  ILMB_ready <= microblaze_0_ilmb_READY;
  ILMB_ue <= microblaze_0_ilmb_UE;
  ILMB_wait <= microblaze_0_ilmb_WAIT;
  SYS_Rst_1 <= SYS_Rst;
  microblaze_0_Clk <= LMB_Clk;
  microblaze_0_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  microblaze_0_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  microblaze_0_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  microblaze_0_dlmb_READSTROBE <= DLMB_readstrobe;
  microblaze_0_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  microblaze_0_dlmb_WRITESTROBE <= DLMB_writestrobe;
  microblaze_0_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  microblaze_0_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  microblaze_0_ilmb_READSTROBE <= ILMB_readstrobe;
dlmb_bram_if_cntlr: component final_accelerator_dlmb_bram_if_cntlr_1
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_dlmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_dlmb_bus_READY,
      Sl_UE => microblaze_0_dlmb_bus_UE,
      Sl_Wait => microblaze_0_dlmb_bus_WAIT
    );
dlmb_v10: component final_accelerator_dlmb_v10_1
     port map (
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_dlmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_dlmb_UE,
      LMB_Wait => microblaze_0_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_dlmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => microblaze_0_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => microblaze_0_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => microblaze_0_dlmb_READSTROBE,
      M_WriteStrobe => microblaze_0_dlmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_dlmb_bus_READY,
      Sl_UE(0) => microblaze_0_dlmb_bus_UE,
      Sl_Wait(0) => microblaze_0_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component final_accelerator_ilmb_bram_if_cntlr_1
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_ilmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_ilmb_bus_READY,
      Sl_UE => microblaze_0_ilmb_bus_UE,
      Sl_Wait => microblaze_0_ilmb_bus_WAIT
    );
ilmb_v10: component final_accelerator_ilmb_v10_1
     port map (
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_ilmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_ilmb_UE,
      LMB_Wait => microblaze_0_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_ilmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_ilmb_ADDRSTROBE,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => microblaze_0_ilmb_READSTROBE,
      M_WriteStrobe => '0',
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_ilmb_bus_READY,
      Sl_UE(0) => microblaze_0_ilmb_bus_UE,
      Sl_Wait(0) => microblaze_0_ilmb_bus_WAIT
    );
lmb_bram: component final_accelerator_lmb_bram_1
     port map (
      addra(31) => microblaze_0_dlmb_cntlr_ADDR(0),
      addra(30) => microblaze_0_dlmb_cntlr_ADDR(1),
      addra(29) => microblaze_0_dlmb_cntlr_ADDR(2),
      addra(28) => microblaze_0_dlmb_cntlr_ADDR(3),
      addra(27) => microblaze_0_dlmb_cntlr_ADDR(4),
      addra(26) => microblaze_0_dlmb_cntlr_ADDR(5),
      addra(25) => microblaze_0_dlmb_cntlr_ADDR(6),
      addra(24) => microblaze_0_dlmb_cntlr_ADDR(7),
      addra(23) => microblaze_0_dlmb_cntlr_ADDR(8),
      addra(22) => microblaze_0_dlmb_cntlr_ADDR(9),
      addra(21) => microblaze_0_dlmb_cntlr_ADDR(10),
      addra(20) => microblaze_0_dlmb_cntlr_ADDR(11),
      addra(19) => microblaze_0_dlmb_cntlr_ADDR(12),
      addra(18) => microblaze_0_dlmb_cntlr_ADDR(13),
      addra(17) => microblaze_0_dlmb_cntlr_ADDR(14),
      addra(16) => microblaze_0_dlmb_cntlr_ADDR(15),
      addra(15) => microblaze_0_dlmb_cntlr_ADDR(16),
      addra(14) => microblaze_0_dlmb_cntlr_ADDR(17),
      addra(13) => microblaze_0_dlmb_cntlr_ADDR(18),
      addra(12) => microblaze_0_dlmb_cntlr_ADDR(19),
      addra(11) => microblaze_0_dlmb_cntlr_ADDR(20),
      addra(10) => microblaze_0_dlmb_cntlr_ADDR(21),
      addra(9) => microblaze_0_dlmb_cntlr_ADDR(22),
      addra(8) => microblaze_0_dlmb_cntlr_ADDR(23),
      addra(7) => microblaze_0_dlmb_cntlr_ADDR(24),
      addra(6) => microblaze_0_dlmb_cntlr_ADDR(25),
      addra(5) => microblaze_0_dlmb_cntlr_ADDR(26),
      addra(4) => microblaze_0_dlmb_cntlr_ADDR(27),
      addra(3) => microblaze_0_dlmb_cntlr_ADDR(28),
      addra(2) => microblaze_0_dlmb_cntlr_ADDR(29),
      addra(1) => microblaze_0_dlmb_cntlr_ADDR(30),
      addra(0) => microblaze_0_dlmb_cntlr_ADDR(31),
      addrb(31) => microblaze_0_ilmb_cntlr_ADDR(0),
      addrb(30) => microblaze_0_ilmb_cntlr_ADDR(1),
      addrb(29) => microblaze_0_ilmb_cntlr_ADDR(2),
      addrb(28) => microblaze_0_ilmb_cntlr_ADDR(3),
      addrb(27) => microblaze_0_ilmb_cntlr_ADDR(4),
      addrb(26) => microblaze_0_ilmb_cntlr_ADDR(5),
      addrb(25) => microblaze_0_ilmb_cntlr_ADDR(6),
      addrb(24) => microblaze_0_ilmb_cntlr_ADDR(7),
      addrb(23) => microblaze_0_ilmb_cntlr_ADDR(8),
      addrb(22) => microblaze_0_ilmb_cntlr_ADDR(9),
      addrb(21) => microblaze_0_ilmb_cntlr_ADDR(10),
      addrb(20) => microblaze_0_ilmb_cntlr_ADDR(11),
      addrb(19) => microblaze_0_ilmb_cntlr_ADDR(12),
      addrb(18) => microblaze_0_ilmb_cntlr_ADDR(13),
      addrb(17) => microblaze_0_ilmb_cntlr_ADDR(14),
      addrb(16) => microblaze_0_ilmb_cntlr_ADDR(15),
      addrb(15) => microblaze_0_ilmb_cntlr_ADDR(16),
      addrb(14) => microblaze_0_ilmb_cntlr_ADDR(17),
      addrb(13) => microblaze_0_ilmb_cntlr_ADDR(18),
      addrb(12) => microblaze_0_ilmb_cntlr_ADDR(19),
      addrb(11) => microblaze_0_ilmb_cntlr_ADDR(20),
      addrb(10) => microblaze_0_ilmb_cntlr_ADDR(21),
      addrb(9) => microblaze_0_ilmb_cntlr_ADDR(22),
      addrb(8) => microblaze_0_ilmb_cntlr_ADDR(23),
      addrb(7) => microblaze_0_ilmb_cntlr_ADDR(24),
      addrb(6) => microblaze_0_ilmb_cntlr_ADDR(25),
      addrb(5) => microblaze_0_ilmb_cntlr_ADDR(26),
      addrb(4) => microblaze_0_ilmb_cntlr_ADDR(27),
      addrb(3) => microblaze_0_ilmb_cntlr_ADDR(28),
      addrb(2) => microblaze_0_ilmb_cntlr_ADDR(29),
      addrb(1) => microblaze_0_ilmb_cntlr_ADDR(30),
      addrb(0) => microblaze_0_ilmb_cntlr_ADDR(31),
      clka => microblaze_0_dlmb_cntlr_CLK,
      clkb => microblaze_0_ilmb_cntlr_CLK,
      dina(31) => microblaze_0_dlmb_cntlr_DIN(0),
      dina(30) => microblaze_0_dlmb_cntlr_DIN(1),
      dina(29) => microblaze_0_dlmb_cntlr_DIN(2),
      dina(28) => microblaze_0_dlmb_cntlr_DIN(3),
      dina(27) => microblaze_0_dlmb_cntlr_DIN(4),
      dina(26) => microblaze_0_dlmb_cntlr_DIN(5),
      dina(25) => microblaze_0_dlmb_cntlr_DIN(6),
      dina(24) => microblaze_0_dlmb_cntlr_DIN(7),
      dina(23) => microblaze_0_dlmb_cntlr_DIN(8),
      dina(22) => microblaze_0_dlmb_cntlr_DIN(9),
      dina(21) => microblaze_0_dlmb_cntlr_DIN(10),
      dina(20) => microblaze_0_dlmb_cntlr_DIN(11),
      dina(19) => microblaze_0_dlmb_cntlr_DIN(12),
      dina(18) => microblaze_0_dlmb_cntlr_DIN(13),
      dina(17) => microblaze_0_dlmb_cntlr_DIN(14),
      dina(16) => microblaze_0_dlmb_cntlr_DIN(15),
      dina(15) => microblaze_0_dlmb_cntlr_DIN(16),
      dina(14) => microblaze_0_dlmb_cntlr_DIN(17),
      dina(13) => microblaze_0_dlmb_cntlr_DIN(18),
      dina(12) => microblaze_0_dlmb_cntlr_DIN(19),
      dina(11) => microblaze_0_dlmb_cntlr_DIN(20),
      dina(10) => microblaze_0_dlmb_cntlr_DIN(21),
      dina(9) => microblaze_0_dlmb_cntlr_DIN(22),
      dina(8) => microblaze_0_dlmb_cntlr_DIN(23),
      dina(7) => microblaze_0_dlmb_cntlr_DIN(24),
      dina(6) => microblaze_0_dlmb_cntlr_DIN(25),
      dina(5) => microblaze_0_dlmb_cntlr_DIN(26),
      dina(4) => microblaze_0_dlmb_cntlr_DIN(27),
      dina(3) => microblaze_0_dlmb_cntlr_DIN(28),
      dina(2) => microblaze_0_dlmb_cntlr_DIN(29),
      dina(1) => microblaze_0_dlmb_cntlr_DIN(30),
      dina(0) => microblaze_0_dlmb_cntlr_DIN(31),
      dinb(31) => microblaze_0_ilmb_cntlr_DIN(0),
      dinb(30) => microblaze_0_ilmb_cntlr_DIN(1),
      dinb(29) => microblaze_0_ilmb_cntlr_DIN(2),
      dinb(28) => microblaze_0_ilmb_cntlr_DIN(3),
      dinb(27) => microblaze_0_ilmb_cntlr_DIN(4),
      dinb(26) => microblaze_0_ilmb_cntlr_DIN(5),
      dinb(25) => microblaze_0_ilmb_cntlr_DIN(6),
      dinb(24) => microblaze_0_ilmb_cntlr_DIN(7),
      dinb(23) => microblaze_0_ilmb_cntlr_DIN(8),
      dinb(22) => microblaze_0_ilmb_cntlr_DIN(9),
      dinb(21) => microblaze_0_ilmb_cntlr_DIN(10),
      dinb(20) => microblaze_0_ilmb_cntlr_DIN(11),
      dinb(19) => microblaze_0_ilmb_cntlr_DIN(12),
      dinb(18) => microblaze_0_ilmb_cntlr_DIN(13),
      dinb(17) => microblaze_0_ilmb_cntlr_DIN(14),
      dinb(16) => microblaze_0_ilmb_cntlr_DIN(15),
      dinb(15) => microblaze_0_ilmb_cntlr_DIN(16),
      dinb(14) => microblaze_0_ilmb_cntlr_DIN(17),
      dinb(13) => microblaze_0_ilmb_cntlr_DIN(18),
      dinb(12) => microblaze_0_ilmb_cntlr_DIN(19),
      dinb(11) => microblaze_0_ilmb_cntlr_DIN(20),
      dinb(10) => microblaze_0_ilmb_cntlr_DIN(21),
      dinb(9) => microblaze_0_ilmb_cntlr_DIN(22),
      dinb(8) => microblaze_0_ilmb_cntlr_DIN(23),
      dinb(7) => microblaze_0_ilmb_cntlr_DIN(24),
      dinb(6) => microblaze_0_ilmb_cntlr_DIN(25),
      dinb(5) => microblaze_0_ilmb_cntlr_DIN(26),
      dinb(4) => microblaze_0_ilmb_cntlr_DIN(27),
      dinb(3) => microblaze_0_ilmb_cntlr_DIN(28),
      dinb(2) => microblaze_0_ilmb_cntlr_DIN(29),
      dinb(1) => microblaze_0_ilmb_cntlr_DIN(30),
      dinb(0) => microblaze_0_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => microblaze_0_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => microblaze_0_ilmb_cntlr_DOUT(31 downto 0),
      ena => microblaze_0_dlmb_cntlr_EN,
      enb => microblaze_0_ilmb_cntlr_EN,
      rsta => microblaze_0_dlmb_cntlr_RST,
      rstb => microblaze_0_ilmb_cntlr_RST,
      wea(3) => microblaze_0_dlmb_cntlr_WE(0),
      wea(2) => microblaze_0_dlmb_cntlr_WE(1),
      wea(1) => microblaze_0_dlmb_cntlr_WE(2),
      wea(0) => microblaze_0_dlmb_cntlr_WE(3),
      web(3) => microblaze_0_ilmb_cntlr_WE(0),
      web(2) => microblaze_0_ilmb_cntlr_WE(1),
      web(1) => microblaze_0_ilmb_cntlr_WE(2),
      web(0) => microblaze_0_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1K3DR7P is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_1K3DR7P;

architecture STRUCTURE of s00_couplers_imp_1K3DR7P is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_JKBB6C is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_JKBB6C;

architecture STRUCTURE of s00_couplers_imp_JKBB6C is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s00_couplers_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s00_couplers_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s00_couplers_to_s00_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s00_couplers_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s00_couplers_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s00_couplers_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s00_couplers_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s00_couplers_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s00_couplers_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s00_couplers_to_s00_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s00_couplers_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s00_couplers_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s00_couplers_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s00_couplers_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= s00_couplers_to_s00_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bid(3 downto 0) <= s00_couplers_to_s00_couplers_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= s00_couplers_to_s00_couplers_RID(3 downto 0);
  S_AXI_rlast(0) <= s00_couplers_to_s00_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_couplers_ARID(0) <= S_AXI_arid(0);
  s00_couplers_to_s00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_couplers_AWID(0) <= S_AXI_awid(0);
  s00_couplers_to_s00_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_s00_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BID(3 downto 0) <= M_AXI_bid(3 downto 0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RID(3 downto 0) <= M_AXI_rid(3 downto 0);
  s00_couplers_to_s00_couplers_RLAST(0) <= M_AXI_rlast(0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WLAST(0) <= S_AXI_wlast(0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_B44LJP is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s01_couplers_imp_B44LJP;

architecture STRUCTURE of s01_couplers_imp_B44LJP is
  signal s01_couplers_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s01_couplers_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s01_couplers_to_s01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s01_couplers_to_s01_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s01_couplers_to_s01_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s01_couplers_to_s01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s01_couplers_to_s01_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s01_couplers_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s01_couplers_to_s01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s01_couplers_to_s01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= s01_couplers_to_s01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s01_couplers_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s01_couplers_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s01_couplers_to_s01_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s01_couplers_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s01_couplers_to_s01_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s01_couplers_to_s01_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s01_couplers_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= s01_couplers_to_s01_couplers_AWVALID(0);
  M_AXI_bready(0) <= s01_couplers_to_s01_couplers_BREADY(0);
  M_AXI_rready(0) <= s01_couplers_to_s01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s01_couplers_to_s01_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= s01_couplers_to_s01_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s01_couplers_to_s01_couplers_WVALID(0);
  S_AXI_arready(0) <= s01_couplers_to_s01_couplers_ARREADY(0);
  S_AXI_awready(0) <= s01_couplers_to_s01_couplers_AWREADY(0);
  S_AXI_bid(3 downto 0) <= s01_couplers_to_s01_couplers_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s01_couplers_to_s01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_s01_couplers_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= s01_couplers_to_s01_couplers_RID(3 downto 0);
  S_AXI_rlast(0) <= s01_couplers_to_s01_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_s01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s01_couplers_to_s01_couplers_RVALID(0);
  S_AXI_wready(0) <= s01_couplers_to_s01_couplers_WREADY(0);
  s01_couplers_to_s01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_s01_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_s01_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_s01_couplers_ARID(0) <= S_AXI_arid(0);
  s01_couplers_to_s01_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s01_couplers_to_s01_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  s01_couplers_to_s01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_s01_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s01_couplers_to_s01_couplers_ARREADY(0) <= M_AXI_arready(0);
  s01_couplers_to_s01_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_s01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_s01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_s01_couplers_AWID(0) <= S_AXI_awid(0);
  s01_couplers_to_s01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_s01_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s01_couplers_to_s01_couplers_AWREADY(0) <= M_AXI_awready(0);
  s01_couplers_to_s01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_s01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s01_couplers_to_s01_couplers_BID(3 downto 0) <= M_AXI_bid(3 downto 0);
  s01_couplers_to_s01_couplers_BREADY(0) <= S_AXI_bready(0);
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s01_couplers_to_s01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s01_couplers_to_s01_couplers_RID(3 downto 0) <= M_AXI_rid(3 downto 0);
  s01_couplers_to_s01_couplers_RLAST(0) <= M_AXI_rlast(0);
  s01_couplers_to_s01_couplers_RREADY(0) <= S_AXI_rready(0);
  s01_couplers_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s01_couplers_to_s01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s01_couplers_to_s01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_s01_couplers_WLAST(0) <= S_AXI_wlast(0);
  s01_couplers_to_s01_couplers_WREADY(0) <= M_AXI_wready(0);
  s01_couplers_to_s01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_s01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_176ARIU is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s02_couplers_imp_176ARIU;

architecture STRUCTURE of s02_couplers_imp_176ARIU is
  signal s02_couplers_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_s02_couplers_ARLOCK : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_ARREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_s02_couplers_ARVALID : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_s02_couplers_AWLOCK : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_AWREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_s02_couplers_AWVALID : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_BREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_BVALID : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_RLAST : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_RREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_RVALID : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_WLAST : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_WREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_s02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s02_couplers_to_s02_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s02_couplers_to_s02_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s02_couplers_to_s02_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s02_couplers_to_s02_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s02_couplers_to_s02_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= s02_couplers_to_s02_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= s02_couplers_to_s02_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s02_couplers_to_s02_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s02_couplers_to_s02_couplers_ARSIZE(2 downto 0);
  M_AXI_aruser(0) <= s02_couplers_to_s02_couplers_ARUSER(0);
  M_AXI_arvalid <= s02_couplers_to_s02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s02_couplers_to_s02_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s02_couplers_to_s02_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s02_couplers_to_s02_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s02_couplers_to_s02_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s02_couplers_to_s02_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= s02_couplers_to_s02_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= s02_couplers_to_s02_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s02_couplers_to_s02_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s02_couplers_to_s02_couplers_AWSIZE(2 downto 0);
  M_AXI_awuser(0) <= s02_couplers_to_s02_couplers_AWUSER(0);
  M_AXI_awvalid <= s02_couplers_to_s02_couplers_AWVALID;
  M_AXI_bready <= s02_couplers_to_s02_couplers_BREADY;
  M_AXI_rready <= s02_couplers_to_s02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s02_couplers_to_s02_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s02_couplers_to_s02_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s02_couplers_to_s02_couplers_WSTRB(3 downto 0);
  M_AXI_wuser(0) <= s02_couplers_to_s02_couplers_WUSER(0);
  M_AXI_wvalid <= s02_couplers_to_s02_couplers_WVALID;
  S_AXI_arready <= s02_couplers_to_s02_couplers_ARREADY;
  S_AXI_awready <= s02_couplers_to_s02_couplers_AWREADY;
  S_AXI_bid(3 downto 0) <= s02_couplers_to_s02_couplers_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= s02_couplers_to_s02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s02_couplers_to_s02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s02_couplers_to_s02_couplers_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= s02_couplers_to_s02_couplers_RID(3 downto 0);
  S_AXI_rlast <= s02_couplers_to_s02_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s02_couplers_to_s02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s02_couplers_to_s02_couplers_RVALID;
  S_AXI_wready <= s02_couplers_to_s02_couplers_WREADY;
  s02_couplers_to_s02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s02_couplers_to_s02_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s02_couplers_to_s02_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s02_couplers_to_s02_couplers_ARID(0) <= S_AXI_arid(0);
  s02_couplers_to_s02_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s02_couplers_to_s02_couplers_ARLOCK <= S_AXI_arlock;
  s02_couplers_to_s02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s02_couplers_to_s02_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s02_couplers_to_s02_couplers_ARREADY <= M_AXI_arready;
  s02_couplers_to_s02_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s02_couplers_to_s02_couplers_ARUSER(0) <= S_AXI_aruser(0);
  s02_couplers_to_s02_couplers_ARVALID <= S_AXI_arvalid;
  s02_couplers_to_s02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s02_couplers_to_s02_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s02_couplers_to_s02_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s02_couplers_to_s02_couplers_AWID(0) <= S_AXI_awid(0);
  s02_couplers_to_s02_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s02_couplers_to_s02_couplers_AWLOCK <= S_AXI_awlock;
  s02_couplers_to_s02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s02_couplers_to_s02_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s02_couplers_to_s02_couplers_AWREADY <= M_AXI_awready;
  s02_couplers_to_s02_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s02_couplers_to_s02_couplers_AWUSER(0) <= S_AXI_awuser(0);
  s02_couplers_to_s02_couplers_AWVALID <= S_AXI_awvalid;
  s02_couplers_to_s02_couplers_BID(3 downto 0) <= M_AXI_bid(3 downto 0);
  s02_couplers_to_s02_couplers_BREADY <= S_AXI_bready;
  s02_couplers_to_s02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s02_couplers_to_s02_couplers_BVALID <= M_AXI_bvalid;
  s02_couplers_to_s02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s02_couplers_to_s02_couplers_RID(3 downto 0) <= M_AXI_rid(3 downto 0);
  s02_couplers_to_s02_couplers_RLAST <= M_AXI_rlast;
  s02_couplers_to_s02_couplers_RREADY <= S_AXI_rready;
  s02_couplers_to_s02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s02_couplers_to_s02_couplers_RVALID <= M_AXI_rvalid;
  s02_couplers_to_s02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s02_couplers_to_s02_couplers_WLAST <= S_AXI_wlast;
  s02_couplers_to_s02_couplers_WREADY <= M_AXI_wready;
  s02_couplers_to_s02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s02_couplers_to_s02_couplers_WUSER(0) <= S_AXI_wuser(0);
  s02_couplers_to_s02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s03_couplers_imp_1W04NMF is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s03_couplers_imp_1W04NMF;

architecture STRUCTURE of s03_couplers_imp_1W04NMF is
  signal s03_couplers_to_s03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_s03_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_s03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_s03_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_s03_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_s03_couplers_ARLOCK : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_s03_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_s03_couplers_ARREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_s03_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_s03_couplers_ARVALID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_s03_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_s03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_s03_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_s03_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_s03_couplers_AWLOCK : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_s03_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_s03_couplers_AWREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_s03_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_s03_couplers_AWVALID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_s03_couplers_BREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_s03_couplers_BVALID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_s03_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_s03_couplers_RLAST : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_s03_couplers_RVALID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_s03_couplers_WLAST : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_WREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_s03_couplers_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_s03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s03_couplers_to_s03_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s03_couplers_to_s03_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s03_couplers_to_s03_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s03_couplers_to_s03_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s03_couplers_to_s03_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= s03_couplers_to_s03_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= s03_couplers_to_s03_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s03_couplers_to_s03_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s03_couplers_to_s03_couplers_ARSIZE(2 downto 0);
  M_AXI_aruser(0) <= s03_couplers_to_s03_couplers_ARUSER(0);
  M_AXI_arvalid <= s03_couplers_to_s03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s03_couplers_to_s03_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s03_couplers_to_s03_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s03_couplers_to_s03_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s03_couplers_to_s03_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s03_couplers_to_s03_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= s03_couplers_to_s03_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= s03_couplers_to_s03_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s03_couplers_to_s03_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s03_couplers_to_s03_couplers_AWSIZE(2 downto 0);
  M_AXI_awuser(0) <= s03_couplers_to_s03_couplers_AWUSER(0);
  M_AXI_awvalid <= s03_couplers_to_s03_couplers_AWVALID;
  M_AXI_bready <= s03_couplers_to_s03_couplers_BREADY;
  M_AXI_rready <= s03_couplers_to_s03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s03_couplers_to_s03_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s03_couplers_to_s03_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s03_couplers_to_s03_couplers_WSTRB(3 downto 0);
  M_AXI_wuser(0) <= s03_couplers_to_s03_couplers_WUSER(0);
  M_AXI_wvalid <= s03_couplers_to_s03_couplers_WVALID;
  S_AXI_arready <= s03_couplers_to_s03_couplers_ARREADY;
  S_AXI_awready <= s03_couplers_to_s03_couplers_AWREADY;
  S_AXI_bid(3 downto 0) <= s03_couplers_to_s03_couplers_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= s03_couplers_to_s03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s03_couplers_to_s03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s03_couplers_to_s03_couplers_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= s03_couplers_to_s03_couplers_RID(3 downto 0);
  S_AXI_rlast <= s03_couplers_to_s03_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s03_couplers_to_s03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s03_couplers_to_s03_couplers_RVALID;
  S_AXI_wready <= s03_couplers_to_s03_couplers_WREADY;
  s03_couplers_to_s03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s03_couplers_to_s03_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s03_couplers_to_s03_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s03_couplers_to_s03_couplers_ARID(0) <= S_AXI_arid(0);
  s03_couplers_to_s03_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s03_couplers_to_s03_couplers_ARLOCK <= S_AXI_arlock;
  s03_couplers_to_s03_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s03_couplers_to_s03_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s03_couplers_to_s03_couplers_ARREADY <= M_AXI_arready;
  s03_couplers_to_s03_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s03_couplers_to_s03_couplers_ARUSER(0) <= S_AXI_aruser(0);
  s03_couplers_to_s03_couplers_ARVALID <= S_AXI_arvalid;
  s03_couplers_to_s03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s03_couplers_to_s03_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s03_couplers_to_s03_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s03_couplers_to_s03_couplers_AWID(0) <= S_AXI_awid(0);
  s03_couplers_to_s03_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s03_couplers_to_s03_couplers_AWLOCK <= S_AXI_awlock;
  s03_couplers_to_s03_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s03_couplers_to_s03_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s03_couplers_to_s03_couplers_AWREADY <= M_AXI_awready;
  s03_couplers_to_s03_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s03_couplers_to_s03_couplers_AWUSER(0) <= S_AXI_awuser(0);
  s03_couplers_to_s03_couplers_AWVALID <= S_AXI_awvalid;
  s03_couplers_to_s03_couplers_BID(3 downto 0) <= M_AXI_bid(3 downto 0);
  s03_couplers_to_s03_couplers_BREADY <= S_AXI_bready;
  s03_couplers_to_s03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s03_couplers_to_s03_couplers_BVALID <= M_AXI_bvalid;
  s03_couplers_to_s03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s03_couplers_to_s03_couplers_RID(3 downto 0) <= M_AXI_rid(3 downto 0);
  s03_couplers_to_s03_couplers_RLAST <= M_AXI_rlast;
  s03_couplers_to_s03_couplers_RREADY <= S_AXI_rready;
  s03_couplers_to_s03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s03_couplers_to_s03_couplers_RVALID <= M_AXI_rvalid;
  s03_couplers_to_s03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s03_couplers_to_s03_couplers_WLAST <= S_AXI_wlast;
  s03_couplers_to_s03_couplers_WREADY <= M_AXI_wready;
  s03_couplers_to_s03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s03_couplers_to_s03_couplers_WUSER(0) <= S_AXI_wuser(0);
  s03_couplers_to_s03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s04_couplers_imp_B16ZGX is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s04_couplers_imp_B16ZGX;

architecture STRUCTURE of s04_couplers_imp_B16ZGX is
  signal s04_couplers_to_s04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_s04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_s04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_BUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_RUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s04_couplers_to_s04_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s04_couplers_to_s04_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s04_couplers_to_s04_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s04_couplers_to_s04_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s04_couplers_to_s04_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s04_couplers_to_s04_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s04_couplers_to_s04_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s04_couplers_to_s04_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s04_couplers_to_s04_couplers_ARSIZE(2 downto 0);
  M_AXI_aruser(0) <= s04_couplers_to_s04_couplers_ARUSER(0);
  M_AXI_arvalid(0) <= s04_couplers_to_s04_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s04_couplers_to_s04_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s04_couplers_to_s04_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s04_couplers_to_s04_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s04_couplers_to_s04_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s04_couplers_to_s04_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s04_couplers_to_s04_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s04_couplers_to_s04_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s04_couplers_to_s04_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s04_couplers_to_s04_couplers_AWSIZE(2 downto 0);
  M_AXI_awuser(0) <= s04_couplers_to_s04_couplers_AWUSER(0);
  M_AXI_awvalid(0) <= s04_couplers_to_s04_couplers_AWVALID(0);
  M_AXI_bready(0) <= s04_couplers_to_s04_couplers_BREADY(0);
  M_AXI_rready(0) <= s04_couplers_to_s04_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s04_couplers_to_s04_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= s04_couplers_to_s04_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= s04_couplers_to_s04_couplers_WSTRB(3 downto 0);
  M_AXI_wuser(0) <= s04_couplers_to_s04_couplers_WUSER(0);
  M_AXI_wvalid(0) <= s04_couplers_to_s04_couplers_WVALID(0);
  S_AXI_arready(0) <= s04_couplers_to_s04_couplers_ARREADY(0);
  S_AXI_awready(0) <= s04_couplers_to_s04_couplers_AWREADY(0);
  S_AXI_bid(3 downto 0) <= s04_couplers_to_s04_couplers_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= s04_couplers_to_s04_couplers_BRESP(1 downto 0);
  S_AXI_buser(0) <= s04_couplers_to_s04_couplers_BUSER(0);
  S_AXI_bvalid(0) <= s04_couplers_to_s04_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s04_couplers_to_s04_couplers_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= s04_couplers_to_s04_couplers_RID(3 downto 0);
  S_AXI_rlast(0) <= s04_couplers_to_s04_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s04_couplers_to_s04_couplers_RRESP(1 downto 0);
  S_AXI_ruser(0) <= s04_couplers_to_s04_couplers_RUSER(0);
  S_AXI_rvalid(0) <= s04_couplers_to_s04_couplers_RVALID(0);
  S_AXI_wready(0) <= s04_couplers_to_s04_couplers_WREADY(0);
  s04_couplers_to_s04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s04_couplers_to_s04_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s04_couplers_to_s04_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s04_couplers_to_s04_couplers_ARID(0) <= S_AXI_arid(0);
  s04_couplers_to_s04_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s04_couplers_to_s04_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  s04_couplers_to_s04_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s04_couplers_to_s04_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s04_couplers_to_s04_couplers_ARREADY(0) <= M_AXI_arready(0);
  s04_couplers_to_s04_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s04_couplers_to_s04_couplers_ARUSER(0) <= S_AXI_aruser(0);
  s04_couplers_to_s04_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s04_couplers_to_s04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s04_couplers_to_s04_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s04_couplers_to_s04_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s04_couplers_to_s04_couplers_AWID(0) <= S_AXI_awid(0);
  s04_couplers_to_s04_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s04_couplers_to_s04_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  s04_couplers_to_s04_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s04_couplers_to_s04_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s04_couplers_to_s04_couplers_AWREADY(0) <= M_AXI_awready(0);
  s04_couplers_to_s04_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s04_couplers_to_s04_couplers_AWUSER(0) <= S_AXI_awuser(0);
  s04_couplers_to_s04_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s04_couplers_to_s04_couplers_BID(3 downto 0) <= M_AXI_bid(3 downto 0);
  s04_couplers_to_s04_couplers_BREADY(0) <= S_AXI_bready(0);
  s04_couplers_to_s04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s04_couplers_to_s04_couplers_BUSER(0) <= M_AXI_buser(0);
  s04_couplers_to_s04_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s04_couplers_to_s04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s04_couplers_to_s04_couplers_RID(3 downto 0) <= M_AXI_rid(3 downto 0);
  s04_couplers_to_s04_couplers_RLAST(0) <= M_AXI_rlast(0);
  s04_couplers_to_s04_couplers_RREADY(0) <= S_AXI_rready(0);
  s04_couplers_to_s04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s04_couplers_to_s04_couplers_RUSER(0) <= M_AXI_ruser(0);
  s04_couplers_to_s04_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s04_couplers_to_s04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s04_couplers_to_s04_couplers_WLAST(0) <= S_AXI_wlast(0);
  s04_couplers_to_s04_couplers_WREADY(0) <= M_AXI_wready(0);
  s04_couplers_to_s04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s04_couplers_to_s04_couplers_WUSER(0) <= S_AXI_wuser(0);
  s04_couplers_to_s04_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s05_couplers_imp_KCAD74 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s05_couplers_imp_KCAD74;

architecture STRUCTURE of s05_couplers_imp_KCAD74 is
  signal s05_couplers_to_s05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_s05_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s05_couplers_to_s05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_s05_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s05_couplers_to_s05_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_s05_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_s05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_s05_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_s05_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s05_couplers_to_s05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_s05_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s05_couplers_to_s05_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_s05_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_s05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_s05_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_s05_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s05_couplers_to_s05_couplers_BUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_s05_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_s05_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s05_couplers_to_s05_couplers_RUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_s05_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_s05_couplers_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_s05_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s05_couplers_to_s05_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s05_couplers_to_s05_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s05_couplers_to_s05_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s05_couplers_to_s05_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s05_couplers_to_s05_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s05_couplers_to_s05_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s05_couplers_to_s05_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s05_couplers_to_s05_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s05_couplers_to_s05_couplers_ARSIZE(2 downto 0);
  M_AXI_aruser(0) <= s05_couplers_to_s05_couplers_ARUSER(0);
  M_AXI_arvalid(0) <= s05_couplers_to_s05_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s05_couplers_to_s05_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s05_couplers_to_s05_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s05_couplers_to_s05_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s05_couplers_to_s05_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s05_couplers_to_s05_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s05_couplers_to_s05_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s05_couplers_to_s05_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s05_couplers_to_s05_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s05_couplers_to_s05_couplers_AWSIZE(2 downto 0);
  M_AXI_awuser(0) <= s05_couplers_to_s05_couplers_AWUSER(0);
  M_AXI_awvalid(0) <= s05_couplers_to_s05_couplers_AWVALID(0);
  M_AXI_bready(0) <= s05_couplers_to_s05_couplers_BREADY(0);
  M_AXI_rready(0) <= s05_couplers_to_s05_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s05_couplers_to_s05_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= s05_couplers_to_s05_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= s05_couplers_to_s05_couplers_WSTRB(3 downto 0);
  M_AXI_wuser(0) <= s05_couplers_to_s05_couplers_WUSER(0);
  M_AXI_wvalid(0) <= s05_couplers_to_s05_couplers_WVALID(0);
  S_AXI_arready(0) <= s05_couplers_to_s05_couplers_ARREADY(0);
  S_AXI_awready(0) <= s05_couplers_to_s05_couplers_AWREADY(0);
  S_AXI_bid(3 downto 0) <= s05_couplers_to_s05_couplers_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= s05_couplers_to_s05_couplers_BRESP(1 downto 0);
  S_AXI_buser(0) <= s05_couplers_to_s05_couplers_BUSER(0);
  S_AXI_bvalid(0) <= s05_couplers_to_s05_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s05_couplers_to_s05_couplers_RDATA(31 downto 0);
  S_AXI_rid(3 downto 0) <= s05_couplers_to_s05_couplers_RID(3 downto 0);
  S_AXI_rlast(0) <= s05_couplers_to_s05_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s05_couplers_to_s05_couplers_RRESP(1 downto 0);
  S_AXI_ruser(0) <= s05_couplers_to_s05_couplers_RUSER(0);
  S_AXI_rvalid(0) <= s05_couplers_to_s05_couplers_RVALID(0);
  S_AXI_wready(0) <= s05_couplers_to_s05_couplers_WREADY(0);
  s05_couplers_to_s05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s05_couplers_to_s05_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s05_couplers_to_s05_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s05_couplers_to_s05_couplers_ARID(0) <= S_AXI_arid(0);
  s05_couplers_to_s05_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s05_couplers_to_s05_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  s05_couplers_to_s05_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s05_couplers_to_s05_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s05_couplers_to_s05_couplers_ARREADY(0) <= M_AXI_arready(0);
  s05_couplers_to_s05_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s05_couplers_to_s05_couplers_ARUSER(0) <= S_AXI_aruser(0);
  s05_couplers_to_s05_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s05_couplers_to_s05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s05_couplers_to_s05_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s05_couplers_to_s05_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s05_couplers_to_s05_couplers_AWID(0) <= S_AXI_awid(0);
  s05_couplers_to_s05_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s05_couplers_to_s05_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  s05_couplers_to_s05_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s05_couplers_to_s05_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s05_couplers_to_s05_couplers_AWREADY(0) <= M_AXI_awready(0);
  s05_couplers_to_s05_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s05_couplers_to_s05_couplers_AWUSER(0) <= S_AXI_awuser(0);
  s05_couplers_to_s05_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s05_couplers_to_s05_couplers_BID(3 downto 0) <= M_AXI_bid(3 downto 0);
  s05_couplers_to_s05_couplers_BREADY(0) <= S_AXI_bready(0);
  s05_couplers_to_s05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s05_couplers_to_s05_couplers_BUSER(0) <= M_AXI_buser(0);
  s05_couplers_to_s05_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s05_couplers_to_s05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s05_couplers_to_s05_couplers_RID(3 downto 0) <= M_AXI_rid(3 downto 0);
  s05_couplers_to_s05_couplers_RLAST(0) <= M_AXI_rlast(0);
  s05_couplers_to_s05_couplers_RREADY(0) <= S_AXI_rready(0);
  s05_couplers_to_s05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s05_couplers_to_s05_couplers_RUSER(0) <= M_AXI_ruser(0);
  s05_couplers_to_s05_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s05_couplers_to_s05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s05_couplers_to_s05_couplers_WLAST(0) <= S_AXI_wlast(0);
  s05_couplers_to_s05_couplers_WREADY(0) <= M_AXI_wready(0);
  s05_couplers_to_s05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s05_couplers_to_s05_couplers_WUSER(0) <= S_AXI_wuser(0);
  s05_couplers_to_s05_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_axi_mem_intercon_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arlock : in STD_LOGIC;
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awlock : in STD_LOGIC;
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wvalid : in STD_LOGIC;
    S03_ACLK : in STD_LOGIC;
    S03_ARESETN : in STD_LOGIC;
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_arlock : in STD_LOGIC;
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arready : out STD_LOGIC;
    S03_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_arvalid : in STD_LOGIC;
    S03_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_awlock : in STD_LOGIC;
    S03_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awready : out STD_LOGIC;
    S03_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awvalid : in STD_LOGIC;
    S03_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_bready : in STD_LOGIC;
    S03_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_bvalid : out STD_LOGIC;
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_rlast : out STD_LOGIC;
    S03_AXI_rready : in STD_LOGIC;
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rvalid : out STD_LOGIC;
    S03_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_wlast : in STD_LOGIC;
    S03_AXI_wready : out STD_LOGIC;
    S03_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wvalid : in STD_LOGIC;
    S04_ACLK : in STD_LOGIC;
    S04_ARESETN : in STD_LOGIC;
    S04_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_ACLK : in STD_LOGIC;
    S05_ARESETN : in STD_LOGIC;
    S05_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end final_accelerator_axi_mem_intercon_1;

architecture STRUCTURE of final_accelerator_axi_mem_intercon_1 is
  component final_accelerator_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wuser : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_ruser : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component final_accelerator_xbar_1;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal S02_ACLK_1 : STD_LOGIC;
  signal S02_ARESETN_1 : STD_LOGIC;
  signal S03_ACLK_1 : STD_LOGIC;
  signal S03_ARESETN_1 : STD_LOGIC;
  signal S04_ACLK_1 : STD_LOGIC;
  signal S04_ARESETN_1 : STD_LOGIC;
  signal S05_ACLK_1 : STD_LOGIC;
  signal S05_ARESETN_1 : STD_LOGIC;
  signal axi_mem_intercon_ACLK_net : STD_LOGIC;
  signal axi_mem_intercon_ARESETN_net : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_ARLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s02_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_AWLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s02_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s02_couplers_WVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s03_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_ARLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s03_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s03_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_AWLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s03_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s03_couplers_WVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_BUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_RUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_BUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_RUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s05_couplers_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s05_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_ARADDR : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_AWADDR : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RLAST : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_WLAST : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s02_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s02_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal s02_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal s02_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal s02_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s03_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s03_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal s03_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal s03_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal s03_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s03_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal s04_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal s04_couplers_to_xbar_BUSER : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal s04_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal s04_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal s04_couplers_to_xbar_RUSER : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s05_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s05_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_xbar_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s05_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s05_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s05_couplers_to_xbar_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal s05_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal s05_couplers_to_xbar_BUSER : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal s05_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal s05_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal s05_couplers_to_xbar_RUSER : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_xbar_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xbar_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(28 downto 0) <= m00_couplers_to_axi_mem_intercon_ARADDR(28 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0);
  M00_AXI_arid(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARID(3 downto 0);
  M00_AXI_arlen(7 downto 0) <= m00_couplers_to_axi_mem_intercon_ARLEN(7 downto 0);
  M00_AXI_arlock(0) <= m00_couplers_to_axi_mem_intercon_ARLOCK(0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_mem_intercon_ARVALID;
  M00_AXI_awaddr(28 downto 0) <= m00_couplers_to_axi_mem_intercon_AWADDR(28 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0);
  M00_AXI_awid(3 downto 0) <= m00_couplers_to_axi_mem_intercon_AWID(3 downto 0);
  M00_AXI_awlen(7 downto 0) <= m00_couplers_to_axi_mem_intercon_AWLEN(7 downto 0);
  M00_AXI_awlock(0) <= m00_couplers_to_axi_mem_intercon_AWLOCK(0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_axi_mem_intercon_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_mem_intercon_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_mem_intercon_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_mem_intercon_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_mem_intercon_WDATA(31 downto 0);
  M00_AXI_wlast <= m00_couplers_to_axi_mem_intercon_WLAST;
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_axi_mem_intercon_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_mem_intercon_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready(0) <= axi_mem_intercon_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= axi_mem_intercon_to_s00_couplers_AWREADY(0);
  S00_AXI_bid(3 downto 0) <= axi_mem_intercon_to_s00_couplers_BID(3 downto 0);
  S00_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= axi_mem_intercon_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(3 downto 0) <= axi_mem_intercon_to_s00_couplers_RID(3 downto 0);
  S00_AXI_rlast(0) <= axi_mem_intercon_to_s00_couplers_RLAST(0);
  S00_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= axi_mem_intercon_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= axi_mem_intercon_to_s00_couplers_WREADY(0);
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_arready(0) <= axi_mem_intercon_to_s01_couplers_ARREADY(0);
  S01_AXI_awready(0) <= axi_mem_intercon_to_s01_couplers_AWREADY(0);
  S01_AXI_bid(3 downto 0) <= axi_mem_intercon_to_s01_couplers_BID(3 downto 0);
  S01_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid(0) <= axi_mem_intercon_to_s01_couplers_BVALID(0);
  S01_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rid(3 downto 0) <= axi_mem_intercon_to_s01_couplers_RID(3 downto 0);
  S01_AXI_rlast(0) <= axi_mem_intercon_to_s01_couplers_RLAST(0);
  S01_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid(0) <= axi_mem_intercon_to_s01_couplers_RVALID(0);
  S01_AXI_wready(0) <= axi_mem_intercon_to_s01_couplers_WREADY(0);
  S02_ACLK_1 <= S02_ACLK;
  S02_ARESETN_1 <= S02_ARESETN;
  S02_AXI_arready <= axi_mem_intercon_to_s02_couplers_ARREADY;
  S02_AXI_awready <= axi_mem_intercon_to_s02_couplers_AWREADY;
  S02_AXI_bid(3 downto 0) <= axi_mem_intercon_to_s02_couplers_BID(3 downto 0);
  S02_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s02_couplers_BRESP(1 downto 0);
  S02_AXI_bvalid <= axi_mem_intercon_to_s02_couplers_BVALID;
  S02_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s02_couplers_RDATA(31 downto 0);
  S02_AXI_rid(3 downto 0) <= axi_mem_intercon_to_s02_couplers_RID(3 downto 0);
  S02_AXI_rlast <= axi_mem_intercon_to_s02_couplers_RLAST;
  S02_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s02_couplers_RRESP(1 downto 0);
  S02_AXI_rvalid <= axi_mem_intercon_to_s02_couplers_RVALID;
  S02_AXI_wready <= axi_mem_intercon_to_s02_couplers_WREADY;
  S03_ACLK_1 <= S03_ACLK;
  S03_ARESETN_1 <= S03_ARESETN;
  S03_AXI_arready <= axi_mem_intercon_to_s03_couplers_ARREADY;
  S03_AXI_awready <= axi_mem_intercon_to_s03_couplers_AWREADY;
  S03_AXI_bid(3 downto 0) <= axi_mem_intercon_to_s03_couplers_BID(3 downto 0);
  S03_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s03_couplers_BRESP(1 downto 0);
  S03_AXI_bvalid <= axi_mem_intercon_to_s03_couplers_BVALID;
  S03_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s03_couplers_RDATA(31 downto 0);
  S03_AXI_rid(3 downto 0) <= axi_mem_intercon_to_s03_couplers_RID(3 downto 0);
  S03_AXI_rlast <= axi_mem_intercon_to_s03_couplers_RLAST;
  S03_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s03_couplers_RRESP(1 downto 0);
  S03_AXI_rvalid <= axi_mem_intercon_to_s03_couplers_RVALID;
  S03_AXI_wready <= axi_mem_intercon_to_s03_couplers_WREADY;
  S04_ACLK_1 <= S04_ACLK;
  S04_ARESETN_1 <= S04_ARESETN;
  S04_AXI_arready(0) <= axi_mem_intercon_to_s04_couplers_ARREADY(0);
  S04_AXI_awready(0) <= axi_mem_intercon_to_s04_couplers_AWREADY(0);
  S04_AXI_bid(3 downto 0) <= axi_mem_intercon_to_s04_couplers_BID(3 downto 0);
  S04_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s04_couplers_BRESP(1 downto 0);
  S04_AXI_buser(0) <= axi_mem_intercon_to_s04_couplers_BUSER(0);
  S04_AXI_bvalid(0) <= axi_mem_intercon_to_s04_couplers_BVALID(0);
  S04_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s04_couplers_RDATA(31 downto 0);
  S04_AXI_rid(3 downto 0) <= axi_mem_intercon_to_s04_couplers_RID(3 downto 0);
  S04_AXI_rlast(0) <= axi_mem_intercon_to_s04_couplers_RLAST(0);
  S04_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s04_couplers_RRESP(1 downto 0);
  S04_AXI_ruser(0) <= axi_mem_intercon_to_s04_couplers_RUSER(0);
  S04_AXI_rvalid(0) <= axi_mem_intercon_to_s04_couplers_RVALID(0);
  S04_AXI_wready(0) <= axi_mem_intercon_to_s04_couplers_WREADY(0);
  S05_ACLK_1 <= S05_ACLK;
  S05_ARESETN_1 <= S05_ARESETN;
  S05_AXI_arready(0) <= axi_mem_intercon_to_s05_couplers_ARREADY(0);
  S05_AXI_awready(0) <= axi_mem_intercon_to_s05_couplers_AWREADY(0);
  S05_AXI_bid(3 downto 0) <= axi_mem_intercon_to_s05_couplers_BID(3 downto 0);
  S05_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s05_couplers_BRESP(1 downto 0);
  S05_AXI_buser(0) <= axi_mem_intercon_to_s05_couplers_BUSER(0);
  S05_AXI_bvalid(0) <= axi_mem_intercon_to_s05_couplers_BVALID(0);
  S05_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s05_couplers_RDATA(31 downto 0);
  S05_AXI_rid(3 downto 0) <= axi_mem_intercon_to_s05_couplers_RID(3 downto 0);
  S05_AXI_rlast(0) <= axi_mem_intercon_to_s05_couplers_RLAST(0);
  S05_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s05_couplers_RRESP(1 downto 0);
  S05_AXI_ruser(0) <= axi_mem_intercon_to_s05_couplers_RUSER(0);
  S05_AXI_rvalid(0) <= axi_mem_intercon_to_s05_couplers_RVALID(0);
  S05_AXI_wready(0) <= axi_mem_intercon_to_s05_couplers_WREADY(0);
  axi_mem_intercon_ACLK_net <= ACLK;
  axi_mem_intercon_ARESETN_net <= ARESETN;
  axi_mem_intercon_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s00_couplers_ARID(0) <= S00_AXI_arid(0);
  axi_mem_intercon_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s00_couplers_ARLOCK(0) <= S00_AXI_arlock(0);
  axi_mem_intercon_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_mem_intercon_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  axi_mem_intercon_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s00_couplers_AWID(0) <= S00_AXI_awid(0);
  axi_mem_intercon_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s00_couplers_AWLOCK(0) <= S00_AXI_awlock(0);
  axi_mem_intercon_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_mem_intercon_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  axi_mem_intercon_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  axi_mem_intercon_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  axi_mem_intercon_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s00_couplers_WLAST(0) <= S00_AXI_wlast(0);
  axi_mem_intercon_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
  axi_mem_intercon_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s01_couplers_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s01_couplers_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s01_couplers_ARID(0) <= S01_AXI_arid(0);
  axi_mem_intercon_to_s01_couplers_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s01_couplers_ARLOCK(0) <= S01_AXI_arlock(0);
  axi_mem_intercon_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s01_couplers_ARQOS(3 downto 0) <= S01_AXI_arqos(3 downto 0);
  axi_mem_intercon_to_s01_couplers_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s01_couplers_ARVALID(0) <= S01_AXI_arvalid(0);
  axi_mem_intercon_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s01_couplers_AWID(0) <= S01_AXI_awid(0);
  axi_mem_intercon_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s01_couplers_AWLOCK(0) <= S01_AXI_awlock(0);
  axi_mem_intercon_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s01_couplers_AWQOS(3 downto 0) <= S01_AXI_awqos(3 downto 0);
  axi_mem_intercon_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s01_couplers_AWVALID(0) <= S01_AXI_awvalid(0);
  axi_mem_intercon_to_s01_couplers_BREADY(0) <= S01_AXI_bready(0);
  axi_mem_intercon_to_s01_couplers_RREADY(0) <= S01_AXI_rready(0);
  axi_mem_intercon_to_s01_couplers_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s01_couplers_WLAST(0) <= S01_AXI_wlast(0);
  axi_mem_intercon_to_s01_couplers_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s01_couplers_WVALID(0) <= S01_AXI_wvalid(0);
  axi_mem_intercon_to_s02_couplers_ARADDR(31 downto 0) <= S02_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s02_couplers_ARBURST(1 downto 0) <= S02_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s02_couplers_ARCACHE(3 downto 0) <= S02_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s02_couplers_ARID(0) <= S02_AXI_arid(0);
  axi_mem_intercon_to_s02_couplers_ARLEN(7 downto 0) <= S02_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s02_couplers_ARLOCK <= S02_AXI_arlock;
  axi_mem_intercon_to_s02_couplers_ARPROT(2 downto 0) <= S02_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s02_couplers_ARQOS(3 downto 0) <= S02_AXI_arqos(3 downto 0);
  axi_mem_intercon_to_s02_couplers_ARSIZE(2 downto 0) <= S02_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s02_couplers_ARUSER(0) <= S02_AXI_aruser(0);
  axi_mem_intercon_to_s02_couplers_ARVALID <= S02_AXI_arvalid;
  axi_mem_intercon_to_s02_couplers_AWADDR(31 downto 0) <= S02_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s02_couplers_AWBURST(1 downto 0) <= S02_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s02_couplers_AWCACHE(3 downto 0) <= S02_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s02_couplers_AWID(0) <= S02_AXI_awid(0);
  axi_mem_intercon_to_s02_couplers_AWLEN(7 downto 0) <= S02_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s02_couplers_AWLOCK <= S02_AXI_awlock;
  axi_mem_intercon_to_s02_couplers_AWPROT(2 downto 0) <= S02_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s02_couplers_AWQOS(3 downto 0) <= S02_AXI_awqos(3 downto 0);
  axi_mem_intercon_to_s02_couplers_AWSIZE(2 downto 0) <= S02_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s02_couplers_AWUSER(0) <= S02_AXI_awuser(0);
  axi_mem_intercon_to_s02_couplers_AWVALID <= S02_AXI_awvalid;
  axi_mem_intercon_to_s02_couplers_BREADY <= S02_AXI_bready;
  axi_mem_intercon_to_s02_couplers_RREADY <= S02_AXI_rready;
  axi_mem_intercon_to_s02_couplers_WDATA(31 downto 0) <= S02_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s02_couplers_WLAST <= S02_AXI_wlast;
  axi_mem_intercon_to_s02_couplers_WSTRB(3 downto 0) <= S02_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s02_couplers_WUSER(0) <= S02_AXI_wuser(0);
  axi_mem_intercon_to_s02_couplers_WVALID <= S02_AXI_wvalid;
  axi_mem_intercon_to_s03_couplers_ARADDR(31 downto 0) <= S03_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s03_couplers_ARBURST(1 downto 0) <= S03_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s03_couplers_ARCACHE(3 downto 0) <= S03_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s03_couplers_ARID(0) <= S03_AXI_arid(0);
  axi_mem_intercon_to_s03_couplers_ARLEN(7 downto 0) <= S03_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s03_couplers_ARLOCK <= S03_AXI_arlock;
  axi_mem_intercon_to_s03_couplers_ARPROT(2 downto 0) <= S03_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s03_couplers_ARQOS(3 downto 0) <= S03_AXI_arqos(3 downto 0);
  axi_mem_intercon_to_s03_couplers_ARSIZE(2 downto 0) <= S03_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s03_couplers_ARUSER(0) <= S03_AXI_aruser(0);
  axi_mem_intercon_to_s03_couplers_ARVALID <= S03_AXI_arvalid;
  axi_mem_intercon_to_s03_couplers_AWADDR(31 downto 0) <= S03_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s03_couplers_AWBURST(1 downto 0) <= S03_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s03_couplers_AWCACHE(3 downto 0) <= S03_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s03_couplers_AWID(0) <= S03_AXI_awid(0);
  axi_mem_intercon_to_s03_couplers_AWLEN(7 downto 0) <= S03_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s03_couplers_AWLOCK <= S03_AXI_awlock;
  axi_mem_intercon_to_s03_couplers_AWPROT(2 downto 0) <= S03_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s03_couplers_AWQOS(3 downto 0) <= S03_AXI_awqos(3 downto 0);
  axi_mem_intercon_to_s03_couplers_AWSIZE(2 downto 0) <= S03_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s03_couplers_AWUSER(0) <= S03_AXI_awuser(0);
  axi_mem_intercon_to_s03_couplers_AWVALID <= S03_AXI_awvalid;
  axi_mem_intercon_to_s03_couplers_BREADY <= S03_AXI_bready;
  axi_mem_intercon_to_s03_couplers_RREADY <= S03_AXI_rready;
  axi_mem_intercon_to_s03_couplers_WDATA(31 downto 0) <= S03_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s03_couplers_WLAST <= S03_AXI_wlast;
  axi_mem_intercon_to_s03_couplers_WSTRB(3 downto 0) <= S03_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s03_couplers_WUSER(0) <= S03_AXI_wuser(0);
  axi_mem_intercon_to_s03_couplers_WVALID <= S03_AXI_wvalid;
  axi_mem_intercon_to_s04_couplers_ARADDR(31 downto 0) <= S04_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s04_couplers_ARBURST(1 downto 0) <= S04_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s04_couplers_ARCACHE(3 downto 0) <= S04_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s04_couplers_ARID(0) <= S04_AXI_arid(0);
  axi_mem_intercon_to_s04_couplers_ARLEN(7 downto 0) <= S04_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s04_couplers_ARLOCK(0) <= S04_AXI_arlock(0);
  axi_mem_intercon_to_s04_couplers_ARPROT(2 downto 0) <= S04_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s04_couplers_ARQOS(3 downto 0) <= S04_AXI_arqos(3 downto 0);
  axi_mem_intercon_to_s04_couplers_ARSIZE(2 downto 0) <= S04_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s04_couplers_ARUSER(0) <= S04_AXI_aruser(0);
  axi_mem_intercon_to_s04_couplers_ARVALID(0) <= S04_AXI_arvalid(0);
  axi_mem_intercon_to_s04_couplers_AWADDR(31 downto 0) <= S04_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s04_couplers_AWBURST(1 downto 0) <= S04_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s04_couplers_AWCACHE(3 downto 0) <= S04_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s04_couplers_AWID(0) <= S04_AXI_awid(0);
  axi_mem_intercon_to_s04_couplers_AWLEN(7 downto 0) <= S04_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s04_couplers_AWLOCK(0) <= S04_AXI_awlock(0);
  axi_mem_intercon_to_s04_couplers_AWPROT(2 downto 0) <= S04_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s04_couplers_AWQOS(3 downto 0) <= S04_AXI_awqos(3 downto 0);
  axi_mem_intercon_to_s04_couplers_AWSIZE(2 downto 0) <= S04_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s04_couplers_AWUSER(0) <= S04_AXI_awuser(0);
  axi_mem_intercon_to_s04_couplers_AWVALID(0) <= S04_AXI_awvalid(0);
  axi_mem_intercon_to_s04_couplers_BREADY(0) <= S04_AXI_bready(0);
  axi_mem_intercon_to_s04_couplers_RREADY(0) <= S04_AXI_rready(0);
  axi_mem_intercon_to_s04_couplers_WDATA(31 downto 0) <= S04_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s04_couplers_WLAST(0) <= S04_AXI_wlast(0);
  axi_mem_intercon_to_s04_couplers_WSTRB(3 downto 0) <= S04_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s04_couplers_WUSER(0) <= S04_AXI_wuser(0);
  axi_mem_intercon_to_s04_couplers_WVALID(0) <= S04_AXI_wvalid(0);
  axi_mem_intercon_to_s05_couplers_ARADDR(31 downto 0) <= S05_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s05_couplers_ARBURST(1 downto 0) <= S05_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s05_couplers_ARCACHE(3 downto 0) <= S05_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s05_couplers_ARID(0) <= S05_AXI_arid(0);
  axi_mem_intercon_to_s05_couplers_ARLEN(7 downto 0) <= S05_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s05_couplers_ARLOCK(0) <= S05_AXI_arlock(0);
  axi_mem_intercon_to_s05_couplers_ARPROT(2 downto 0) <= S05_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s05_couplers_ARQOS(3 downto 0) <= S05_AXI_arqos(3 downto 0);
  axi_mem_intercon_to_s05_couplers_ARSIZE(2 downto 0) <= S05_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s05_couplers_ARUSER(0) <= S05_AXI_aruser(0);
  axi_mem_intercon_to_s05_couplers_ARVALID(0) <= S05_AXI_arvalid(0);
  axi_mem_intercon_to_s05_couplers_AWADDR(31 downto 0) <= S05_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s05_couplers_AWBURST(1 downto 0) <= S05_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s05_couplers_AWCACHE(3 downto 0) <= S05_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s05_couplers_AWID(0) <= S05_AXI_awid(0);
  axi_mem_intercon_to_s05_couplers_AWLEN(7 downto 0) <= S05_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s05_couplers_AWLOCK(0) <= S05_AXI_awlock(0);
  axi_mem_intercon_to_s05_couplers_AWPROT(2 downto 0) <= S05_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s05_couplers_AWQOS(3 downto 0) <= S05_AXI_awqos(3 downto 0);
  axi_mem_intercon_to_s05_couplers_AWSIZE(2 downto 0) <= S05_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s05_couplers_AWUSER(0) <= S05_AXI_awuser(0);
  axi_mem_intercon_to_s05_couplers_AWVALID(0) <= S05_AXI_awvalid(0);
  axi_mem_intercon_to_s05_couplers_BREADY(0) <= S05_AXI_bready(0);
  axi_mem_intercon_to_s05_couplers_RREADY(0) <= S05_AXI_rready(0);
  axi_mem_intercon_to_s05_couplers_WDATA(31 downto 0) <= S05_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s05_couplers_WLAST(0) <= S05_AXI_wlast(0);
  axi_mem_intercon_to_s05_couplers_WSTRB(3 downto 0) <= S05_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s05_couplers_WUSER(0) <= S05_AXI_wuser(0);
  axi_mem_intercon_to_s05_couplers_WVALID(0) <= S05_AXI_wvalid(0);
  m00_couplers_to_axi_mem_intercon_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_mem_intercon_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_mem_intercon_BID(3 downto 0) <= M00_AXI_bid(3 downto 0);
  m00_couplers_to_axi_mem_intercon_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_mem_intercon_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_mem_intercon_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_mem_intercon_RID(3 downto 0) <= M00_AXI_rid(3 downto 0);
  m00_couplers_to_axi_mem_intercon_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_mem_intercon_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_mem_intercon_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_mem_intercon_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_1Z0RVQI
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(28 downto 0) => m00_couplers_to_axi_mem_intercon_ARADDR(28 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0),
      M_AXI_arid(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARID(3 downto 0),
      M_AXI_arlen(7 downto 0) => m00_couplers_to_axi_mem_intercon_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m00_couplers_to_axi_mem_intercon_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_axi_mem_intercon_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_axi_mem_intercon_ARVALID,
      M_AXI_awaddr(28 downto 0) => m00_couplers_to_axi_mem_intercon_AWADDR(28 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0),
      M_AXI_awid(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWID(3 downto 0),
      M_AXI_awlen(7 downto 0) => m00_couplers_to_axi_mem_intercon_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m00_couplers_to_axi_mem_intercon_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_axi_mem_intercon_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_axi_mem_intercon_AWVALID,
      M_AXI_bid(3 downto 0) => m00_couplers_to_axi_mem_intercon_BID(3 downto 0),
      M_AXI_bready => m00_couplers_to_axi_mem_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_mem_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_mem_intercon_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_mem_intercon_RDATA(31 downto 0),
      M_AXI_rid(3 downto 0) => m00_couplers_to_axi_mem_intercon_RID(3 downto 0),
      M_AXI_rlast => m00_couplers_to_axi_mem_intercon_RLAST,
      M_AXI_rready => m00_couplers_to_axi_mem_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_mem_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_mem_intercon_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_mem_intercon_WDATA(31 downto 0),
      M_AXI_wlast => m00_couplers_to_axi_mem_intercon_WLAST,
      M_AXI_wready => m00_couplers_to_axi_mem_intercon_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_axi_mem_intercon_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_mem_intercon_WVALID,
      S_ACLK => axi_mem_intercon_ACLK_net,
      S_ARESETN => axi_mem_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(3 downto 0) => xbar_to_m00_couplers_ARID(3 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_aruser(0) => xbar_to_m00_couplers_ARUSER(0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(3 downto 0) => xbar_to_m00_couplers_AWID(3 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awuser(0) => xbar_to_m00_couplers_AWUSER(0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(3 downto 0) => xbar_to_m00_couplers_BID(3 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_buser(0) => xbar_to_m00_couplers_BUSER(0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => xbar_to_m00_couplers_RID(3 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_ruser(0) => xbar_to_m00_couplers_RUSER(0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wuser(0) => xbar_to_m00_couplers_WUSER(0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_JKBB6C
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s00_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s00_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bid(3 downto 0) => s00_couplers_to_xbar_BID(3 downto 0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rid(3 downto 0) => s00_couplers_to_xbar_RID(3 downto 0),
      M_AXI_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast(0) => s00_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => axi_mem_intercon_to_s00_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => axi_mem_intercon_to_s00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_mem_intercon_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready(0) => axi_mem_intercon_to_s00_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => axi_mem_intercon_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => axi_mem_intercon_to_s00_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => axi_mem_intercon_to_s00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_mem_intercon_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready(0) => axi_mem_intercon_to_s00_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => axi_mem_intercon_to_s00_couplers_AWVALID(0),
      S_AXI_bid(3 downto 0) => axi_mem_intercon_to_s00_couplers_BID(3 downto 0),
      S_AXI_bready(0) => axi_mem_intercon_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_mem_intercon_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => axi_mem_intercon_to_s00_couplers_RID(3 downto 0),
      S_AXI_rlast(0) => axi_mem_intercon_to_s00_couplers_RLAST(0),
      S_AXI_rready(0) => axi_mem_intercon_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => axi_mem_intercon_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast(0) => axi_mem_intercon_to_s00_couplers_WLAST(0),
      S_AXI_wready(0) => axi_mem_intercon_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => axi_mem_intercon_to_s00_couplers_WVALID(0)
    );
s01_couplers: entity work.s01_couplers_imp_B44LJP
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s01_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s01_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready(0) => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => s01_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s01_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s01_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready(0) => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => s01_couplers_to_xbar_AWVALID(0),
      M_AXI_bid(3 downto 0) => s01_couplers_to_xbar_BID(7 downto 4),
      M_AXI_bready(0) => s01_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid(0) => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata(31 downto 0) => s01_couplers_to_xbar_RDATA(63 downto 32),
      M_AXI_rid(3 downto 0) => s01_couplers_to_xbar_RID(7 downto 4),
      M_AXI_rlast(0) => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready(0) => s01_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid(0) => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata(31 downto 0) => s01_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast(0) => s01_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(3 downto 0) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s01_couplers_to_xbar_WVALID(0),
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s01_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s01_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => axi_mem_intercon_to_s01_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s01_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => axi_mem_intercon_to_s01_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_mem_intercon_to_s01_couplers_ARQOS(3 downto 0),
      S_AXI_arready(0) => axi_mem_intercon_to_s01_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s01_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => axi_mem_intercon_to_s01_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => axi_mem_intercon_to_s01_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => axi_mem_intercon_to_s01_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_mem_intercon_to_s01_couplers_AWQOS(3 downto 0),
      S_AXI_awready(0) => axi_mem_intercon_to_s01_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => axi_mem_intercon_to_s01_couplers_AWVALID(0),
      S_AXI_bid(3 downto 0) => axi_mem_intercon_to_s01_couplers_BID(3 downto 0),
      S_AXI_bready(0) => axi_mem_intercon_to_s01_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_mem_intercon_to_s01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => axi_mem_intercon_to_s01_couplers_RID(3 downto 0),
      S_AXI_rlast(0) => axi_mem_intercon_to_s01_couplers_RLAST(0),
      S_AXI_rready(0) => axi_mem_intercon_to_s01_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => axi_mem_intercon_to_s01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s01_couplers_WDATA(31 downto 0),
      S_AXI_wlast(0) => axi_mem_intercon_to_s01_couplers_WLAST(0),
      S_AXI_wready(0) => axi_mem_intercon_to_s01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s01_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => axi_mem_intercon_to_s01_couplers_WVALID(0)
    );
s02_couplers: entity work.s02_couplers_imp_176ARIU
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s02_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock => s02_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s02_couplers_to_xbar_ARREADY(2),
      M_AXI_arsize(2 downto 0) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_aruser(0) => s02_couplers_to_xbar_ARUSER(0),
      M_AXI_arvalid => s02_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s02_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock => s02_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s02_couplers_to_xbar_AWREADY(2),
      M_AXI_awsize(2 downto 0) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awuser(0) => s02_couplers_to_xbar_AWUSER(0),
      M_AXI_awvalid => s02_couplers_to_xbar_AWVALID,
      M_AXI_bid(3 downto 0) => s02_couplers_to_xbar_BID(11 downto 8),
      M_AXI_bready => s02_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s02_couplers_to_xbar_BRESP(5 downto 4),
      M_AXI_bvalid => s02_couplers_to_xbar_BVALID(2),
      M_AXI_rdata(31 downto 0) => s02_couplers_to_xbar_RDATA(95 downto 64),
      M_AXI_rid(3 downto 0) => s02_couplers_to_xbar_RID(11 downto 8),
      M_AXI_rlast => s02_couplers_to_xbar_RLAST(2),
      M_AXI_rready => s02_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s02_couplers_to_xbar_RRESP(5 downto 4),
      M_AXI_rvalid => s02_couplers_to_xbar_RVALID(2),
      M_AXI_wdata(31 downto 0) => s02_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s02_couplers_to_xbar_WLAST,
      M_AXI_wready => s02_couplers_to_xbar_WREADY(2),
      M_AXI_wstrb(3 downto 0) => s02_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wuser(0) => s02_couplers_to_xbar_WUSER(0),
      M_AXI_wvalid => s02_couplers_to_xbar_WVALID,
      S_ACLK => S02_ACLK_1,
      S_ARESETN => S02_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s02_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s02_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s02_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => axi_mem_intercon_to_s02_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s02_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => axi_mem_intercon_to_s02_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s02_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_mem_intercon_to_s02_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_mem_intercon_to_s02_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s02_couplers_ARSIZE(2 downto 0),
      S_AXI_aruser(0) => axi_mem_intercon_to_s02_couplers_ARUSER(0),
      S_AXI_arvalid => axi_mem_intercon_to_s02_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s02_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s02_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s02_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => axi_mem_intercon_to_s02_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s02_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => axi_mem_intercon_to_s02_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s02_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_mem_intercon_to_s02_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_mem_intercon_to_s02_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s02_couplers_AWSIZE(2 downto 0),
      S_AXI_awuser(0) => axi_mem_intercon_to_s02_couplers_AWUSER(0),
      S_AXI_awvalid => axi_mem_intercon_to_s02_couplers_AWVALID,
      S_AXI_bid(3 downto 0) => axi_mem_intercon_to_s02_couplers_BID(3 downto 0),
      S_AXI_bready => axi_mem_intercon_to_s02_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s02_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => axi_mem_intercon_to_s02_couplers_RID(3 downto 0),
      S_AXI_rlast => axi_mem_intercon_to_s02_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s02_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s02_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_mem_intercon_to_s02_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s02_couplers_WSTRB(3 downto 0),
      S_AXI_wuser(0) => axi_mem_intercon_to_s02_couplers_WUSER(0),
      S_AXI_wvalid => axi_mem_intercon_to_s02_couplers_WVALID
    );
s03_couplers: entity work.s03_couplers_imp_1W04NMF
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s03_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s03_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock => s03_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s03_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s03_couplers_to_xbar_ARREADY(3),
      M_AXI_arsize(2 downto 0) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_aruser(0) => s03_couplers_to_xbar_ARUSER(0),
      M_AXI_arvalid => s03_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s03_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s03_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s03_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s03_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s03_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock => s03_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s03_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s03_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s03_couplers_to_xbar_AWREADY(3),
      M_AXI_awsize(2 downto 0) => s03_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awuser(0) => s03_couplers_to_xbar_AWUSER(0),
      M_AXI_awvalid => s03_couplers_to_xbar_AWVALID,
      M_AXI_bid(3 downto 0) => s03_couplers_to_xbar_BID(15 downto 12),
      M_AXI_bready => s03_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s03_couplers_to_xbar_BRESP(7 downto 6),
      M_AXI_bvalid => s03_couplers_to_xbar_BVALID(3),
      M_AXI_rdata(31 downto 0) => s03_couplers_to_xbar_RDATA(127 downto 96),
      M_AXI_rid(3 downto 0) => s03_couplers_to_xbar_RID(15 downto 12),
      M_AXI_rlast => s03_couplers_to_xbar_RLAST(3),
      M_AXI_rready => s03_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s03_couplers_to_xbar_RRESP(7 downto 6),
      M_AXI_rvalid => s03_couplers_to_xbar_RVALID(3),
      M_AXI_wdata(31 downto 0) => s03_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s03_couplers_to_xbar_WLAST,
      M_AXI_wready => s03_couplers_to_xbar_WREADY(3),
      M_AXI_wstrb(3 downto 0) => s03_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wuser(0) => s03_couplers_to_xbar_WUSER(0),
      M_AXI_wvalid => s03_couplers_to_xbar_WVALID,
      S_ACLK => S03_ACLK_1,
      S_ARESETN => S03_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s03_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s03_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s03_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => axi_mem_intercon_to_s03_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s03_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => axi_mem_intercon_to_s03_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s03_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_mem_intercon_to_s03_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_mem_intercon_to_s03_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s03_couplers_ARSIZE(2 downto 0),
      S_AXI_aruser(0) => axi_mem_intercon_to_s03_couplers_ARUSER(0),
      S_AXI_arvalid => axi_mem_intercon_to_s03_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s03_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s03_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s03_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => axi_mem_intercon_to_s03_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s03_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => axi_mem_intercon_to_s03_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s03_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_mem_intercon_to_s03_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_mem_intercon_to_s03_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s03_couplers_AWSIZE(2 downto 0),
      S_AXI_awuser(0) => axi_mem_intercon_to_s03_couplers_AWUSER(0),
      S_AXI_awvalid => axi_mem_intercon_to_s03_couplers_AWVALID,
      S_AXI_bid(3 downto 0) => axi_mem_intercon_to_s03_couplers_BID(3 downto 0),
      S_AXI_bready => axi_mem_intercon_to_s03_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s03_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => axi_mem_intercon_to_s03_couplers_RID(3 downto 0),
      S_AXI_rlast => axi_mem_intercon_to_s03_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s03_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s03_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_mem_intercon_to_s03_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s03_couplers_WSTRB(3 downto 0),
      S_AXI_wuser(0) => axi_mem_intercon_to_s03_couplers_WUSER(0),
      S_AXI_wvalid => axi_mem_intercon_to_s03_couplers_WVALID
    );
s04_couplers: entity work.s04_couplers_imp_B16ZGX
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s04_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s04_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s04_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s04_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s04_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s04_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s04_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s04_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready(0) => s04_couplers_to_xbar_ARREADY(4),
      M_AXI_arsize(2 downto 0) => s04_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_aruser(0) => s04_couplers_to_xbar_ARUSER(0),
      M_AXI_arvalid(0) => s04_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s04_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s04_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s04_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s04_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s04_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s04_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s04_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s04_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready(0) => s04_couplers_to_xbar_AWREADY(4),
      M_AXI_awsize(2 downto 0) => s04_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awuser(0) => s04_couplers_to_xbar_AWUSER(0),
      M_AXI_awvalid(0) => s04_couplers_to_xbar_AWVALID(0),
      M_AXI_bid(3 downto 0) => s04_couplers_to_xbar_BID(19 downto 16),
      M_AXI_bready(0) => s04_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s04_couplers_to_xbar_BRESP(9 downto 8),
      M_AXI_buser(0) => s04_couplers_to_xbar_BUSER(4),
      M_AXI_bvalid(0) => s04_couplers_to_xbar_BVALID(4),
      M_AXI_rdata(31 downto 0) => s04_couplers_to_xbar_RDATA(159 downto 128),
      M_AXI_rid(3 downto 0) => s04_couplers_to_xbar_RID(19 downto 16),
      M_AXI_rlast(0) => s04_couplers_to_xbar_RLAST(4),
      M_AXI_rready(0) => s04_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s04_couplers_to_xbar_RRESP(9 downto 8),
      M_AXI_ruser(0) => s04_couplers_to_xbar_RUSER(4),
      M_AXI_rvalid(0) => s04_couplers_to_xbar_RVALID(4),
      M_AXI_wdata(31 downto 0) => s04_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast(0) => s04_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s04_couplers_to_xbar_WREADY(4),
      M_AXI_wstrb(3 downto 0) => s04_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wuser(0) => s04_couplers_to_xbar_WUSER(0),
      M_AXI_wvalid(0) => s04_couplers_to_xbar_WVALID(0),
      S_ACLK => S04_ACLK_1,
      S_ARESETN => S04_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s04_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s04_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s04_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => axi_mem_intercon_to_s04_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s04_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => axi_mem_intercon_to_s04_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s04_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_mem_intercon_to_s04_couplers_ARQOS(3 downto 0),
      S_AXI_arready(0) => axi_mem_intercon_to_s04_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s04_couplers_ARSIZE(2 downto 0),
      S_AXI_aruser(0) => axi_mem_intercon_to_s04_couplers_ARUSER(0),
      S_AXI_arvalid(0) => axi_mem_intercon_to_s04_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s04_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s04_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s04_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => axi_mem_intercon_to_s04_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s04_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => axi_mem_intercon_to_s04_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s04_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_mem_intercon_to_s04_couplers_AWQOS(3 downto 0),
      S_AXI_awready(0) => axi_mem_intercon_to_s04_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s04_couplers_AWSIZE(2 downto 0),
      S_AXI_awuser(0) => axi_mem_intercon_to_s04_couplers_AWUSER(0),
      S_AXI_awvalid(0) => axi_mem_intercon_to_s04_couplers_AWVALID(0),
      S_AXI_bid(3 downto 0) => axi_mem_intercon_to_s04_couplers_BID(3 downto 0),
      S_AXI_bready(0) => axi_mem_intercon_to_s04_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s04_couplers_BRESP(1 downto 0),
      S_AXI_buser(0) => axi_mem_intercon_to_s04_couplers_BUSER(0),
      S_AXI_bvalid(0) => axi_mem_intercon_to_s04_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s04_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => axi_mem_intercon_to_s04_couplers_RID(3 downto 0),
      S_AXI_rlast(0) => axi_mem_intercon_to_s04_couplers_RLAST(0),
      S_AXI_rready(0) => axi_mem_intercon_to_s04_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s04_couplers_RRESP(1 downto 0),
      S_AXI_ruser(0) => axi_mem_intercon_to_s04_couplers_RUSER(0),
      S_AXI_rvalid(0) => axi_mem_intercon_to_s04_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s04_couplers_WDATA(31 downto 0),
      S_AXI_wlast(0) => axi_mem_intercon_to_s04_couplers_WLAST(0),
      S_AXI_wready(0) => axi_mem_intercon_to_s04_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s04_couplers_WSTRB(3 downto 0),
      S_AXI_wuser(0) => axi_mem_intercon_to_s04_couplers_WUSER(0),
      S_AXI_wvalid(0) => axi_mem_intercon_to_s04_couplers_WVALID(0)
    );
s05_couplers: entity work.s05_couplers_imp_KCAD74
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s05_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s05_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s05_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s05_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s05_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s05_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s05_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s05_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready(0) => s05_couplers_to_xbar_ARREADY(5),
      M_AXI_arsize(2 downto 0) => s05_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_aruser(0) => s05_couplers_to_xbar_ARUSER(0),
      M_AXI_arvalid(0) => s05_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s05_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s05_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s05_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s05_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s05_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s05_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s05_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s05_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready(0) => s05_couplers_to_xbar_AWREADY(5),
      M_AXI_awsize(2 downto 0) => s05_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awuser(0) => s05_couplers_to_xbar_AWUSER(0),
      M_AXI_awvalid(0) => s05_couplers_to_xbar_AWVALID(0),
      M_AXI_bid(3 downto 0) => s05_couplers_to_xbar_BID(23 downto 20),
      M_AXI_bready(0) => s05_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s05_couplers_to_xbar_BRESP(11 downto 10),
      M_AXI_buser(0) => s05_couplers_to_xbar_BUSER(5),
      M_AXI_bvalid(0) => s05_couplers_to_xbar_BVALID(5),
      M_AXI_rdata(31 downto 0) => s05_couplers_to_xbar_RDATA(191 downto 160),
      M_AXI_rid(3 downto 0) => s05_couplers_to_xbar_RID(23 downto 20),
      M_AXI_rlast(0) => s05_couplers_to_xbar_RLAST(5),
      M_AXI_rready(0) => s05_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s05_couplers_to_xbar_RRESP(11 downto 10),
      M_AXI_ruser(0) => s05_couplers_to_xbar_RUSER(5),
      M_AXI_rvalid(0) => s05_couplers_to_xbar_RVALID(5),
      M_AXI_wdata(31 downto 0) => s05_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast(0) => s05_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s05_couplers_to_xbar_WREADY(5),
      M_AXI_wstrb(3 downto 0) => s05_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wuser(0) => s05_couplers_to_xbar_WUSER(0),
      M_AXI_wvalid(0) => s05_couplers_to_xbar_WVALID(0),
      S_ACLK => S05_ACLK_1,
      S_ARESETN => S05_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s05_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s05_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s05_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => axi_mem_intercon_to_s05_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s05_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => axi_mem_intercon_to_s05_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s05_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_mem_intercon_to_s05_couplers_ARQOS(3 downto 0),
      S_AXI_arready(0) => axi_mem_intercon_to_s05_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s05_couplers_ARSIZE(2 downto 0),
      S_AXI_aruser(0) => axi_mem_intercon_to_s05_couplers_ARUSER(0),
      S_AXI_arvalid(0) => axi_mem_intercon_to_s05_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s05_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s05_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s05_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => axi_mem_intercon_to_s05_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s05_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => axi_mem_intercon_to_s05_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s05_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_mem_intercon_to_s05_couplers_AWQOS(3 downto 0),
      S_AXI_awready(0) => axi_mem_intercon_to_s05_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s05_couplers_AWSIZE(2 downto 0),
      S_AXI_awuser(0) => axi_mem_intercon_to_s05_couplers_AWUSER(0),
      S_AXI_awvalid(0) => axi_mem_intercon_to_s05_couplers_AWVALID(0),
      S_AXI_bid(3 downto 0) => axi_mem_intercon_to_s05_couplers_BID(3 downto 0),
      S_AXI_bready(0) => axi_mem_intercon_to_s05_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s05_couplers_BRESP(1 downto 0),
      S_AXI_buser(0) => axi_mem_intercon_to_s05_couplers_BUSER(0),
      S_AXI_bvalid(0) => axi_mem_intercon_to_s05_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s05_couplers_RDATA(31 downto 0),
      S_AXI_rid(3 downto 0) => axi_mem_intercon_to_s05_couplers_RID(3 downto 0),
      S_AXI_rlast(0) => axi_mem_intercon_to_s05_couplers_RLAST(0),
      S_AXI_rready(0) => axi_mem_intercon_to_s05_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s05_couplers_RRESP(1 downto 0),
      S_AXI_ruser(0) => axi_mem_intercon_to_s05_couplers_RUSER(0),
      S_AXI_rvalid(0) => axi_mem_intercon_to_s05_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s05_couplers_WDATA(31 downto 0),
      S_AXI_wlast(0) => axi_mem_intercon_to_s05_couplers_WLAST(0),
      S_AXI_wready(0) => axi_mem_intercon_to_s05_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s05_couplers_WSTRB(3 downto 0),
      S_AXI_wuser(0) => axi_mem_intercon_to_s05_couplers_WUSER(0),
      S_AXI_wvalid(0) => axi_mem_intercon_to_s05_couplers_WVALID(0)
    );
xbar: component final_accelerator_xbar_1
     port map (
      aclk => axi_mem_intercon_ACLK_net,
      aresetn => axi_mem_intercon_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(3 downto 0) => xbar_to_m00_couplers_ARID(3 downto 0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_aruser(0) => xbar_to_m00_couplers_ARUSER(0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(3 downto 0) => xbar_to_m00_couplers_AWID(3 downto 0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awuser(0) => xbar_to_m00_couplers_AWUSER(0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(3 downto 0) => xbar_to_m00_couplers_BID(3 downto 0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_buser(0) => xbar_to_m00_couplers_BUSER(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(3 downto 0) => xbar_to_m00_couplers_RID(3 downto 0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_ruser(0) => xbar_to_m00_couplers_RUSER(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wuser(0) => xbar_to_m00_couplers_WUSER(0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(191 downto 160) => s05_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(159 downto 128) => s04_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(127 downto 96) => s03_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(95 downto 64) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(11 downto 10) => s05_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(9 downto 8) => s04_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(7 downto 6) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(5 downto 4) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(23 downto 20) => s05_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(19 downto 16) => s04_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(15 downto 12) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(11 downto 8) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(23 downto 21) => B"000",
      s_axi_arid(20) => s05_couplers_to_xbar_ARID(0),
      s_axi_arid(19 downto 17) => B"000",
      s_axi_arid(16) => s04_couplers_to_xbar_ARID(0),
      s_axi_arid(15 downto 13) => B"000",
      s_axi_arid(12) => s03_couplers_to_xbar_ARID(0),
      s_axi_arid(11 downto 9) => B"000",
      s_axi_arid(8) => s02_couplers_to_xbar_ARID(0),
      s_axi_arid(7 downto 5) => B"000",
      s_axi_arid(4) => s01_couplers_to_xbar_ARID(0),
      s_axi_arid(3 downto 1) => B"000",
      s_axi_arid(0) => s00_couplers_to_xbar_ARID(0),
      s_axi_arlen(47 downto 40) => s05_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(39 downto 32) => s04_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(31 downto 24) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(23 downto 16) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(5) => s05_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(4) => s04_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(3) => s03_couplers_to_xbar_ARLOCK,
      s_axi_arlock(2) => s02_couplers_to_xbar_ARLOCK,
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(17 downto 15) => s05_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(14 downto 12) => s04_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(11 downto 9) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(8 downto 6) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(23 downto 20) => s05_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(19 downto 16) => s04_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(15 downto 12) => s03_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(11 downto 8) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(5) => s05_couplers_to_xbar_ARREADY(5),
      s_axi_arready(4) => s04_couplers_to_xbar_ARREADY(4),
      s_axi_arready(3) => s03_couplers_to_xbar_ARREADY(3),
      s_axi_arready(2) => s02_couplers_to_xbar_ARREADY(2),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(17 downto 15) => s05_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(14 downto 12) => s04_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(11 downto 9) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(8 downto 6) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_aruser(5) => s05_couplers_to_xbar_ARUSER(0),
      s_axi_aruser(4) => s04_couplers_to_xbar_ARUSER(0),
      s_axi_aruser(3) => s03_couplers_to_xbar_ARUSER(0),
      s_axi_aruser(2) => s02_couplers_to_xbar_ARUSER(0),
      s_axi_aruser(1 downto 0) => B"00",
      s_axi_arvalid(5) => s05_couplers_to_xbar_ARVALID(0),
      s_axi_arvalid(4) => s04_couplers_to_xbar_ARVALID(0),
      s_axi_arvalid(3) => s03_couplers_to_xbar_ARVALID,
      s_axi_arvalid(2) => s02_couplers_to_xbar_ARVALID,
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(191 downto 160) => s05_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(159 downto 128) => s04_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(127 downto 96) => s03_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(95 downto 64) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(11 downto 10) => s05_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(9 downto 8) => s04_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(7 downto 6) => s03_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(5 downto 4) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(23 downto 20) => s05_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(19 downto 16) => s04_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(15 downto 12) => s03_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(11 downto 8) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(23 downto 21) => B"000",
      s_axi_awid(20) => s05_couplers_to_xbar_AWID(0),
      s_axi_awid(19 downto 17) => B"000",
      s_axi_awid(16) => s04_couplers_to_xbar_AWID(0),
      s_axi_awid(15 downto 13) => B"000",
      s_axi_awid(12) => s03_couplers_to_xbar_AWID(0),
      s_axi_awid(11 downto 9) => B"000",
      s_axi_awid(8) => s02_couplers_to_xbar_AWID(0),
      s_axi_awid(7 downto 5) => B"000",
      s_axi_awid(4) => s01_couplers_to_xbar_AWID(0),
      s_axi_awid(3 downto 1) => B"000",
      s_axi_awid(0) => s00_couplers_to_xbar_AWID(0),
      s_axi_awlen(47 downto 40) => s05_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(39 downto 32) => s04_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(31 downto 24) => s03_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(23 downto 16) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(5) => s05_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(4) => s04_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(3) => s03_couplers_to_xbar_AWLOCK,
      s_axi_awlock(2) => s02_couplers_to_xbar_AWLOCK,
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(17 downto 15) => s05_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(14 downto 12) => s04_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(11 downto 9) => s03_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(8 downto 6) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(23 downto 20) => s05_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(19 downto 16) => s04_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(15 downto 12) => s03_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(11 downto 8) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(7 downto 4) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(5) => s05_couplers_to_xbar_AWREADY(5),
      s_axi_awready(4) => s04_couplers_to_xbar_AWREADY(4),
      s_axi_awready(3) => s03_couplers_to_xbar_AWREADY(3),
      s_axi_awready(2) => s02_couplers_to_xbar_AWREADY(2),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(17 downto 15) => s05_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(14 downto 12) => s04_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(11 downto 9) => s03_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(8 downto 6) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awuser(5) => s05_couplers_to_xbar_AWUSER(0),
      s_axi_awuser(4) => s04_couplers_to_xbar_AWUSER(0),
      s_axi_awuser(3) => s03_couplers_to_xbar_AWUSER(0),
      s_axi_awuser(2) => s02_couplers_to_xbar_AWUSER(0),
      s_axi_awuser(1 downto 0) => B"00",
      s_axi_awvalid(5) => s05_couplers_to_xbar_AWVALID(0),
      s_axi_awvalid(4) => s04_couplers_to_xbar_AWVALID(0),
      s_axi_awvalid(3) => s03_couplers_to_xbar_AWVALID,
      s_axi_awvalid(2) => s02_couplers_to_xbar_AWVALID,
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bid(23 downto 20) => s05_couplers_to_xbar_BID(23 downto 20),
      s_axi_bid(19 downto 16) => s04_couplers_to_xbar_BID(19 downto 16),
      s_axi_bid(15 downto 12) => s03_couplers_to_xbar_BID(15 downto 12),
      s_axi_bid(11 downto 8) => s02_couplers_to_xbar_BID(11 downto 8),
      s_axi_bid(7 downto 4) => s01_couplers_to_xbar_BID(7 downto 4),
      s_axi_bid(3 downto 0) => s00_couplers_to_xbar_BID(3 downto 0),
      s_axi_bready(5) => s05_couplers_to_xbar_BREADY(0),
      s_axi_bready(4) => s04_couplers_to_xbar_BREADY(0),
      s_axi_bready(3) => s03_couplers_to_xbar_BREADY,
      s_axi_bready(2) => s02_couplers_to_xbar_BREADY,
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY(0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(11 downto 10) => s05_couplers_to_xbar_BRESP(11 downto 10),
      s_axi_bresp(9 downto 8) => s04_couplers_to_xbar_BRESP(9 downto 8),
      s_axi_bresp(7 downto 6) => s03_couplers_to_xbar_BRESP(7 downto 6),
      s_axi_bresp(5 downto 4) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_buser(5) => s05_couplers_to_xbar_BUSER(5),
      s_axi_buser(4) => s04_couplers_to_xbar_BUSER(4),
      s_axi_buser(3 downto 0) => NLW_xbar_s_axi_buser_UNCONNECTED(3 downto 0),
      s_axi_bvalid(5) => s05_couplers_to_xbar_BVALID(5),
      s_axi_bvalid(4) => s04_couplers_to_xbar_BVALID(4),
      s_axi_bvalid(3) => s03_couplers_to_xbar_BVALID(3),
      s_axi_bvalid(2) => s02_couplers_to_xbar_BVALID(2),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(191 downto 160) => s05_couplers_to_xbar_RDATA(191 downto 160),
      s_axi_rdata(159 downto 128) => s04_couplers_to_xbar_RDATA(159 downto 128),
      s_axi_rdata(127 downto 96) => s03_couplers_to_xbar_RDATA(127 downto 96),
      s_axi_rdata(95 downto 64) => s02_couplers_to_xbar_RDATA(95 downto 64),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(23 downto 20) => s05_couplers_to_xbar_RID(23 downto 20),
      s_axi_rid(19 downto 16) => s04_couplers_to_xbar_RID(19 downto 16),
      s_axi_rid(15 downto 12) => s03_couplers_to_xbar_RID(15 downto 12),
      s_axi_rid(11 downto 8) => s02_couplers_to_xbar_RID(11 downto 8),
      s_axi_rid(7 downto 4) => s01_couplers_to_xbar_RID(7 downto 4),
      s_axi_rid(3 downto 0) => s00_couplers_to_xbar_RID(3 downto 0),
      s_axi_rlast(5) => s05_couplers_to_xbar_RLAST(5),
      s_axi_rlast(4) => s04_couplers_to_xbar_RLAST(4),
      s_axi_rlast(3) => s03_couplers_to_xbar_RLAST(3),
      s_axi_rlast(2) => s02_couplers_to_xbar_RLAST(2),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(5) => s05_couplers_to_xbar_RREADY(0),
      s_axi_rready(4) => s04_couplers_to_xbar_RREADY(0),
      s_axi_rready(3) => s03_couplers_to_xbar_RREADY,
      s_axi_rready(2) => s02_couplers_to_xbar_RREADY,
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY(0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(11 downto 10) => s05_couplers_to_xbar_RRESP(11 downto 10),
      s_axi_rresp(9 downto 8) => s04_couplers_to_xbar_RRESP(9 downto 8),
      s_axi_rresp(7 downto 6) => s03_couplers_to_xbar_RRESP(7 downto 6),
      s_axi_rresp(5 downto 4) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_ruser(5) => s05_couplers_to_xbar_RUSER(5),
      s_axi_ruser(4) => s04_couplers_to_xbar_RUSER(4),
      s_axi_ruser(3 downto 0) => NLW_xbar_s_axi_ruser_UNCONNECTED(3 downto 0),
      s_axi_rvalid(5) => s05_couplers_to_xbar_RVALID(5),
      s_axi_rvalid(4) => s04_couplers_to_xbar_RVALID(4),
      s_axi_rvalid(3) => s03_couplers_to_xbar_RVALID(3),
      s_axi_rvalid(2) => s02_couplers_to_xbar_RVALID(2),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(191 downto 160) => s05_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(159 downto 128) => s04_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(127 downto 96) => s03_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(95 downto 64) => s02_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(63 downto 32) => s01_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(5) => s05_couplers_to_xbar_WLAST(0),
      s_axi_wlast(4) => s04_couplers_to_xbar_WLAST(0),
      s_axi_wlast(3) => s03_couplers_to_xbar_WLAST,
      s_axi_wlast(2) => s02_couplers_to_xbar_WLAST,
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST(0),
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST(0),
      s_axi_wready(5) => s05_couplers_to_xbar_WREADY(5),
      s_axi_wready(4) => s04_couplers_to_xbar_WREADY(4),
      s_axi_wready(3) => s03_couplers_to_xbar_WREADY(3),
      s_axi_wready(2) => s02_couplers_to_xbar_WREADY(2),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(23 downto 20) => s05_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(19 downto 16) => s04_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(15 downto 12) => s03_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(11 downto 8) => s02_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(7 downto 4) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wuser(5) => s05_couplers_to_xbar_WUSER(0),
      s_axi_wuser(4) => s04_couplers_to_xbar_WUSER(0),
      s_axi_wuser(3) => s03_couplers_to_xbar_WUSER(0),
      s_axi_wuser(2) => s02_couplers_to_xbar_WUSER(0),
      s_axi_wuser(1 downto 0) => B"00",
      s_axi_wvalid(5) => s05_couplers_to_xbar_WVALID(0),
      s_axi_wvalid(4) => s04_couplers_to_xbar_WVALID(0),
      s_axi_wvalid(3) => s03_couplers_to_xbar_WVALID,
      s_axi_wvalid(2) => s02_couplers_to_xbar_WVALID,
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID(0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_microblaze_0_axi_periph_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC;
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end final_accelerator_microblaze_0_axi_periph_1;

architecture STRUCTURE of final_accelerator_microblaze_0_axi_periph_1 is
  component final_accelerator_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component final_accelerator_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC;
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC;
  signal M07_ACLK_1 : STD_LOGIC;
  signal M07_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m01_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m01_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m01_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m01_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m01_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m01_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m01_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m01_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m01_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m01_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m02_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m04_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_ACLK_net : STD_LOGIC;
  signal microblaze_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_microblaze_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_microblaze_0_axi_periph_AWVALID;
  M00_AXI_bready <= m00_couplers_to_microblaze_0_axi_periph_BREADY;
  M00_AXI_rready <= m00_couplers_to_microblaze_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_microblaze_0_axi_periph_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_microblaze_0_axi_periph_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_microblaze_0_axi_periph_AWVALID;
  M01_AXI_bready <= m01_couplers_to_microblaze_0_axi_periph_BREADY;
  M01_AXI_rready <= m01_couplers_to_microblaze_0_axi_periph_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_microblaze_0_axi_periph_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_microblaze_0_axi_periph_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_microblaze_0_axi_periph_AWVALID;
  M03_AXI_bready <= m03_couplers_to_microblaze_0_axi_periph_BREADY;
  M03_AXI_rready <= m03_couplers_to_microblaze_0_axi_periph_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_microblaze_0_axi_periph_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M04_AXI_arprot(2 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M04_AXI_arvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M04_AXI_awprot(2 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M04_AXI_awvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M04_AXI_bready(0) <= m04_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M04_AXI_rready(0) <= m04_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M04_AXI_wvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1 <= M05_ARESETN;
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M05_AXI_arprot(2 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M05_AXI_arvalid(0) <= m05_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M05_AXI_awprot(2 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M05_AXI_awvalid(0) <= m05_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M05_AXI_bready(0) <= m05_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M05_AXI_rready(0) <= m05_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M05_AXI_wvalid(0) <= m05_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1 <= M06_ARESETN;
  M06_AXI_araddr(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_microblaze_0_axi_periph_ARVALID;
  M06_AXI_awaddr(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_microblaze_0_axi_periph_AWVALID;
  M06_AXI_bready <= m06_couplers_to_microblaze_0_axi_periph_BREADY;
  M06_AXI_rready <= m06_couplers_to_microblaze_0_axi_periph_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_microblaze_0_axi_periph_WVALID;
  M07_ACLK_1 <= M07_ACLK;
  M07_ARESETN_1 <= M07_ARESETN;
  M07_AXI_araddr(31 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M07_AXI_arvalid <= m07_couplers_to_microblaze_0_axi_periph_ARVALID;
  M07_AXI_awaddr(31 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M07_AXI_awvalid <= m07_couplers_to_microblaze_0_axi_periph_AWVALID;
  M07_AXI_bready <= m07_couplers_to_microblaze_0_axi_periph_BREADY;
  M07_AXI_rready <= m07_couplers_to_microblaze_0_axi_periph_RREADY;
  M07_AXI_wdata(31 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M07_AXI_wvalid <= m07_couplers_to_microblaze_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready(0) <= microblaze_0_axi_periph_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= microblaze_0_axi_periph_to_s00_couplers_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= microblaze_0_axi_periph_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= microblaze_0_axi_periph_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= microblaze_0_axi_periph_to_s00_couplers_WREADY(0);
  m00_couplers_to_microblaze_0_axi_periph_ARREADY <= M00_AXI_arready;
  m00_couplers_to_microblaze_0_axi_periph_AWREADY <= M00_AXI_awready;
  m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_microblaze_0_axi_periph_WREADY <= M00_AXI_wready;
  m01_couplers_to_microblaze_0_axi_periph_ARREADY <= M01_AXI_arready;
  m01_couplers_to_microblaze_0_axi_periph_AWREADY <= M01_AXI_awready;
  m01_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_microblaze_0_axi_periph_WREADY <= M01_AXI_wready;
  m02_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M02_AXI_wready(0);
  m03_couplers_to_microblaze_0_axi_periph_ARREADY <= M03_AXI_arready;
  m03_couplers_to_microblaze_0_axi_periph_AWREADY <= M03_AXI_awready;
  m03_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_microblaze_0_axi_periph_WREADY <= M03_AXI_wready;
  m04_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M04_AXI_arready(0);
  m04_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M04_AXI_awready(0);
  m04_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M04_AXI_bvalid(0);
  m04_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M04_AXI_rvalid(0);
  m04_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M04_AXI_wready(0);
  m05_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M05_AXI_arready(0);
  m05_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M05_AXI_awready(0);
  m05_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M05_AXI_bvalid(0);
  m05_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M05_AXI_rvalid(0);
  m05_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M05_AXI_wready(0);
  m06_couplers_to_microblaze_0_axi_periph_ARREADY <= M06_AXI_arready;
  m06_couplers_to_microblaze_0_axi_periph_AWREADY <= M06_AXI_awready;
  m06_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_microblaze_0_axi_periph_WREADY <= M06_AXI_wready;
  m07_couplers_to_microblaze_0_axi_periph_ARREADY <= M07_AXI_arready;
  m07_couplers_to_microblaze_0_axi_periph_AWREADY <= M07_AXI_awready;
  m07_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_BVALID <= M07_AXI_bvalid;
  m07_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_RVALID <= M07_AXI_rvalid;
  m07_couplers_to_microblaze_0_axi_periph_WREADY <= M07_AXI_wready;
  microblaze_0_axi_periph_ACLK_net <= ACLK;
  microblaze_0_axi_periph_ARESETN_net <= ARESETN;
  microblaze_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  microblaze_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  microblaze_0_axi_periph_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  microblaze_0_axi_periph_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  microblaze_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
m00_couplers: entity work.m00_couplers_imp_W0EVCR
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m00_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m00_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m00_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m00_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m00_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_89WOL6
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m01_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m01_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m01_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m01_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m01_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1CCT9DL
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m02_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m02_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_1HHRIM0
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m03_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m03_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m03_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m03_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m03_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_50ZIPQ
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m04_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m04_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m04_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m04_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m04_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m04_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m04_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m04_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m04_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m04_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arprot(2 downto 0) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      S_AXI_arready(0) => xbar_to_m04_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awprot(2 downto 0) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      S_AXI_awready(0) => xbar_to_m04_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready(0) => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m04_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m04_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready(0) => xbar_to_m04_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid(0) => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_YKBAKF
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN => M05_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m05_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m05_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m05_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m05_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m05_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m05_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m05_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m05_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m05_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m05_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m05_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m05_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m05_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m05_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arprot(2 downto 0) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      S_AXI_arready(0) => xbar_to_m05_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awprot(2 downto 0) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      S_AXI_awready(0) => xbar_to_m05_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready(0) => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m05_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m05_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready(0) => xbar_to_m05_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid(0) => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_1LFWSN0
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN => M06_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m06_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m06_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m06_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m06_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m06_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_18TKWXP
     port map (
      M_ACLK => M07_ACLK_1,
      M_ARESETN => M07_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m07_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m07_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m07_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m07_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m07_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m07_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m07_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m07_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m07_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m07_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m07_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m07_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m07_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      S_AXI_arready => xbar_to_m07_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      S_AXI_awready => xbar_to_m07_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bready => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => xbar_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m07_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m07_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => xbar_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m07_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m07_couplers_WDATA(255 downto 224),
      S_AXI_wready => xbar_to_m07_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid => xbar_to_m07_couplers_WVALID(7)
    );
s00_couplers: entity work.s00_couplers_imp_1K3DR7P
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => microblaze_0_axi_periph_to_s00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => microblaze_0_axi_periph_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => microblaze_0_axi_periph_to_s00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => microblaze_0_axi_periph_to_s00_couplers_AWVALID(0),
      S_AXI_bready(0) => microblaze_0_axi_periph_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => microblaze_0_axi_periph_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => microblaze_0_axi_periph_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => microblaze_0_axi_periph_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => microblaze_0_axi_periph_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => microblaze_0_axi_periph_to_s00_couplers_WVALID(0)
    );
xbar: component final_accelerator_xbar_0
     port map (
      aclk => microblaze_0_axi_periph_ACLK_net,
      aresetn => microblaze_0_axi_periph_ARESETN_net,
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(23 downto 18) => NLW_xbar_m_axi_arprot_UNCONNECTED(23 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY,
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY(0),
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY(0),
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(23 downto 18) => NLW_xbar_m_axi_awprot_UNCONNECTED(23 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY,
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY(0),
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY(0),
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(15 downto 14) => xbar_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID,
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID(0),
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID(0),
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(255 downto 224) => xbar_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(15 downto 14) => xbar_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID,
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID(0),
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID(0),
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY,
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY(0),
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY(0),
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator is
  port (
    DDR3_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR3_cas_n : out STD_LOGIC;
    DDR3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ras_n : out STD_LOGIC;
    DDR3_reset_n : out STD_LOGIC;
    DDR3_we_n : out STD_LOGIC;
    conv_busy : out STD_LOGIC;
    i_reset_n : in STD_LOGIC;
    i_sys_clk : in STD_LOGIC;
    maxpool_busy : out STD_LOGIC;
    o_hsync : out STD_LOGIC;
    o_vga_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_vsync : out STD_LOGIC;
    softmax_busy : out STD_LOGIC;
    uart_rtl_rxd : in STD_LOGIC;
    uart_rtl_txd : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of final_accelerator : entity is "final_accelerator,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=final_accelerator,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=41,numReposBlks=22,numNonXlnxBlks=0,numHierBlks=19,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=23,da_board_cnt=7,da_mb_cnt=2,da_trigger_cnt=2,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of final_accelerator : entity is "final_accelerator.hwdef";
end final_accelerator;

architecture STRUCTURE of final_accelerator is
  component final_accelerator_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component final_accelerator_clk_wiz_0_0;
  component final_accelerator_Softmax_Layer_32bit_0_0 is
  port (
    o_softmax_complete : out STD_LOGIC;
    o_cycle : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_epoch : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ila_smax_exp_fsm_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_smax_exp_valid_result : out STD_LOGIC;
    ila_smax_exp_function_ready : out STD_LOGIC;
    ila_smax_exp_step_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_smax_exp_multiplication_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_smax_exp_hold_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_smax_exp_sum_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_smax_exp_multiplicand_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_exp_multiplicand_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_exp_product : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_exp_augend : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_exp_addend : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_exp_sum : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_exp_data_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_exp_mult_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_exp_fifo_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_exp_fifo_wr_en : out STD_LOGIC;
    ila_smax_exp_exp_done : out STD_LOGIC;
    ila_smax_aw_fsm_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_smax_aw_addend : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_aw_augend : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_aw_sum : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_aw_rd_en : out STD_LOGIC;
    ila_smax_aw_summing_complete : out STD_LOGIC;
    ila_smax_aw_hold_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_smax_aw_sum_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_smax_aw_sum_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_aw_sum_result_valid : out STD_LOGIC;
    ila_smax_dw_fsm_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_smax_dw_divisor : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_dw_dividend : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_dw_quotient : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_dw_rd_en : out STD_LOGIC;
    ila_smax_dw_division_complete : out STD_LOGIC;
    ila_smax_dw_hold_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_smax_dw_quotient_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_smax_dw_division_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_dw_quotient_result_valid : out STD_LOGIC;
    ila_smax_ctrlr_fsm_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_smax_ctrlr_exp_input : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_ctrlr_exp_input_valid : out STD_LOGIC;
    ila_smax_ctrlr_controller_ready : out STD_LOGIC;
    ila_smax_ctrlr_exp_fifo_select : out STD_LOGIC;
    ila_smax_ctrlr_exp_complete : out STD_LOGIC;
    ila_smax_ctrlr_element_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_smax_ctrlr_softmax_complete : out STD_LOGIC;
    ila_smax_ctrlr_clear_all : out STD_LOGIC;
    ila_smax_ctrlr_busy : out STD_LOGIC;
    ila_smax_inbuff_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_inbuff_wr_en : out STD_LOGIC;
    ila_smax_inbuff_rd_en : out STD_LOGIC;
    ila_smax_inbuff_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_inbuff_full : out STD_LOGIC;
    ila_smax_inbuff_almost_full : out STD_LOGIC;
    ila_smax_inbuff_empty : out STD_LOGIC;
    ila_smax_inbuff_almost_empty : out STD_LOGIC;
    ila_smax_inbuff_valid : out STD_LOGIC;
    ila_smax_outbuff_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_outbuff_wr_en : out STD_LOGIC;
    ila_smax_outbuff_rd_en : out STD_LOGIC;
    ila_smax_outbuff_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_outbuff_full : out STD_LOGIC;
    ila_smax_outbuff_almost_full : out STD_LOGIC;
    ila_smax_outbuff_empty : out STD_LOGIC;
    ila_smax_outbuff_almost_empty : out STD_LOGIC;
    ila_smax_outbuff_valid : out STD_LOGIC;
    ila_smax_exp_mux_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_exp_mux_wr_en : out STD_LOGIC;
    ila_smax_exp_fifo_rd_en : out STD_LOGIC;
    ila_smax_exp_fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_exp_fifo_full : out STD_LOGIC;
    ila_smax_exp_fifo_almost_full : out STD_LOGIC;
    ila_smax_exp_fifo_empty : out STD_LOGIC;
    ila_smax_exp_fifo_almost_empty : out STD_LOGIC;
    ila_smax_exp_fifo_valid : out STD_LOGIC;
    ila_smax_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_axi_awready : out STD_LOGIC;
    ila_smax_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_smax_axi_awvalid : out STD_LOGIC;
    ila_smax_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_axi_wready : out STD_LOGIC;
    ila_smax_axi_wlast : out STD_LOGIC;
    ila_smax_axi_wvalid : out STD_LOGIC;
    ila_smax_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_smax_axi_bready : out STD_LOGIC;
    ila_smax_axi_bvalid : out STD_LOGIC;
    ila_smax_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_smax_axi_arvalid : out STD_LOGIC;
    ila_smax_axi_rready : out STD_LOGIC;
    ila_smax_axi_arready : out STD_LOGIC;
    ila_smax_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_axi_rlast : out STD_LOGIC;
    ila_smax_axi_rvalid : out STD_LOGIC;
    ila_smax_wbc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_smax_rbc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_smax_num_elements : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_smax_input_data_addr_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_output_data_addr_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_row_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_smax_channel_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_smax_writes_remaining : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_smax_reads_remaining : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_smax_calculated : out STD_LOGIC;
    ila_smax_more_bursts_needed : out STD_LOGIC;
    ila_smax_data_loaded : out STD_LOGIC;
    ila_smax_class_counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_smax_master_fsm_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_awlock : out STD_LOGIC;
    m00_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_arlock : out STD_LOGIC;
    m00_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC
  );
  end component final_accelerator_Softmax_Layer_32bit_0_0;
  component final_accelerator_VGA_IF_0_0 is
  port (
    i_VGA_CLK : in STD_LOGIC;
    i_axi_master_clk : in STD_LOGIC;
    i_axi_slave_clk : in STD_LOGIC;
    i_reset_n : in STD_LOGIC;
    o_hsync : out STD_LOGIC;
    o_vsync : out STD_LOGIC;
    o_vga_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    i_start_display_irq : in STD_LOGIC;
    vga_data_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    pixel_valid_out : out STD_LOGIC;
    read_en_out : out STD_LOGIC;
    m00_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_awlock : out STD_LOGIC;
    m00_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_arlock : out STD_LOGIC;
    m00_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_init_axi_txn : in STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    s_axi_intr_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_intr_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_awvalid : in STD_LOGIC;
    s_axi_intr_awready : out STD_LOGIC;
    s_axi_intr_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_intr_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_intr_wvalid : in STD_LOGIC;
    s_axi_intr_wready : out STD_LOGIC;
    s_axi_intr_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_intr_bvalid : out STD_LOGIC;
    s_axi_intr_bready : in STD_LOGIC;
    s_axi_intr_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_intr_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_arvalid : in STD_LOGIC;
    s_axi_intr_arready : out STD_LOGIC;
    s_axi_intr_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_intr_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_intr_rvalid : out STD_LOGIC;
    s_axi_intr_rready : in STD_LOGIC;
    s_axi_intr_aclk : in STD_LOGIC;
    s_axi_intr_aresetn : in STD_LOGIC;
    irq : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component final_accelerator_VGA_IF_0_0;
  component final_accelerator_mig_7series_0_0 is
  port (
    device_temp_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sys_rst : in STD_LOGIC;
    clk_ref_i : in STD_LOGIC;
    ddr3_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_ras_n : out STD_LOGIC;
    ddr3_cas_n : out STD_LOGIC;
    ddr3_we_n : out STD_LOGIC;
    ddr3_reset_n : out STD_LOGIC;
    ddr3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ui_clk_sync_rst : out STD_LOGIC;
    ui_clk : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 28 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 28 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    mmcm_locked : out STD_LOGIC;
    sys_clk_i : in STD_LOGIC;
    init_calib_complete : out STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  end component final_accelerator_mig_7series_0_0;
  component final_accelerator_microblaze_0_xlconcat_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component final_accelerator_microblaze_0_xlconcat_0;
  component final_accelerator_microblaze_0_1 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC;
    M_AXI_IC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_AWLOCK : out STD_LOGIC;
    M_AXI_IC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWVALID : out STD_LOGIC;
    M_AXI_IC_AWREADY : in STD_LOGIC;
    M_AXI_IC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_WLAST : out STD_LOGIC;
    M_AXI_IC_WVALID : out STD_LOGIC;
    M_AXI_IC_WREADY : in STD_LOGIC;
    M_AXI_IC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_BVALID : in STD_LOGIC;
    M_AXI_IC_BREADY : out STD_LOGIC;
    M_AXI_IC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_ARLOCK : out STD_LOGIC;
    M_AXI_IC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARVALID : out STD_LOGIC;
    M_AXI_IC_ARREADY : in STD_LOGIC;
    M_AXI_IC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_RLAST : in STD_LOGIC;
    M_AXI_IC_RVALID : in STD_LOGIC;
    M_AXI_IC_RREADY : out STD_LOGIC;
    M_AXI_DC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_AWLOCK : out STD_LOGIC;
    M_AXI_DC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWVALID : out STD_LOGIC;
    M_AXI_DC_AWREADY : in STD_LOGIC;
    M_AXI_DC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_WLAST : out STD_LOGIC;
    M_AXI_DC_WVALID : out STD_LOGIC;
    M_AXI_DC_WREADY : in STD_LOGIC;
    M_AXI_DC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_BVALID : in STD_LOGIC;
    M_AXI_DC_BREADY : out STD_LOGIC;
    M_AXI_DC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_ARLOCK : out STD_LOGIC;
    M_AXI_DC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARVALID : out STD_LOGIC;
    M_AXI_DC_ARREADY : in STD_LOGIC;
    M_AXI_DC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_RLAST : in STD_LOGIC;
    M_AXI_DC_RVALID : in STD_LOGIC;
    M_AXI_DC_RREADY : out STD_LOGIC
  );
  end component final_accelerator_microblaze_0_1;
  component final_accelerator_microblaze_0_axi_intc_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component final_accelerator_microblaze_0_axi_intc_1;
  component final_accelerator_mdm_1_1 is
  port (
    Debug_SYS_Rst : out STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC
  );
  end component final_accelerator_mdm_1_1;
  component final_accelerator_rst_clk_wiz_0_100M_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component final_accelerator_rst_clk_wiz_0_100M_1;
  component final_accelerator_axi_uartlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component final_accelerator_axi_uartlite_0_0;
  component final_accelerator_xadc_wiz_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    user_temp_alarm_out : out STD_LOGIC;
    vccint_alarm_out : out STD_LOGIC;
    vccaux_alarm_out : out STD_LOGIC;
    ot_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC;
    temp_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component final_accelerator_xadc_wiz_0_0;
  component final_accelerator_rst_mig_7series_0_100M_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component final_accelerator_rst_mig_7series_0_100M_1;
  component final_accelerator_Convolution_Layer_32bit_0_0 is
  port (
    i_ext_reset_n : in STD_LOGIC;
    o_convolution_done : out STD_LOGIC;
    o_data_written : out STD_LOGIC;
    o_cycle : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_epoch : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ila_master_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_axi_awvalid : out STD_LOGIC;
    ila_master_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_axi_wlast : out STD_LOGIC;
    ila_master_axi_wvalid : out STD_LOGIC;
    ila_master_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_master_axi_bready : out STD_LOGIC;
    ila_master_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ila_master_axi_arvalid : out STD_LOGIC;
    ila_master_axi_rready : out STD_LOGIC;
    ila_master_axi_awready : out STD_LOGIC;
    ila_master_axi_wready : out STD_LOGIC;
    ila_master_axi_bvalid : out STD_LOGIC;
    ila_master_axi_arready : out STD_LOGIC;
    ila_master_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_axi_rlast : out STD_LOGIC;
    ila_master_axi_rvalid : out STD_LOGIC;
    ila_master_wbc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_rbc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_input_data_addr_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_output_data_addr_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_weights_addr_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_bias_addr_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_prev_addr_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_input_addr_counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_output_addr_counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_weights_addr_counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_bias_addr_counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_prev_addr_counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_row_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_out_volume_row_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_input_volume_row_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_channel_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_prev_channel_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_output_channel_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_input_channel_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_writes_remaining : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_reads_remaining : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_calculated : out STD_LOGIC;
    ila_master_column_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_more_bursts_needed : out STD_LOGIC;
    ila_master_iteration_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_channel_loop_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_row_loop_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_busy : out STD_LOGIC;
    ila_master_stride_counter : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_master_filter_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_bias_values_loaded : out STD_LOGIC;
    ila_master_channels_allowed : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_operation_complete : out STD_LOGIC;
    ila_master_weight_index : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_input_index : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_output_index : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_prev_index : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_last_channel_base : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_out_last_channel_base : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_prev_last_channel_base : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_data_written : out STD_LOGIC;
    ila_master_output_base_pixel : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_input_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ila_master_debug_mode : out STD_LOGIC;
    ila_master_affine_filter_iteration_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_convolution_done : out STD_LOGIC;
    ila_master_fsm_state : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ila_acc_fifo_almost_empty : out STD_LOGIC;
    ila_acc_fifo_almost_full : out STD_LOGIC;
    ila_acc_fifo_empty : out STD_LOGIC;
    ila_acc_fifo_full : out STD_LOGIC;
    ila_acc_fifo_rd_en : out STD_LOGIC;
    ila_acc_fifo_valid : out STD_LOGIC;
    ila_acc_fifo_wr_en : out STD_LOGIC;
    ila_accu_fifo_input : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_acc_fifo_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_acc_fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_12 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_14 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_15 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_16 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_17 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_18 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_19 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_21 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_22 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_23 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_24 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_25 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_26 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_27 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_28 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_29 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_30 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_31 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_din_32 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_volume_fifo_almost_empty : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_fifo_almost_full : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_fifo_empty : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_fifo_full : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_fifo_rd_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_fifo_valid : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_fifo_wr_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_fifo_din_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_12 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_14 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_15 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_16 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_17 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_18 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_19 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_21 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_22 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_23 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_24 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_25 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_26 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_27 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_28 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_29 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_30 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_31 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_din_32 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_fifo_almost_full : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_fifo_full : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_fifo_wr_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_fifo_empty : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_fifo_rd_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_fifo_valid : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_fifo_almost_empty : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_rst : out STD_LOGIC;
    ila_volume_mux_prev_data_wr_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_mux_new_data_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_mux_prev_data_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_mux_recycled_data_wr_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_mux_recycled_data_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_stack_fifo_wr_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_stack_fifo_almost_full : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_stack_fifo_full : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_get_volume_row : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_router_disable_channel_n : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_router_convolution_en : out STD_LOGIC;
    ila_router_affine_en : out STD_LOGIC;
    ila_router_acc_ready : out STD_LOGIC;
    ila_router_filter_kernal_loaded : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_router_conv_complete : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_router_affine_complete : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_router_volume_ready : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_router_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_volume_router_ready : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_router_padded_volume_size : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_volume_router_empty_done : out STD_LOGIC;
    ila_weight_router_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_volume_router_stop_stack_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_router_calc_params : out STD_LOGIC;
    ila_volume_router_data_return_wr_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_router_data_valid : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_router_loaded_rows_processed : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_router_snake_fill_complete : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_router_empty_data_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_router_empty_data_complete : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_volume_router_element_counter : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ila_volume_router_filter_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_volume_router_column_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_volume_router_delay_shift_register : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_volume_router_pad_16bit : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_weight_router_ready : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_router_filter_data_return_wr_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_router_clear_weights : out STD_LOGIC;
    ila_weight_router_data_valid : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_router_filter_element_counter : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_weight_router_delay_shift_register : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_weight_mux_recycle_filter_data_wr_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_prev_weight_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_weight_mux_new_data_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_mux_prev_data_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_mux_recycled_data_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_mux_almost_full : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_mux_full : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_mux_wr_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_weight_mux_prev_data_wr_en : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_get_weight_row : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_bias_fifo_almost_empty : out STD_LOGIC;
    ila_bias_fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_bias_fifo_empty : out STD_LOGIC;
    ila_bias_fifo_full : out STD_LOGIC;
    ila_bias_fifo_almost_full : out STD_LOGIC;
    ila_bias_fifo_rd_en : out STD_LOGIC;
    ila_bias_fifo_valid : out STD_LOGIC;
    ila_bias_fifo_data_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_bias_fifo_data_return_en : out STD_LOGIC;
    ila_bias_fifo_return_wr_en : out STD_LOGIC;
    ila_bias_fifo_din_mux : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_bias_fifo_wr_en_mux : out STD_LOGIC;
    ila_prev_fifo_almost_empty : out STD_LOGIC;
    ila_prev_fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_prev_fifo_empty : out STD_LOGIC;
    ila_prev_fifo_rd_en : out STD_LOGIC;
    ila_prev_fifo_valid : out STD_LOGIC;
    ila_reset : out STD_LOGIC;
    ila_reset_weight_fifo_n : out STD_LOGIC;
    ila_accumulator_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_accumulator_products_array_valid : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_accumulator_kernel_element_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_accumulator_delay_shift_register : out STD_LOGIC_VECTOR ( 77 downto 0 );
    ila_accumulator_kernel_delay_shift_register : out STD_LOGIC_VECTOR ( 50 downto 0 );
    ila_accumulator_acc_ready : out STD_LOGIC;
    ila_accumulator_acc_complete : out STD_LOGIC;
    ila_accumulator_acc_valid : out STD_LOGIC;
    ila_accumulator_acc_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_accumulator_column_counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_accumulator_filter_counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_accumulator_kernel_flag : out STD_LOGIC;
    ila_accumulator_que_acc_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_accumulator_que_acc_valid : out STD_LOGIC;
    ila_accumulator_que_fifo_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_accumulator_que_fifo_wr_en : out STD_LOGIC;
    ila_accumulator_que_fifo_rd_en : out STD_LOGIC;
    ila_accumulator_que_fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_accumulator_que_fifo_full : out STD_LOGIC;
    ila_accumulator_que_fifo_almost_full : out STD_LOGIC;
    ila_accumulator_que_fifo_empty : out STD_LOGIC;
    ila_accumulator_que_fifo_almost_empty : out STD_LOGIC;
    ila_accumulator_que_fifo_valid : out STD_LOGIC;
    ila_accumulator_channels_allowed_counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_accumulator_filter_size_counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_accumulator_channels_filt_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_acc_relay_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_acc_relay_complete : out STD_LOGIC;
    ila_acc_relay_volume_processed : out STD_LOGIC;
    ila_acc_relay_iteration_complete : out STD_LOGIC;
    ila_acc_relay_filter_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_acc_relay_output_pixel_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_acc_relay_volume_row_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_acc_relay_adder_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_acc_relay_addend : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_acc_relay_augend : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_acc_relay_sum_result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_acc_relay_first_channel_set_complete : out STD_LOGIC;
    ila_acc_relay_volume_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_acc_relay_bias_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_acc_relay_prev_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_acc_relay_iteration_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_acc_relay_bias_read : out STD_LOGIC;
    ila_acc_relay_prev_read : out STD_LOGIC;
    ila_acc_relay_filter_iteration_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_acc_relay_affine_en : out STD_LOGIC;
    ila_controller_state : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ila_controller_filter_iterations_required : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_filters_in_set : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_accumulator_en : out STD_LOGIC;
    ila_controller_fifo_clear : out STD_LOGIC;
    ila_controller_fifo_reset : out STD_LOGIC;
    ila_controller_channels_allowed : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_controller_more_dsps_needed : out STD_LOGIC;
    ila_controller_operation_complete : out STD_LOGIC;
    ila_controller_num_iterations : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_controller_all_channels_processed : out STD_LOGIC;
    ila_controller_input_volume_row_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_volume_channel_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_weight_channel_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_filter_row_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_filter_column_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_filter_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_volume_row_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_volume_column_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_volume_index_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_weight_index_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_padded_volume_row_size : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_padded_volume_column_size : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_volume_rows_processed : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_element_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_pad_counter : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_controller_channels_processed : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_pad_8bit : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_controller_pad_10bit : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ila_controller_pad_16bit : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_input_volume_size_10bit : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ila_controller_volume_row : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_iteration_calc : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_iteration_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_filter_iteration_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_channel_iteration_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_stride_counter : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_controller_pad_row_counter : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_controller_filter_iteration_complete : out STD_LOGIC;
    ila_controller_channel_iteration_complete : out STD_LOGIC;
    ila_controller_fifo_clear_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_controller_channel_iteration_calc : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_channel_iterations_required : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_filter_iteration_calc : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_channel_mask : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_controller_weight_filter_size : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_input_volume_size : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_input_volume_channels : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_weight_filter_channels : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_number_of_filters : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_channels_in_set : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_controller_stride_index : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_controller_empty_data_complete : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_inbuff_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_inbuff_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_inbuff_almost_empty : out STD_LOGIC;
    ila_inbuff_almost_full : out STD_LOGIC;
    ila_inbuff_empty : out STD_LOGIC;
    ila_inbuff_full : out STD_LOGIC;
    ila_inbuff_rd_en : out STD_LOGIC;
    ila_inbuff_valid : out STD_LOGIC;
    ila_outbuff_almost_empty : out STD_LOGIC;
    ila_outbuff_almost_full : out STD_LOGIC;
    ila_outbuff_empty : out STD_LOGIC;
    ila_outbuff_full : out STD_LOGIC;
    ila_outbuff_valid : out STD_LOGIC;
    ila_outbuff_wr_en : out STD_LOGIC;
    ila_outbuff_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_outbuff_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_12 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_14 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_15 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_16 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_17 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_18 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_19 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_21 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_22 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_23 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_24 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_25 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_26 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_27 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_28 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_29 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_30 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_31 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_a_32 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_12 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_14 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_15 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_16 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_17 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_18 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_19 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_21 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_22 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_23 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_24 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_25 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_26 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_27 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_28 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_29 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_30 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_31 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_multiplier_mult_b_32 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_12 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_14 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_15 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_16 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_17 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_18 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_19 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_21 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_22 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_23 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_24 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_25 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_26 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_27 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_28 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_29 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_30 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_31 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_products_array_32 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_12 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_14 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_result_15 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_result_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_result_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_result_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_result_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_result_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_result_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_result_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_result_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_3_result_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_3_result_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_3_result_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_3_result_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_4_result_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_4_result_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_5_result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_6_result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_12 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_14 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_1_reg_15 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_reg_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_reg_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_reg_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_reg_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_reg_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_reg_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_reg_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_2_reg_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_3_reg_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_3_reg_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_3_reg_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_3_reg_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_4_reg_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_4_reg_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_5_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_layer_6_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_values_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_values_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_values_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_values_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_values_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_values_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_values_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_values_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_values_8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_values_9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_values_10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_1_result_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_1_result_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_1_result_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_1_result_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_1_result_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_1_result_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_2_result_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_2_result_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_2_result_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_3_result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_1_reg_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_1_reg_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_1_reg_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_1_reg_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_1_reg_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_1_reg_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_2_reg_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_2_reg_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_2_reg_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_layer_3_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_addend_shift_register_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_addend_shift_register_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_addend_shift_register_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_addend_shift_register_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_addend_shift_register_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_addend_shift_register_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_addend_shift_register_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_addend_shift_register_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_addend_shift_register_8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_addend_shift_register_9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_kernel_addend_shift_register_10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_affine_select : out STD_LOGIC;
    ila_master_relu_en : out STD_LOGIC;
    ila_master_weights_loaded : out STD_LOGIC;
    ila_master_conv_complete : out STD_LOGIC;
    ila_master_more_dsps : out STD_LOGIC;
    ila_master_iteration_complete : out STD_LOGIC;
    ila_master_volume_complete : out STD_LOGIC;
    ila_master_dsps_used : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_iterations_required : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_row_complete : out STD_LOGIC;
    ila_master_layer_ready : out STD_LOGIC;
    ila_master_filter_iterations_required : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_acc_row_complete : out STD_LOGIC;
    ila_master_input_volume_height : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_input_volume_width : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_input_volume_channels : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_output_volume_height : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_output_volume_width : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_output_volume_channels : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ila_master_weight_filter_height : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_master_weight_filter_width : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_master_weight_filter_channels : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_number_of_filters : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_stride : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_master_pad : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_master_bias_length : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_ch_al_filt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_affine_channels_in_set : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_affine_filters_in_set : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_channels_iterations : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_affine_filters_iterations : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_start : out STD_LOGIC;
    m00_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_awlock : out STD_LOGIC;
    m00_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_arlock : out STD_LOGIC;
    m00_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component final_accelerator_Convolution_Layer_32bit_0_0;
  component final_accelerator_Maxpool_Layer_32bit_0_0 is
  port (
    o_pooling_complete : out STD_LOGIC;
    o_cycle : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_epoch : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ila_row_cntrl_PR0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_PR0_wr_en : out STD_LOGIC;
    ila_row_cntrl_PR0_rd_en : out STD_LOGIC;
    ila_row_cntrl_PR1_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_PR1_wr_en : out STD_LOGIC;
    ila_row_cntrl_PR1_rd_en : out STD_LOGIC;
    ila_row_cntrl_PR2_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_PR2_wr_en : out STD_LOGIC;
    ila_row_cntrl_PR2_rd_en : out STD_LOGIC;
    ila_row_cntrl_third_row_activate : out STD_LOGIC;
    ila_row_cntrl_recycle_en : out STD_LOGIC;
    ila_row_cntrl_prime_PR0_en : out STD_LOGIC;
    ila_row_cntrl_prime_PR1_en : out STD_LOGIC;
    ila_row_cntrl_prime_PR2_en : out STD_LOGIC;
    ila_row_cntrl_pixel_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_row_cntrl_column_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_row_cntrl_row_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_row_cntrl_sorter_data_valid : out STD_LOGIC;
    ila_row_cntrl_stride_counter : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_row_cntrl_inbuff_rd_en : out STD_LOGIC;
    ila_row_cntrl_volume_processed : out STD_LOGIC;
    ila_row_cntrl_volume_rows_processed : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_row_cntrl_output_rows_generated : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_row_cntrl_output_volume_size : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_row_cntrl_channel_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_row_cntrl_channel_complete : out STD_LOGIC;
    ila_row_cntrl_row_complete : out STD_LOGIC;
    ila_row_cntrl_busy : out STD_LOGIC;
    ila_row_cntrl_fsm_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_row_cntrl_kernel_data_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_kernel_data_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_kernel_data_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_kernel_data_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_kernel_data_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_kernel_data_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_kernel_data_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_kernel_data_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_kernel_data_8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_kernel_data_9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_sorter_data_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_sorter_data_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_sorter_data_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_sorter_data_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_sorter_data_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_sorter_data_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_sorter_data_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_sorter_data_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_sorter_data_8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_row_cntrl_sorter_data_9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_PR0_full : out STD_LOGIC;
    ila_PR0_almost_full : out STD_LOGIC;
    ila_PR0_empty : out STD_LOGIC;
    ila_PR0_almost_empty : out STD_LOGIC;
    ila_PR1_full : out STD_LOGIC;
    ila_PR1_almost_full : out STD_LOGIC;
    ila_PR1_empty : out STD_LOGIC;
    ila_PR1_almost_empty : out STD_LOGIC;
    ila_PR2_full : out STD_LOGIC;
    ila_PR2_almost_full : out STD_LOGIC;
    ila_PR2_empty : out STD_LOGIC;
    ila_PR2_almost_empty : out STD_LOGIC;
    ila_inbuff_wr_en : out STD_LOGIC;
    ila_inbuff_empty : out STD_LOGIC;
    ila_inbuff_almost_empty : out STD_LOGIC;
    ila_inbuff_full : out STD_LOGIC;
    ila_inbuff_almost_full : out STD_LOGIC;
    ila_inbuff_valid : out STD_LOGIC;
    ila_inbuff_rd_en : out STD_LOGIC;
    ila_outbuff_rd_en : out STD_LOGIC;
    ila_outbuff_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_outbuff_empty : out STD_LOGIC;
    ila_outbuff_almost_empty : out STD_LOGIC;
    ila_outbuff_full : out STD_LOGIC;
    ila_outbuff_almost_full : out STD_LOGIC;
    ila_outbuff_valid : out STD_LOGIC;
    ila_heap_sorter_ready : out STD_LOGIC;
    ila_heap_sorter_fsm_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_heap_sorter_position1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_position2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_position3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_position4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_position5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_position6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_position7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_position8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_position9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_done : out STD_LOGIC;
    ila_heap_sorter_sorted_data_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_sorted_data_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_sorted_data_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_sorted_data_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_sorted_data_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_sorted_data_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_sorted_data_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_sorted_data_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_sorted_data_8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_sorted_data_9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_heap_sorter_sorter_ready : out STD_LOGIC;
    ila_master_fsm_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_master_axi_awready : out STD_LOGIC;
    ila_master_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ila_master_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_axi_awvalid : out STD_LOGIC;
    ila_master_axi_wready : out STD_LOGIC;
    ila_master_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_axi_wlast : out STD_LOGIC;
    ila_master_axi_wvalid : out STD_LOGIC;
    ila_master_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_master_axi_bvalid : out STD_LOGIC;
    ila_master_axi_bready : out STD_LOGIC;
    ila_master_axi_wbc : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ila_master_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ila_master_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_axi_arvalid : out STD_LOGIC;
    ila_master_axi_rready : out STD_LOGIC;
    ila_master_axi_arready : out STD_LOGIC;
    ila_master_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_axi_rlast : out STD_LOGIC;
    ila_master_axi_rvalid : out STD_LOGIC;
    ila_master_axi_rbc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_outbuff_rd_en : out STD_LOGIC;
    ila_master_inbuff_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_inbuff_wr_en : out STD_LOGIC;
    ila_master_input_volume_size : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_input_volume_channels : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_output_volume_size : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_output_volume_channels : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_pool_kernel_size : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_master_stride : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ila_master_input_data_addr_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_output_data_addr_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_row_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_channel_counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_writes_remaining : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_master_calculated : out STD_LOGIC;
    ila_master_more_bursts_needed : out STD_LOGIC;
    ila_master_channel_complete_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_complete_shift_reg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ila_master_data_valid : out STD_LOGIC;
    ila_master_operating_length : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ila_master_input_index : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_input_addr_counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_master_stride_counter : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_addr1_multiple : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_addr2_multiple : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_master_start : out STD_LOGIC;
    ila_master_start_reg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ila_master_first_calculated : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_awlock : out STD_LOGIC;
    m00_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_arlock : out STD_LOGIC;
    m00_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC
  );
  end component final_accelerator_Maxpool_Layer_32bit_0_0;
  signal Convolution_Layer_32bit_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_ARLOCK : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_ARREADY : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_ARVALID : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_AWLOCK : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_AWREADY : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_AWVALID : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_BREADY : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_BVALID : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_RLAST : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_RREADY : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_RVALID : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_WLAST : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_WREADY : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_WVALID : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_busy : STD_LOGIC;
  signal Convolution_Layer_32bit_0_o_convolution_done : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_ARLOCK : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_ARREADY : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_ARVALID : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_AWLOCK : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_AWREADY : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_AWVALID : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_BREADY : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_BVALID : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_RLAST : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_M00_AXI_RREADY : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_RVALID : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_WLAST : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_M00_AXI_WREADY : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Maxpool_Layer_32bit_0_M00_AXI_WVALID : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_ila_row_cntrl_busy : STD_LOGIC;
  signal Maxpool_Layer_32bit_0_o_pooling_complete : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARLOCK : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARVALID : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWLOCK : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWVALID : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_BREADY : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_BUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_RREADY : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_RUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_WLAST : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_WVALID : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_ctrlr_busy : STD_LOGIC;
  signal Softmax_Layer_32bit_0_o_softmax_complete : STD_LOGIC;
  signal VGA_IF_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal VGA_IF_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal VGA_IF_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_IF_0_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_IF_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal VGA_IF_0_M00_AXI_ARLOCK : STD_LOGIC;
  signal VGA_IF_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal VGA_IF_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_IF_0_M00_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_IF_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal VGA_IF_0_M00_AXI_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_IF_0_M00_AXI_ARVALID : STD_LOGIC;
  signal VGA_IF_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal VGA_IF_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal VGA_IF_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_IF_0_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_IF_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal VGA_IF_0_M00_AXI_AWLOCK : STD_LOGIC;
  signal VGA_IF_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal VGA_IF_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_IF_0_M00_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_IF_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal VGA_IF_0_M00_AXI_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_IF_0_M00_AXI_AWVALID : STD_LOGIC;
  signal VGA_IF_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_IF_0_M00_AXI_BREADY : STD_LOGIC;
  signal VGA_IF_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal VGA_IF_0_M00_AXI_BUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_IF_0_M00_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_IF_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal VGA_IF_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_IF_0_M00_AXI_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_IF_0_M00_AXI_RREADY : STD_LOGIC;
  signal VGA_IF_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal VGA_IF_0_M00_AXI_RUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_IF_0_M00_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_IF_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal VGA_IF_0_M00_AXI_WLAST : STD_LOGIC;
  signal VGA_IF_0_M00_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_IF_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_IF_0_M00_AXI_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_IF_0_M00_AXI_WVALID : STD_LOGIC;
  signal VGA_IF_0_o_hsync : STD_LOGIC;
  signal VGA_IF_0_o_vga_data : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal VGA_IF_0_o_vsync : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_BREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_BVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_RLAST : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_RVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_WLAST : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_WVALID : STD_LOGIC;
  signal axi_uartlite_0_UART_RxD : STD_LOGIC;
  signal axi_uartlite_0_UART_TxD : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal clk_wiz_0_clk_out3 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal clock_rtl_1 : STD_LOGIC;
  signal mdm_1_debug_sys_rst : STD_LOGIC;
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_DC_ARLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_ARVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_DC_AWLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_AWVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_BREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_WLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_WVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_IC_ARLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_ARVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_IC_AWLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_AWVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_BREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_WLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_WVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_dp_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_dp_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_BREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_dp_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_RREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_dp_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_dp_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_debug_CAPTURE : STD_LOGIC;
  signal microblaze_0_debug_CLK : STD_LOGIC;
  signal microblaze_0_debug_DISABLE : STD_LOGIC;
  signal microblaze_0_debug_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal microblaze_0_debug_RST : STD_LOGIC;
  signal microblaze_0_debug_SHIFT : STD_LOGIC;
  signal microblaze_0_debug_TDI : STD_LOGIC;
  signal microblaze_0_debug_TDO : STD_LOGIC;
  signal microblaze_0_debug_UPDATE : STD_LOGIC;
  signal microblaze_0_dlmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_1_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_1_CE : STD_LOGIC;
  signal microblaze_0_dlmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_1_READY : STD_LOGIC;
  signal microblaze_0_dlmb_1_UE : STD_LOGIC;
  signal microblaze_0_dlmb_1_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_1_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_CE : STD_LOGIC;
  signal microblaze_0_ilmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_1_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_READY : STD_LOGIC;
  signal microblaze_0_ilmb_1_UE : STD_LOGIC;
  signal microblaze_0_ilmb_1_WAIT : STD_LOGIC;
  signal microblaze_0_intc_axi_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_ARREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_ARVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_AWREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_AWVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_BREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intc_axi_BVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_RREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intc_axi_RVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_WREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_intc_axi_WVALID : STD_LOGIC;
  signal microblaze_0_interrupt_ACK : STD_LOGIC_VECTOR ( 0 to 1 );
  signal microblaze_0_interrupt_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_interrupt_INTERRUPT : STD_LOGIC;
  signal microblaze_0_intr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mig_7series_0_DDR3_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal mig_7series_0_DDR3_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mig_7series_0_DDR3_CAS_N : STD_LOGIC;
  signal mig_7series_0_DDR3_CKE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_CK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_CK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_DM : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mig_7series_0_DDR3_DQ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mig_7series_0_DDR3_DQS_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mig_7series_0_DDR3_DQS_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mig_7series_0_DDR3_ODT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR3_RAS_N : STD_LOGIC;
  signal mig_7series_0_DDR3_RESET_N : STD_LOGIC;
  signal mig_7series_0_DDR3_WE_N : STD_LOGIC;
  signal mig_7series_0_init_calib_complete : STD_LOGIC;
  signal mig_7series_0_mmcm_locked : STD_LOGIC;
  signal mig_7series_0_ui_clk : STD_LOGIC;
  signal mig_7series_0_ui_clk_sync_rst : STD_LOGIC;
  signal reset_rtl_1 : STD_LOGIC;
  signal rst_clk_wiz_0_100M_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_0_100M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_0_100M_mb_reset : STD_LOGIC;
  signal rst_clk_wiz_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xadc_wiz_0_temp_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_fifo_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_fifo_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_fifo_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_fifo_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_fifo_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_fifo_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_fifo_wr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_affine_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_bias_read_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_first_channel_set_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_iteration_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_prev_read_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_volume_processed_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_acc_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_acc_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_acc_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_kernel_flag_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_que_acc_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_wr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_bias_fifo_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_bias_fifo_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_bias_fifo_data_return_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_bias_fifo_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_bias_fifo_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_bias_fifo_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_bias_fifo_return_wr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_bias_fifo_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_bias_fifo_wr_en_mux_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_controller_accumulator_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_controller_all_channels_processed_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_controller_channel_iteration_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_controller_fifo_clear_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_controller_fifo_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_controller_filter_iteration_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_controller_more_dsps_needed_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_controller_operation_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_inbuff_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_inbuff_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_inbuff_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_inbuff_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_inbuff_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_inbuff_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_acc_row_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_affine_select_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_bias_values_loaded_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_calculated_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_conv_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_convolution_done_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_data_written_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_debug_mode_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_iteration_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_layer_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_more_bursts_needed_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_more_dsps_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_operation_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_relu_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_row_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_start_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_volume_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_master_weights_loaded_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_outbuff_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_outbuff_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_outbuff_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_outbuff_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_outbuff_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_outbuff_wr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_prev_fifo_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_prev_fifo_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_prev_fifo_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_prev_fifo_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_reset_weight_fifo_n_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_router_acc_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_router_affine_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_router_convolution_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_calc_params_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_empty_done_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_weight_router_clear_weights_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_weight_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_m00_axi_error_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_m00_axi_txn_done_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_o_data_written_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_fifo_din_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_fifo_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_addend_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_adder_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_augend_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_bias_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_filter_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_filter_iteration_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_iteration_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_output_pixel_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_prev_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_state_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_sum_result_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_volume_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_relay_volume_row_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accu_fifo_input_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_acc_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_channels_allowed_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_channels_filt_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_column_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_delay_shift_register_UNCONNECTED : STD_LOGIC_VECTOR ( 77 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_filter_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_filter_size_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_kernel_delay_shift_register_UNCONNECTED : STD_LOGIC_VECTOR ( 50 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_kernel_element_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_products_array_valid_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_que_acc_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_din_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_state_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_bias_fifo_data_return_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_bias_fifo_din_mux_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_bias_fifo_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_channel_iteration_calc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_channel_iteration_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_channel_iterations_required_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_channel_mask_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_channels_allowed_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_channels_in_set_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_channels_processed_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_element_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_empty_data_complete_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_fifo_clear_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_filter_column_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_filter_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_filter_iteration_calc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_filter_iteration_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_filter_iterations_required_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_filter_row_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_filters_in_set_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_input_volume_channels_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_input_volume_row_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_input_volume_size_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_input_volume_size_10bit_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_iteration_calc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_iteration_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_num_iterations_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_number_of_filters_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_pad_10bit_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_pad_16bit_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_pad_8bit_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_pad_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_pad_row_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_padded_volume_column_size_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_padded_volume_row_size_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_state_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_stride_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_stride_index_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_volume_channel_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_volume_column_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_volume_index_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_volume_row_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_volume_row_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_volume_rows_processed_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_weight_channel_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_weight_filter_channels_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_weight_filter_size_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_weight_index_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_get_volume_row_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_get_weight_row_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_inbuff_din_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_inbuff_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_10_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_reg_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_reg_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_reg_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_reg_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_reg_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_reg_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_reg_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_reg_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_reg_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_result_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_result_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_result_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_3_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_3_result_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_values_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_values_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_values_10_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_values_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_values_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_values_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_values_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_values_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_values_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_values_8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_values_9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_10_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_11_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_12_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_13_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_14_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_15_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_10_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_11_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_12_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_13_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_14_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_15_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_1_result_9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_result_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_result_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_result_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_result_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_result_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_result_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_result_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_2_result_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_3_reg_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_3_reg_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_3_reg_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_3_reg_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_3_result_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_3_result_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_3_result_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_3_result_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_4_reg_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_4_reg_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_4_result_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_4_result_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_5_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_5_result_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_6_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_6_result_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_affine_channels_in_set_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_affine_filter_iteration_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_affine_filters_in_set_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_affine_filters_iterations_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_bias_addr_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_bias_addr_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_bias_length_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_ch_al_filt_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_channel_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_channel_loop_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_channels_allowed_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_channels_iterations_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_column_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_dsps_used_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_filter_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_filter_iterations_required_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_fsm_state_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_input_addr_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_input_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_input_channel_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_input_data_addr_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_input_index_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_input_volume_channels_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_input_volume_height_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_input_volume_row_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_input_volume_width_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_iteration_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_iterations_required_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_last_channel_base_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_number_of_filters_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_out_last_channel_base_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_out_volume_row_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_output_addr_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_output_base_pixel_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_output_channel_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_output_data_addr_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_output_index_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_output_volume_channels_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_output_volume_height_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_output_volume_width_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_pad_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_prev_addr_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_prev_addr_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_prev_channel_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_prev_index_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_prev_last_channel_base_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_rbc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_reads_remaining_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_row_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_row_loop_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_stride_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_stride_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_wbc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_weight_filter_channels_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_weight_filter_height_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_weight_filter_width_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_weight_index_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_weights_addr_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_weights_addr_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_master_writes_remaining_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_10_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_11_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_12_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_13_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_14_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_15_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_16_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_17_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_18_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_19_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_20_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_21_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_22_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_23_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_24_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_25_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_26_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_27_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_28_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_29_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_30_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_31_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_32_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_10_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_11_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_12_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_13_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_14_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_15_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_16_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_17_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_18_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_19_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_20_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_21_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_22_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_23_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_24_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_25_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_26_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_27_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_28_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_29_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_30_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_31_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_32_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_outbuff_din_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_outbuff_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_prev_fifo_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_prev_weight_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_10_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_11_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_12_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_13_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_14_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_15_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_16_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_17_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_18_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_19_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_20_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_21_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_22_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_23_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_24_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_25_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_26_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_27_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_28_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_29_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_30_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_31_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_32_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_router_affine_complete_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_router_conv_complete_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_router_disable_channel_n_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_router_filter_kernal_loaded_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_router_volume_ready_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_almost_empty_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_almost_full_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_10_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_11_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_12_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_13_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_14_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_15_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_16_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_17_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_18_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_19_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_20_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_21_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_22_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_23_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_24_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_25_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_26_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_27_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_28_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_29_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_30_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_31_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_32_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_empty_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_full_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_rd_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_valid_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_wr_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_mux_new_data_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_mux_prev_data_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_mux_prev_data_wr_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_mux_recycled_data_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_mux_recycled_data_wr_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_column_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_data_return_wr_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_data_valid_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_delay_shift_register_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_element_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_empty_data_complete_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_empty_data_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_filter_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_loaded_rows_processed_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_pad_16bit_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_padded_volume_size_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_ready_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_snake_fill_complete_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_state_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_router_stop_stack_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_stack_fifo_almost_full_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_stack_fifo_full_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_stack_fifo_wr_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_almost_empty_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_almost_full_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_10_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_11_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_12_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_13_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_14_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_15_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_16_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_17_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_18_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_19_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_20_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_21_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_22_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_23_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_24_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_25_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_26_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_27_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_28_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_29_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_30_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_31_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_32_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_empty_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_full_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_rd_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_valid_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_wr_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_mux_almost_full_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_mux_full_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_mux_new_data_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_mux_prev_data_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_mux_prev_data_wr_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_mux_recycle_filter_data_wr_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_mux_recycled_data_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_mux_wr_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_router_data_valid_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_router_delay_shift_register_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_router_filter_data_return_wr_en_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_router_filter_element_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_router_ready_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_router_state_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_o_cycle_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_o_epoch_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_PR0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_PR0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_PR0_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_PR0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_PR1_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_PR1_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_PR1_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_PR1_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_PR2_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_PR2_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_PR2_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_PR2_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_done_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorter_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_inbuff_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_inbuff_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_inbuff_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_inbuff_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_inbuff_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_inbuff_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_inbuff_wr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_calculated_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_data_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_first_calculated_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_inbuff_wr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_more_bursts_needed_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_outbuff_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_master_start_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_outbuff_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_outbuff_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_outbuff_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_outbuff_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_outbuff_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_outbuff_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR0_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR0_wr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR1_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR1_wr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR2_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR2_wr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_channel_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_inbuff_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_prime_PR0_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_prime_PR1_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_prime_PR2_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_recycle_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_row_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_third_row_activate_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_volume_processed_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_m00_axi_error_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_m00_axi_txn_done_UNCONNECTED : STD_LOGIC;
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_fsm_state_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_addr1_multiple_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_addr2_multiple_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_rbc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_wbc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_channel_complete_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_channel_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_complete_shift_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_fsm_state_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_inbuff_din_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_input_addr_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_input_data_addr_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_input_index_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_input_volume_channels_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_input_volume_size_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_operating_length_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_output_data_addr_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_output_volume_channels_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_output_volume_size_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_pool_kernel_size_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_row_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_start_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_stride_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_stride_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_master_writes_remaining_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_outbuff_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR0_din_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR1_din_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR2_din_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_channel_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_column_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_fsm_state_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_output_rows_generated_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_output_volume_size_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_pixel_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_row_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_stride_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_volume_rows_processed_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_o_cycle_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_Maxpool_Layer_32bit_0_o_epoch_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_aw_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_aw_sum_result_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_aw_summing_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_calculated_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_clear_all_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_controller_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_fifo_select_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_input_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_softmax_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_data_loaded_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_dw_division_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_dw_quotient_result_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_dw_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_exp_done_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_wr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_function_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_mux_wr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_valid_result_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_wr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_more_bursts_needed_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_rd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_wr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_m00_axi_error_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_m00_axi_txn_done_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_ila_smax_aw_addend_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_aw_augend_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_aw_fsm_state_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_aw_hold_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_aw_sum_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_aw_sum_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_aw_sum_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_channel_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_class_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_element_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_input_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_fsm_state_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_dw_dividend_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_dw_division_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_dw_divisor_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_dw_fsm_state_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_dw_hold_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_dw_quotient_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_dw_quotient_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_addend_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_augend_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_data_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_fsm_state_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_hold_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_mult_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_multiplicand_a_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_multiplicand_b_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_multiplication_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_mux_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_product_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_step_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_sum_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_exp_sum_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_din_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_input_data_addr_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_master_fsm_state_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_num_elements_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_din_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_output_data_addr_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_rbc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_reads_remaining_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_row_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_wbc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_ila_smax_writes_remaining_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_o_cycle_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_o_epoch_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_VGA_IF_0_irq_UNCONNECTED : STD_LOGIC;
  signal NLW_VGA_IF_0_m00_axi_error_UNCONNECTED : STD_LOGIC;
  signal NLW_VGA_IF_0_m00_axi_txn_done_UNCONNECTED : STD_LOGIC;
  signal NLW_VGA_IF_0_pixel_valid_out_UNCONNECTED : STD_LOGIC;
  signal NLW_VGA_IF_0_read_en_out_UNCONNECTED : STD_LOGIC;
  signal NLW_VGA_IF_0_vga_data_out_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_axi_uartlite_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_mig_7series_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eoc_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_ot_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_user_temp_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_vccaux_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_vccint_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of microblaze_0 : label is "microblaze-le > final_accelerator microblaze_0_local_memory/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of microblaze_0 : label is "yes";
begin
  DDR3_addr(14 downto 0) <= mig_7series_0_DDR3_ADDR(14 downto 0);
  DDR3_ba(2 downto 0) <= mig_7series_0_DDR3_BA(2 downto 0);
  DDR3_cas_n <= mig_7series_0_DDR3_CAS_N;
  DDR3_ck_n(0) <= mig_7series_0_DDR3_CK_N(0);
  DDR3_ck_p(0) <= mig_7series_0_DDR3_CK_P(0);
  DDR3_cke(0) <= mig_7series_0_DDR3_CKE(0);
  DDR3_dm(1 downto 0) <= mig_7series_0_DDR3_DM(1 downto 0);
  DDR3_odt(0) <= mig_7series_0_DDR3_ODT(0);
  DDR3_ras_n <= mig_7series_0_DDR3_RAS_N;
  DDR3_reset_n <= mig_7series_0_DDR3_RESET_N;
  DDR3_we_n <= mig_7series_0_DDR3_WE_N;
  axi_uartlite_0_UART_RxD <= uart_rtl_rxd;
  clock_rtl_1 <= i_sys_clk;
  conv_busy <= Convolution_Layer_32bit_0_ila_master_busy;
  maxpool_busy <= Maxpool_Layer_32bit_0_ila_row_cntrl_busy;
  o_hsync <= VGA_IF_0_o_hsync;
  o_vga_data(11 downto 0) <= VGA_IF_0_o_vga_data(11 downto 0);
  o_vsync <= VGA_IF_0_o_vsync;
  reset_rtl_1 <= i_reset_n;
  softmax_busy <= Softmax_Layer_32bit_0_ila_smax_ctrlr_busy;
  uart_rtl_txd <= axi_uartlite_0_UART_TxD;
Convolution_Layer_32bit_0: component final_accelerator_Convolution_Layer_32bit_0_0
     port map (
      i_ext_reset_n => reset_rtl_1,
      ila_acc_fifo_almost_empty => NLW_Convolution_Layer_32bit_0_ila_acc_fifo_almost_empty_UNCONNECTED,
      ila_acc_fifo_almost_full => NLW_Convolution_Layer_32bit_0_ila_acc_fifo_almost_full_UNCONNECTED,
      ila_acc_fifo_din(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_fifo_din_UNCONNECTED(31 downto 0),
      ila_acc_fifo_dout(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_fifo_dout_UNCONNECTED(31 downto 0),
      ila_acc_fifo_empty => NLW_Convolution_Layer_32bit_0_ila_acc_fifo_empty_UNCONNECTED,
      ila_acc_fifo_full => NLW_Convolution_Layer_32bit_0_ila_acc_fifo_full_UNCONNECTED,
      ila_acc_fifo_rd_en => NLW_Convolution_Layer_32bit_0_ila_acc_fifo_rd_en_UNCONNECTED,
      ila_acc_fifo_valid => NLW_Convolution_Layer_32bit_0_ila_acc_fifo_valid_UNCONNECTED,
      ila_acc_fifo_wr_en => NLW_Convolution_Layer_32bit_0_ila_acc_fifo_wr_en_UNCONNECTED,
      ila_acc_relay_addend(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_relay_addend_UNCONNECTED(31 downto 0),
      ila_acc_relay_adder_counter(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_relay_adder_counter_UNCONNECTED(7 downto 0),
      ila_acc_relay_affine_en => NLW_Convolution_Layer_32bit_0_ila_acc_relay_affine_en_UNCONNECTED,
      ila_acc_relay_augend(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_relay_augend_UNCONNECTED(31 downto 0),
      ila_acc_relay_bias_data(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_relay_bias_data_UNCONNECTED(31 downto 0),
      ila_acc_relay_bias_read => NLW_Convolution_Layer_32bit_0_ila_acc_relay_bias_read_UNCONNECTED,
      ila_acc_relay_complete => NLW_Convolution_Layer_32bit_0_ila_acc_relay_complete_UNCONNECTED,
      ila_acc_relay_filter_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_relay_filter_counter_UNCONNECTED(15 downto 0),
      ila_acc_relay_filter_iteration_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_relay_filter_iteration_counter_UNCONNECTED(15 downto 0),
      ila_acc_relay_first_channel_set_complete => NLW_Convolution_Layer_32bit_0_ila_acc_relay_first_channel_set_complete_UNCONNECTED,
      ila_acc_relay_iteration_complete => NLW_Convolution_Layer_32bit_0_ila_acc_relay_iteration_complete_UNCONNECTED,
      ila_acc_relay_iteration_counter(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_relay_iteration_counter_UNCONNECTED(7 downto 0),
      ila_acc_relay_output_pixel_counter(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_relay_output_pixel_counter_UNCONNECTED(7 downto 0),
      ila_acc_relay_prev_data(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_relay_prev_data_UNCONNECTED(31 downto 0),
      ila_acc_relay_prev_read => NLW_Convolution_Layer_32bit_0_ila_acc_relay_prev_read_UNCONNECTED,
      ila_acc_relay_state(3 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_relay_state_UNCONNECTED(3 downto 0),
      ila_acc_relay_sum_result(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_relay_sum_result_UNCONNECTED(31 downto 0),
      ila_acc_relay_volume_data(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_relay_volume_data_UNCONNECTED(31 downto 0),
      ila_acc_relay_volume_processed => NLW_Convolution_Layer_32bit_0_ila_acc_relay_volume_processed_UNCONNECTED,
      ila_acc_relay_volume_row_counter(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_acc_relay_volume_row_counter_UNCONNECTED(7 downto 0),
      ila_accu_fifo_input(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accu_fifo_input_UNCONNECTED(31 downto 0),
      ila_accumulator_acc_complete => NLW_Convolution_Layer_32bit_0_ila_accumulator_acc_complete_UNCONNECTED,
      ila_accumulator_acc_data(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accumulator_acc_data_UNCONNECTED(31 downto 0),
      ila_accumulator_acc_ready => NLW_Convolution_Layer_32bit_0_ila_accumulator_acc_ready_UNCONNECTED,
      ila_accumulator_acc_valid => NLW_Convolution_Layer_32bit_0_ila_accumulator_acc_valid_UNCONNECTED,
      ila_accumulator_channels_allowed_counter(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accumulator_channels_allowed_counter_UNCONNECTED(31 downto 0),
      ila_accumulator_channels_filt_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accumulator_channels_filt_counter_UNCONNECTED(15 downto 0),
      ila_accumulator_column_counter(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accumulator_column_counter_UNCONNECTED(31 downto 0),
      ila_accumulator_delay_shift_register(77 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accumulator_delay_shift_register_UNCONNECTED(77 downto 0),
      ila_accumulator_filter_counter(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accumulator_filter_counter_UNCONNECTED(31 downto 0),
      ila_accumulator_filter_size_counter(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accumulator_filter_size_counter_UNCONNECTED(31 downto 0),
      ila_accumulator_kernel_delay_shift_register(50 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accumulator_kernel_delay_shift_register_UNCONNECTED(50 downto 0),
      ila_accumulator_kernel_element_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accumulator_kernel_element_counter_UNCONNECTED(15 downto 0),
      ila_accumulator_kernel_flag => NLW_Convolution_Layer_32bit_0_ila_accumulator_kernel_flag_UNCONNECTED,
      ila_accumulator_products_array_valid(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accumulator_products_array_valid_UNCONNECTED(32 downto 0),
      ila_accumulator_que_acc_data(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accumulator_que_acc_data_UNCONNECTED(31 downto 0),
      ila_accumulator_que_acc_valid => NLW_Convolution_Layer_32bit_0_ila_accumulator_que_acc_valid_UNCONNECTED,
      ila_accumulator_que_fifo_almost_empty => NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_almost_empty_UNCONNECTED,
      ila_accumulator_que_fifo_almost_full => NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_almost_full_UNCONNECTED,
      ila_accumulator_que_fifo_din(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_din_UNCONNECTED(31 downto 0),
      ila_accumulator_que_fifo_dout(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_dout_UNCONNECTED(31 downto 0),
      ila_accumulator_que_fifo_empty => NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_empty_UNCONNECTED,
      ila_accumulator_que_fifo_full => NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_full_UNCONNECTED,
      ila_accumulator_que_fifo_rd_en => NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_rd_en_UNCONNECTED,
      ila_accumulator_que_fifo_valid => NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_valid_UNCONNECTED,
      ila_accumulator_que_fifo_wr_en => NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_wr_en_UNCONNECTED,
      ila_accumulator_state(3 downto 0) => NLW_Convolution_Layer_32bit_0_ila_accumulator_state_UNCONNECTED(3 downto 0),
      ila_bias_fifo_almost_empty => NLW_Convolution_Layer_32bit_0_ila_bias_fifo_almost_empty_UNCONNECTED,
      ila_bias_fifo_almost_full => NLW_Convolution_Layer_32bit_0_ila_bias_fifo_almost_full_UNCONNECTED,
      ila_bias_fifo_data_return(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_bias_fifo_data_return_UNCONNECTED(31 downto 0),
      ila_bias_fifo_data_return_en => NLW_Convolution_Layer_32bit_0_ila_bias_fifo_data_return_en_UNCONNECTED,
      ila_bias_fifo_din_mux(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_bias_fifo_din_mux_UNCONNECTED(31 downto 0),
      ila_bias_fifo_dout(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_bias_fifo_dout_UNCONNECTED(31 downto 0),
      ila_bias_fifo_empty => NLW_Convolution_Layer_32bit_0_ila_bias_fifo_empty_UNCONNECTED,
      ila_bias_fifo_full => NLW_Convolution_Layer_32bit_0_ila_bias_fifo_full_UNCONNECTED,
      ila_bias_fifo_rd_en => NLW_Convolution_Layer_32bit_0_ila_bias_fifo_rd_en_UNCONNECTED,
      ila_bias_fifo_return_wr_en => NLW_Convolution_Layer_32bit_0_ila_bias_fifo_return_wr_en_UNCONNECTED,
      ila_bias_fifo_valid => NLW_Convolution_Layer_32bit_0_ila_bias_fifo_valid_UNCONNECTED,
      ila_bias_fifo_wr_en_mux => NLW_Convolution_Layer_32bit_0_ila_bias_fifo_wr_en_mux_UNCONNECTED,
      ila_controller_accumulator_en => NLW_Convolution_Layer_32bit_0_ila_controller_accumulator_en_UNCONNECTED,
      ila_controller_all_channels_processed => NLW_Convolution_Layer_32bit_0_ila_controller_all_channels_processed_UNCONNECTED,
      ila_controller_channel_iteration_calc(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_channel_iteration_calc_UNCONNECTED(15 downto 0),
      ila_controller_channel_iteration_complete => NLW_Convolution_Layer_32bit_0_ila_controller_channel_iteration_complete_UNCONNECTED,
      ila_controller_channel_iteration_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_channel_iteration_counter_UNCONNECTED(15 downto 0),
      ila_controller_channel_iterations_required(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_channel_iterations_required_UNCONNECTED(15 downto 0),
      ila_controller_channel_mask(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_channel_mask_UNCONNECTED(32 downto 0),
      ila_controller_channels_allowed(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_channels_allowed_UNCONNECTED(7 downto 0),
      ila_controller_channels_in_set(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_channels_in_set_UNCONNECTED(7 downto 0),
      ila_controller_channels_processed(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_channels_processed_UNCONNECTED(15 downto 0),
      ila_controller_element_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_element_counter_UNCONNECTED(15 downto 0),
      ila_controller_empty_data_complete(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_empty_data_complete_UNCONNECTED(32 downto 0),
      ila_controller_fifo_clear => NLW_Convolution_Layer_32bit_0_ila_controller_fifo_clear_UNCONNECTED,
      ila_controller_fifo_clear_counter(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_fifo_clear_counter_UNCONNECTED(7 downto 0),
      ila_controller_fifo_reset => NLW_Convolution_Layer_32bit_0_ila_controller_fifo_reset_UNCONNECTED,
      ila_controller_filter_column_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_filter_column_counter_UNCONNECTED(15 downto 0),
      ila_controller_filter_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_filter_counter_UNCONNECTED(15 downto 0),
      ila_controller_filter_iteration_calc(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_filter_iteration_calc_UNCONNECTED(15 downto 0),
      ila_controller_filter_iteration_complete => NLW_Convolution_Layer_32bit_0_ila_controller_filter_iteration_complete_UNCONNECTED,
      ila_controller_filter_iteration_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_filter_iteration_counter_UNCONNECTED(15 downto 0),
      ila_controller_filter_iterations_required(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_filter_iterations_required_UNCONNECTED(15 downto 0),
      ila_controller_filter_row_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_filter_row_counter_UNCONNECTED(15 downto 0),
      ila_controller_filters_in_set(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_filters_in_set_UNCONNECTED(15 downto 0),
      ila_controller_input_volume_channels(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_input_volume_channels_UNCONNECTED(15 downto 0),
      ila_controller_input_volume_row_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_input_volume_row_counter_UNCONNECTED(15 downto 0),
      ila_controller_input_volume_size(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_input_volume_size_UNCONNECTED(15 downto 0),
      ila_controller_input_volume_size_10bit(9 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_input_volume_size_10bit_UNCONNECTED(9 downto 0),
      ila_controller_iteration_calc(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_iteration_calc_UNCONNECTED(15 downto 0),
      ila_controller_iteration_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_iteration_counter_UNCONNECTED(15 downto 0),
      ila_controller_more_dsps_needed => NLW_Convolution_Layer_32bit_0_ila_controller_more_dsps_needed_UNCONNECTED,
      ila_controller_num_iterations(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_num_iterations_UNCONNECTED(7 downto 0),
      ila_controller_number_of_filters(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_number_of_filters_UNCONNECTED(15 downto 0),
      ila_controller_operation_complete => NLW_Convolution_Layer_32bit_0_ila_controller_operation_complete_UNCONNECTED,
      ila_controller_pad_10bit(9 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_pad_10bit_UNCONNECTED(9 downto 0),
      ila_controller_pad_16bit(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_pad_16bit_UNCONNECTED(15 downto 0),
      ila_controller_pad_8bit(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_pad_8bit_UNCONNECTED(7 downto 0),
      ila_controller_pad_counter(3 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_pad_counter_UNCONNECTED(3 downto 0),
      ila_controller_pad_row_counter(3 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_pad_row_counter_UNCONNECTED(3 downto 0),
      ila_controller_padded_volume_column_size(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_padded_volume_column_size_UNCONNECTED(15 downto 0),
      ila_controller_padded_volume_row_size(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_padded_volume_row_size_UNCONNECTED(15 downto 0),
      ila_controller_state(4 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_state_UNCONNECTED(4 downto 0),
      ila_controller_stride_counter(3 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_stride_counter_UNCONNECTED(3 downto 0),
      ila_controller_stride_index(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_stride_index_UNCONNECTED(15 downto 0),
      ila_controller_volume_channel_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_volume_channel_counter_UNCONNECTED(15 downto 0),
      ila_controller_volume_column_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_volume_column_counter_UNCONNECTED(15 downto 0),
      ila_controller_volume_index_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_volume_index_counter_UNCONNECTED(15 downto 0),
      ila_controller_volume_row(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_volume_row_UNCONNECTED(15 downto 0),
      ila_controller_volume_row_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_volume_row_counter_UNCONNECTED(15 downto 0),
      ila_controller_volume_rows_processed(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_volume_rows_processed_UNCONNECTED(15 downto 0),
      ila_controller_weight_channel_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_weight_channel_counter_UNCONNECTED(15 downto 0),
      ila_controller_weight_filter_channels(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_weight_filter_channels_UNCONNECTED(15 downto 0),
      ila_controller_weight_filter_size(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_weight_filter_size_UNCONNECTED(15 downto 0),
      ila_controller_weight_index_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_weight_index_counter_UNCONNECTED(15 downto 0),
      ila_get_volume_row(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_get_volume_row_UNCONNECTED(32 downto 0),
      ila_get_weight_row(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_get_weight_row_UNCONNECTED(32 downto 0),
      ila_inbuff_almost_empty => NLW_Convolution_Layer_32bit_0_ila_inbuff_almost_empty_UNCONNECTED,
      ila_inbuff_almost_full => NLW_Convolution_Layer_32bit_0_ila_inbuff_almost_full_UNCONNECTED,
      ila_inbuff_din(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_inbuff_din_UNCONNECTED(31 downto 0),
      ila_inbuff_dout(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_inbuff_dout_UNCONNECTED(31 downto 0),
      ila_inbuff_empty => NLW_Convolution_Layer_32bit_0_ila_inbuff_empty_UNCONNECTED,
      ila_inbuff_full => NLW_Convolution_Layer_32bit_0_ila_inbuff_full_UNCONNECTED,
      ila_inbuff_rd_en => NLW_Convolution_Layer_32bit_0_ila_inbuff_rd_en_UNCONNECTED,
      ila_inbuff_valid => NLW_Convolution_Layer_32bit_0_ila_inbuff_valid_UNCONNECTED,
      ila_kernel_addend_shift_register_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_0_UNCONNECTED(31 downto 0),
      ila_kernel_addend_shift_register_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_1_UNCONNECTED(31 downto 0),
      ila_kernel_addend_shift_register_10(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_10_UNCONNECTED(31 downto 0),
      ila_kernel_addend_shift_register_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_2_UNCONNECTED(31 downto 0),
      ila_kernel_addend_shift_register_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_3_UNCONNECTED(31 downto 0),
      ila_kernel_addend_shift_register_4(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_4_UNCONNECTED(31 downto 0),
      ila_kernel_addend_shift_register_5(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_5_UNCONNECTED(31 downto 0),
      ila_kernel_addend_shift_register_6(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_6_UNCONNECTED(31 downto 0),
      ila_kernel_addend_shift_register_7(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_7_UNCONNECTED(31 downto 0),
      ila_kernel_addend_shift_register_8(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_8_UNCONNECTED(31 downto 0),
      ila_kernel_addend_shift_register_9(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_addend_shift_register_9_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_reg_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_reg_0_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_reg_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_reg_1_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_reg_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_reg_2_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_reg_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_reg_3_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_reg_4(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_reg_4_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_reg_5(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_reg_5_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_result_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_0_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_result_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_1_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_result_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_2_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_result_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_3_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_result_4(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_4_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_result_5(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_5_UNCONNECTED(31 downto 0),
      ila_kernel_layer_2_reg_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_reg_0_UNCONNECTED(31 downto 0),
      ila_kernel_layer_2_reg_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_reg_1_UNCONNECTED(31 downto 0),
      ila_kernel_layer_2_reg_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_reg_2_UNCONNECTED(31 downto 0),
      ila_kernel_layer_2_result_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_result_0_UNCONNECTED(31 downto 0),
      ila_kernel_layer_2_result_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_result_1_UNCONNECTED(31 downto 0),
      ila_kernel_layer_2_result_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_result_2_UNCONNECTED(31 downto 0),
      ila_kernel_layer_3_reg(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_3_reg_UNCONNECTED(31 downto 0),
      ila_kernel_layer_3_result(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_3_result_UNCONNECTED(31 downto 0),
      ila_kernel_values_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_values_0_UNCONNECTED(31 downto 0),
      ila_kernel_values_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_values_1_UNCONNECTED(31 downto 0),
      ila_kernel_values_10(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_values_10_UNCONNECTED(31 downto 0),
      ila_kernel_values_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_values_2_UNCONNECTED(31 downto 0),
      ila_kernel_values_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_values_3_UNCONNECTED(31 downto 0),
      ila_kernel_values_4(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_values_4_UNCONNECTED(31 downto 0),
      ila_kernel_values_5(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_values_5_UNCONNECTED(31 downto 0),
      ila_kernel_values_6(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_values_6_UNCONNECTED(31 downto 0),
      ila_kernel_values_7(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_values_7_UNCONNECTED(31 downto 0),
      ila_kernel_values_8(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_values_8_UNCONNECTED(31 downto 0),
      ila_kernel_values_9(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_values_9_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_0_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_1_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_10(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_10_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_11(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_11_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_12(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_12_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_13(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_13_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_14(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_14_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_15(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_15_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_2_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_3_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_4(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_4_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_5(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_5_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_6(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_6_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_7(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_7_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_8(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_8_UNCONNECTED(31 downto 0),
      ila_layer_1_reg_9(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_reg_9_UNCONNECTED(31 downto 0),
      ila_layer_1_result_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_0_UNCONNECTED(31 downto 0),
      ila_layer_1_result_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_1_UNCONNECTED(31 downto 0),
      ila_layer_1_result_10(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_10_UNCONNECTED(31 downto 0),
      ila_layer_1_result_11(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_11_UNCONNECTED(31 downto 0),
      ila_layer_1_result_12(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_12_UNCONNECTED(31 downto 0),
      ila_layer_1_result_13(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_13_UNCONNECTED(31 downto 0),
      ila_layer_1_result_14(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_14_UNCONNECTED(31 downto 0),
      ila_layer_1_result_15(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_15_UNCONNECTED(31 downto 0),
      ila_layer_1_result_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_2_UNCONNECTED(31 downto 0),
      ila_layer_1_result_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_3_UNCONNECTED(31 downto 0),
      ila_layer_1_result_4(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_4_UNCONNECTED(31 downto 0),
      ila_layer_1_result_5(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_5_UNCONNECTED(31 downto 0),
      ila_layer_1_result_6(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_6_UNCONNECTED(31 downto 0),
      ila_layer_1_result_7(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_7_UNCONNECTED(31 downto 0),
      ila_layer_1_result_8(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_8_UNCONNECTED(31 downto 0),
      ila_layer_1_result_9(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_1_result_9_UNCONNECTED(31 downto 0),
      ila_layer_2_reg_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_0_UNCONNECTED(31 downto 0),
      ila_layer_2_reg_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_1_UNCONNECTED(31 downto 0),
      ila_layer_2_reg_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_2_UNCONNECTED(31 downto 0),
      ila_layer_2_reg_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_3_UNCONNECTED(31 downto 0),
      ila_layer_2_reg_4(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_4_UNCONNECTED(31 downto 0),
      ila_layer_2_reg_5(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_5_UNCONNECTED(31 downto 0),
      ila_layer_2_reg_6(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_6_UNCONNECTED(31 downto 0),
      ila_layer_2_reg_7(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_reg_7_UNCONNECTED(31 downto 0),
      ila_layer_2_result_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_result_0_UNCONNECTED(31 downto 0),
      ila_layer_2_result_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_result_1_UNCONNECTED(31 downto 0),
      ila_layer_2_result_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_result_2_UNCONNECTED(31 downto 0),
      ila_layer_2_result_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_result_3_UNCONNECTED(31 downto 0),
      ila_layer_2_result_4(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_result_4_UNCONNECTED(31 downto 0),
      ila_layer_2_result_5(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_result_5_UNCONNECTED(31 downto 0),
      ila_layer_2_result_6(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_result_6_UNCONNECTED(31 downto 0),
      ila_layer_2_result_7(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_2_result_7_UNCONNECTED(31 downto 0),
      ila_layer_3_reg_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_3_reg_0_UNCONNECTED(31 downto 0),
      ila_layer_3_reg_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_3_reg_1_UNCONNECTED(31 downto 0),
      ila_layer_3_reg_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_3_reg_2_UNCONNECTED(31 downto 0),
      ila_layer_3_reg_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_3_reg_3_UNCONNECTED(31 downto 0),
      ila_layer_3_result_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_3_result_0_UNCONNECTED(31 downto 0),
      ila_layer_3_result_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_3_result_1_UNCONNECTED(31 downto 0),
      ila_layer_3_result_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_3_result_2_UNCONNECTED(31 downto 0),
      ila_layer_3_result_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_3_result_3_UNCONNECTED(31 downto 0),
      ila_layer_4_reg_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_4_reg_0_UNCONNECTED(31 downto 0),
      ila_layer_4_reg_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_4_reg_1_UNCONNECTED(31 downto 0),
      ila_layer_4_result_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_4_result_0_UNCONNECTED(31 downto 0),
      ila_layer_4_result_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_4_result_1_UNCONNECTED(31 downto 0),
      ila_layer_5_reg(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_5_reg_UNCONNECTED(31 downto 0),
      ila_layer_5_result(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_5_result_UNCONNECTED(31 downto 0),
      ila_layer_6_reg(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_6_reg_UNCONNECTED(31 downto 0),
      ila_layer_6_result(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_6_result_UNCONNECTED(31 downto 0),
      ila_master_acc_row_complete => NLW_Convolution_Layer_32bit_0_ila_master_acc_row_complete_UNCONNECTED,
      ila_master_affine_channels_in_set(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_affine_channels_in_set_UNCONNECTED(15 downto 0),
      ila_master_affine_filter_iteration_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_affine_filter_iteration_counter_UNCONNECTED(15 downto 0),
      ila_master_affine_filters_in_set(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_affine_filters_in_set_UNCONNECTED(15 downto 0),
      ila_master_affine_filters_iterations(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_affine_filters_iterations_UNCONNECTED(15 downto 0),
      ila_master_affine_select => NLW_Convolution_Layer_32bit_0_ila_master_affine_select_UNCONNECTED,
      ila_master_axi_araddr(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_axi_araddr_UNCONNECTED(31 downto 0),
      ila_master_axi_arlen(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_axi_arlen_UNCONNECTED(7 downto 0),
      ila_master_axi_arready => NLW_Convolution_Layer_32bit_0_ila_master_axi_arready_UNCONNECTED,
      ila_master_axi_arsize(2 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_axi_arsize_UNCONNECTED(2 downto 0),
      ila_master_axi_arvalid => NLW_Convolution_Layer_32bit_0_ila_master_axi_arvalid_UNCONNECTED,
      ila_master_axi_awaddr(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_axi_awaddr_UNCONNECTED(31 downto 0),
      ila_master_axi_awlen(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_axi_awlen_UNCONNECTED(7 downto 0),
      ila_master_axi_awready => NLW_Convolution_Layer_32bit_0_ila_master_axi_awready_UNCONNECTED,
      ila_master_axi_awvalid => NLW_Convolution_Layer_32bit_0_ila_master_axi_awvalid_UNCONNECTED,
      ila_master_axi_bready => NLW_Convolution_Layer_32bit_0_ila_master_axi_bready_UNCONNECTED,
      ila_master_axi_bvalid => NLW_Convolution_Layer_32bit_0_ila_master_axi_bvalid_UNCONNECTED,
      ila_master_axi_rdata(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_axi_rdata_UNCONNECTED(31 downto 0),
      ila_master_axi_rlast => NLW_Convolution_Layer_32bit_0_ila_master_axi_rlast_UNCONNECTED,
      ila_master_axi_rready => NLW_Convolution_Layer_32bit_0_ila_master_axi_rready_UNCONNECTED,
      ila_master_axi_rvalid => NLW_Convolution_Layer_32bit_0_ila_master_axi_rvalid_UNCONNECTED,
      ila_master_axi_wdata(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_axi_wdata_UNCONNECTED(31 downto 0),
      ila_master_axi_wlast => NLW_Convolution_Layer_32bit_0_ila_master_axi_wlast_UNCONNECTED,
      ila_master_axi_wready => NLW_Convolution_Layer_32bit_0_ila_master_axi_wready_UNCONNECTED,
      ila_master_axi_wstrb(3 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_axi_wstrb_UNCONNECTED(3 downto 0),
      ila_master_axi_wvalid => NLW_Convolution_Layer_32bit_0_ila_master_axi_wvalid_UNCONNECTED,
      ila_master_bias_addr_counter(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_bias_addr_counter_UNCONNECTED(31 downto 0),
      ila_master_bias_addr_reg(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_bias_addr_reg_UNCONNECTED(31 downto 0),
      ila_master_bias_length(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_bias_length_UNCONNECTED(15 downto 0),
      ila_master_bias_values_loaded => NLW_Convolution_Layer_32bit_0_ila_master_bias_values_loaded_UNCONNECTED,
      ila_master_busy => Convolution_Layer_32bit_0_ila_master_busy,
      ila_master_calculated => NLW_Convolution_Layer_32bit_0_ila_master_calculated_UNCONNECTED,
      ila_master_ch_al_filt(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_ch_al_filt_UNCONNECTED(15 downto 0),
      ila_master_channel_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_channel_counter_UNCONNECTED(15 downto 0),
      ila_master_channel_loop_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_channel_loop_counter_UNCONNECTED(15 downto 0),
      ila_master_channels_allowed(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_channels_allowed_UNCONNECTED(15 downto 0),
      ila_master_channels_iterations(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_channels_iterations_UNCONNECTED(15 downto 0),
      ila_master_column_counter(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_column_counter_UNCONNECTED(7 downto 0),
      ila_master_conv_complete => NLW_Convolution_Layer_32bit_0_ila_master_conv_complete_UNCONNECTED,
      ila_master_convolution_done => NLW_Convolution_Layer_32bit_0_ila_master_convolution_done_UNCONNECTED,
      ila_master_data_written => NLW_Convolution_Layer_32bit_0_ila_master_data_written_UNCONNECTED,
      ila_master_debug_mode => NLW_Convolution_Layer_32bit_0_ila_master_debug_mode_UNCONNECTED,
      ila_master_dsps_used(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_dsps_used_UNCONNECTED(7 downto 0),
      ila_master_filter_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_filter_counter_UNCONNECTED(15 downto 0),
      ila_master_filter_iterations_required(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_filter_iterations_required_UNCONNECTED(15 downto 0),
      ila_master_fsm_state(4 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_fsm_state_UNCONNECTED(4 downto 0),
      ila_master_input_addr_counter(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_input_addr_counter_UNCONNECTED(31 downto 0),
      ila_master_input_arsize(2 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_input_arsize_UNCONNECTED(2 downto 0),
      ila_master_input_channel_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_input_channel_counter_UNCONNECTED(15 downto 0),
      ila_master_input_data_addr_reg(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_input_data_addr_reg_UNCONNECTED(31 downto 0),
      ila_master_input_index(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_input_index_UNCONNECTED(31 downto 0),
      ila_master_input_volume_channels(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_input_volume_channels_UNCONNECTED(15 downto 0),
      ila_master_input_volume_height(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_input_volume_height_UNCONNECTED(7 downto 0),
      ila_master_input_volume_row_counter(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_input_volume_row_counter_UNCONNECTED(7 downto 0),
      ila_master_input_volume_width(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_input_volume_width_UNCONNECTED(7 downto 0),
      ila_master_iteration_complete => NLW_Convolution_Layer_32bit_0_ila_master_iteration_complete_UNCONNECTED,
      ila_master_iteration_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_iteration_counter_UNCONNECTED(15 downto 0),
      ila_master_iterations_required(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_iterations_required_UNCONNECTED(7 downto 0),
      ila_master_last_channel_base(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_last_channel_base_UNCONNECTED(31 downto 0),
      ila_master_layer_ready => NLW_Convolution_Layer_32bit_0_ila_master_layer_ready_UNCONNECTED,
      ila_master_more_bursts_needed => NLW_Convolution_Layer_32bit_0_ila_master_more_bursts_needed_UNCONNECTED,
      ila_master_more_dsps => NLW_Convolution_Layer_32bit_0_ila_master_more_dsps_UNCONNECTED,
      ila_master_number_of_filters(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_number_of_filters_UNCONNECTED(15 downto 0),
      ila_master_operation_complete => NLW_Convolution_Layer_32bit_0_ila_master_operation_complete_UNCONNECTED,
      ila_master_out_last_channel_base(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_out_last_channel_base_UNCONNECTED(31 downto 0),
      ila_master_out_volume_row_counter(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_out_volume_row_counter_UNCONNECTED(7 downto 0),
      ila_master_output_addr_counter(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_output_addr_counter_UNCONNECTED(31 downto 0),
      ila_master_output_base_pixel(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_output_base_pixel_UNCONNECTED(31 downto 0),
      ila_master_output_channel_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_output_channel_counter_UNCONNECTED(15 downto 0),
      ila_master_output_data_addr_reg(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_output_data_addr_reg_UNCONNECTED(31 downto 0),
      ila_master_output_index(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_output_index_UNCONNECTED(31 downto 0),
      ila_master_output_volume_channels(11 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_output_volume_channels_UNCONNECTED(11 downto 0),
      ila_master_output_volume_height(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_output_volume_height_UNCONNECTED(7 downto 0),
      ila_master_output_volume_width(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_output_volume_width_UNCONNECTED(7 downto 0),
      ila_master_pad(3 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_pad_UNCONNECTED(3 downto 0),
      ila_master_prev_addr_counter(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_prev_addr_counter_UNCONNECTED(31 downto 0),
      ila_master_prev_addr_reg(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_prev_addr_reg_UNCONNECTED(31 downto 0),
      ila_master_prev_channel_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_prev_channel_counter_UNCONNECTED(15 downto 0),
      ila_master_prev_index(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_prev_index_UNCONNECTED(31 downto 0),
      ila_master_prev_last_channel_base(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_prev_last_channel_base_UNCONNECTED(31 downto 0),
      ila_master_rbc(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_rbc_UNCONNECTED(7 downto 0),
      ila_master_reads_remaining(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_reads_remaining_UNCONNECTED(31 downto 0),
      ila_master_relu_en => NLW_Convolution_Layer_32bit_0_ila_master_relu_en_UNCONNECTED,
      ila_master_row_complete => NLW_Convolution_Layer_32bit_0_ila_master_row_complete_UNCONNECTED,
      ila_master_row_counter(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_row_counter_UNCONNECTED(7 downto 0),
      ila_master_row_loop_counter(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_row_loop_counter_UNCONNECTED(7 downto 0),
      ila_master_start => NLW_Convolution_Layer_32bit_0_ila_master_start_UNCONNECTED,
      ila_master_stride(3 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_stride_UNCONNECTED(3 downto 0),
      ila_master_stride_counter(3 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_stride_counter_UNCONNECTED(3 downto 0),
      ila_master_volume_complete => NLW_Convolution_Layer_32bit_0_ila_master_volume_complete_UNCONNECTED,
      ila_master_wbc(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_wbc_UNCONNECTED(7 downto 0),
      ila_master_weight_filter_channels(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_weight_filter_channels_UNCONNECTED(15 downto 0),
      ila_master_weight_filter_height(3 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_weight_filter_height_UNCONNECTED(3 downto 0),
      ila_master_weight_filter_width(3 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_weight_filter_width_UNCONNECTED(3 downto 0),
      ila_master_weight_index(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_weight_index_UNCONNECTED(31 downto 0),
      ila_master_weights_addr_counter(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_weights_addr_counter_UNCONNECTED(31 downto 0),
      ila_master_weights_addr_reg(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_weights_addr_reg_UNCONNECTED(31 downto 0),
      ila_master_weights_loaded => NLW_Convolution_Layer_32bit_0_ila_master_weights_loaded_UNCONNECTED,
      ila_master_writes_remaining(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_master_writes_remaining_UNCONNECTED(15 downto 0),
      ila_multiplier_mult_a_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_0_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_1_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_10(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_10_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_11(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_11_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_12(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_12_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_13(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_13_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_14(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_14_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_15(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_15_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_16(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_16_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_17(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_17_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_18(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_18_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_19(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_19_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_2_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_20(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_20_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_21(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_21_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_22(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_22_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_23(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_23_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_24(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_24_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_25(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_25_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_26(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_26_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_27(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_27_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_28(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_28_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_29(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_29_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_3_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_30(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_30_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_31(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_31_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_32(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_32_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_4(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_4_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_5(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_5_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_6(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_6_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_7(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_7_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_8(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_8_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_9(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_9_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_0_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_1_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_10(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_10_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_11(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_11_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_12(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_12_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_13(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_13_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_14(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_14_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_15(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_15_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_16(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_16_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_17(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_17_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_18(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_18_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_19(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_19_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_2_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_20(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_20_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_21(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_21_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_22(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_22_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_23(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_23_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_24(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_24_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_25(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_25_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_26(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_26_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_27(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_27_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_28(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_28_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_29(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_29_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_3_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_30(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_30_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_31(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_31_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_32(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_32_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_4(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_4_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_5(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_5_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_6(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_6_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_7(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_7_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_8(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_8_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_9(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_9_UNCONNECTED(31 downto 0),
      ila_outbuff_almost_empty => NLW_Convolution_Layer_32bit_0_ila_outbuff_almost_empty_UNCONNECTED,
      ila_outbuff_almost_full => NLW_Convolution_Layer_32bit_0_ila_outbuff_almost_full_UNCONNECTED,
      ila_outbuff_din(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_outbuff_din_UNCONNECTED(31 downto 0),
      ila_outbuff_dout(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_outbuff_dout_UNCONNECTED(31 downto 0),
      ila_outbuff_empty => NLW_Convolution_Layer_32bit_0_ila_outbuff_empty_UNCONNECTED,
      ila_outbuff_full => NLW_Convolution_Layer_32bit_0_ila_outbuff_full_UNCONNECTED,
      ila_outbuff_valid => NLW_Convolution_Layer_32bit_0_ila_outbuff_valid_UNCONNECTED,
      ila_outbuff_wr_en => NLW_Convolution_Layer_32bit_0_ila_outbuff_wr_en_UNCONNECTED,
      ila_prev_fifo_almost_empty => NLW_Convolution_Layer_32bit_0_ila_prev_fifo_almost_empty_UNCONNECTED,
      ila_prev_fifo_dout(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_prev_fifo_dout_UNCONNECTED(31 downto 0),
      ila_prev_fifo_empty => NLW_Convolution_Layer_32bit_0_ila_prev_fifo_empty_UNCONNECTED,
      ila_prev_fifo_rd_en => NLW_Convolution_Layer_32bit_0_ila_prev_fifo_rd_en_UNCONNECTED,
      ila_prev_fifo_valid => NLW_Convolution_Layer_32bit_0_ila_prev_fifo_valid_UNCONNECTED,
      ila_prev_weight_data(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_prev_weight_data_UNCONNECTED(31 downto 0),
      ila_products_array_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_0_UNCONNECTED(31 downto 0),
      ila_products_array_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_1_UNCONNECTED(31 downto 0),
      ila_products_array_10(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_10_UNCONNECTED(31 downto 0),
      ila_products_array_11(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_11_UNCONNECTED(31 downto 0),
      ila_products_array_12(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_12_UNCONNECTED(31 downto 0),
      ila_products_array_13(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_13_UNCONNECTED(31 downto 0),
      ila_products_array_14(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_14_UNCONNECTED(31 downto 0),
      ila_products_array_15(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_15_UNCONNECTED(31 downto 0),
      ila_products_array_16(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_16_UNCONNECTED(31 downto 0),
      ila_products_array_17(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_17_UNCONNECTED(31 downto 0),
      ila_products_array_18(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_18_UNCONNECTED(31 downto 0),
      ila_products_array_19(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_19_UNCONNECTED(31 downto 0),
      ila_products_array_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_2_UNCONNECTED(31 downto 0),
      ila_products_array_20(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_20_UNCONNECTED(31 downto 0),
      ila_products_array_21(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_21_UNCONNECTED(31 downto 0),
      ila_products_array_22(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_22_UNCONNECTED(31 downto 0),
      ila_products_array_23(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_23_UNCONNECTED(31 downto 0),
      ila_products_array_24(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_24_UNCONNECTED(31 downto 0),
      ila_products_array_25(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_25_UNCONNECTED(31 downto 0),
      ila_products_array_26(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_26_UNCONNECTED(31 downto 0),
      ila_products_array_27(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_27_UNCONNECTED(31 downto 0),
      ila_products_array_28(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_28_UNCONNECTED(31 downto 0),
      ila_products_array_29(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_29_UNCONNECTED(31 downto 0),
      ila_products_array_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_3_UNCONNECTED(31 downto 0),
      ila_products_array_30(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_30_UNCONNECTED(31 downto 0),
      ila_products_array_31(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_31_UNCONNECTED(31 downto 0),
      ila_products_array_32(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_32_UNCONNECTED(31 downto 0),
      ila_products_array_4(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_4_UNCONNECTED(31 downto 0),
      ila_products_array_5(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_5_UNCONNECTED(31 downto 0),
      ila_products_array_6(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_6_UNCONNECTED(31 downto 0),
      ila_products_array_7(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_7_UNCONNECTED(31 downto 0),
      ila_products_array_8(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_8_UNCONNECTED(31 downto 0),
      ila_products_array_9(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_9_UNCONNECTED(31 downto 0),
      ila_reset => NLW_Convolution_Layer_32bit_0_ila_reset_UNCONNECTED,
      ila_reset_weight_fifo_n => NLW_Convolution_Layer_32bit_0_ila_reset_weight_fifo_n_UNCONNECTED,
      ila_router_acc_ready => NLW_Convolution_Layer_32bit_0_ila_router_acc_ready_UNCONNECTED,
      ila_router_affine_complete(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_router_affine_complete_UNCONNECTED(32 downto 0),
      ila_router_affine_en => NLW_Convolution_Layer_32bit_0_ila_router_affine_en_UNCONNECTED,
      ila_router_conv_complete(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_router_conv_complete_UNCONNECTED(32 downto 0),
      ila_router_convolution_en => NLW_Convolution_Layer_32bit_0_ila_router_convolution_en_UNCONNECTED,
      ila_router_disable_channel_n(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_router_disable_channel_n_UNCONNECTED(32 downto 0),
      ila_router_filter_kernal_loaded(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_router_filter_kernal_loaded_UNCONNECTED(32 downto 0),
      ila_router_volume_ready(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_router_volume_ready_UNCONNECTED(32 downto 0),
      ila_volume_fifo_almost_empty(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_almost_empty_UNCONNECTED(32 downto 0),
      ila_volume_fifo_almost_full(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_almost_full_UNCONNECTED(32 downto 0),
      ila_volume_fifo_din_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_0_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_1_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_10(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_10_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_11(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_11_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_12(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_12_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_13(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_13_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_14(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_14_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_15(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_15_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_16(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_16_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_17(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_17_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_18(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_18_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_19(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_19_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_2_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_20(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_20_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_21(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_21_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_22(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_22_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_23(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_23_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_24(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_24_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_25(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_25_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_26(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_26_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_27(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_27_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_28(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_28_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_29(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_29_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_3_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_30(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_30_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_31(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_31_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_32(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_32_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_4(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_4_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_5(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_5_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_6(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_6_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_7(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_7_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_8(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_8_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_9(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_9_UNCONNECTED(31 downto 0),
      ila_volume_fifo_empty(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_empty_UNCONNECTED(32 downto 0),
      ila_volume_fifo_full(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_full_UNCONNECTED(32 downto 0),
      ila_volume_fifo_rd_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_rd_en_UNCONNECTED(32 downto 0),
      ila_volume_fifo_valid(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_valid_UNCONNECTED(32 downto 0),
      ila_volume_fifo_wr_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_wr_en_UNCONNECTED(32 downto 0),
      ila_volume_mux_new_data_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_mux_new_data_en_UNCONNECTED(32 downto 0),
      ila_volume_mux_prev_data_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_mux_prev_data_en_UNCONNECTED(32 downto 0),
      ila_volume_mux_prev_data_wr_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_mux_prev_data_wr_en_UNCONNECTED(32 downto 0),
      ila_volume_mux_recycled_data_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_mux_recycled_data_en_UNCONNECTED(32 downto 0),
      ila_volume_mux_recycled_data_wr_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_mux_recycled_data_wr_en_UNCONNECTED(32 downto 0),
      ila_volume_router_calc_params => NLW_Convolution_Layer_32bit_0_ila_volume_router_calc_params_UNCONNECTED,
      ila_volume_router_column_counter(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_column_counter_UNCONNECTED(7 downto 0),
      ila_volume_router_data_return_wr_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_data_return_wr_en_UNCONNECTED(32 downto 0),
      ila_volume_router_data_valid(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_data_valid_UNCONNECTED(32 downto 0),
      ila_volume_router_delay_shift_register(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_delay_shift_register_UNCONNECTED(7 downto 0),
      ila_volume_router_element_counter(9 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_element_counter_UNCONNECTED(9 downto 0),
      ila_volume_router_empty_data_complete(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_empty_data_complete_UNCONNECTED(32 downto 0),
      ila_volume_router_empty_data_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_empty_data_en_UNCONNECTED(32 downto 0),
      ila_volume_router_empty_done => NLW_Convolution_Layer_32bit_0_ila_volume_router_empty_done_UNCONNECTED,
      ila_volume_router_filter_counter(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_filter_counter_UNCONNECTED(15 downto 0),
      ila_volume_router_loaded_rows_processed(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_loaded_rows_processed_UNCONNECTED(32 downto 0),
      ila_volume_router_pad_16bit(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_pad_16bit_UNCONNECTED(15 downto 0),
      ila_volume_router_padded_volume_size(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_padded_volume_size_UNCONNECTED(15 downto 0),
      ila_volume_router_ready(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_ready_UNCONNECTED(32 downto 0),
      ila_volume_router_snake_fill_complete(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_snake_fill_complete_UNCONNECTED(32 downto 0),
      ila_volume_router_state(3 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_state_UNCONNECTED(3 downto 0),
      ila_volume_router_stop_stack_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_router_stop_stack_en_UNCONNECTED(32 downto 0),
      ila_volume_stack_fifo_almost_full(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_stack_fifo_almost_full_UNCONNECTED(32 downto 0),
      ila_volume_stack_fifo_full(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_stack_fifo_full_UNCONNECTED(32 downto 0),
      ila_volume_stack_fifo_wr_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_stack_fifo_wr_en_UNCONNECTED(32 downto 0),
      ila_weight_fifo_almost_empty(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_almost_empty_UNCONNECTED(32 downto 0),
      ila_weight_fifo_almost_full(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_almost_full_UNCONNECTED(32 downto 0),
      ila_weight_fifo_din_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_0_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_1_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_10(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_10_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_11(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_11_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_12(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_12_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_13(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_13_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_14(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_14_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_15(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_15_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_16(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_16_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_17(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_17_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_18(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_18_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_19(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_19_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_2_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_20(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_20_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_21(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_21_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_22(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_22_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_23(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_23_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_24(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_24_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_25(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_25_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_26(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_26_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_27(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_27_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_28(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_28_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_29(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_29_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_3_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_30(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_30_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_31(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_31_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_32(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_32_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_4(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_4_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_5(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_5_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_6(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_6_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_7(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_7_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_8(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_8_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_9(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_9_UNCONNECTED(31 downto 0),
      ila_weight_fifo_empty(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_empty_UNCONNECTED(32 downto 0),
      ila_weight_fifo_full(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_full_UNCONNECTED(32 downto 0),
      ila_weight_fifo_rd_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_rd_en_UNCONNECTED(32 downto 0),
      ila_weight_fifo_valid(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_valid_UNCONNECTED(32 downto 0),
      ila_weight_fifo_wr_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_wr_en_UNCONNECTED(32 downto 0),
      ila_weight_mux_almost_full(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_mux_almost_full_UNCONNECTED(32 downto 0),
      ila_weight_mux_full(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_mux_full_UNCONNECTED(32 downto 0),
      ila_weight_mux_new_data_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_mux_new_data_en_UNCONNECTED(32 downto 0),
      ila_weight_mux_prev_data_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_mux_prev_data_en_UNCONNECTED(32 downto 0),
      ila_weight_mux_prev_data_wr_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_mux_prev_data_wr_en_UNCONNECTED(32 downto 0),
      ila_weight_mux_recycle_filter_data_wr_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_mux_recycle_filter_data_wr_en_UNCONNECTED(32 downto 0),
      ila_weight_mux_recycled_data_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_mux_recycled_data_en_UNCONNECTED(32 downto 0),
      ila_weight_mux_wr_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_mux_wr_en_UNCONNECTED(32 downto 0),
      ila_weight_router_clear_weights => NLW_Convolution_Layer_32bit_0_ila_weight_router_clear_weights_UNCONNECTED,
      ila_weight_router_data_valid(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_router_data_valid_UNCONNECTED(32 downto 0),
      ila_weight_router_delay_shift_register(7 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_router_delay_shift_register_UNCONNECTED(7 downto 0),
      ila_weight_router_filter_data_return_wr_en(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_router_filter_data_return_wr_en_UNCONNECTED(32 downto 0),
      ila_weight_router_filter_element_counter(3 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_router_filter_element_counter_UNCONNECTED(3 downto 0),
      ila_weight_router_ready(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_router_ready_UNCONNECTED(32 downto 0),
      ila_weight_router_state(3 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_router_state_UNCONNECTED(3 downto 0),
      ila_weight_rst => NLW_Convolution_Layer_32bit_0_ila_weight_rst_UNCONNECTED,
      m00_axi_aclk => microblaze_0_Clk,
      m00_axi_araddr(31 downto 0) => Convolution_Layer_32bit_0_M00_AXI_ARADDR(31 downto 0),
      m00_axi_arburst(1 downto 0) => Convolution_Layer_32bit_0_M00_AXI_ARBURST(1 downto 0),
      m00_axi_arcache(3 downto 0) => Convolution_Layer_32bit_0_M00_AXI_ARCACHE(3 downto 0),
      m00_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      m00_axi_arid(0) => Convolution_Layer_32bit_0_M00_AXI_ARID(0),
      m00_axi_arlen(7 downto 0) => Convolution_Layer_32bit_0_M00_AXI_ARLEN(7 downto 0),
      m00_axi_arlock => Convolution_Layer_32bit_0_M00_AXI_ARLOCK,
      m00_axi_arprot(2 downto 0) => Convolution_Layer_32bit_0_M00_AXI_ARPROT(2 downto 0),
      m00_axi_arqos(3 downto 0) => Convolution_Layer_32bit_0_M00_AXI_ARQOS(3 downto 0),
      m00_axi_arready => Convolution_Layer_32bit_0_M00_AXI_ARREADY,
      m00_axi_arsize(2 downto 0) => Convolution_Layer_32bit_0_M00_AXI_ARSIZE(2 downto 0),
      m00_axi_aruser(0) => Convolution_Layer_32bit_0_M00_AXI_ARUSER(0),
      m00_axi_arvalid => Convolution_Layer_32bit_0_M00_AXI_ARVALID,
      m00_axi_awaddr(31 downto 0) => Convolution_Layer_32bit_0_M00_AXI_AWADDR(31 downto 0),
      m00_axi_awburst(1 downto 0) => Convolution_Layer_32bit_0_M00_AXI_AWBURST(1 downto 0),
      m00_axi_awcache(3 downto 0) => Convolution_Layer_32bit_0_M00_AXI_AWCACHE(3 downto 0),
      m00_axi_awid(0) => Convolution_Layer_32bit_0_M00_AXI_AWID(0),
      m00_axi_awlen(7 downto 0) => Convolution_Layer_32bit_0_M00_AXI_AWLEN(7 downto 0),
      m00_axi_awlock => Convolution_Layer_32bit_0_M00_AXI_AWLOCK,
      m00_axi_awprot(2 downto 0) => Convolution_Layer_32bit_0_M00_AXI_AWPROT(2 downto 0),
      m00_axi_awqos(3 downto 0) => Convolution_Layer_32bit_0_M00_AXI_AWQOS(3 downto 0),
      m00_axi_awready => Convolution_Layer_32bit_0_M00_AXI_AWREADY,
      m00_axi_awsize(2 downto 0) => Convolution_Layer_32bit_0_M00_AXI_AWSIZE(2 downto 0),
      m00_axi_awuser(0) => Convolution_Layer_32bit_0_M00_AXI_AWUSER(0),
      m00_axi_awvalid => Convolution_Layer_32bit_0_M00_AXI_AWVALID,
      m00_axi_bid(0) => Convolution_Layer_32bit_0_M00_AXI_BID(0),
      m00_axi_bready => Convolution_Layer_32bit_0_M00_AXI_BREADY,
      m00_axi_bresp(1 downto 0) => Convolution_Layer_32bit_0_M00_AXI_BRESP(1 downto 0),
      m00_axi_bvalid => Convolution_Layer_32bit_0_M00_AXI_BVALID,
      m00_axi_error => NLW_Convolution_Layer_32bit_0_m00_axi_error_UNCONNECTED,
      m00_axi_rdata(31 downto 0) => Convolution_Layer_32bit_0_M00_AXI_RDATA(31 downto 0),
      m00_axi_rid(0) => Convolution_Layer_32bit_0_M00_AXI_RID(0),
      m00_axi_rlast => Convolution_Layer_32bit_0_M00_AXI_RLAST,
      m00_axi_rready => Convolution_Layer_32bit_0_M00_AXI_RREADY,
      m00_axi_rresp(1 downto 0) => Convolution_Layer_32bit_0_M00_AXI_RRESP(1 downto 0),
      m00_axi_rvalid => Convolution_Layer_32bit_0_M00_AXI_RVALID,
      m00_axi_txn_done => NLW_Convolution_Layer_32bit_0_m00_axi_txn_done_UNCONNECTED,
      m00_axi_wdata(31 downto 0) => Convolution_Layer_32bit_0_M00_AXI_WDATA(31 downto 0),
      m00_axi_wlast => Convolution_Layer_32bit_0_M00_AXI_WLAST,
      m00_axi_wready => Convolution_Layer_32bit_0_M00_AXI_WREADY,
      m00_axi_wstrb(3 downto 0) => Convolution_Layer_32bit_0_M00_AXI_WSTRB(3 downto 0),
      m00_axi_wuser(0) => Convolution_Layer_32bit_0_M00_AXI_WUSER(0),
      m00_axi_wvalid => Convolution_Layer_32bit_0_M00_AXI_WVALID,
      o_convolution_done => Convolution_Layer_32bit_0_o_convolution_done,
      o_cycle(63 downto 0) => NLW_Convolution_Layer_32bit_0_o_cycle_UNCONNECTED(63 downto 0),
      o_data_written => NLW_Convolution_Layer_32bit_0_o_data_written_UNCONNECTED,
      o_epoch(63 downto 0) => NLW_Convolution_Layer_32bit_0_o_epoch_UNCONNECTED(63 downto 0),
      s00_axi_aclk => microblaze_0_Clk,
      s00_axi_araddr(31 downto 0) => microblaze_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      s00_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => microblaze_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      s00_axi_arready => microblaze_0_axi_periph_M01_AXI_ARREADY,
      s00_axi_arvalid => microblaze_0_axi_periph_M01_AXI_ARVALID,
      s00_axi_awaddr(31 downto 0) => microblaze_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      s00_axi_awprot(2 downto 0) => microblaze_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      s00_axi_awready => microblaze_0_axi_periph_M01_AXI_AWREADY,
      s00_axi_awvalid => microblaze_0_axi_periph_M01_AXI_AWVALID,
      s00_axi_bready => microblaze_0_axi_periph_M01_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => microblaze_0_axi_periph_M01_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s00_axi_rready => microblaze_0_axi_periph_M01_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => microblaze_0_axi_periph_M01_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s00_axi_wready => microblaze_0_axi_periph_M01_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => microblaze_0_axi_periph_M01_AXI_WVALID
    );
Maxpool_Layer_32bit_0: component final_accelerator_Maxpool_Layer_32bit_0_0
     port map (
      ila_PR0_almost_empty => NLW_Maxpool_Layer_32bit_0_ila_PR0_almost_empty_UNCONNECTED,
      ila_PR0_almost_full => NLW_Maxpool_Layer_32bit_0_ila_PR0_almost_full_UNCONNECTED,
      ila_PR0_empty => NLW_Maxpool_Layer_32bit_0_ila_PR0_empty_UNCONNECTED,
      ila_PR0_full => NLW_Maxpool_Layer_32bit_0_ila_PR0_full_UNCONNECTED,
      ila_PR1_almost_empty => NLW_Maxpool_Layer_32bit_0_ila_PR1_almost_empty_UNCONNECTED,
      ila_PR1_almost_full => NLW_Maxpool_Layer_32bit_0_ila_PR1_almost_full_UNCONNECTED,
      ila_PR1_empty => NLW_Maxpool_Layer_32bit_0_ila_PR1_empty_UNCONNECTED,
      ila_PR1_full => NLW_Maxpool_Layer_32bit_0_ila_PR1_full_UNCONNECTED,
      ila_PR2_almost_empty => NLW_Maxpool_Layer_32bit_0_ila_PR2_almost_empty_UNCONNECTED,
      ila_PR2_almost_full => NLW_Maxpool_Layer_32bit_0_ila_PR2_almost_full_UNCONNECTED,
      ila_PR2_empty => NLW_Maxpool_Layer_32bit_0_ila_PR2_empty_UNCONNECTED,
      ila_PR2_full => NLW_Maxpool_Layer_32bit_0_ila_PR2_full_UNCONNECTED,
      ila_heap_sorter_done => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_done_UNCONNECTED,
      ila_heap_sorter_fsm_state(3 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_fsm_state_UNCONNECTED(3 downto 0),
      ila_heap_sorter_position1(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position1_UNCONNECTED(31 downto 0),
      ila_heap_sorter_position2(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position2_UNCONNECTED(31 downto 0),
      ila_heap_sorter_position3(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position3_UNCONNECTED(31 downto 0),
      ila_heap_sorter_position4(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position4_UNCONNECTED(31 downto 0),
      ila_heap_sorter_position5(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position5_UNCONNECTED(31 downto 0),
      ila_heap_sorter_position6(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position6_UNCONNECTED(31 downto 0),
      ila_heap_sorter_position7(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position7_UNCONNECTED(31 downto 0),
      ila_heap_sorter_position8(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position8_UNCONNECTED(31 downto 0),
      ila_heap_sorter_position9(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_position9_UNCONNECTED(31 downto 0),
      ila_heap_sorter_ready => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_ready_UNCONNECTED,
      ila_heap_sorter_sorted_data_0(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_0_UNCONNECTED(31 downto 0),
      ila_heap_sorter_sorted_data_1(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_1_UNCONNECTED(31 downto 0),
      ila_heap_sorter_sorted_data_2(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_2_UNCONNECTED(31 downto 0),
      ila_heap_sorter_sorted_data_3(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_3_UNCONNECTED(31 downto 0),
      ila_heap_sorter_sorted_data_4(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_4_UNCONNECTED(31 downto 0),
      ila_heap_sorter_sorted_data_5(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_5_UNCONNECTED(31 downto 0),
      ila_heap_sorter_sorted_data_6(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_6_UNCONNECTED(31 downto 0),
      ila_heap_sorter_sorted_data_7(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_7_UNCONNECTED(31 downto 0),
      ila_heap_sorter_sorted_data_8(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_8_UNCONNECTED(31 downto 0),
      ila_heap_sorter_sorted_data_9(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorted_data_9_UNCONNECTED(31 downto 0),
      ila_heap_sorter_sorter_ready => NLW_Maxpool_Layer_32bit_0_ila_heap_sorter_sorter_ready_UNCONNECTED,
      ila_inbuff_almost_empty => NLW_Maxpool_Layer_32bit_0_ila_inbuff_almost_empty_UNCONNECTED,
      ila_inbuff_almost_full => NLW_Maxpool_Layer_32bit_0_ila_inbuff_almost_full_UNCONNECTED,
      ila_inbuff_empty => NLW_Maxpool_Layer_32bit_0_ila_inbuff_empty_UNCONNECTED,
      ila_inbuff_full => NLW_Maxpool_Layer_32bit_0_ila_inbuff_full_UNCONNECTED,
      ila_inbuff_rd_en => NLW_Maxpool_Layer_32bit_0_ila_inbuff_rd_en_UNCONNECTED,
      ila_inbuff_valid => NLW_Maxpool_Layer_32bit_0_ila_inbuff_valid_UNCONNECTED,
      ila_inbuff_wr_en => NLW_Maxpool_Layer_32bit_0_ila_inbuff_wr_en_UNCONNECTED,
      ila_master_addr1_multiple(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_addr1_multiple_UNCONNECTED(7 downto 0),
      ila_master_addr2_multiple(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_addr2_multiple_UNCONNECTED(7 downto 0),
      ila_master_axi_araddr(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_axi_araddr_UNCONNECTED(31 downto 0),
      ila_master_axi_arlen(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_axi_arlen_UNCONNECTED(7 downto 0),
      ila_master_axi_arready => NLW_Maxpool_Layer_32bit_0_ila_master_axi_arready_UNCONNECTED,
      ila_master_axi_arsize(2 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_axi_arsize_UNCONNECTED(2 downto 0),
      ila_master_axi_arvalid => NLW_Maxpool_Layer_32bit_0_ila_master_axi_arvalid_UNCONNECTED,
      ila_master_axi_awaddr(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_axi_awaddr_UNCONNECTED(31 downto 0),
      ila_master_axi_awlen(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_axi_awlen_UNCONNECTED(7 downto 0),
      ila_master_axi_awready => NLW_Maxpool_Layer_32bit_0_ila_master_axi_awready_UNCONNECTED,
      ila_master_axi_awsize(2 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_axi_awsize_UNCONNECTED(2 downto 0),
      ila_master_axi_awvalid => NLW_Maxpool_Layer_32bit_0_ila_master_axi_awvalid_UNCONNECTED,
      ila_master_axi_bready => NLW_Maxpool_Layer_32bit_0_ila_master_axi_bready_UNCONNECTED,
      ila_master_axi_bvalid => NLW_Maxpool_Layer_32bit_0_ila_master_axi_bvalid_UNCONNECTED,
      ila_master_axi_rbc(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_axi_rbc_UNCONNECTED(7 downto 0),
      ila_master_axi_rdata(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_axi_rdata_UNCONNECTED(31 downto 0),
      ila_master_axi_rlast => NLW_Maxpool_Layer_32bit_0_ila_master_axi_rlast_UNCONNECTED,
      ila_master_axi_rready => NLW_Maxpool_Layer_32bit_0_ila_master_axi_rready_UNCONNECTED,
      ila_master_axi_rvalid => NLW_Maxpool_Layer_32bit_0_ila_master_axi_rvalid_UNCONNECTED,
      ila_master_axi_wbc(8 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_axi_wbc_UNCONNECTED(8 downto 0),
      ila_master_axi_wdata(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_axi_wdata_UNCONNECTED(31 downto 0),
      ila_master_axi_wlast => NLW_Maxpool_Layer_32bit_0_ila_master_axi_wlast_UNCONNECTED,
      ila_master_axi_wready => NLW_Maxpool_Layer_32bit_0_ila_master_axi_wready_UNCONNECTED,
      ila_master_axi_wstrb(3 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_axi_wstrb_UNCONNECTED(3 downto 0),
      ila_master_axi_wvalid => NLW_Maxpool_Layer_32bit_0_ila_master_axi_wvalid_UNCONNECTED,
      ila_master_calculated => NLW_Maxpool_Layer_32bit_0_ila_master_calculated_UNCONNECTED,
      ila_master_channel_complete_counter(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_channel_complete_counter_UNCONNECTED(7 downto 0),
      ila_master_channel_counter(15 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_channel_counter_UNCONNECTED(15 downto 0),
      ila_master_complete_shift_reg(1 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_complete_shift_reg_UNCONNECTED(1 downto 0),
      ila_master_data_valid => NLW_Maxpool_Layer_32bit_0_ila_master_data_valid_UNCONNECTED,
      ila_master_first_calculated => NLW_Maxpool_Layer_32bit_0_ila_master_first_calculated_UNCONNECTED,
      ila_master_fsm_state(3 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_fsm_state_UNCONNECTED(3 downto 0),
      ila_master_inbuff_din(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_inbuff_din_UNCONNECTED(31 downto 0),
      ila_master_inbuff_wr_en => NLW_Maxpool_Layer_32bit_0_ila_master_inbuff_wr_en_UNCONNECTED,
      ila_master_input_addr_counter(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_input_addr_counter_UNCONNECTED(31 downto 0),
      ila_master_input_data_addr_reg(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_input_data_addr_reg_UNCONNECTED(31 downto 0),
      ila_master_input_index(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_input_index_UNCONNECTED(31 downto 0),
      ila_master_input_volume_channels(15 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_input_volume_channels_UNCONNECTED(15 downto 0),
      ila_master_input_volume_size(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_input_volume_size_UNCONNECTED(7 downto 0),
      ila_master_more_bursts_needed => NLW_Maxpool_Layer_32bit_0_ila_master_more_bursts_needed_UNCONNECTED,
      ila_master_operating_length(8 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_operating_length_UNCONNECTED(8 downto 0),
      ila_master_outbuff_rd_en => NLW_Maxpool_Layer_32bit_0_ila_master_outbuff_rd_en_UNCONNECTED,
      ila_master_output_data_addr_reg(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_output_data_addr_reg_UNCONNECTED(31 downto 0),
      ila_master_output_volume_channels(15 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_output_volume_channels_UNCONNECTED(15 downto 0),
      ila_master_output_volume_size(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_output_volume_size_UNCONNECTED(7 downto 0),
      ila_master_pool_kernel_size(3 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_pool_kernel_size_UNCONNECTED(3 downto 0),
      ila_master_row_counter(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_row_counter_UNCONNECTED(7 downto 0),
      ila_master_start => NLW_Maxpool_Layer_32bit_0_ila_master_start_UNCONNECTED,
      ila_master_start_reg(1 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_start_reg_UNCONNECTED(1 downto 0),
      ila_master_stride(3 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_stride_UNCONNECTED(3 downto 0),
      ila_master_stride_counter(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_stride_counter_UNCONNECTED(7 downto 0),
      ila_master_writes_remaining(15 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_master_writes_remaining_UNCONNECTED(15 downto 0),
      ila_outbuff_almost_empty => NLW_Maxpool_Layer_32bit_0_ila_outbuff_almost_empty_UNCONNECTED,
      ila_outbuff_almost_full => NLW_Maxpool_Layer_32bit_0_ila_outbuff_almost_full_UNCONNECTED,
      ila_outbuff_dout(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_outbuff_dout_UNCONNECTED(31 downto 0),
      ila_outbuff_empty => NLW_Maxpool_Layer_32bit_0_ila_outbuff_empty_UNCONNECTED,
      ila_outbuff_full => NLW_Maxpool_Layer_32bit_0_ila_outbuff_full_UNCONNECTED,
      ila_outbuff_rd_en => NLW_Maxpool_Layer_32bit_0_ila_outbuff_rd_en_UNCONNECTED,
      ila_outbuff_valid => NLW_Maxpool_Layer_32bit_0_ila_outbuff_valid_UNCONNECTED,
      ila_row_cntrl_PR0_din(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR0_din_UNCONNECTED(31 downto 0),
      ila_row_cntrl_PR0_rd_en => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR0_rd_en_UNCONNECTED,
      ila_row_cntrl_PR0_wr_en => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR0_wr_en_UNCONNECTED,
      ila_row_cntrl_PR1_din(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR1_din_UNCONNECTED(31 downto 0),
      ila_row_cntrl_PR1_rd_en => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR1_rd_en_UNCONNECTED,
      ila_row_cntrl_PR1_wr_en => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR1_wr_en_UNCONNECTED,
      ila_row_cntrl_PR2_din(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR2_din_UNCONNECTED(31 downto 0),
      ila_row_cntrl_PR2_rd_en => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR2_rd_en_UNCONNECTED,
      ila_row_cntrl_PR2_wr_en => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_PR2_wr_en_UNCONNECTED,
      ila_row_cntrl_busy => Maxpool_Layer_32bit_0_ila_row_cntrl_busy,
      ila_row_cntrl_channel_complete => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_channel_complete_UNCONNECTED,
      ila_row_cntrl_channel_counter(15 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_channel_counter_UNCONNECTED(15 downto 0),
      ila_row_cntrl_column_counter(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_column_counter_UNCONNECTED(7 downto 0),
      ila_row_cntrl_fsm_state(3 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_fsm_state_UNCONNECTED(3 downto 0),
      ila_row_cntrl_inbuff_rd_en => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_inbuff_rd_en_UNCONNECTED,
      ila_row_cntrl_kernel_data_0(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_0_UNCONNECTED(31 downto 0),
      ila_row_cntrl_kernel_data_1(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_1_UNCONNECTED(31 downto 0),
      ila_row_cntrl_kernel_data_2(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_2_UNCONNECTED(31 downto 0),
      ila_row_cntrl_kernel_data_3(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_3_UNCONNECTED(31 downto 0),
      ila_row_cntrl_kernel_data_4(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_4_UNCONNECTED(31 downto 0),
      ila_row_cntrl_kernel_data_5(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_5_UNCONNECTED(31 downto 0),
      ila_row_cntrl_kernel_data_6(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_6_UNCONNECTED(31 downto 0),
      ila_row_cntrl_kernel_data_7(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_7_UNCONNECTED(31 downto 0),
      ila_row_cntrl_kernel_data_8(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_8_UNCONNECTED(31 downto 0),
      ila_row_cntrl_kernel_data_9(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_kernel_data_9_UNCONNECTED(31 downto 0),
      ila_row_cntrl_output_rows_generated(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_output_rows_generated_UNCONNECTED(7 downto 0),
      ila_row_cntrl_output_volume_size(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_output_volume_size_UNCONNECTED(7 downto 0),
      ila_row_cntrl_pixel_counter(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_pixel_counter_UNCONNECTED(7 downto 0),
      ila_row_cntrl_prime_PR0_en => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_prime_PR0_en_UNCONNECTED,
      ila_row_cntrl_prime_PR1_en => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_prime_PR1_en_UNCONNECTED,
      ila_row_cntrl_prime_PR2_en => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_prime_PR2_en_UNCONNECTED,
      ila_row_cntrl_recycle_en => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_recycle_en_UNCONNECTED,
      ila_row_cntrl_row_complete => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_row_complete_UNCONNECTED,
      ila_row_cntrl_row_counter(15 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_row_counter_UNCONNECTED(15 downto 0),
      ila_row_cntrl_sorter_data_0(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_0_UNCONNECTED(31 downto 0),
      ila_row_cntrl_sorter_data_1(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_1_UNCONNECTED(31 downto 0),
      ila_row_cntrl_sorter_data_2(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_2_UNCONNECTED(31 downto 0),
      ila_row_cntrl_sorter_data_3(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_3_UNCONNECTED(31 downto 0),
      ila_row_cntrl_sorter_data_4(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_4_UNCONNECTED(31 downto 0),
      ila_row_cntrl_sorter_data_5(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_5_UNCONNECTED(31 downto 0),
      ila_row_cntrl_sorter_data_6(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_6_UNCONNECTED(31 downto 0),
      ila_row_cntrl_sorter_data_7(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_7_UNCONNECTED(31 downto 0),
      ila_row_cntrl_sorter_data_8(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_8_UNCONNECTED(31 downto 0),
      ila_row_cntrl_sorter_data_9(31 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_9_UNCONNECTED(31 downto 0),
      ila_row_cntrl_sorter_data_valid => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_sorter_data_valid_UNCONNECTED,
      ila_row_cntrl_stride_counter(3 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_stride_counter_UNCONNECTED(3 downto 0),
      ila_row_cntrl_third_row_activate => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_third_row_activate_UNCONNECTED,
      ila_row_cntrl_volume_processed => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_volume_processed_UNCONNECTED,
      ila_row_cntrl_volume_rows_processed(7 downto 0) => NLW_Maxpool_Layer_32bit_0_ila_row_cntrl_volume_rows_processed_UNCONNECTED(7 downto 0),
      m00_axi_aclk => microblaze_0_Clk,
      m00_axi_araddr(31 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_ARADDR(31 downto 0),
      m00_axi_arburst(1 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_ARBURST(1 downto 0),
      m00_axi_arcache(3 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_ARCACHE(3 downto 0),
      m00_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      m00_axi_arid(0) => Maxpool_Layer_32bit_0_M00_AXI_ARID(0),
      m00_axi_arlen(7 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_ARLEN(7 downto 0),
      m00_axi_arlock => Maxpool_Layer_32bit_0_M00_AXI_ARLOCK,
      m00_axi_arprot(2 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_ARPROT(2 downto 0),
      m00_axi_arqos(3 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_ARQOS(3 downto 0),
      m00_axi_arready => Maxpool_Layer_32bit_0_M00_AXI_ARREADY,
      m00_axi_arsize(2 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_ARSIZE(2 downto 0),
      m00_axi_aruser(0) => Maxpool_Layer_32bit_0_M00_AXI_ARUSER(0),
      m00_axi_arvalid => Maxpool_Layer_32bit_0_M00_AXI_ARVALID,
      m00_axi_awaddr(31 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_AWADDR(31 downto 0),
      m00_axi_awburst(1 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_AWBURST(1 downto 0),
      m00_axi_awcache(3 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_AWCACHE(3 downto 0),
      m00_axi_awid(0) => Maxpool_Layer_32bit_0_M00_AXI_AWID(0),
      m00_axi_awlen(7 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_AWLEN(7 downto 0),
      m00_axi_awlock => Maxpool_Layer_32bit_0_M00_AXI_AWLOCK,
      m00_axi_awprot(2 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_AWPROT(2 downto 0),
      m00_axi_awqos(3 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_AWQOS(3 downto 0),
      m00_axi_awready => Maxpool_Layer_32bit_0_M00_AXI_AWREADY,
      m00_axi_awsize(2 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_AWSIZE(2 downto 0),
      m00_axi_awuser(0) => Maxpool_Layer_32bit_0_M00_AXI_AWUSER(0),
      m00_axi_awvalid => Maxpool_Layer_32bit_0_M00_AXI_AWVALID,
      m00_axi_bid(0) => Maxpool_Layer_32bit_0_M00_AXI_BID(0),
      m00_axi_bready => Maxpool_Layer_32bit_0_M00_AXI_BREADY,
      m00_axi_bresp(1 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_BRESP(1 downto 0),
      m00_axi_bvalid => Maxpool_Layer_32bit_0_M00_AXI_BVALID,
      m00_axi_error => NLW_Maxpool_Layer_32bit_0_m00_axi_error_UNCONNECTED,
      m00_axi_rdata(31 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_RDATA(31 downto 0),
      m00_axi_rid(0) => Maxpool_Layer_32bit_0_M00_AXI_RID(0),
      m00_axi_rlast => Maxpool_Layer_32bit_0_M00_AXI_RLAST,
      m00_axi_rready => Maxpool_Layer_32bit_0_M00_AXI_RREADY,
      m00_axi_rresp(1 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_RRESP(1 downto 0),
      m00_axi_rvalid => Maxpool_Layer_32bit_0_M00_AXI_RVALID,
      m00_axi_txn_done => NLW_Maxpool_Layer_32bit_0_m00_axi_txn_done_UNCONNECTED,
      m00_axi_wdata(31 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_WDATA(31 downto 0),
      m00_axi_wlast => Maxpool_Layer_32bit_0_M00_AXI_WLAST,
      m00_axi_wready => Maxpool_Layer_32bit_0_M00_AXI_WREADY,
      m00_axi_wstrb(3 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_WSTRB(3 downto 0),
      m00_axi_wuser(0) => Maxpool_Layer_32bit_0_M00_AXI_WUSER(0),
      m00_axi_wvalid => Maxpool_Layer_32bit_0_M00_AXI_WVALID,
      o_cycle(63 downto 0) => NLW_Maxpool_Layer_32bit_0_o_cycle_UNCONNECTED(63 downto 0),
      o_epoch(63 downto 0) => NLW_Maxpool_Layer_32bit_0_o_epoch_UNCONNECTED(63 downto 0),
      o_pooling_complete => Maxpool_Layer_32bit_0_o_pooling_complete,
      s00_axi_aclk => microblaze_0_Clk,
      s00_axi_araddr(31 downto 0) => microblaze_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      s00_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => microblaze_0_axi_periph_M03_AXI_ARPROT(2 downto 0),
      s00_axi_arready => microblaze_0_axi_periph_M03_AXI_ARREADY,
      s00_axi_arvalid => microblaze_0_axi_periph_M03_AXI_ARVALID,
      s00_axi_awaddr(31 downto 0) => microblaze_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      s00_axi_awprot(2 downto 0) => microblaze_0_axi_periph_M03_AXI_AWPROT(2 downto 0),
      s00_axi_awready => microblaze_0_axi_periph_M03_AXI_AWREADY,
      s00_axi_awvalid => microblaze_0_axi_periph_M03_AXI_AWVALID,
      s00_axi_bready => microblaze_0_axi_periph_M03_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => microblaze_0_axi_periph_M03_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      s00_axi_rready => microblaze_0_axi_periph_M03_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => microblaze_0_axi_periph_M03_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      s00_axi_wready => microblaze_0_axi_periph_M03_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => microblaze_0_axi_periph_M03_AXI_WVALID
    );
Softmax_Layer_32bit_0: component final_accelerator_Softmax_Layer_32bit_0_0
     port map (
      ila_smax_aw_addend(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_aw_addend_UNCONNECTED(31 downto 0),
      ila_smax_aw_augend(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_aw_augend_UNCONNECTED(31 downto 0),
      ila_smax_aw_fsm_state(3 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_aw_fsm_state_UNCONNECTED(3 downto 0),
      ila_smax_aw_hold_counter(7 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_aw_hold_counter_UNCONNECTED(7 downto 0),
      ila_smax_aw_rd_en => NLW_Softmax_Layer_32bit_0_ila_smax_aw_rd_en_UNCONNECTED,
      ila_smax_aw_sum(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_aw_sum_UNCONNECTED(31 downto 0),
      ila_smax_aw_sum_counter(15 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_aw_sum_counter_UNCONNECTED(15 downto 0),
      ila_smax_aw_sum_reg(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_aw_sum_reg_UNCONNECTED(31 downto 0),
      ila_smax_aw_sum_result_valid => NLW_Softmax_Layer_32bit_0_ila_smax_aw_sum_result_valid_UNCONNECTED,
      ila_smax_aw_summing_complete => NLW_Softmax_Layer_32bit_0_ila_smax_aw_summing_complete_UNCONNECTED,
      ila_smax_axi_araddr(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_axi_araddr_UNCONNECTED(31 downto 0),
      ila_smax_axi_arlen(7 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_axi_arlen_UNCONNECTED(7 downto 0),
      ila_smax_axi_arready => NLW_Softmax_Layer_32bit_0_ila_smax_axi_arready_UNCONNECTED,
      ila_smax_axi_arvalid => NLW_Softmax_Layer_32bit_0_ila_smax_axi_arvalid_UNCONNECTED,
      ila_smax_axi_awaddr(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_axi_awaddr_UNCONNECTED(31 downto 0),
      ila_smax_axi_awlen(7 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_axi_awlen_UNCONNECTED(7 downto 0),
      ila_smax_axi_awready => NLW_Softmax_Layer_32bit_0_ila_smax_axi_awready_UNCONNECTED,
      ila_smax_axi_awvalid => NLW_Softmax_Layer_32bit_0_ila_smax_axi_awvalid_UNCONNECTED,
      ila_smax_axi_bready => NLW_Softmax_Layer_32bit_0_ila_smax_axi_bready_UNCONNECTED,
      ila_smax_axi_bvalid => NLW_Softmax_Layer_32bit_0_ila_smax_axi_bvalid_UNCONNECTED,
      ila_smax_axi_rdata(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_axi_rdata_UNCONNECTED(31 downto 0),
      ila_smax_axi_rlast => NLW_Softmax_Layer_32bit_0_ila_smax_axi_rlast_UNCONNECTED,
      ila_smax_axi_rready => NLW_Softmax_Layer_32bit_0_ila_smax_axi_rready_UNCONNECTED,
      ila_smax_axi_rvalid => NLW_Softmax_Layer_32bit_0_ila_smax_axi_rvalid_UNCONNECTED,
      ila_smax_axi_wdata(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_axi_wdata_UNCONNECTED(31 downto 0),
      ila_smax_axi_wlast => NLW_Softmax_Layer_32bit_0_ila_smax_axi_wlast_UNCONNECTED,
      ila_smax_axi_wready => NLW_Softmax_Layer_32bit_0_ila_smax_axi_wready_UNCONNECTED,
      ila_smax_axi_wstrb(3 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_axi_wstrb_UNCONNECTED(3 downto 0),
      ila_smax_axi_wvalid => NLW_Softmax_Layer_32bit_0_ila_smax_axi_wvalid_UNCONNECTED,
      ila_smax_calculated => NLW_Softmax_Layer_32bit_0_ila_smax_calculated_UNCONNECTED,
      ila_smax_channel_counter(15 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_channel_counter_UNCONNECTED(15 downto 0),
      ila_smax_class_counter(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_class_counter_UNCONNECTED(31 downto 0),
      ila_smax_ctrlr_busy => Softmax_Layer_32bit_0_ila_smax_ctrlr_busy,
      ila_smax_ctrlr_clear_all => NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_clear_all_UNCONNECTED,
      ila_smax_ctrlr_controller_ready => NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_controller_ready_UNCONNECTED,
      ila_smax_ctrlr_element_counter(15 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_element_counter_UNCONNECTED(15 downto 0),
      ila_smax_ctrlr_exp_complete => NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_complete_UNCONNECTED,
      ila_smax_ctrlr_exp_fifo_select => NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_fifo_select_UNCONNECTED,
      ila_smax_ctrlr_exp_input(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_input_UNCONNECTED(31 downto 0),
      ila_smax_ctrlr_exp_input_valid => NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_input_valid_UNCONNECTED,
      ila_smax_ctrlr_fsm_state(3 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_fsm_state_UNCONNECTED(3 downto 0),
      ila_smax_ctrlr_softmax_complete => NLW_Softmax_Layer_32bit_0_ila_smax_ctrlr_softmax_complete_UNCONNECTED,
      ila_smax_data_loaded => NLW_Softmax_Layer_32bit_0_ila_smax_data_loaded_UNCONNECTED,
      ila_smax_dw_dividend(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_dw_dividend_UNCONNECTED(31 downto 0),
      ila_smax_dw_division_complete => NLW_Softmax_Layer_32bit_0_ila_smax_dw_division_complete_UNCONNECTED,
      ila_smax_dw_division_reg(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_dw_division_reg_UNCONNECTED(31 downto 0),
      ila_smax_dw_divisor(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_dw_divisor_UNCONNECTED(31 downto 0),
      ila_smax_dw_fsm_state(3 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_dw_fsm_state_UNCONNECTED(3 downto 0),
      ila_smax_dw_hold_counter(7 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_dw_hold_counter_UNCONNECTED(7 downto 0),
      ila_smax_dw_quotient(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_dw_quotient_UNCONNECTED(31 downto 0),
      ila_smax_dw_quotient_counter(15 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_dw_quotient_counter_UNCONNECTED(15 downto 0),
      ila_smax_dw_quotient_result_valid => NLW_Softmax_Layer_32bit_0_ila_smax_dw_quotient_result_valid_UNCONNECTED,
      ila_smax_dw_rd_en => NLW_Softmax_Layer_32bit_0_ila_smax_dw_rd_en_UNCONNECTED,
      ila_smax_exp_addend(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_addend_UNCONNECTED(31 downto 0),
      ila_smax_exp_augend(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_augend_UNCONNECTED(31 downto 0),
      ila_smax_exp_data_reg(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_data_reg_UNCONNECTED(31 downto 0),
      ila_smax_exp_exp_done => NLW_Softmax_Layer_32bit_0_ila_smax_exp_exp_done_UNCONNECTED,
      ila_smax_exp_fifo_almost_empty => NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_almost_empty_UNCONNECTED,
      ila_smax_exp_fifo_almost_full => NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_almost_full_UNCONNECTED,
      ila_smax_exp_fifo_data(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_data_UNCONNECTED(31 downto 0),
      ila_smax_exp_fifo_dout(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_dout_UNCONNECTED(31 downto 0),
      ila_smax_exp_fifo_empty => NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_empty_UNCONNECTED,
      ila_smax_exp_fifo_full => NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_full_UNCONNECTED,
      ila_smax_exp_fifo_rd_en => NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_rd_en_UNCONNECTED,
      ila_smax_exp_fifo_valid => NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_valid_UNCONNECTED,
      ila_smax_exp_fifo_wr_en => NLW_Softmax_Layer_32bit_0_ila_smax_exp_fifo_wr_en_UNCONNECTED,
      ila_smax_exp_fsm_state(3 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_fsm_state_UNCONNECTED(3 downto 0),
      ila_smax_exp_function_ready => NLW_Softmax_Layer_32bit_0_ila_smax_exp_function_ready_UNCONNECTED,
      ila_smax_exp_hold_counter(7 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_hold_counter_UNCONNECTED(7 downto 0),
      ila_smax_exp_mult_reg(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_mult_reg_UNCONNECTED(31 downto 0),
      ila_smax_exp_multiplicand_a(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_multiplicand_a_UNCONNECTED(31 downto 0),
      ila_smax_exp_multiplicand_b(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_multiplicand_b_UNCONNECTED(31 downto 0),
      ila_smax_exp_multiplication_counter(7 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_multiplication_counter_UNCONNECTED(7 downto 0),
      ila_smax_exp_mux_data(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_mux_data_UNCONNECTED(31 downto 0),
      ila_smax_exp_mux_wr_en => NLW_Softmax_Layer_32bit_0_ila_smax_exp_mux_wr_en_UNCONNECTED,
      ila_smax_exp_product(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_product_UNCONNECTED(31 downto 0),
      ila_smax_exp_step_counter(7 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_step_counter_UNCONNECTED(7 downto 0),
      ila_smax_exp_sum(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_sum_UNCONNECTED(31 downto 0),
      ila_smax_exp_sum_counter(7 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_exp_sum_counter_UNCONNECTED(7 downto 0),
      ila_smax_exp_valid_result => NLW_Softmax_Layer_32bit_0_ila_smax_exp_valid_result_UNCONNECTED,
      ila_smax_inbuff_almost_empty => NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_almost_empty_UNCONNECTED,
      ila_smax_inbuff_almost_full => NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_almost_full_UNCONNECTED,
      ila_smax_inbuff_din(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_din_UNCONNECTED(31 downto 0),
      ila_smax_inbuff_dout(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_dout_UNCONNECTED(31 downto 0),
      ila_smax_inbuff_empty => NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_empty_UNCONNECTED,
      ila_smax_inbuff_full => NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_full_UNCONNECTED,
      ila_smax_inbuff_rd_en => NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_rd_en_UNCONNECTED,
      ila_smax_inbuff_valid => NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_valid_UNCONNECTED,
      ila_smax_inbuff_wr_en => NLW_Softmax_Layer_32bit_0_ila_smax_inbuff_wr_en_UNCONNECTED,
      ila_smax_input_data_addr_reg(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_input_data_addr_reg_UNCONNECTED(31 downto 0),
      ila_smax_master_fsm_state(3 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_master_fsm_state_UNCONNECTED(3 downto 0),
      ila_smax_more_bursts_needed => NLW_Softmax_Layer_32bit_0_ila_smax_more_bursts_needed_UNCONNECTED,
      ila_smax_num_elements(15 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_num_elements_UNCONNECTED(15 downto 0),
      ila_smax_outbuff_almost_empty => NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_almost_empty_UNCONNECTED,
      ila_smax_outbuff_almost_full => NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_almost_full_UNCONNECTED,
      ila_smax_outbuff_din(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_din_UNCONNECTED(31 downto 0),
      ila_smax_outbuff_dout(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_dout_UNCONNECTED(31 downto 0),
      ila_smax_outbuff_empty => NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_empty_UNCONNECTED,
      ila_smax_outbuff_full => NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_full_UNCONNECTED,
      ila_smax_outbuff_rd_en => NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_rd_en_UNCONNECTED,
      ila_smax_outbuff_valid => NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_valid_UNCONNECTED,
      ila_smax_outbuff_wr_en => NLW_Softmax_Layer_32bit_0_ila_smax_outbuff_wr_en_UNCONNECTED,
      ila_smax_output_data_addr_reg(31 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_output_data_addr_reg_UNCONNECTED(31 downto 0),
      ila_smax_rbc(7 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_rbc_UNCONNECTED(7 downto 0),
      ila_smax_reads_remaining(15 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_reads_remaining_UNCONNECTED(15 downto 0),
      ila_smax_row_counter(7 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_row_counter_UNCONNECTED(7 downto 0),
      ila_smax_wbc(7 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_wbc_UNCONNECTED(7 downto 0),
      ila_smax_writes_remaining(15 downto 0) => NLW_Softmax_Layer_32bit_0_ila_smax_writes_remaining_UNCONNECTED(15 downto 0),
      m00_axi_aclk => microblaze_0_Clk,
      m00_axi_araddr(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARADDR(31 downto 0),
      m00_axi_arburst(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARBURST(1 downto 0),
      m00_axi_arcache(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARCACHE(3 downto 0),
      m00_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      m00_axi_arid(0) => Softmax_Layer_32bit_0_M00_AXI_ARID(0),
      m00_axi_arlen(7 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARLEN(7 downto 0),
      m00_axi_arlock => Softmax_Layer_32bit_0_M00_AXI_ARLOCK,
      m00_axi_arprot(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARPROT(2 downto 0),
      m00_axi_arqos(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARQOS(3 downto 0),
      m00_axi_arready => Softmax_Layer_32bit_0_M00_AXI_ARREADY(0),
      m00_axi_arsize(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARSIZE(2 downto 0),
      m00_axi_aruser(0) => Softmax_Layer_32bit_0_M00_AXI_ARUSER(0),
      m00_axi_arvalid => Softmax_Layer_32bit_0_M00_AXI_ARVALID,
      m00_axi_awaddr(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWADDR(31 downto 0),
      m00_axi_awburst(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWBURST(1 downto 0),
      m00_axi_awcache(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWCACHE(3 downto 0),
      m00_axi_awid(0) => Softmax_Layer_32bit_0_M00_AXI_AWID(0),
      m00_axi_awlen(7 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWLEN(7 downto 0),
      m00_axi_awlock => Softmax_Layer_32bit_0_M00_AXI_AWLOCK,
      m00_axi_awprot(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWPROT(2 downto 0),
      m00_axi_awqos(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWQOS(3 downto 0),
      m00_axi_awready => Softmax_Layer_32bit_0_M00_AXI_AWREADY(0),
      m00_axi_awsize(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWSIZE(2 downto 0),
      m00_axi_awuser(0) => Softmax_Layer_32bit_0_M00_AXI_AWUSER(0),
      m00_axi_awvalid => Softmax_Layer_32bit_0_M00_AXI_AWVALID,
      m00_axi_bid(0) => Softmax_Layer_32bit_0_M00_AXI_BID(0),
      m00_axi_bready => Softmax_Layer_32bit_0_M00_AXI_BREADY,
      m00_axi_bresp(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_BRESP(1 downto 0),
      m00_axi_buser(0) => Softmax_Layer_32bit_0_M00_AXI_BUSER(0),
      m00_axi_bvalid => Softmax_Layer_32bit_0_M00_AXI_BVALID(0),
      m00_axi_error => NLW_Softmax_Layer_32bit_0_m00_axi_error_UNCONNECTED,
      m00_axi_rdata(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_RDATA(31 downto 0),
      m00_axi_rid(0) => Softmax_Layer_32bit_0_M00_AXI_RID(0),
      m00_axi_rlast => Softmax_Layer_32bit_0_M00_AXI_RLAST(0),
      m00_axi_rready => Softmax_Layer_32bit_0_M00_AXI_RREADY,
      m00_axi_rresp(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_RRESP(1 downto 0),
      m00_axi_ruser(0) => Softmax_Layer_32bit_0_M00_AXI_RUSER(0),
      m00_axi_rvalid => Softmax_Layer_32bit_0_M00_AXI_RVALID(0),
      m00_axi_txn_done => NLW_Softmax_Layer_32bit_0_m00_axi_txn_done_UNCONNECTED,
      m00_axi_wdata(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_WDATA(31 downto 0),
      m00_axi_wlast => Softmax_Layer_32bit_0_M00_AXI_WLAST,
      m00_axi_wready => Softmax_Layer_32bit_0_M00_AXI_WREADY(0),
      m00_axi_wstrb(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_WSTRB(3 downto 0),
      m00_axi_wuser(0) => Softmax_Layer_32bit_0_M00_AXI_WUSER(0),
      m00_axi_wvalid => Softmax_Layer_32bit_0_M00_AXI_WVALID,
      o_cycle(63 downto 0) => NLW_Softmax_Layer_32bit_0_o_cycle_UNCONNECTED(63 downto 0),
      o_epoch(63 downto 0) => NLW_Softmax_Layer_32bit_0_o_epoch_UNCONNECTED(63 downto 0),
      o_softmax_complete => Softmax_Layer_32bit_0_o_softmax_complete,
      s00_axi_aclk => microblaze_0_Clk,
      s00_axi_araddr(31 downto 0) => microblaze_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      s00_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => microblaze_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      s00_axi_arready => microblaze_0_axi_periph_M02_AXI_ARREADY,
      s00_axi_arvalid => microblaze_0_axi_periph_M02_AXI_ARVALID(0),
      s00_axi_awaddr(31 downto 0) => microblaze_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      s00_axi_awprot(2 downto 0) => microblaze_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      s00_axi_awready => microblaze_0_axi_periph_M02_AXI_AWREADY,
      s00_axi_awvalid => microblaze_0_axi_periph_M02_AXI_AWVALID(0),
      s00_axi_bready => microblaze_0_axi_periph_M02_AXI_BREADY(0),
      s00_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => microblaze_0_axi_periph_M02_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s00_axi_rready => microblaze_0_axi_periph_M02_AXI_RREADY(0),
      s00_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => microblaze_0_axi_periph_M02_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s00_axi_wready => microblaze_0_axi_periph_M02_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => microblaze_0_axi_periph_M02_AXI_WVALID(0)
    );
VGA_IF_0: component final_accelerator_VGA_IF_0_0
     port map (
      i_VGA_CLK => clk_wiz_0_clk_out2,
      i_axi_master_clk => microblaze_0_Clk,
      i_axi_slave_clk => microblaze_0_Clk,
      i_reset_n => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      i_start_display_irq => mig_7series_0_init_calib_complete,
      irq => NLW_VGA_IF_0_irq_UNCONNECTED,
      m00_axi_aclk => microblaze_0_Clk,
      m00_axi_araddr(31 downto 0) => VGA_IF_0_M00_AXI_ARADDR(31 downto 0),
      m00_axi_arburst(1 downto 0) => VGA_IF_0_M00_AXI_ARBURST(1 downto 0),
      m00_axi_arcache(3 downto 0) => VGA_IF_0_M00_AXI_ARCACHE(3 downto 0),
      m00_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      m00_axi_arid(0) => VGA_IF_0_M00_AXI_ARID(0),
      m00_axi_arlen(7 downto 0) => VGA_IF_0_M00_AXI_ARLEN(7 downto 0),
      m00_axi_arlock => VGA_IF_0_M00_AXI_ARLOCK,
      m00_axi_arprot(2 downto 0) => VGA_IF_0_M00_AXI_ARPROT(2 downto 0),
      m00_axi_arqos(3 downto 0) => VGA_IF_0_M00_AXI_ARQOS(3 downto 0),
      m00_axi_arready => VGA_IF_0_M00_AXI_ARREADY(0),
      m00_axi_arsize(2 downto 0) => VGA_IF_0_M00_AXI_ARSIZE(2 downto 0),
      m00_axi_aruser(0) => VGA_IF_0_M00_AXI_ARUSER(0),
      m00_axi_arvalid => VGA_IF_0_M00_AXI_ARVALID,
      m00_axi_awaddr(31 downto 0) => VGA_IF_0_M00_AXI_AWADDR(31 downto 0),
      m00_axi_awburst(1 downto 0) => VGA_IF_0_M00_AXI_AWBURST(1 downto 0),
      m00_axi_awcache(3 downto 0) => VGA_IF_0_M00_AXI_AWCACHE(3 downto 0),
      m00_axi_awid(0) => VGA_IF_0_M00_AXI_AWID(0),
      m00_axi_awlen(7 downto 0) => VGA_IF_0_M00_AXI_AWLEN(7 downto 0),
      m00_axi_awlock => VGA_IF_0_M00_AXI_AWLOCK,
      m00_axi_awprot(2 downto 0) => VGA_IF_0_M00_AXI_AWPROT(2 downto 0),
      m00_axi_awqos(3 downto 0) => VGA_IF_0_M00_AXI_AWQOS(3 downto 0),
      m00_axi_awready => VGA_IF_0_M00_AXI_AWREADY(0),
      m00_axi_awsize(2 downto 0) => VGA_IF_0_M00_AXI_AWSIZE(2 downto 0),
      m00_axi_awuser(0) => VGA_IF_0_M00_AXI_AWUSER(0),
      m00_axi_awvalid => VGA_IF_0_M00_AXI_AWVALID,
      m00_axi_bid(0) => VGA_IF_0_M00_AXI_BID(0),
      m00_axi_bready => VGA_IF_0_M00_AXI_BREADY,
      m00_axi_bresp(1 downto 0) => VGA_IF_0_M00_AXI_BRESP(1 downto 0),
      m00_axi_buser(0) => VGA_IF_0_M00_AXI_BUSER(0),
      m00_axi_bvalid => VGA_IF_0_M00_AXI_BVALID(0),
      m00_axi_error => NLW_VGA_IF_0_m00_axi_error_UNCONNECTED,
      m00_axi_init_axi_txn => mig_7series_0_init_calib_complete,
      m00_axi_rdata(31 downto 0) => VGA_IF_0_M00_AXI_RDATA(31 downto 0),
      m00_axi_rid(0) => VGA_IF_0_M00_AXI_RID(0),
      m00_axi_rlast => VGA_IF_0_M00_AXI_RLAST(0),
      m00_axi_rready => VGA_IF_0_M00_AXI_RREADY,
      m00_axi_rresp(1 downto 0) => VGA_IF_0_M00_AXI_RRESP(1 downto 0),
      m00_axi_ruser(0) => VGA_IF_0_M00_AXI_RUSER(0),
      m00_axi_rvalid => VGA_IF_0_M00_AXI_RVALID(0),
      m00_axi_txn_done => NLW_VGA_IF_0_m00_axi_txn_done_UNCONNECTED,
      m00_axi_wdata(31 downto 0) => VGA_IF_0_M00_AXI_WDATA(31 downto 0),
      m00_axi_wlast => VGA_IF_0_M00_AXI_WLAST,
      m00_axi_wready => VGA_IF_0_M00_AXI_WREADY(0),
      m00_axi_wstrb(3 downto 0) => VGA_IF_0_M00_AXI_WSTRB(3 downto 0),
      m00_axi_wuser(0) => VGA_IF_0_M00_AXI_WUSER(0),
      m00_axi_wvalid => VGA_IF_0_M00_AXI_WVALID,
      o_hsync => VGA_IF_0_o_hsync,
      o_vga_data(11 downto 0) => VGA_IF_0_o_vga_data(11 downto 0),
      o_vsync => VGA_IF_0_o_vsync,
      pixel_valid_out => NLW_VGA_IF_0_pixel_valid_out_UNCONNECTED,
      read_en_out => NLW_VGA_IF_0_read_en_out_UNCONNECTED,
      s00_axi_aclk => microblaze_0_Clk,
      s00_axi_araddr(4 downto 0) => microblaze_0_axi_periph_M04_AXI_ARADDR(4 downto 0),
      s00_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => microblaze_0_axi_periph_M04_AXI_ARPROT(2 downto 0),
      s00_axi_arready => microblaze_0_axi_periph_M04_AXI_ARREADY,
      s00_axi_arvalid => microblaze_0_axi_periph_M04_AXI_ARVALID(0),
      s00_axi_awaddr(4 downto 0) => microblaze_0_axi_periph_M04_AXI_AWADDR(4 downto 0),
      s00_axi_awprot(2 downto 0) => microblaze_0_axi_periph_M04_AXI_AWPROT(2 downto 0),
      s00_axi_awready => microblaze_0_axi_periph_M04_AXI_AWREADY,
      s00_axi_awvalid => microblaze_0_axi_periph_M04_AXI_AWVALID(0),
      s00_axi_bready => microblaze_0_axi_periph_M04_AXI_BREADY(0),
      s00_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => microblaze_0_axi_periph_M04_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      s00_axi_rready => microblaze_0_axi_periph_M04_AXI_RREADY(0),
      s00_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => microblaze_0_axi_periph_M04_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      s00_axi_wready => microblaze_0_axi_periph_M04_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => microblaze_0_axi_periph_M04_AXI_WVALID(0),
      s_axi_intr_aclk => microblaze_0_Clk,
      s_axi_intr_araddr(4 downto 0) => microblaze_0_axi_periph_M05_AXI_ARADDR(4 downto 0),
      s_axi_intr_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      s_axi_intr_arprot(2 downto 0) => microblaze_0_axi_periph_M05_AXI_ARPROT(2 downto 0),
      s_axi_intr_arready => microblaze_0_axi_periph_M05_AXI_ARREADY,
      s_axi_intr_arvalid => microblaze_0_axi_periph_M05_AXI_ARVALID(0),
      s_axi_intr_awaddr(4 downto 0) => microblaze_0_axi_periph_M05_AXI_AWADDR(4 downto 0),
      s_axi_intr_awprot(2 downto 0) => microblaze_0_axi_periph_M05_AXI_AWPROT(2 downto 0),
      s_axi_intr_awready => microblaze_0_axi_periph_M05_AXI_AWREADY,
      s_axi_intr_awvalid => microblaze_0_axi_periph_M05_AXI_AWVALID(0),
      s_axi_intr_bready => microblaze_0_axi_periph_M05_AXI_BREADY(0),
      s_axi_intr_bresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      s_axi_intr_bvalid => microblaze_0_axi_periph_M05_AXI_BVALID,
      s_axi_intr_rdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      s_axi_intr_rready => microblaze_0_axi_periph_M05_AXI_RREADY(0),
      s_axi_intr_rresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      s_axi_intr_rvalid => microblaze_0_axi_periph_M05_AXI_RVALID,
      s_axi_intr_wdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      s_axi_intr_wready => microblaze_0_axi_periph_M05_AXI_WREADY,
      s_axi_intr_wstrb(3 downto 0) => microblaze_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      s_axi_intr_wvalid => microblaze_0_axi_periph_M05_AXI_WVALID(0),
      vga_data_out(11 downto 0) => NLW_VGA_IF_0_vga_data_out_UNCONNECTED(11 downto 0)
    );
axi_mem_intercon: entity work.final_accelerator_axi_mem_intercon_1
     port map (
      ACLK => microblaze_0_Clk,
      ARESETN => rst_clk_wiz_0_100M_interconnect_aresetn(0),
      M00_ACLK => mig_7series_0_ui_clk,
      M00_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(28 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(28 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_mem_intercon_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_mem_intercon_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(3 downto 0) => axi_mem_intercon_M00_AXI_ARID(3 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_mem_intercon_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_mem_intercon_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => axi_mem_intercon_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_mem_intercon_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_mem_intercon_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_mem_intercon_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_mem_intercon_M00_AXI_ARVALID,
      M00_AXI_awaddr(28 downto 0) => axi_mem_intercon_M00_AXI_AWADDR(28 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_mem_intercon_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_mem_intercon_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(3 downto 0) => axi_mem_intercon_M00_AXI_AWID(3 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_mem_intercon_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_mem_intercon_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_mem_intercon_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_mem_intercon_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_mem_intercon_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_mem_intercon_M00_AXI_AWVALID,
      M00_AXI_bid(3 downto 0) => axi_mem_intercon_M00_AXI_BID(3 downto 0),
      M00_AXI_bready => axi_mem_intercon_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_mem_intercon_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_mem_intercon_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(3 downto 0) => axi_mem_intercon_M00_AXI_RID(3 downto 0),
      M00_AXI_rlast => axi_mem_intercon_M00_AXI_RLAST,
      M00_AXI_rready => axi_mem_intercon_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_mem_intercon_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_mem_intercon_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_mem_intercon_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => axi_mem_intercon_M00_AXI_WLAST,
      M00_AXI_wready => axi_mem_intercon_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_mem_intercon_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_mem_intercon_M00_AXI_WVALID,
      S00_ACLK => microblaze_0_Clk,
      S00_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => microblaze_0_M_AXI_DC_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => microblaze_0_M_AXI_DC_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => microblaze_0_M_AXI_DC_ARCACHE(3 downto 0),
      S00_AXI_arid(0) => microblaze_0_M_AXI_DC_ARID(0),
      S00_AXI_arlen(7 downto 0) => microblaze_0_M_AXI_DC_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => microblaze_0_M_AXI_DC_ARLOCK,
      S00_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_DC_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => microblaze_0_M_AXI_DC_ARQOS(3 downto 0),
      S00_AXI_arready(0) => microblaze_0_M_AXI_DC_ARREADY(0),
      S00_AXI_arsize(2 downto 0) => microblaze_0_M_AXI_DC_ARSIZE(2 downto 0),
      S00_AXI_arvalid(0) => microblaze_0_M_AXI_DC_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_0_M_AXI_DC_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => microblaze_0_M_AXI_DC_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => microblaze_0_M_AXI_DC_AWCACHE(3 downto 0),
      S00_AXI_awid(0) => microblaze_0_M_AXI_DC_AWID(0),
      S00_AXI_awlen(7 downto 0) => microblaze_0_M_AXI_DC_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => microblaze_0_M_AXI_DC_AWLOCK,
      S00_AXI_awprot(2 downto 0) => microblaze_0_M_AXI_DC_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => microblaze_0_M_AXI_DC_AWQOS(3 downto 0),
      S00_AXI_awready(0) => microblaze_0_M_AXI_DC_AWREADY(0),
      S00_AXI_awsize(2 downto 0) => microblaze_0_M_AXI_DC_AWSIZE(2 downto 0),
      S00_AXI_awvalid(0) => microblaze_0_M_AXI_DC_AWVALID,
      S00_AXI_bid(3 downto 0) => microblaze_0_M_AXI_DC_BID(3 downto 0),
      S00_AXI_bready(0) => microblaze_0_M_AXI_DC_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_0_M_AXI_DC_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => microblaze_0_M_AXI_DC_BVALID(0),
      S00_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_DC_RDATA(31 downto 0),
      S00_AXI_rid(3 downto 0) => microblaze_0_M_AXI_DC_RID(3 downto 0),
      S00_AXI_rlast(0) => microblaze_0_M_AXI_DC_RLAST(0),
      S00_AXI_rready(0) => microblaze_0_M_AXI_DC_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_DC_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => microblaze_0_M_AXI_DC_RVALID(0),
      S00_AXI_wdata(31 downto 0) => microblaze_0_M_AXI_DC_WDATA(31 downto 0),
      S00_AXI_wlast(0) => microblaze_0_M_AXI_DC_WLAST,
      S00_AXI_wready(0) => microblaze_0_M_AXI_DC_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => microblaze_0_M_AXI_DC_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => microblaze_0_M_AXI_DC_WVALID,
      S01_ACLK => microblaze_0_Clk,
      S01_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => microblaze_0_M_AXI_IC_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => microblaze_0_M_AXI_IC_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => microblaze_0_M_AXI_IC_ARCACHE(3 downto 0),
      S01_AXI_arid(0) => microblaze_0_M_AXI_IC_ARID(0),
      S01_AXI_arlen(7 downto 0) => microblaze_0_M_AXI_IC_ARLEN(7 downto 0),
      S01_AXI_arlock(0) => microblaze_0_M_AXI_IC_ARLOCK,
      S01_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_IC_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => microblaze_0_M_AXI_IC_ARQOS(3 downto 0),
      S01_AXI_arready(0) => microblaze_0_M_AXI_IC_ARREADY(0),
      S01_AXI_arsize(2 downto 0) => microblaze_0_M_AXI_IC_ARSIZE(2 downto 0),
      S01_AXI_arvalid(0) => microblaze_0_M_AXI_IC_ARVALID,
      S01_AXI_awaddr(31 downto 0) => microblaze_0_M_AXI_IC_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => microblaze_0_M_AXI_IC_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => microblaze_0_M_AXI_IC_AWCACHE(3 downto 0),
      S01_AXI_awid(0) => microblaze_0_M_AXI_IC_AWID(0),
      S01_AXI_awlen(7 downto 0) => microblaze_0_M_AXI_IC_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => microblaze_0_M_AXI_IC_AWLOCK,
      S01_AXI_awprot(2 downto 0) => microblaze_0_M_AXI_IC_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => microblaze_0_M_AXI_IC_AWQOS(3 downto 0),
      S01_AXI_awready(0) => microblaze_0_M_AXI_IC_AWREADY(0),
      S01_AXI_awsize(2 downto 0) => microblaze_0_M_AXI_IC_AWSIZE(2 downto 0),
      S01_AXI_awvalid(0) => microblaze_0_M_AXI_IC_AWVALID,
      S01_AXI_bid(3 downto 0) => microblaze_0_M_AXI_IC_BID(3 downto 0),
      S01_AXI_bready(0) => microblaze_0_M_AXI_IC_BREADY,
      S01_AXI_bresp(1 downto 0) => microblaze_0_M_AXI_IC_BRESP(1 downto 0),
      S01_AXI_bvalid(0) => microblaze_0_M_AXI_IC_BVALID(0),
      S01_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_IC_RDATA(31 downto 0),
      S01_AXI_rid(3 downto 0) => microblaze_0_M_AXI_IC_RID(3 downto 0),
      S01_AXI_rlast(0) => microblaze_0_M_AXI_IC_RLAST(0),
      S01_AXI_rready(0) => microblaze_0_M_AXI_IC_RREADY,
      S01_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_IC_RRESP(1 downto 0),
      S01_AXI_rvalid(0) => microblaze_0_M_AXI_IC_RVALID(0),
      S01_AXI_wdata(31 downto 0) => microblaze_0_M_AXI_IC_WDATA(31 downto 0),
      S01_AXI_wlast(0) => microblaze_0_M_AXI_IC_WLAST,
      S01_AXI_wready(0) => microblaze_0_M_AXI_IC_WREADY(0),
      S01_AXI_wstrb(3 downto 0) => microblaze_0_M_AXI_IC_WSTRB(3 downto 0),
      S01_AXI_wvalid(0) => microblaze_0_M_AXI_IC_WVALID,
      S02_ACLK => microblaze_0_Clk,
      S02_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      S02_AXI_araddr(31 downto 0) => Convolution_Layer_32bit_0_M00_AXI_ARADDR(31 downto 0),
      S02_AXI_arburst(1 downto 0) => Convolution_Layer_32bit_0_M00_AXI_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => Convolution_Layer_32bit_0_M00_AXI_ARCACHE(3 downto 0),
      S02_AXI_arid(0) => Convolution_Layer_32bit_0_M00_AXI_ARID(0),
      S02_AXI_arlen(7 downto 0) => Convolution_Layer_32bit_0_M00_AXI_ARLEN(7 downto 0),
      S02_AXI_arlock => Convolution_Layer_32bit_0_M00_AXI_ARLOCK,
      S02_AXI_arprot(2 downto 0) => Convolution_Layer_32bit_0_M00_AXI_ARPROT(2 downto 0),
      S02_AXI_arqos(3 downto 0) => Convolution_Layer_32bit_0_M00_AXI_ARQOS(3 downto 0),
      S02_AXI_arready => Convolution_Layer_32bit_0_M00_AXI_ARREADY,
      S02_AXI_arsize(2 downto 0) => Convolution_Layer_32bit_0_M00_AXI_ARSIZE(2 downto 0),
      S02_AXI_aruser(0) => Convolution_Layer_32bit_0_M00_AXI_ARUSER(0),
      S02_AXI_arvalid => Convolution_Layer_32bit_0_M00_AXI_ARVALID,
      S02_AXI_awaddr(31 downto 0) => Convolution_Layer_32bit_0_M00_AXI_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => Convolution_Layer_32bit_0_M00_AXI_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => Convolution_Layer_32bit_0_M00_AXI_AWCACHE(3 downto 0),
      S02_AXI_awid(0) => Convolution_Layer_32bit_0_M00_AXI_AWID(0),
      S02_AXI_awlen(7 downto 0) => Convolution_Layer_32bit_0_M00_AXI_AWLEN(7 downto 0),
      S02_AXI_awlock => Convolution_Layer_32bit_0_M00_AXI_AWLOCK,
      S02_AXI_awprot(2 downto 0) => Convolution_Layer_32bit_0_M00_AXI_AWPROT(2 downto 0),
      S02_AXI_awqos(3 downto 0) => Convolution_Layer_32bit_0_M00_AXI_AWQOS(3 downto 0),
      S02_AXI_awready => Convolution_Layer_32bit_0_M00_AXI_AWREADY,
      S02_AXI_awsize(2 downto 0) => Convolution_Layer_32bit_0_M00_AXI_AWSIZE(2 downto 0),
      S02_AXI_awuser(0) => Convolution_Layer_32bit_0_M00_AXI_AWUSER(0),
      S02_AXI_awvalid => Convolution_Layer_32bit_0_M00_AXI_AWVALID,
      S02_AXI_bid(3 downto 0) => Convolution_Layer_32bit_0_M00_AXI_BID(3 downto 0),
      S02_AXI_bready => Convolution_Layer_32bit_0_M00_AXI_BREADY,
      S02_AXI_bresp(1 downto 0) => Convolution_Layer_32bit_0_M00_AXI_BRESP(1 downto 0),
      S02_AXI_bvalid => Convolution_Layer_32bit_0_M00_AXI_BVALID,
      S02_AXI_rdata(31 downto 0) => Convolution_Layer_32bit_0_M00_AXI_RDATA(31 downto 0),
      S02_AXI_rid(3 downto 0) => Convolution_Layer_32bit_0_M00_AXI_RID(3 downto 0),
      S02_AXI_rlast => Convolution_Layer_32bit_0_M00_AXI_RLAST,
      S02_AXI_rready => Convolution_Layer_32bit_0_M00_AXI_RREADY,
      S02_AXI_rresp(1 downto 0) => Convolution_Layer_32bit_0_M00_AXI_RRESP(1 downto 0),
      S02_AXI_rvalid => Convolution_Layer_32bit_0_M00_AXI_RVALID,
      S02_AXI_wdata(31 downto 0) => Convolution_Layer_32bit_0_M00_AXI_WDATA(31 downto 0),
      S02_AXI_wlast => Convolution_Layer_32bit_0_M00_AXI_WLAST,
      S02_AXI_wready => Convolution_Layer_32bit_0_M00_AXI_WREADY,
      S02_AXI_wstrb(3 downto 0) => Convolution_Layer_32bit_0_M00_AXI_WSTRB(3 downto 0),
      S02_AXI_wuser(0) => Convolution_Layer_32bit_0_M00_AXI_WUSER(0),
      S02_AXI_wvalid => Convolution_Layer_32bit_0_M00_AXI_WVALID,
      S03_ACLK => microblaze_0_Clk,
      S03_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      S03_AXI_araddr(31 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_ARADDR(31 downto 0),
      S03_AXI_arburst(1 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_ARBURST(1 downto 0),
      S03_AXI_arcache(3 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_ARCACHE(3 downto 0),
      S03_AXI_arid(0) => Maxpool_Layer_32bit_0_M00_AXI_ARID(0),
      S03_AXI_arlen(7 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_ARLEN(7 downto 0),
      S03_AXI_arlock => Maxpool_Layer_32bit_0_M00_AXI_ARLOCK,
      S03_AXI_arprot(2 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_ARPROT(2 downto 0),
      S03_AXI_arqos(3 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_ARQOS(3 downto 0),
      S03_AXI_arready => Maxpool_Layer_32bit_0_M00_AXI_ARREADY,
      S03_AXI_arsize(2 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_ARSIZE(2 downto 0),
      S03_AXI_aruser(0) => Maxpool_Layer_32bit_0_M00_AXI_ARUSER(0),
      S03_AXI_arvalid => Maxpool_Layer_32bit_0_M00_AXI_ARVALID,
      S03_AXI_awaddr(31 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_AWADDR(31 downto 0),
      S03_AXI_awburst(1 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_AWBURST(1 downto 0),
      S03_AXI_awcache(3 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_AWCACHE(3 downto 0),
      S03_AXI_awid(0) => Maxpool_Layer_32bit_0_M00_AXI_AWID(0),
      S03_AXI_awlen(7 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_AWLEN(7 downto 0),
      S03_AXI_awlock => Maxpool_Layer_32bit_0_M00_AXI_AWLOCK,
      S03_AXI_awprot(2 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_AWPROT(2 downto 0),
      S03_AXI_awqos(3 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_AWQOS(3 downto 0),
      S03_AXI_awready => Maxpool_Layer_32bit_0_M00_AXI_AWREADY,
      S03_AXI_awsize(2 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_AWSIZE(2 downto 0),
      S03_AXI_awuser(0) => Maxpool_Layer_32bit_0_M00_AXI_AWUSER(0),
      S03_AXI_awvalid => Maxpool_Layer_32bit_0_M00_AXI_AWVALID,
      S03_AXI_bid(3 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_BID(3 downto 0),
      S03_AXI_bready => Maxpool_Layer_32bit_0_M00_AXI_BREADY,
      S03_AXI_bresp(1 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_BRESP(1 downto 0),
      S03_AXI_bvalid => Maxpool_Layer_32bit_0_M00_AXI_BVALID,
      S03_AXI_rdata(31 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_RDATA(31 downto 0),
      S03_AXI_rid(3 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_RID(3 downto 0),
      S03_AXI_rlast => Maxpool_Layer_32bit_0_M00_AXI_RLAST,
      S03_AXI_rready => Maxpool_Layer_32bit_0_M00_AXI_RREADY,
      S03_AXI_rresp(1 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_RRESP(1 downto 0),
      S03_AXI_rvalid => Maxpool_Layer_32bit_0_M00_AXI_RVALID,
      S03_AXI_wdata(31 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_WDATA(31 downto 0),
      S03_AXI_wlast => Maxpool_Layer_32bit_0_M00_AXI_WLAST,
      S03_AXI_wready => Maxpool_Layer_32bit_0_M00_AXI_WREADY,
      S03_AXI_wstrb(3 downto 0) => Maxpool_Layer_32bit_0_M00_AXI_WSTRB(3 downto 0),
      S03_AXI_wuser(0) => Maxpool_Layer_32bit_0_M00_AXI_WUSER(0),
      S03_AXI_wvalid => Maxpool_Layer_32bit_0_M00_AXI_WVALID,
      S04_ACLK => microblaze_0_Clk,
      S04_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      S04_AXI_araddr(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARADDR(31 downto 0),
      S04_AXI_arburst(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARBURST(1 downto 0),
      S04_AXI_arcache(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARCACHE(3 downto 0),
      S04_AXI_arid(0) => Softmax_Layer_32bit_0_M00_AXI_ARID(0),
      S04_AXI_arlen(7 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARLEN(7 downto 0),
      S04_AXI_arlock(0) => Softmax_Layer_32bit_0_M00_AXI_ARLOCK,
      S04_AXI_arprot(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARPROT(2 downto 0),
      S04_AXI_arqos(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARQOS(3 downto 0),
      S04_AXI_arready(0) => Softmax_Layer_32bit_0_M00_AXI_ARREADY(0),
      S04_AXI_arsize(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARSIZE(2 downto 0),
      S04_AXI_aruser(0) => Softmax_Layer_32bit_0_M00_AXI_ARUSER(0),
      S04_AXI_arvalid(0) => Softmax_Layer_32bit_0_M00_AXI_ARVALID,
      S04_AXI_awaddr(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWADDR(31 downto 0),
      S04_AXI_awburst(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWBURST(1 downto 0),
      S04_AXI_awcache(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWCACHE(3 downto 0),
      S04_AXI_awid(0) => Softmax_Layer_32bit_0_M00_AXI_AWID(0),
      S04_AXI_awlen(7 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWLEN(7 downto 0),
      S04_AXI_awlock(0) => Softmax_Layer_32bit_0_M00_AXI_AWLOCK,
      S04_AXI_awprot(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWPROT(2 downto 0),
      S04_AXI_awqos(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWQOS(3 downto 0),
      S04_AXI_awready(0) => Softmax_Layer_32bit_0_M00_AXI_AWREADY(0),
      S04_AXI_awsize(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWSIZE(2 downto 0),
      S04_AXI_awuser(0) => Softmax_Layer_32bit_0_M00_AXI_AWUSER(0),
      S04_AXI_awvalid(0) => Softmax_Layer_32bit_0_M00_AXI_AWVALID,
      S04_AXI_bid(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_BID(3 downto 0),
      S04_AXI_bready(0) => Softmax_Layer_32bit_0_M00_AXI_BREADY,
      S04_AXI_bresp(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_BRESP(1 downto 0),
      S04_AXI_buser(0) => Softmax_Layer_32bit_0_M00_AXI_BUSER(0),
      S04_AXI_bvalid(0) => Softmax_Layer_32bit_0_M00_AXI_BVALID(0),
      S04_AXI_rdata(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_RDATA(31 downto 0),
      S04_AXI_rid(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_RID(3 downto 0),
      S04_AXI_rlast(0) => Softmax_Layer_32bit_0_M00_AXI_RLAST(0),
      S04_AXI_rready(0) => Softmax_Layer_32bit_0_M00_AXI_RREADY,
      S04_AXI_rresp(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_RRESP(1 downto 0),
      S04_AXI_ruser(0) => Softmax_Layer_32bit_0_M00_AXI_RUSER(0),
      S04_AXI_rvalid(0) => Softmax_Layer_32bit_0_M00_AXI_RVALID(0),
      S04_AXI_wdata(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_WDATA(31 downto 0),
      S04_AXI_wlast(0) => Softmax_Layer_32bit_0_M00_AXI_WLAST,
      S04_AXI_wready(0) => Softmax_Layer_32bit_0_M00_AXI_WREADY(0),
      S04_AXI_wstrb(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_WSTRB(3 downto 0),
      S04_AXI_wuser(0) => Softmax_Layer_32bit_0_M00_AXI_WUSER(0),
      S04_AXI_wvalid(0) => Softmax_Layer_32bit_0_M00_AXI_WVALID,
      S05_ACLK => microblaze_0_Clk,
      S05_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      S05_AXI_araddr(31 downto 0) => VGA_IF_0_M00_AXI_ARADDR(31 downto 0),
      S05_AXI_arburst(1 downto 0) => VGA_IF_0_M00_AXI_ARBURST(1 downto 0),
      S05_AXI_arcache(3 downto 0) => VGA_IF_0_M00_AXI_ARCACHE(3 downto 0),
      S05_AXI_arid(0) => VGA_IF_0_M00_AXI_ARID(0),
      S05_AXI_arlen(7 downto 0) => VGA_IF_0_M00_AXI_ARLEN(7 downto 0),
      S05_AXI_arlock(0) => VGA_IF_0_M00_AXI_ARLOCK,
      S05_AXI_arprot(2 downto 0) => VGA_IF_0_M00_AXI_ARPROT(2 downto 0),
      S05_AXI_arqos(3 downto 0) => VGA_IF_0_M00_AXI_ARQOS(3 downto 0),
      S05_AXI_arready(0) => VGA_IF_0_M00_AXI_ARREADY(0),
      S05_AXI_arsize(2 downto 0) => VGA_IF_0_M00_AXI_ARSIZE(2 downto 0),
      S05_AXI_aruser(0) => VGA_IF_0_M00_AXI_ARUSER(0),
      S05_AXI_arvalid(0) => VGA_IF_0_M00_AXI_ARVALID,
      S05_AXI_awaddr(31 downto 0) => VGA_IF_0_M00_AXI_AWADDR(31 downto 0),
      S05_AXI_awburst(1 downto 0) => VGA_IF_0_M00_AXI_AWBURST(1 downto 0),
      S05_AXI_awcache(3 downto 0) => VGA_IF_0_M00_AXI_AWCACHE(3 downto 0),
      S05_AXI_awid(0) => VGA_IF_0_M00_AXI_AWID(0),
      S05_AXI_awlen(7 downto 0) => VGA_IF_0_M00_AXI_AWLEN(7 downto 0),
      S05_AXI_awlock(0) => VGA_IF_0_M00_AXI_AWLOCK,
      S05_AXI_awprot(2 downto 0) => VGA_IF_0_M00_AXI_AWPROT(2 downto 0),
      S05_AXI_awqos(3 downto 0) => VGA_IF_0_M00_AXI_AWQOS(3 downto 0),
      S05_AXI_awready(0) => VGA_IF_0_M00_AXI_AWREADY(0),
      S05_AXI_awsize(2 downto 0) => VGA_IF_0_M00_AXI_AWSIZE(2 downto 0),
      S05_AXI_awuser(0) => VGA_IF_0_M00_AXI_AWUSER(0),
      S05_AXI_awvalid(0) => VGA_IF_0_M00_AXI_AWVALID,
      S05_AXI_bid(3 downto 0) => VGA_IF_0_M00_AXI_BID(3 downto 0),
      S05_AXI_bready(0) => VGA_IF_0_M00_AXI_BREADY,
      S05_AXI_bresp(1 downto 0) => VGA_IF_0_M00_AXI_BRESP(1 downto 0),
      S05_AXI_buser(0) => VGA_IF_0_M00_AXI_BUSER(0),
      S05_AXI_bvalid(0) => VGA_IF_0_M00_AXI_BVALID(0),
      S05_AXI_rdata(31 downto 0) => VGA_IF_0_M00_AXI_RDATA(31 downto 0),
      S05_AXI_rid(3 downto 0) => VGA_IF_0_M00_AXI_RID(3 downto 0),
      S05_AXI_rlast(0) => VGA_IF_0_M00_AXI_RLAST(0),
      S05_AXI_rready(0) => VGA_IF_0_M00_AXI_RREADY,
      S05_AXI_rresp(1 downto 0) => VGA_IF_0_M00_AXI_RRESP(1 downto 0),
      S05_AXI_ruser(0) => VGA_IF_0_M00_AXI_RUSER(0),
      S05_AXI_rvalid(0) => VGA_IF_0_M00_AXI_RVALID(0),
      S05_AXI_wdata(31 downto 0) => VGA_IF_0_M00_AXI_WDATA(31 downto 0),
      S05_AXI_wlast(0) => VGA_IF_0_M00_AXI_WLAST,
      S05_AXI_wready(0) => VGA_IF_0_M00_AXI_WREADY(0),
      S05_AXI_wstrb(3 downto 0) => VGA_IF_0_M00_AXI_WSTRB(3 downto 0),
      S05_AXI_wuser(0) => VGA_IF_0_M00_AXI_WUSER(0),
      S05_AXI_wvalid(0) => VGA_IF_0_M00_AXI_WVALID
    );
axi_uartlite_0: component final_accelerator_axi_uartlite_0_0
     port map (
      interrupt => NLW_axi_uartlite_0_interrupt_UNCONNECTED,
      rx => axi_uartlite_0_UART_RxD,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(3 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M06_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M06_AXI_ARVALID,
      s_axi_awaddr(3 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(3 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M06_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M06_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M06_AXI_WVALID,
      tx => axi_uartlite_0_UART_TxD
    );
clk_wiz_0: component final_accelerator_clk_wiz_0_0
     port map (
      clk_in1 => clock_rtl_1,
      clk_out1 => microblaze_0_Clk,
      clk_out2 => clk_wiz_0_clk_out2,
      clk_out3 => clk_wiz_0_clk_out3,
      locked => clk_wiz_0_locked,
      resetn => reset_rtl_1
    );
mdm_1: component final_accelerator_mdm_1_1
     port map (
      Dbg_Capture_0 => microblaze_0_debug_CAPTURE,
      Dbg_Clk_0 => microblaze_0_debug_CLK,
      Dbg_Disable_0 => microblaze_0_debug_DISABLE,
      Dbg_Reg_En_0(0 to 7) => microblaze_0_debug_REG_EN(0 to 7),
      Dbg_Rst_0 => microblaze_0_debug_RST,
      Dbg_Shift_0 => microblaze_0_debug_SHIFT,
      Dbg_TDI_0 => microblaze_0_debug_TDI,
      Dbg_TDO_0 => microblaze_0_debug_TDO,
      Dbg_Update_0 => microblaze_0_debug_UPDATE,
      Debug_SYS_Rst => mdm_1_debug_sys_rst
    );
microblaze_0: component final_accelerator_microblaze_0_1
     port map (
      Byte_Enable(0 to 3) => microblaze_0_dlmb_1_BE(0 to 3),
      Clk => microblaze_0_Clk,
      DCE => microblaze_0_dlmb_1_CE,
      DReady => microblaze_0_dlmb_1_READY,
      DUE => microblaze_0_dlmb_1_UE,
      DWait => microblaze_0_dlmb_1_WAIT,
      D_AS => microblaze_0_dlmb_1_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_0_dlmb_1_ABUS(0 to 31),
      Data_Read(0 to 31) => microblaze_0_dlmb_1_READDBUS(0 to 31),
      Data_Write(0 to 31) => microblaze_0_dlmb_1_WRITEDBUS(0 to 31),
      Dbg_Capture => microblaze_0_debug_CAPTURE,
      Dbg_Clk => microblaze_0_debug_CLK,
      Dbg_Disable => microblaze_0_debug_DISABLE,
      Dbg_Reg_En(0 to 7) => microblaze_0_debug_REG_EN(0 to 7),
      Dbg_Shift => microblaze_0_debug_SHIFT,
      Dbg_TDI => microblaze_0_debug_TDI,
      Dbg_TDO => microblaze_0_debug_TDO,
      Dbg_Update => microblaze_0_debug_UPDATE,
      Debug_Rst => microblaze_0_debug_RST,
      ICE => microblaze_0_ilmb_1_CE,
      IFetch => microblaze_0_ilmb_1_READSTROBE,
      IReady => microblaze_0_ilmb_1_READY,
      IUE => microblaze_0_ilmb_1_UE,
      IWAIT => microblaze_0_ilmb_1_WAIT,
      I_AS => microblaze_0_ilmb_1_ADDRSTROBE,
      Instr(0 to 31) => microblaze_0_ilmb_1_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => microblaze_0_ilmb_1_ABUS(0 to 31),
      Interrupt => microblaze_0_interrupt_INTERRUPT,
      Interrupt_Ack(0 to 1) => microblaze_0_interrupt_ACK(0 to 1),
      Interrupt_Address(0) => microblaze_0_interrupt_ADDRESS(31),
      Interrupt_Address(1) => microblaze_0_interrupt_ADDRESS(30),
      Interrupt_Address(2) => microblaze_0_interrupt_ADDRESS(29),
      Interrupt_Address(3) => microblaze_0_interrupt_ADDRESS(28),
      Interrupt_Address(4) => microblaze_0_interrupt_ADDRESS(27),
      Interrupt_Address(5) => microblaze_0_interrupt_ADDRESS(26),
      Interrupt_Address(6) => microblaze_0_interrupt_ADDRESS(25),
      Interrupt_Address(7) => microblaze_0_interrupt_ADDRESS(24),
      Interrupt_Address(8) => microblaze_0_interrupt_ADDRESS(23),
      Interrupt_Address(9) => microblaze_0_interrupt_ADDRESS(22),
      Interrupt_Address(10) => microblaze_0_interrupt_ADDRESS(21),
      Interrupt_Address(11) => microblaze_0_interrupt_ADDRESS(20),
      Interrupt_Address(12) => microblaze_0_interrupt_ADDRESS(19),
      Interrupt_Address(13) => microblaze_0_interrupt_ADDRESS(18),
      Interrupt_Address(14) => microblaze_0_interrupt_ADDRESS(17),
      Interrupt_Address(15) => microblaze_0_interrupt_ADDRESS(16),
      Interrupt_Address(16) => microblaze_0_interrupt_ADDRESS(15),
      Interrupt_Address(17) => microblaze_0_interrupt_ADDRESS(14),
      Interrupt_Address(18) => microblaze_0_interrupt_ADDRESS(13),
      Interrupt_Address(19) => microblaze_0_interrupt_ADDRESS(12),
      Interrupt_Address(20) => microblaze_0_interrupt_ADDRESS(11),
      Interrupt_Address(21) => microblaze_0_interrupt_ADDRESS(10),
      Interrupt_Address(22) => microblaze_0_interrupt_ADDRESS(9),
      Interrupt_Address(23) => microblaze_0_interrupt_ADDRESS(8),
      Interrupt_Address(24) => microblaze_0_interrupt_ADDRESS(7),
      Interrupt_Address(25) => microblaze_0_interrupt_ADDRESS(6),
      Interrupt_Address(26) => microblaze_0_interrupt_ADDRESS(5),
      Interrupt_Address(27) => microblaze_0_interrupt_ADDRESS(4),
      Interrupt_Address(28) => microblaze_0_interrupt_ADDRESS(3),
      Interrupt_Address(29) => microblaze_0_interrupt_ADDRESS(2),
      Interrupt_Address(30) => microblaze_0_interrupt_ADDRESS(1),
      Interrupt_Address(31) => microblaze_0_interrupt_ADDRESS(0),
      M_AXI_DC_ARADDR(31 downto 0) => microblaze_0_M_AXI_DC_ARADDR(31 downto 0),
      M_AXI_DC_ARBURST(1 downto 0) => microblaze_0_M_AXI_DC_ARBURST(1 downto 0),
      M_AXI_DC_ARCACHE(3 downto 0) => microblaze_0_M_AXI_DC_ARCACHE(3 downto 0),
      M_AXI_DC_ARID(0) => microblaze_0_M_AXI_DC_ARID(0),
      M_AXI_DC_ARLEN(7 downto 0) => microblaze_0_M_AXI_DC_ARLEN(7 downto 0),
      M_AXI_DC_ARLOCK => microblaze_0_M_AXI_DC_ARLOCK,
      M_AXI_DC_ARPROT(2 downto 0) => microblaze_0_M_AXI_DC_ARPROT(2 downto 0),
      M_AXI_DC_ARQOS(3 downto 0) => microblaze_0_M_AXI_DC_ARQOS(3 downto 0),
      M_AXI_DC_ARREADY => microblaze_0_M_AXI_DC_ARREADY(0),
      M_AXI_DC_ARSIZE(2 downto 0) => microblaze_0_M_AXI_DC_ARSIZE(2 downto 0),
      M_AXI_DC_ARVALID => microblaze_0_M_AXI_DC_ARVALID,
      M_AXI_DC_AWADDR(31 downto 0) => microblaze_0_M_AXI_DC_AWADDR(31 downto 0),
      M_AXI_DC_AWBURST(1 downto 0) => microblaze_0_M_AXI_DC_AWBURST(1 downto 0),
      M_AXI_DC_AWCACHE(3 downto 0) => microblaze_0_M_AXI_DC_AWCACHE(3 downto 0),
      M_AXI_DC_AWID(0) => microblaze_0_M_AXI_DC_AWID(0),
      M_AXI_DC_AWLEN(7 downto 0) => microblaze_0_M_AXI_DC_AWLEN(7 downto 0),
      M_AXI_DC_AWLOCK => microblaze_0_M_AXI_DC_AWLOCK,
      M_AXI_DC_AWPROT(2 downto 0) => microblaze_0_M_AXI_DC_AWPROT(2 downto 0),
      M_AXI_DC_AWQOS(3 downto 0) => microblaze_0_M_AXI_DC_AWQOS(3 downto 0),
      M_AXI_DC_AWREADY => microblaze_0_M_AXI_DC_AWREADY(0),
      M_AXI_DC_AWSIZE(2 downto 0) => microblaze_0_M_AXI_DC_AWSIZE(2 downto 0),
      M_AXI_DC_AWVALID => microblaze_0_M_AXI_DC_AWVALID,
      M_AXI_DC_BID(0) => microblaze_0_M_AXI_DC_BID(0),
      M_AXI_DC_BREADY => microblaze_0_M_AXI_DC_BREADY,
      M_AXI_DC_BRESP(1 downto 0) => microblaze_0_M_AXI_DC_BRESP(1 downto 0),
      M_AXI_DC_BVALID => microblaze_0_M_AXI_DC_BVALID(0),
      M_AXI_DC_RDATA(31 downto 0) => microblaze_0_M_AXI_DC_RDATA(31 downto 0),
      M_AXI_DC_RID(0) => microblaze_0_M_AXI_DC_RID(0),
      M_AXI_DC_RLAST => microblaze_0_M_AXI_DC_RLAST(0),
      M_AXI_DC_RREADY => microblaze_0_M_AXI_DC_RREADY,
      M_AXI_DC_RRESP(1 downto 0) => microblaze_0_M_AXI_DC_RRESP(1 downto 0),
      M_AXI_DC_RVALID => microblaze_0_M_AXI_DC_RVALID(0),
      M_AXI_DC_WDATA(31 downto 0) => microblaze_0_M_AXI_DC_WDATA(31 downto 0),
      M_AXI_DC_WLAST => microblaze_0_M_AXI_DC_WLAST,
      M_AXI_DC_WREADY => microblaze_0_M_AXI_DC_WREADY(0),
      M_AXI_DC_WSTRB(3 downto 0) => microblaze_0_M_AXI_DC_WSTRB(3 downto 0),
      M_AXI_DC_WVALID => microblaze_0_M_AXI_DC_WVALID,
      M_AXI_DP_ARADDR(31 downto 0) => microblaze_0_axi_dp_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => microblaze_0_axi_dp_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => microblaze_0_axi_dp_ARREADY(0),
      M_AXI_DP_ARVALID => microblaze_0_axi_dp_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => microblaze_0_axi_dp_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => microblaze_0_axi_dp_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => microblaze_0_axi_dp_AWREADY(0),
      M_AXI_DP_AWVALID => microblaze_0_axi_dp_AWVALID,
      M_AXI_DP_BREADY => microblaze_0_axi_dp_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => microblaze_0_axi_dp_BRESP(1 downto 0),
      M_AXI_DP_BVALID => microblaze_0_axi_dp_BVALID(0),
      M_AXI_DP_RDATA(31 downto 0) => microblaze_0_axi_dp_RDATA(31 downto 0),
      M_AXI_DP_RREADY => microblaze_0_axi_dp_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => microblaze_0_axi_dp_RRESP(1 downto 0),
      M_AXI_DP_RVALID => microblaze_0_axi_dp_RVALID(0),
      M_AXI_DP_WDATA(31 downto 0) => microblaze_0_axi_dp_WDATA(31 downto 0),
      M_AXI_DP_WREADY => microblaze_0_axi_dp_WREADY(0),
      M_AXI_DP_WSTRB(3 downto 0) => microblaze_0_axi_dp_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => microblaze_0_axi_dp_WVALID,
      M_AXI_IC_ARADDR(31 downto 0) => microblaze_0_M_AXI_IC_ARADDR(31 downto 0),
      M_AXI_IC_ARBURST(1 downto 0) => microblaze_0_M_AXI_IC_ARBURST(1 downto 0),
      M_AXI_IC_ARCACHE(3 downto 0) => microblaze_0_M_AXI_IC_ARCACHE(3 downto 0),
      M_AXI_IC_ARID(0) => microblaze_0_M_AXI_IC_ARID(0),
      M_AXI_IC_ARLEN(7 downto 0) => microblaze_0_M_AXI_IC_ARLEN(7 downto 0),
      M_AXI_IC_ARLOCK => microblaze_0_M_AXI_IC_ARLOCK,
      M_AXI_IC_ARPROT(2 downto 0) => microblaze_0_M_AXI_IC_ARPROT(2 downto 0),
      M_AXI_IC_ARQOS(3 downto 0) => microblaze_0_M_AXI_IC_ARQOS(3 downto 0),
      M_AXI_IC_ARREADY => microblaze_0_M_AXI_IC_ARREADY(0),
      M_AXI_IC_ARSIZE(2 downto 0) => microblaze_0_M_AXI_IC_ARSIZE(2 downto 0),
      M_AXI_IC_ARVALID => microblaze_0_M_AXI_IC_ARVALID,
      M_AXI_IC_AWADDR(31 downto 0) => microblaze_0_M_AXI_IC_AWADDR(31 downto 0),
      M_AXI_IC_AWBURST(1 downto 0) => microblaze_0_M_AXI_IC_AWBURST(1 downto 0),
      M_AXI_IC_AWCACHE(3 downto 0) => microblaze_0_M_AXI_IC_AWCACHE(3 downto 0),
      M_AXI_IC_AWID(0) => microblaze_0_M_AXI_IC_AWID(0),
      M_AXI_IC_AWLEN(7 downto 0) => microblaze_0_M_AXI_IC_AWLEN(7 downto 0),
      M_AXI_IC_AWLOCK => microblaze_0_M_AXI_IC_AWLOCK,
      M_AXI_IC_AWPROT(2 downto 0) => microblaze_0_M_AXI_IC_AWPROT(2 downto 0),
      M_AXI_IC_AWQOS(3 downto 0) => microblaze_0_M_AXI_IC_AWQOS(3 downto 0),
      M_AXI_IC_AWREADY => microblaze_0_M_AXI_IC_AWREADY(0),
      M_AXI_IC_AWSIZE(2 downto 0) => microblaze_0_M_AXI_IC_AWSIZE(2 downto 0),
      M_AXI_IC_AWVALID => microblaze_0_M_AXI_IC_AWVALID,
      M_AXI_IC_BID(0) => microblaze_0_M_AXI_IC_BID(0),
      M_AXI_IC_BREADY => microblaze_0_M_AXI_IC_BREADY,
      M_AXI_IC_BRESP(1 downto 0) => microblaze_0_M_AXI_IC_BRESP(1 downto 0),
      M_AXI_IC_BVALID => microblaze_0_M_AXI_IC_BVALID(0),
      M_AXI_IC_RDATA(31 downto 0) => microblaze_0_M_AXI_IC_RDATA(31 downto 0),
      M_AXI_IC_RID(0) => microblaze_0_M_AXI_IC_RID(0),
      M_AXI_IC_RLAST => microblaze_0_M_AXI_IC_RLAST(0),
      M_AXI_IC_RREADY => microblaze_0_M_AXI_IC_RREADY,
      M_AXI_IC_RRESP(1 downto 0) => microblaze_0_M_AXI_IC_RRESP(1 downto 0),
      M_AXI_IC_RVALID => microblaze_0_M_AXI_IC_RVALID(0),
      M_AXI_IC_WDATA(31 downto 0) => microblaze_0_M_AXI_IC_WDATA(31 downto 0),
      M_AXI_IC_WLAST => microblaze_0_M_AXI_IC_WLAST,
      M_AXI_IC_WREADY => microblaze_0_M_AXI_IC_WREADY(0),
      M_AXI_IC_WSTRB(3 downto 0) => microblaze_0_M_AXI_IC_WSTRB(3 downto 0),
      M_AXI_IC_WVALID => microblaze_0_M_AXI_IC_WVALID,
      Read_Strobe => microblaze_0_dlmb_1_READSTROBE,
      Reset => rst_clk_wiz_0_100M_mb_reset,
      Write_Strobe => microblaze_0_dlmb_1_WRITESTROBE
    );
microblaze_0_axi_intc: component final_accelerator_microblaze_0_axi_intc_1
     port map (
      interrupt_address(31 downto 0) => microblaze_0_interrupt_ADDRESS(31 downto 0),
      intr(2 downto 0) => microblaze_0_intr(2 downto 0),
      irq => microblaze_0_interrupt_INTERRUPT,
      processor_ack(1) => microblaze_0_interrupt_ACK(0),
      processor_ack(0) => microblaze_0_interrupt_ACK(1),
      processor_clk => microblaze_0_Clk,
      processor_rst => rst_clk_wiz_0_100M_mb_reset,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_intc_axi_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_intc_axi_ARREADY,
      s_axi_arvalid => microblaze_0_intc_axi_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_intc_axi_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_intc_axi_AWREADY,
      s_axi_awvalid => microblaze_0_intc_axi_AWVALID,
      s_axi_bready => microblaze_0_intc_axi_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_intc_axi_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_intc_axi_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_intc_axi_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_intc_axi_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_intc_axi_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_intc_axi_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_intc_axi_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_intc_axi_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_intc_axi_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_intc_axi_WVALID
    );
microblaze_0_axi_periph: entity work.final_accelerator_microblaze_0_axi_periph_1
     port map (
      ACLK => microblaze_0_Clk,
      ARESETN => rst_clk_wiz_0_100M_interconnect_aresetn(0),
      M00_ACLK => microblaze_0_Clk,
      M00_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => microblaze_0_intc_axi_ARADDR(31 downto 0),
      M00_AXI_arready => microblaze_0_intc_axi_ARREADY,
      M00_AXI_arvalid => microblaze_0_intc_axi_ARVALID,
      M00_AXI_awaddr(31 downto 0) => microblaze_0_intc_axi_AWADDR(31 downto 0),
      M00_AXI_awready => microblaze_0_intc_axi_AWREADY,
      M00_AXI_awvalid => microblaze_0_intc_axi_AWVALID,
      M00_AXI_bready => microblaze_0_intc_axi_BREADY,
      M00_AXI_bresp(1 downto 0) => microblaze_0_intc_axi_BRESP(1 downto 0),
      M00_AXI_bvalid => microblaze_0_intc_axi_BVALID,
      M00_AXI_rdata(31 downto 0) => microblaze_0_intc_axi_RDATA(31 downto 0),
      M00_AXI_rready => microblaze_0_intc_axi_RREADY,
      M00_AXI_rresp(1 downto 0) => microblaze_0_intc_axi_RRESP(1 downto 0),
      M00_AXI_rvalid => microblaze_0_intc_axi_RVALID,
      M00_AXI_wdata(31 downto 0) => microblaze_0_intc_axi_WDATA(31 downto 0),
      M00_AXI_wready => microblaze_0_intc_axi_WREADY,
      M00_AXI_wstrb(3 downto 0) => microblaze_0_intc_axi_WSTRB(3 downto 0),
      M00_AXI_wvalid => microblaze_0_intc_axi_WVALID,
      M01_ACLK => microblaze_0_Clk,
      M01_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready => microblaze_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid => microblaze_0_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready => microblaze_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid => microblaze_0_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bready => microblaze_0_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => microblaze_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => microblaze_0_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => microblaze_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => microblaze_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => microblaze_0_axi_periph_M01_AXI_WVALID,
      M02_ACLK => microblaze_0_Clk,
      M02_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready(0) => microblaze_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid(0) => microblaze_0_axi_periph_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready(0) => microblaze_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid(0) => microblaze_0_axi_periph_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => microblaze_0_axi_periph_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => microblaze_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready(0) => microblaze_0_axi_periph_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => microblaze_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => microblaze_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => microblaze_0_axi_periph_M02_AXI_WVALID(0),
      M03_ACLK => microblaze_0_Clk,
      M03_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_M03_AXI_ARPROT(2 downto 0),
      M03_AXI_arready => microblaze_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid => microblaze_0_axi_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_M03_AXI_AWPROT(2 downto 0),
      M03_AXI_awready => microblaze_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid => microblaze_0_axi_periph_M03_AXI_AWVALID,
      M03_AXI_bready => microblaze_0_axi_periph_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => microblaze_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => microblaze_0_axi_periph_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => microblaze_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => microblaze_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => microblaze_0_axi_periph_M03_AXI_WVALID,
      M04_ACLK => microblaze_0_Clk,
      M04_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_M04_AXI_ARPROT(2 downto 0),
      M04_AXI_arready(0) => microblaze_0_axi_periph_M04_AXI_ARREADY,
      M04_AXI_arvalid(0) => microblaze_0_axi_periph_M04_AXI_ARVALID(0),
      M04_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_M04_AXI_AWPROT(2 downto 0),
      M04_AXI_awready(0) => microblaze_0_axi_periph_M04_AXI_AWREADY,
      M04_AXI_awvalid(0) => microblaze_0_axi_periph_M04_AXI_AWVALID(0),
      M04_AXI_bready(0) => microblaze_0_axi_periph_M04_AXI_BREADY(0),
      M04_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => microblaze_0_axi_periph_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready(0) => microblaze_0_axi_periph_M04_AXI_RREADY(0),
      M04_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => microblaze_0_axi_periph_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready(0) => microblaze_0_axi_periph_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => microblaze_0_axi_periph_M04_AXI_WVALID(0),
      M05_ACLK => microblaze_0_Clk,
      M05_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_M05_AXI_ARPROT(2 downto 0),
      M05_AXI_arready(0) => microblaze_0_axi_periph_M05_AXI_ARREADY,
      M05_AXI_arvalid(0) => microblaze_0_axi_periph_M05_AXI_ARVALID(0),
      M05_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_M05_AXI_AWPROT(2 downto 0),
      M05_AXI_awready(0) => microblaze_0_axi_periph_M05_AXI_AWREADY,
      M05_AXI_awvalid(0) => microblaze_0_axi_periph_M05_AXI_AWVALID(0),
      M05_AXI_bready(0) => microblaze_0_axi_periph_M05_AXI_BREADY(0),
      M05_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid(0) => microblaze_0_axi_periph_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready(0) => microblaze_0_axi_periph_M05_AXI_RREADY(0),
      M05_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid(0) => microblaze_0_axi_periph_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready(0) => microblaze_0_axi_periph_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid(0) => microblaze_0_axi_periph_M05_AXI_WVALID(0),
      M06_ACLK => microblaze_0_Clk,
      M06_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M06_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(31 downto 0),
      M06_AXI_arready => microblaze_0_axi_periph_M06_AXI_ARREADY,
      M06_AXI_arvalid => microblaze_0_axi_periph_M06_AXI_ARVALID,
      M06_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(31 downto 0),
      M06_AXI_awready => microblaze_0_axi_periph_M06_AXI_AWREADY,
      M06_AXI_awvalid => microblaze_0_axi_periph_M06_AXI_AWVALID,
      M06_AXI_bready => microblaze_0_axi_periph_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => microblaze_0_axi_periph_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => microblaze_0_axi_periph_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => microblaze_0_axi_periph_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => microblaze_0_axi_periph_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => microblaze_0_axi_periph_M06_AXI_WVALID,
      M07_ACLK => microblaze_0_Clk,
      M07_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M07_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M07_AXI_ARADDR(31 downto 0),
      M07_AXI_arready => microblaze_0_axi_periph_M07_AXI_ARREADY,
      M07_AXI_arvalid => microblaze_0_axi_periph_M07_AXI_ARVALID,
      M07_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M07_AXI_AWADDR(31 downto 0),
      M07_AXI_awready => microblaze_0_axi_periph_M07_AXI_AWREADY,
      M07_AXI_awvalid => microblaze_0_axi_periph_M07_AXI_AWVALID,
      M07_AXI_bready => microblaze_0_axi_periph_M07_AXI_BREADY,
      M07_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid => microblaze_0_axi_periph_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready => microblaze_0_axi_periph_M07_AXI_RREADY,
      M07_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid => microblaze_0_axi_periph_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready => microblaze_0_axi_periph_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid => microblaze_0_axi_periph_M07_AXI_WVALID,
      S00_ACLK => microblaze_0_Clk,
      S00_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => microblaze_0_axi_dp_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => microblaze_0_axi_dp_ARPROT(2 downto 0),
      S00_AXI_arready(0) => microblaze_0_axi_dp_ARREADY(0),
      S00_AXI_arvalid(0) => microblaze_0_axi_dp_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_0_axi_dp_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => microblaze_0_axi_dp_AWPROT(2 downto 0),
      S00_AXI_awready(0) => microblaze_0_axi_dp_AWREADY(0),
      S00_AXI_awvalid(0) => microblaze_0_axi_dp_AWVALID,
      S00_AXI_bready(0) => microblaze_0_axi_dp_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_0_axi_dp_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => microblaze_0_axi_dp_BVALID(0),
      S00_AXI_rdata(31 downto 0) => microblaze_0_axi_dp_RDATA(31 downto 0),
      S00_AXI_rready(0) => microblaze_0_axi_dp_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_0_axi_dp_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => microblaze_0_axi_dp_RVALID(0),
      S00_AXI_wdata(31 downto 0) => microblaze_0_axi_dp_WDATA(31 downto 0),
      S00_AXI_wready(0) => microblaze_0_axi_dp_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => microblaze_0_axi_dp_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => microblaze_0_axi_dp_WVALID
    );
microblaze_0_local_memory: entity work.microblaze_0_local_memory_imp_1TQRLI4
     port map (
      DLMB_abus(0 to 31) => microblaze_0_dlmb_1_ABUS(0 to 31),
      DLMB_addrstrobe => microblaze_0_dlmb_1_ADDRSTROBE,
      DLMB_be(0 to 3) => microblaze_0_dlmb_1_BE(0 to 3),
      DLMB_ce => microblaze_0_dlmb_1_CE,
      DLMB_readdbus(0 to 31) => microblaze_0_dlmb_1_READDBUS(0 to 31),
      DLMB_readstrobe => microblaze_0_dlmb_1_READSTROBE,
      DLMB_ready => microblaze_0_dlmb_1_READY,
      DLMB_ue => microblaze_0_dlmb_1_UE,
      DLMB_wait => microblaze_0_dlmb_1_WAIT,
      DLMB_writedbus(0 to 31) => microblaze_0_dlmb_1_WRITEDBUS(0 to 31),
      DLMB_writestrobe => microblaze_0_dlmb_1_WRITESTROBE,
      ILMB_abus(0 to 31) => microblaze_0_ilmb_1_ABUS(0 to 31),
      ILMB_addrstrobe => microblaze_0_ilmb_1_ADDRSTROBE,
      ILMB_ce => microblaze_0_ilmb_1_CE,
      ILMB_readdbus(0 to 31) => microblaze_0_ilmb_1_READDBUS(0 to 31),
      ILMB_readstrobe => microblaze_0_ilmb_1_READSTROBE,
      ILMB_ready => microblaze_0_ilmb_1_READY,
      ILMB_ue => microblaze_0_ilmb_1_UE,
      ILMB_wait => microblaze_0_ilmb_1_WAIT,
      LMB_Clk => microblaze_0_Clk,
      SYS_Rst => rst_clk_wiz_0_100M_bus_struct_reset(0)
    );
microblaze_0_xlconcat: component final_accelerator_microblaze_0_xlconcat_0
     port map (
      In0(0) => Convolution_Layer_32bit_0_o_convolution_done,
      In1(0) => Maxpool_Layer_32bit_0_o_pooling_complete,
      In2(0) => Softmax_Layer_32bit_0_o_softmax_complete,
      dout(2 downto 0) => microblaze_0_intr(2 downto 0)
    );
mig_7series_0: component final_accelerator_mig_7series_0_0
     port map (
      aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      clk_ref_i => clk_wiz_0_clk_out3,
      ddr3_addr(14 downto 0) => mig_7series_0_DDR3_ADDR(14 downto 0),
      ddr3_ba(2 downto 0) => mig_7series_0_DDR3_BA(2 downto 0),
      ddr3_cas_n => mig_7series_0_DDR3_CAS_N,
      ddr3_ck_n(0) => mig_7series_0_DDR3_CK_N(0),
      ddr3_ck_p(0) => mig_7series_0_DDR3_CK_P(0),
      ddr3_cke(0) => mig_7series_0_DDR3_CKE(0),
      ddr3_dm(1 downto 0) => mig_7series_0_DDR3_DM(1 downto 0),
      ddr3_dq(15 downto 0) => DDR3_dq(15 downto 0),
      ddr3_dqs_n(1 downto 0) => DDR3_dqs_n(1 downto 0),
      ddr3_dqs_p(1 downto 0) => DDR3_dqs_p(1 downto 0),
      ddr3_odt(0) => mig_7series_0_DDR3_ODT(0),
      ddr3_ras_n => mig_7series_0_DDR3_RAS_N,
      ddr3_reset_n => mig_7series_0_DDR3_RESET_N,
      ddr3_we_n => mig_7series_0_DDR3_WE_N,
      device_temp_i(11 downto 0) => xadc_wiz_0_temp_out(11 downto 0),
      init_calib_complete => mig_7series_0_init_calib_complete,
      mmcm_locked => mig_7series_0_mmcm_locked,
      s_axi_araddr(28 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(28 downto 0),
      s_axi_arburst(1 downto 0) => axi_mem_intercon_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_mem_intercon_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arid(3 downto 0) => axi_mem_intercon_M00_AXI_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => axi_mem_intercon_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock => axi_mem_intercon_M00_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => axi_mem_intercon_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => axi_mem_intercon_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => axi_mem_intercon_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_mem_intercon_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_mem_intercon_M00_AXI_ARVALID,
      s_axi_awaddr(28 downto 0) => axi_mem_intercon_M00_AXI_AWADDR(28 downto 0),
      s_axi_awburst(1 downto 0) => axi_mem_intercon_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_mem_intercon_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => axi_mem_intercon_M00_AXI_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => axi_mem_intercon_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_mem_intercon_M00_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => axi_mem_intercon_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => axi_mem_intercon_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_mem_intercon_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_mem_intercon_M00_AXI_AWVALID,
      s_axi_bid(3 downto 0) => axi_mem_intercon_M00_AXI_BID(3 downto 0),
      s_axi_bready => axi_mem_intercon_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_mem_intercon_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_mem_intercon_M00_AXI_RDATA(31 downto 0),
      s_axi_rid(3 downto 0) => axi_mem_intercon_M00_AXI_RID(3 downto 0),
      s_axi_rlast => axi_mem_intercon_M00_AXI_RLAST,
      s_axi_rready => axi_mem_intercon_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_mem_intercon_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_mem_intercon_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_mem_intercon_M00_AXI_WDATA(31 downto 0),
      s_axi_wlast => axi_mem_intercon_M00_AXI_WLAST,
      s_axi_wready => axi_mem_intercon_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_mem_intercon_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_mem_intercon_M00_AXI_WVALID,
      sys_clk_i => microblaze_0_Clk,
      sys_rst => reset_rtl_1,
      ui_clk => mig_7series_0_ui_clk,
      ui_clk_sync_rst => mig_7series_0_ui_clk_sync_rst
    );
rst_clk_wiz_0_100M: component final_accelerator_rst_clk_wiz_0_100M_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => rst_clk_wiz_0_100M_bus_struct_reset(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_rtl_1,
      interconnect_aresetn(0) => rst_clk_wiz_0_100M_interconnect_aresetn(0),
      mb_debug_sys_rst => mdm_1_debug_sys_rst,
      mb_reset => rst_clk_wiz_0_100M_mb_reset,
      peripheral_aresetn(0) => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => microblaze_0_Clk
    );
rst_mig_7series_0_100M: component final_accelerator_rst_mig_7series_0_100M_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_mig_7series_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => mig_7series_0_mmcm_locked,
      ext_reset_in => mig_7series_0_ui_clk_sync_rst,
      interconnect_aresetn(0) => NLW_rst_mig_7series_0_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_mig_7series_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_mig_7series_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => mig_7series_0_ui_clk
    );
xadc_wiz_0: component final_accelerator_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      eoc_out => NLW_xadc_wiz_0_eoc_out_UNCONNECTED,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      ip2intc_irpt => NLW_xadc_wiz_0_ip2intc_irpt_UNCONNECTED,
      ot_out => NLW_xadc_wiz_0_ot_out_UNCONNECTED,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(10 downto 0) => microblaze_0_axi_periph_M07_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M07_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M07_AXI_ARVALID,
      s_axi_awaddr(10 downto 0) => microblaze_0_axi_periph_M07_AXI_AWADDR(10 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M07_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M07_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M07_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M07_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M07_AXI_WVALID,
      temp_out(11 downto 0) => xadc_wiz_0_temp_out(11 downto 0),
      user_temp_alarm_out => NLW_xadc_wiz_0_user_temp_alarm_out_UNCONNECTED,
      vccaux_alarm_out => NLW_xadc_wiz_0_vccaux_alarm_out_UNCONNECTED,
      vccint_alarm_out => NLW_xadc_wiz_0_vccint_alarm_out_UNCONNECTED,
      vn_in => '0',
      vp_in => '0'
    );
end STRUCTURE;
