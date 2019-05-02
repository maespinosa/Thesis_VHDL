--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Mon Mar 25 00:50:57 2019
--Host        : Marks-M3800 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target neural_net_accel_conv_db.bd
--Design      : neural_net_accel_conv_db
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1FC3YND is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
end m00_couplers_imp_1FC3YND;

architecture STRUCTURE of m00_couplers_imp_1FC3YND is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_MY2KAK is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
end m00_couplers_imp_MY2KAK;

architecture STRUCTURE of m00_couplers_imp_MY2KAK is
  component neural_net_accel_conv_db_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
    m_axi_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
    m_axi_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component neural_net_accel_conv_db_auto_cc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal auto_cc_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal auto_cc_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal m00_couplers_to_auto_cc_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal m00_couplers_to_auto_cc_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_cc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
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
  M_AXI_arid(2 downto 0) <= auto_cc_to_m00_couplers_ARID(2 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_cc_to_m00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= auto_cc_to_m00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_cc_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_cc_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_cc_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_cc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(28 downto 0) <= auto_cc_to_m00_couplers_AWADDR(28 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_cc_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_cc_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(2 downto 0) <= auto_cc_to_m00_couplers_AWID(2 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_cc_to_m00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= auto_cc_to_m00_couplers_AWLOCK(0);
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
  S_AXI_bid(2 downto 0) <= m00_couplers_to_auto_cc_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= m00_couplers_to_auto_cc_RID(2 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_cc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_cc_WREADY;
  auto_cc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_m00_couplers_BID(2 downto 0) <= M_AXI_bid(2 downto 0);
  auto_cc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_m00_couplers_RID(2 downto 0) <= M_AXI_rid(2 downto 0);
  auto_cc_to_m00_couplers_RLAST <= M_AXI_rlast;
  auto_cc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_cc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_cc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_cc_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
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
  m00_couplers_to_auto_cc_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
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
auto_cc: component neural_net_accel_conv_db_auto_cc_0
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(28 downto 0) => auto_cc_to_m00_couplers_ARADDR(28 downto 0),
      m_axi_arburst(1 downto 0) => auto_cc_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_cc_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arid(2 downto 0) => auto_cc_to_m00_couplers_ARID(2 downto 0),
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
      m_axi_awid(2 downto 0) => auto_cc_to_m00_couplers_AWID(2 downto 0),
      m_axi_awlen(7 downto 0) => auto_cc_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_cc_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_cc_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_cc_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_cc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_cc_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awuser(0) => NLW_auto_cc_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => auto_cc_to_m00_couplers_AWVALID,
      m_axi_bid(2 downto 0) => auto_cc_to_m00_couplers_BID(2 downto 0),
      m_axi_bready => auto_cc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(2 downto 0) => auto_cc_to_m00_couplers_RID(2 downto 0),
      m_axi_rlast => auto_cc_to_m00_couplers_RLAST,
      m_axi_rready => auto_cc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m00_couplers_RRESP(1 downto 0),
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
      s_axi_arid(2 downto 0) => m00_couplers_to_auto_cc_ARID(2 downto 0),
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
      s_axi_awid(2 downto 0) => m00_couplers_to_auto_cc_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_cc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_cc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_cc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_cc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_cc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_cc_AWSIZE(2 downto 0),
      s_axi_awuser(0) => m00_couplers_to_auto_cc_AWUSER(0),
      s_axi_awvalid => m00_couplers_to_auto_cc_AWVALID,
      s_axi_bid(2 downto 0) => m00_couplers_to_auto_cc_BID(2 downto 0),
      s_axi_bready => m00_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rid(2 downto 0) => m00_couplers_to_auto_cc_RID(2 downto 0),
      s_axi_rlast => m00_couplers_to_auto_cc_RLAST,
      s_axi_rready => m00_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_cc_RRESP(1 downto 0),
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
entity m01_couplers_imp_17PIDR3 is
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
end m01_couplers_imp_17PIDR3;

architecture STRUCTURE of m01_couplers_imp_17PIDR3 is
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
entity m02_couplers_imp_1ULCVNP is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
end m02_couplers_imp_1ULCVNP;

architecture STRUCTURE of m02_couplers_imp_1ULCVNP is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
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
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
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
entity m03_couplers_imp_1MYRASZ is
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
end m03_couplers_imp_1MYRASZ;

architecture STRUCTURE of m03_couplers_imp_1MYRASZ is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
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
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
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
entity microblaze_0_local_memory_imp_PB9IIY is
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
    LMB_M_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_M_addrstrobe : in STD_LOGIC;
    LMB_M_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_M_ce : out STD_LOGIC;
    LMB_M_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_M_readstrobe : in STD_LOGIC;
    LMB_M_ready : out STD_LOGIC;
    LMB_M_ue : out STD_LOGIC;
    LMB_M_wait : out STD_LOGIC;
    LMB_M_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_M_writestrobe : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end microblaze_0_local_memory_imp_PB9IIY;

architecture STRUCTURE of microblaze_0_local_memory_imp_PB9IIY is
  component neural_net_accel_conv_db_dlmb_v10_0 is
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
  end component neural_net_accel_conv_db_dlmb_v10_0;
  component neural_net_accel_conv_db_ilmb_v10_0 is
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
  end component neural_net_accel_conv_db_ilmb_v10_0;
  component neural_net_accel_conv_db_dlmb_bram_if_cntlr_0 is
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
    LMB1_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB1_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB1_AddrStrobe : in STD_LOGIC;
    LMB1_ReadStrobe : in STD_LOGIC;
    LMB1_WriteStrobe : in STD_LOGIC;
    LMB1_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl1_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl1_Ready : out STD_LOGIC;
    Sl1_Wait : out STD_LOGIC;
    Sl1_UE : out STD_LOGIC;
    Sl1_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component neural_net_accel_conv_db_dlmb_bram_if_cntlr_0;
  component neural_net_accel_conv_db_ilmb_bram_if_cntlr_0 is
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
  end component neural_net_accel_conv_db_ilmb_bram_if_cntlr_0;
  component neural_net_accel_conv_db_lmb_bram_0 is
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
  end component neural_net_accel_conv_db_lmb_bram_0;
  component neural_net_accel_conv_db_lmb_v10_0 is
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
  end component neural_net_accel_conv_db_lmb_v10_0;
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
  signal microblaze_0_lmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_lmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_lmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_lmb_CE : STD_LOGIC;
  signal microblaze_0_lmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_lmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_lmb_READY : STD_LOGIC;
  signal microblaze_0_lmb_UE : STD_LOGIC;
  signal microblaze_0_lmb_WAIT : STD_LOGIC;
  signal microblaze_0_lmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_lmb_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_lmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_lmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_lmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_lmb_bus_CE : STD_LOGIC;
  signal microblaze_0_lmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_lmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_lmb_bus_READY : STD_LOGIC;
  signal microblaze_0_lmb_bus_UE : STD_LOGIC;
  signal microblaze_0_lmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_lmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_lmb_bus_WRITESTROBE : STD_LOGIC;
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x00000000 32 > neural_net_accel_conv_db microblaze_0_local_memory/lmb_bram";
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
  LMB_M_ce <= microblaze_0_lmb_CE;
  LMB_M_readdbus(0 to 31) <= microblaze_0_lmb_READDBUS(0 to 31);
  LMB_M_ready <= microblaze_0_lmb_READY;
  LMB_M_ue <= microblaze_0_lmb_UE;
  LMB_M_wait <= microblaze_0_lmb_WAIT;
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
  microblaze_0_lmb_ABUS(0 to 31) <= LMB_M_abus(0 to 31);
  microblaze_0_lmb_ADDRSTROBE <= LMB_M_addrstrobe;
  microblaze_0_lmb_BE(0 to 3) <= LMB_M_be(0 to 3);
  microblaze_0_lmb_READSTROBE <= LMB_M_readstrobe;
  microblaze_0_lmb_WRITEDBUS(0 to 31) <= LMB_M_writedbus(0 to 31);
  microblaze_0_lmb_WRITESTROBE <= LMB_M_writestrobe;
dlmb_bram_if_cntlr: component neural_net_accel_conv_db_dlmb_bram_if_cntlr_0
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
      LMB1_ABus(0 to 31) => microblaze_0_lmb_bus_ABUS(0 to 31),
      LMB1_AddrStrobe => microblaze_0_lmb_bus_ADDRSTROBE,
      LMB1_BE(0 to 3) => microblaze_0_lmb_bus_BE(0 to 3),
      LMB1_ReadStrobe => microblaze_0_lmb_bus_READSTROBE,
      LMB1_WriteDBus(0 to 31) => microblaze_0_lmb_bus_WRITEDBUS(0 to 31),
      LMB1_WriteStrobe => microblaze_0_lmb_bus_WRITESTROBE,
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      Sl1_CE => microblaze_0_lmb_bus_CE,
      Sl1_DBus(0 to 31) => microblaze_0_lmb_bus_READDBUS(0 to 31),
      Sl1_Ready => microblaze_0_lmb_bus_READY,
      Sl1_UE => microblaze_0_lmb_bus_UE,
      Sl1_Wait => microblaze_0_lmb_bus_WAIT,
      Sl_CE => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_dlmb_bus_READY,
      Sl_UE => microblaze_0_dlmb_bus_UE,
      Sl_Wait => microblaze_0_dlmb_bus_WAIT
    );
dlmb_v10: component neural_net_accel_conv_db_dlmb_v10_0
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
ilmb_bram_if_cntlr: component neural_net_accel_conv_db_ilmb_bram_if_cntlr_0
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
ilmb_v10: component neural_net_accel_conv_db_ilmb_v10_0
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
lmb_bram: component neural_net_accel_conv_db_lmb_bram_0
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
lmb_v10: component neural_net_accel_conv_db_lmb_v10_0
     port map (
      LMB_ABus(0 to 31) => microblaze_0_lmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_lmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_lmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_lmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_lmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_lmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_lmb_READY,
      LMB_Rst => NLW_lmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_lmb_UE,
      LMB_Wait => microblaze_0_lmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_lmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_lmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_lmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_lmb_ADDRSTROBE,
      M_BE(0 to 3) => microblaze_0_lmb_BE(0 to 3),
      M_DBus(0 to 31) => microblaze_0_lmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => microblaze_0_lmb_READSTROBE,
      M_WriteStrobe => microblaze_0_lmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => microblaze_0_lmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_lmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_lmb_bus_READY,
      Sl_UE(0) => microblaze_0_lmb_bus_UE,
      Sl_Wait(0) => microblaze_0_lmb_bus_WAIT
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1QGVGRR is
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
end s00_couplers_imp_1QGVGRR;

architecture STRUCTURE of s00_couplers_imp_1QGVGRR is
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
entity s00_couplers_imp_2XLLMA is
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
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_2XLLMA;

architecture STRUCTURE of s00_couplers_imp_2XLLMA is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s00_couplers_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s00_couplers_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s00_couplers_to_s00_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s00_couplers_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= s00_couplers_to_s00_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s00_couplers_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s00_couplers_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s00_couplers_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s00_couplers_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s00_couplers_to_s00_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s00_couplers_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= s00_couplers_to_s00_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s00_couplers_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s00_couplers_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s00_couplers_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bid(2 downto 0) <= s00_couplers_to_s00_couplers_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= s00_couplers_to_s00_couplers_RID(2 downto 0);
  S_AXI_rlast <= s00_couplers_to_s00_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_couplers_ARID(0) <= S_AXI_arid(0);
  s00_couplers_to_s00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_couplers_ARLOCK <= S_AXI_arlock;
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_couplers_AWID(0) <= S_AXI_awid(0);
  s00_couplers_to_s00_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_s00_couplers_AWLOCK <= S_AXI_awlock;
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BID(2 downto 0) <= M_AXI_bid(2 downto 0);
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RID(2 downto 0) <= M_AXI_rid(2 downto 0);
  s00_couplers_to_s00_couplers_RLAST <= M_AXI_rlast;
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_CS43US is
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
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s01_couplers_imp_CS43US;

architecture STRUCTURE of s01_couplers_imp_CS43US is
  signal s01_couplers_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_ARREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_RLAST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_RVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_WLAST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s01_couplers_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s01_couplers_to_s01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s01_couplers_to_s01_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s01_couplers_to_s01_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s01_couplers_to_s01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= s01_couplers_to_s01_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= s01_couplers_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s01_couplers_to_s01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s01_couplers_to_s01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s01_couplers_to_s01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s01_couplers_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s01_couplers_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s01_couplers_to_s01_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s01_couplers_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= s01_couplers_to_s01_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s01_couplers_to_s01_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s01_couplers_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s01_couplers_to_s01_couplers_AWVALID;
  M_AXI_bready <= s01_couplers_to_s01_couplers_BREADY;
  M_AXI_rready <= s01_couplers_to_s01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s01_couplers_to_s01_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s01_couplers_to_s01_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s01_couplers_to_s01_couplers_WVALID;
  S_AXI_arready <= s01_couplers_to_s01_couplers_ARREADY;
  S_AXI_awready <= s01_couplers_to_s01_couplers_AWREADY;
  S_AXI_bid(2 downto 0) <= s01_couplers_to_s01_couplers_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s01_couplers_to_s01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_s01_couplers_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= s01_couplers_to_s01_couplers_RID(2 downto 0);
  S_AXI_rlast <= s01_couplers_to_s01_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_s01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_s01_couplers_RVALID;
  S_AXI_wready <= s01_couplers_to_s01_couplers_WREADY;
  s01_couplers_to_s01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_s01_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_s01_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_s01_couplers_ARID(0) <= S_AXI_arid(0);
  s01_couplers_to_s01_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s01_couplers_to_s01_couplers_ARLOCK <= S_AXI_arlock;
  s01_couplers_to_s01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_s01_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s01_couplers_to_s01_couplers_ARREADY <= M_AXI_arready;
  s01_couplers_to_s01_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_s01_couplers_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_s01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_s01_couplers_AWID(0) <= S_AXI_awid(0);
  s01_couplers_to_s01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_s01_couplers_AWLOCK <= S_AXI_awlock;
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s01_couplers_to_s01_couplers_AWREADY <= M_AXI_awready;
  s01_couplers_to_s01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_s01_couplers_AWVALID <= S_AXI_awvalid;
  s01_couplers_to_s01_couplers_BID(2 downto 0) <= M_AXI_bid(2 downto 0);
  s01_couplers_to_s01_couplers_BREADY <= S_AXI_bready;
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID <= M_AXI_bvalid;
  s01_couplers_to_s01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s01_couplers_to_s01_couplers_RID(2 downto 0) <= M_AXI_rid(2 downto 0);
  s01_couplers_to_s01_couplers_RLAST <= M_AXI_rlast;
  s01_couplers_to_s01_couplers_RREADY <= S_AXI_rready;
  s01_couplers_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s01_couplers_to_s01_couplers_RVALID <= M_AXI_rvalid;
  s01_couplers_to_s01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_s01_couplers_WLAST <= S_AXI_wlast;
  s01_couplers_to_s01_couplers_WREADY <= M_AXI_wready;
  s01_couplers_to_s01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_s01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_IR4M3I is
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
    M_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
end s02_couplers_imp_IR4M3I;

architecture STRUCTURE of s02_couplers_imp_IR4M3I is
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
  signal s02_couplers_to_s02_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_BREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_BVALID : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  S_AXI_bid(2 downto 0) <= s02_couplers_to_s02_couplers_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= s02_couplers_to_s02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s02_couplers_to_s02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s02_couplers_to_s02_couplers_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= s02_couplers_to_s02_couplers_RID(2 downto 0);
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
  s02_couplers_to_s02_couplers_BID(2 downto 0) <= M_AXI_bid(2 downto 0);
  s02_couplers_to_s02_couplers_BREADY <= S_AXI_bready;
  s02_couplers_to_s02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s02_couplers_to_s02_couplers_BVALID <= M_AXI_bvalid;
  s02_couplers_to_s02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s02_couplers_to_s02_couplers_RID(2 downto 0) <= M_AXI_rid(2 downto 0);
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
entity s03_couplers_imp_SLN4DK is
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
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s03_couplers_imp_SLN4DK;

architecture STRUCTURE of s03_couplers_imp_SLN4DK is
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
  signal s03_couplers_to_s03_couplers_AWVALID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_s03_couplers_BREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_s03_couplers_BVALID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_s03_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_s03_couplers_RLAST : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_s03_couplers_RVALID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_s03_couplers_WLAST : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_WREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
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
  M_AXI_awvalid <= s03_couplers_to_s03_couplers_AWVALID;
  M_AXI_bready <= s03_couplers_to_s03_couplers_BREADY;
  M_AXI_rready <= s03_couplers_to_s03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s03_couplers_to_s03_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s03_couplers_to_s03_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s03_couplers_to_s03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s03_couplers_to_s03_couplers_WVALID;
  S_AXI_arready <= s03_couplers_to_s03_couplers_ARREADY;
  S_AXI_awready <= s03_couplers_to_s03_couplers_AWREADY;
  S_AXI_bid(2 downto 0) <= s03_couplers_to_s03_couplers_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= s03_couplers_to_s03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s03_couplers_to_s03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s03_couplers_to_s03_couplers_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= s03_couplers_to_s03_couplers_RID(2 downto 0);
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
  s03_couplers_to_s03_couplers_AWVALID <= S_AXI_awvalid;
  s03_couplers_to_s03_couplers_BID(2 downto 0) <= M_AXI_bid(2 downto 0);
  s03_couplers_to_s03_couplers_BREADY <= S_AXI_bready;
  s03_couplers_to_s03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s03_couplers_to_s03_couplers_BVALID <= M_AXI_bvalid;
  s03_couplers_to_s03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s03_couplers_to_s03_couplers_RID(2 downto 0) <= M_AXI_rid(2 downto 0);
  s03_couplers_to_s03_couplers_RLAST <= M_AXI_rlast;
  s03_couplers_to_s03_couplers_RREADY <= S_AXI_rready;
  s03_couplers_to_s03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s03_couplers_to_s03_couplers_RVALID <= M_AXI_rvalid;
  s03_couplers_to_s03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s03_couplers_to_s03_couplers_WLAST <= S_AXI_wlast;
  s03_couplers_to_s03_couplers_WREADY <= M_AXI_wready;
  s03_couplers_to_s03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s03_couplers_to_s03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity neural_net_accel_conv_db_axi_mem_intercon_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC;
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC;
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arlock : in STD_LOGIC;
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awlock : in STD_LOGIC;
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC;
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
    S02_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S03_AXI_awvalid : in STD_LOGIC;
    S03_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_bready : in STD_LOGIC;
    S03_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_bvalid : out STD_LOGIC;
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_rlast : out STD_LOGIC;
    S03_AXI_rready : in STD_LOGIC;
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rvalid : out STD_LOGIC;
    S03_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_wlast : in STD_LOGIC;
    S03_AXI_wready : out STD_LOGIC;
    S03_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_wvalid : in STD_LOGIC
  );
end neural_net_accel_conv_db_axi_mem_intercon_0;

architecture STRUCTURE of neural_net_accel_conv_db_axi_mem_intercon_0 is
  component neural_net_accel_conv_db_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
    m_axi_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
    m_axi_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component neural_net_accel_conv_db_xbar_0;
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
  signal axi_mem_intercon_ACLK_net : STD_LOGIC;
  signal axi_mem_intercon_ARESETN_net : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_WVALID : STD_LOGIC;
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
  signal axi_mem_intercon_to_s02_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal axi_mem_intercon_to_s03_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_ARADDR : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARLOCK : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_AWADDR : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWLOCK : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
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
  signal s02_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal s02_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal s02_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 8 downto 6 );
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
  signal s03_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal s03_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal s03_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal s03_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s03_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(28 downto 0) <= m00_couplers_to_axi_mem_intercon_ARADDR(28 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0);
  M00_AXI_arid(2 downto 0) <= m00_couplers_to_axi_mem_intercon_ARID(2 downto 0);
  M00_AXI_arlen(7 downto 0) <= m00_couplers_to_axi_mem_intercon_ARLEN(7 downto 0);
  M00_AXI_arlock <= m00_couplers_to_axi_mem_intercon_ARLOCK;
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_mem_intercon_ARVALID;
  M00_AXI_awaddr(28 downto 0) <= m00_couplers_to_axi_mem_intercon_AWADDR(28 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0);
  M00_AXI_awid(2 downto 0) <= m00_couplers_to_axi_mem_intercon_AWID(2 downto 0);
  M00_AXI_awlen(7 downto 0) <= m00_couplers_to_axi_mem_intercon_AWLEN(7 downto 0);
  M00_AXI_awlock <= m00_couplers_to_axi_mem_intercon_AWLOCK;
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
  S00_AXI_arready <= axi_mem_intercon_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_mem_intercon_to_s00_couplers_AWREADY;
  S00_AXI_bid(2 downto 0) <= axi_mem_intercon_to_s00_couplers_BID(2 downto 0);
  S00_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_mem_intercon_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(2 downto 0) <= axi_mem_intercon_to_s00_couplers_RID(2 downto 0);
  S00_AXI_rlast <= axi_mem_intercon_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_mem_intercon_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_mem_intercon_to_s00_couplers_WREADY;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_arready <= axi_mem_intercon_to_s01_couplers_ARREADY;
  S01_AXI_awready <= axi_mem_intercon_to_s01_couplers_AWREADY;
  S01_AXI_bid(2 downto 0) <= axi_mem_intercon_to_s01_couplers_BID(2 downto 0);
  S01_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid <= axi_mem_intercon_to_s01_couplers_BVALID;
  S01_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rid(2 downto 0) <= axi_mem_intercon_to_s01_couplers_RID(2 downto 0);
  S01_AXI_rlast <= axi_mem_intercon_to_s01_couplers_RLAST;
  S01_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid <= axi_mem_intercon_to_s01_couplers_RVALID;
  S01_AXI_wready <= axi_mem_intercon_to_s01_couplers_WREADY;
  S02_ACLK_1 <= S02_ACLK;
  S02_ARESETN_1 <= S02_ARESETN;
  S02_AXI_arready <= axi_mem_intercon_to_s02_couplers_ARREADY;
  S02_AXI_awready <= axi_mem_intercon_to_s02_couplers_AWREADY;
  S02_AXI_bid(2 downto 0) <= axi_mem_intercon_to_s02_couplers_BID(2 downto 0);
  S02_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s02_couplers_BRESP(1 downto 0);
  S02_AXI_bvalid <= axi_mem_intercon_to_s02_couplers_BVALID;
  S02_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s02_couplers_RDATA(31 downto 0);
  S02_AXI_rid(2 downto 0) <= axi_mem_intercon_to_s02_couplers_RID(2 downto 0);
  S02_AXI_rlast <= axi_mem_intercon_to_s02_couplers_RLAST;
  S02_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s02_couplers_RRESP(1 downto 0);
  S02_AXI_rvalid <= axi_mem_intercon_to_s02_couplers_RVALID;
  S02_AXI_wready <= axi_mem_intercon_to_s02_couplers_WREADY;
  S03_ACLK_1 <= S03_ACLK;
  S03_ARESETN_1 <= S03_ARESETN;
  S03_AXI_arready <= axi_mem_intercon_to_s03_couplers_ARREADY;
  S03_AXI_awready <= axi_mem_intercon_to_s03_couplers_AWREADY;
  S03_AXI_bid(2 downto 0) <= axi_mem_intercon_to_s03_couplers_BID(2 downto 0);
  S03_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s03_couplers_BRESP(1 downto 0);
  S03_AXI_bvalid <= axi_mem_intercon_to_s03_couplers_BVALID;
  S03_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s03_couplers_RDATA(31 downto 0);
  S03_AXI_rid(2 downto 0) <= axi_mem_intercon_to_s03_couplers_RID(2 downto 0);
  S03_AXI_rlast <= axi_mem_intercon_to_s03_couplers_RLAST;
  S03_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s03_couplers_RRESP(1 downto 0);
  S03_AXI_rvalid <= axi_mem_intercon_to_s03_couplers_RVALID;
  S03_AXI_wready <= axi_mem_intercon_to_s03_couplers_WREADY;
  axi_mem_intercon_ACLK_net <= ACLK;
  axi_mem_intercon_ARESETN_net <= ARESETN;
  axi_mem_intercon_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s00_couplers_ARID(0) <= S00_AXI_arid(0);
  axi_mem_intercon_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s00_couplers_ARLOCK <= S00_AXI_arlock;
  axi_mem_intercon_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_mem_intercon_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_mem_intercon_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s00_couplers_AWID(0) <= S00_AXI_awid(0);
  axi_mem_intercon_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s00_couplers_AWLOCK <= S00_AXI_awlock;
  axi_mem_intercon_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_mem_intercon_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_mem_intercon_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_mem_intercon_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_mem_intercon_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_mem_intercon_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  axi_mem_intercon_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s01_couplers_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s01_couplers_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s01_couplers_ARID(0) <= S01_AXI_arid(0);
  axi_mem_intercon_to_s01_couplers_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s01_couplers_ARLOCK <= S01_AXI_arlock;
  axi_mem_intercon_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s01_couplers_ARQOS(3 downto 0) <= S01_AXI_arqos(3 downto 0);
  axi_mem_intercon_to_s01_couplers_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  axi_mem_intercon_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s01_couplers_AWID(0) <= S01_AXI_awid(0);
  axi_mem_intercon_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s01_couplers_AWLOCK <= S01_AXI_awlock;
  axi_mem_intercon_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s01_couplers_AWQOS(3 downto 0) <= S01_AXI_awqos(3 downto 0);
  axi_mem_intercon_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s01_couplers_AWVALID <= S01_AXI_awvalid;
  axi_mem_intercon_to_s01_couplers_BREADY <= S01_AXI_bready;
  axi_mem_intercon_to_s01_couplers_RREADY <= S01_AXI_rready;
  axi_mem_intercon_to_s01_couplers_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s01_couplers_WLAST <= S01_AXI_wlast;
  axi_mem_intercon_to_s01_couplers_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s01_couplers_WVALID <= S01_AXI_wvalid;
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
  axi_mem_intercon_to_s03_couplers_AWVALID <= S03_AXI_awvalid;
  axi_mem_intercon_to_s03_couplers_BREADY <= S03_AXI_bready;
  axi_mem_intercon_to_s03_couplers_RREADY <= S03_AXI_rready;
  axi_mem_intercon_to_s03_couplers_WDATA(31 downto 0) <= S03_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s03_couplers_WLAST <= S03_AXI_wlast;
  axi_mem_intercon_to_s03_couplers_WSTRB(3 downto 0) <= S03_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s03_couplers_WVALID <= S03_AXI_wvalid;
  m00_couplers_to_axi_mem_intercon_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_mem_intercon_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_mem_intercon_BID(2 downto 0) <= M00_AXI_bid(2 downto 0);
  m00_couplers_to_axi_mem_intercon_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_mem_intercon_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_mem_intercon_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_mem_intercon_RID(2 downto 0) <= M00_AXI_rid(2 downto 0);
  m00_couplers_to_axi_mem_intercon_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_mem_intercon_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_mem_intercon_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_mem_intercon_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_MY2KAK
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(28 downto 0) => m00_couplers_to_axi_mem_intercon_ARADDR(28 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0),
      M_AXI_arid(2 downto 0) => m00_couplers_to_axi_mem_intercon_ARID(2 downto 0),
      M_AXI_arlen(7 downto 0) => m00_couplers_to_axi_mem_intercon_ARLEN(7 downto 0),
      M_AXI_arlock => m00_couplers_to_axi_mem_intercon_ARLOCK,
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_axi_mem_intercon_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_axi_mem_intercon_ARVALID,
      M_AXI_awaddr(28 downto 0) => m00_couplers_to_axi_mem_intercon_AWADDR(28 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0),
      M_AXI_awid(2 downto 0) => m00_couplers_to_axi_mem_intercon_AWID(2 downto 0),
      M_AXI_awlen(7 downto 0) => m00_couplers_to_axi_mem_intercon_AWLEN(7 downto 0),
      M_AXI_awlock => m00_couplers_to_axi_mem_intercon_AWLOCK,
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_axi_mem_intercon_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_axi_mem_intercon_AWVALID,
      M_AXI_bid(2 downto 0) => m00_couplers_to_axi_mem_intercon_BID(2 downto 0),
      M_AXI_bready => m00_couplers_to_axi_mem_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_mem_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_mem_intercon_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_mem_intercon_RDATA(31 downto 0),
      M_AXI_rid(2 downto 0) => m00_couplers_to_axi_mem_intercon_RID(2 downto 0),
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
      S_AXI_arid(2 downto 0) => xbar_to_m00_couplers_ARID(2 downto 0),
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
      S_AXI_awid(2 downto 0) => xbar_to_m00_couplers_AWID(2 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awuser(0) => xbar_to_m00_couplers_AWUSER(0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(2 downto 0) => xbar_to_m00_couplers_BID(2 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => xbar_to_m00_couplers_RID(2 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wuser(0) => xbar_to_m00_couplers_WUSER(0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_2XLLMA
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s00_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock => s00_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s00_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock => s00_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bid(2 downto 0) => s00_couplers_to_xbar_BID(2 downto 0),
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rid(2 downto 0) => s00_couplers_to_xbar_RID(2 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => axi_mem_intercon_to_s00_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => axi_mem_intercon_to_s00_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_mem_intercon_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_mem_intercon_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_mem_intercon_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => axi_mem_intercon_to_s00_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => axi_mem_intercon_to_s00_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_mem_intercon_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_mem_intercon_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_mem_intercon_to_s00_couplers_AWVALID,
      S_AXI_bid(2 downto 0) => axi_mem_intercon_to_s00_couplers_BID(2 downto 0),
      S_AXI_bready => axi_mem_intercon_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => axi_mem_intercon_to_s00_couplers_RID(2 downto 0),
      S_AXI_rlast => axi_mem_intercon_to_s00_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_mem_intercon_to_s00_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_mem_intercon_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_CS43US
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s01_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock => s01_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s01_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock => s01_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bid(2 downto 0) => s01_couplers_to_xbar_BID(5 downto 3),
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata(31 downto 0) => s01_couplers_to_xbar_RDATA(63 downto 32),
      M_AXI_rid(2 downto 0) => s01_couplers_to_xbar_RID(5 downto 3),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata(31 downto 0) => s01_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s01_couplers_to_xbar_WLAST,
      M_AXI_wready => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(3 downto 0) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s01_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s01_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => axi_mem_intercon_to_s01_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s01_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => axi_mem_intercon_to_s01_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_mem_intercon_to_s01_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_mem_intercon_to_s01_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s01_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_mem_intercon_to_s01_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => axi_mem_intercon_to_s01_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => axi_mem_intercon_to_s01_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_mem_intercon_to_s01_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_mem_intercon_to_s01_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_mem_intercon_to_s01_couplers_AWVALID,
      S_AXI_bid(2 downto 0) => axi_mem_intercon_to_s01_couplers_BID(2 downto 0),
      S_AXI_bready => axi_mem_intercon_to_s01_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => axi_mem_intercon_to_s01_couplers_RID(2 downto 0),
      S_AXI_rlast => axi_mem_intercon_to_s01_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s01_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_mem_intercon_to_s01_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s01_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_mem_intercon_to_s01_couplers_WVALID
    );
s02_couplers: entity work.s02_couplers_imp_IR4M3I
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
      M_AXI_bid(2 downto 0) => s02_couplers_to_xbar_BID(8 downto 6),
      M_AXI_bready => s02_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s02_couplers_to_xbar_BRESP(5 downto 4),
      M_AXI_bvalid => s02_couplers_to_xbar_BVALID(2),
      M_AXI_rdata(31 downto 0) => s02_couplers_to_xbar_RDATA(95 downto 64),
      M_AXI_rid(2 downto 0) => s02_couplers_to_xbar_RID(8 downto 6),
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
      S_AXI_bid(2 downto 0) => axi_mem_intercon_to_s02_couplers_BID(2 downto 0),
      S_AXI_bready => axi_mem_intercon_to_s02_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s02_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => axi_mem_intercon_to_s02_couplers_RID(2 downto 0),
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
s03_couplers: entity work.s03_couplers_imp_SLN4DK
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
      M_AXI_awvalid => s03_couplers_to_xbar_AWVALID,
      M_AXI_bid(2 downto 0) => s03_couplers_to_xbar_BID(11 downto 9),
      M_AXI_bready => s03_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s03_couplers_to_xbar_BRESP(7 downto 6),
      M_AXI_bvalid => s03_couplers_to_xbar_BVALID(3),
      M_AXI_rdata(31 downto 0) => s03_couplers_to_xbar_RDATA(127 downto 96),
      M_AXI_rid(2 downto 0) => s03_couplers_to_xbar_RID(11 downto 9),
      M_AXI_rlast => s03_couplers_to_xbar_RLAST(3),
      M_AXI_rready => s03_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s03_couplers_to_xbar_RRESP(7 downto 6),
      M_AXI_rvalid => s03_couplers_to_xbar_RVALID(3),
      M_AXI_wdata(31 downto 0) => s03_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s03_couplers_to_xbar_WLAST,
      M_AXI_wready => s03_couplers_to_xbar_WREADY(3),
      M_AXI_wstrb(3 downto 0) => s03_couplers_to_xbar_WSTRB(3 downto 0),
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
      S_AXI_awvalid => axi_mem_intercon_to_s03_couplers_AWVALID,
      S_AXI_bid(2 downto 0) => axi_mem_intercon_to_s03_couplers_BID(2 downto 0),
      S_AXI_bready => axi_mem_intercon_to_s03_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s03_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => axi_mem_intercon_to_s03_couplers_RID(2 downto 0),
      S_AXI_rlast => axi_mem_intercon_to_s03_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s03_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s03_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_mem_intercon_to_s03_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s03_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_mem_intercon_to_s03_couplers_WVALID
    );
xbar: component neural_net_accel_conv_db_xbar_0
     port map (
      aclk => axi_mem_intercon_ACLK_net,
      aresetn => axi_mem_intercon_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(2 downto 0) => xbar_to_m00_couplers_ARID(2 downto 0),
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
      m_axi_awid(2 downto 0) => xbar_to_m00_couplers_AWID(2 downto 0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awuser(0) => xbar_to_m00_couplers_AWUSER(0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(2 downto 0) => xbar_to_m00_couplers_BID(2 downto 0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(2 downto 0) => xbar_to_m00_couplers_RID(2 downto 0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wuser(0) => xbar_to_m00_couplers_WUSER(0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(127 downto 96) => s03_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(95 downto 64) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(7 downto 6) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(5 downto 4) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(15 downto 12) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(11 downto 8) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 10) => B"00",
      s_axi_arid(9) => s03_couplers_to_xbar_ARID(0),
      s_axi_arid(8 downto 7) => B"00",
      s_axi_arid(6) => s02_couplers_to_xbar_ARID(0),
      s_axi_arid(5 downto 4) => B"00",
      s_axi_arid(3) => s01_couplers_to_xbar_ARID(0),
      s_axi_arid(2 downto 1) => B"00",
      s_axi_arid(0) => s00_couplers_to_xbar_ARID(0),
      s_axi_arlen(31 downto 24) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(23 downto 16) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(3) => s03_couplers_to_xbar_ARLOCK,
      s_axi_arlock(2) => s02_couplers_to_xbar_ARLOCK,
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK,
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      s_axi_arprot(11 downto 9) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(8 downto 6) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(15 downto 12) => s03_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(11 downto 8) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(3) => s03_couplers_to_xbar_ARREADY(3),
      s_axi_arready(2) => s02_couplers_to_xbar_ARREADY(2),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(11 downto 9) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(8 downto 6) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_aruser(3) => '0',
      s_axi_aruser(2) => s02_couplers_to_xbar_ARUSER(0),
      s_axi_aruser(1 downto 0) => B"00",
      s_axi_arvalid(3) => s03_couplers_to_xbar_ARVALID,
      s_axi_arvalid(2) => s02_couplers_to_xbar_ARVALID,
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(127 downto 96) => s03_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(95 downto 64) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(7 downto 6) => s03_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(5 downto 4) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(15 downto 12) => s03_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(11 downto 8) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 10) => B"00",
      s_axi_awid(9) => s03_couplers_to_xbar_AWID(0),
      s_axi_awid(8 downto 7) => B"00",
      s_axi_awid(6) => s02_couplers_to_xbar_AWID(0),
      s_axi_awid(5 downto 4) => B"00",
      s_axi_awid(3) => s01_couplers_to_xbar_AWID(0),
      s_axi_awid(2 downto 1) => B"00",
      s_axi_awid(0) => s00_couplers_to_xbar_AWID(0),
      s_axi_awlen(31 downto 24) => s03_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(23 downto 16) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(3) => s03_couplers_to_xbar_AWLOCK,
      s_axi_awlock(2) => s02_couplers_to_xbar_AWLOCK,
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK,
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK,
      s_axi_awprot(11 downto 9) => s03_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(8 downto 6) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(15 downto 12) => s03_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(11 downto 8) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(7 downto 4) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(3) => s03_couplers_to_xbar_AWREADY(3),
      s_axi_awready(2) => s02_couplers_to_xbar_AWREADY(2),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(11 downto 9) => s03_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(8 downto 6) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awuser(3) => '0',
      s_axi_awuser(2) => s02_couplers_to_xbar_AWUSER(0),
      s_axi_awuser(1 downto 0) => B"00",
      s_axi_awvalid(3) => s03_couplers_to_xbar_AWVALID,
      s_axi_awvalid(2) => s02_couplers_to_xbar_AWVALID,
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(11 downto 9) => s03_couplers_to_xbar_BID(11 downto 9),
      s_axi_bid(8 downto 6) => s02_couplers_to_xbar_BID(8 downto 6),
      s_axi_bid(5 downto 3) => s01_couplers_to_xbar_BID(5 downto 3),
      s_axi_bid(2 downto 0) => s00_couplers_to_xbar_BID(2 downto 0),
      s_axi_bready(3) => s03_couplers_to_xbar_BREADY,
      s_axi_bready(2) => s02_couplers_to_xbar_BREADY,
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(7 downto 6) => s03_couplers_to_xbar_BRESP(7 downto 6),
      s_axi_bresp(5 downto 4) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(3) => s03_couplers_to_xbar_BVALID(3),
      s_axi_bvalid(2) => s02_couplers_to_xbar_BVALID(2),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(127 downto 96) => s03_couplers_to_xbar_RDATA(127 downto 96),
      s_axi_rdata(95 downto 64) => s02_couplers_to_xbar_RDATA(95 downto 64),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(11 downto 9) => s03_couplers_to_xbar_RID(11 downto 9),
      s_axi_rid(8 downto 6) => s02_couplers_to_xbar_RID(8 downto 6),
      s_axi_rid(5 downto 3) => s01_couplers_to_xbar_RID(5 downto 3),
      s_axi_rid(2 downto 0) => s00_couplers_to_xbar_RID(2 downto 0),
      s_axi_rlast(3) => s03_couplers_to_xbar_RLAST(3),
      s_axi_rlast(2) => s02_couplers_to_xbar_RLAST(2),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(3) => s03_couplers_to_xbar_RREADY,
      s_axi_rready(2) => s02_couplers_to_xbar_RREADY,
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(7 downto 6) => s03_couplers_to_xbar_RRESP(7 downto 6),
      s_axi_rresp(5 downto 4) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(3) => s03_couplers_to_xbar_RVALID(3),
      s_axi_rvalid(2) => s02_couplers_to_xbar_RVALID(2),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(127 downto 96) => s03_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(95 downto 64) => s02_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(63 downto 32) => s01_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(3) => s03_couplers_to_xbar_WLAST,
      s_axi_wlast(2) => s02_couplers_to_xbar_WLAST,
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST,
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(3) => s03_couplers_to_xbar_WREADY(3),
      s_axi_wready(2) => s02_couplers_to_xbar_WREADY(2),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(15 downto 12) => s03_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(11 downto 8) => s02_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(7 downto 4) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wuser(3) => '0',
      s_axi_wuser(2) => s02_couplers_to_xbar_WUSER(0),
      s_axi_wuser(1 downto 0) => B"00",
      s_axi_wvalid(3) => s03_couplers_to_xbar_WVALID,
      s_axi_wvalid(2) => s02_couplers_to_xbar_WVALID,
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity neural_net_accel_conv_db_microblaze_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
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
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
end neural_net_accel_conv_db_microblaze_0_axi_periph_0;

architecture STRUCTURE of neural_net_accel_conv_db_microblaze_0_axi_periph_0 is
  component neural_net_accel_conv_db_xbar_1 is
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
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component neural_net_accel_conv_db_xbar_1;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal m02_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal m03_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m03_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
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
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
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
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_WVALID(0);
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
  M02_AXI_arvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_microblaze_0_axi_periph_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_microblaze_0_axi_periph_AWVALID;
  M03_AXI_bready <= m03_couplers_to_microblaze_0_axi_periph_BREADY;
  M03_AXI_rready <= m03_couplers_to_microblaze_0_axi_periph_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_microblaze_0_axi_periph_WVALID;
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
  m00_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
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
m00_couplers: entity work.m00_couplers_imp_1FC3YND
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_17PIDR3
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
m02_couplers: entity work.m02_couplers_imp_1ULCVNP
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m02_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
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
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
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
m03_couplers: entity work.m03_couplers_imp_1MYRASZ
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m03_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m03_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
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
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
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
s00_couplers: entity work.s00_couplers_imp_1QGVGRR
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
xbar: component neural_net_accel_conv_db_xbar_1
     port map (
      aclk => microblaze_0_axi_periph_ACLK_net,
      aresetn => microblaze_0_axi_periph_ARESETN_net,
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(11 downto 6) => NLW_xbar_m_axi_arprot_UNCONNECTED(11 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(11 downto 6) => NLW_xbar_m_axi_awprot_UNCONNECTED(11 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
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
entity neural_net_accel_conv_db is
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
    uart_rtl_rxd : in STD_LOGIC;
    uart_rtl_txd : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of neural_net_accel_conv_db : entity is "neural_net_accel_conv_db,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=neural_net_accel_conv_db,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=40,numReposBlks=27,numNonXlnxBlks=0,numHierBlks=13,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=8,da_board_cnt=1,da_trigger_cnt=2,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of neural_net_accel_conv_db : entity is "neural_net_accel_conv_db.hwdef";
end neural_net_accel_conv_db;

architecture STRUCTURE of neural_net_accel_conv_db is
  component neural_net_accel_conv_db_axi_uartlite_0_0 is
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
  end component neural_net_accel_conv_db_axi_uartlite_0_0;
  component neural_net_accel_conv_db_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component neural_net_accel_conv_db_clk_wiz_0_0;
  component neural_net_accel_conv_db_ila_10_0 is
  port (
    clk : in STD_LOGIC;
    trig_in : in STD_LOGIC;
    trig_in_ack : out STD_LOGIC;
    trig_out : out STD_LOGIC;
    trig_out_ack : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe28 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe30 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe31 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe33 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe36 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe37 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe39 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe40 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe42 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe43 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe46 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe48 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe49 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe50 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe51 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe52 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe53 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe54 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe55 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe56 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe57 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe58 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe59 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe60 : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component neural_net_accel_conv_db_ila_10_0;
  component neural_net_accel_conv_db_ila_5_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe33 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe40 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe42 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe43 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe44 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe46 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe48 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe49 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe50 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe51 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe52 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe53 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe54 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe55 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe56 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe57 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe58 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe59 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe60 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe61 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe62 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe63 : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component neural_net_accel_conv_db_ila_5_0;
  component neural_net_accel_conv_db_ila_6_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe33 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe40 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe41 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe42 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe43 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe46 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe48 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe49 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe50 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe51 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe52 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe53 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe54 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe55 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe56 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe57 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe58 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe59 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    probe60 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe61 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe62 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe63 : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component neural_net_accel_conv_db_ila_6_0;
  component neural_net_accel_conv_db_ila_8_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe25 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe28 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe30 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe31 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe33 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe34 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe35 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe36 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 77 downto 0 );
    probe40 : in STD_LOGIC_VECTOR ( 50 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe42 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe43 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe44 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe46 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe48 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe49 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe50 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe51 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe52 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe53 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe54 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe55 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe56 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe57 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe58 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe59 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe60 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe61 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe62 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe63 : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component neural_net_accel_conv_db_ila_8_0;
  component neural_net_accel_conv_db_mdm_1_0 is
  port (
    M_AXI_ACLK : in STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    Debug_SYS_Rst : out STD_LOGIC;
    Trig_In_0 : in STD_LOGIC;
    Trig_Ack_In_0 : out STD_LOGIC;
    Trig_Out_0 : out STD_LOGIC;
    Trig_Ack_Out_0 : in STD_LOGIC;
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC;
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC;
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC;
    LMB_Data_Addr_0 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_0 : out STD_LOGIC;
    LMB_Ready_0 : in STD_LOGIC;
    LMB_Byte_Enable_0 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Read_0 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_0 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Read_Strobe_0 : out STD_LOGIC;
    LMB_Write_Strobe_0 : out STD_LOGIC;
    LMB_CE_0 : in STD_LOGIC;
    LMB_UE_0 : in STD_LOGIC;
    LMB_Wait_0 : in STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Trig_In_0 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out_0 : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Disable_0 : out STD_LOGIC
  );
  end component neural_net_accel_conv_db_mdm_1_0;
  component neural_net_accel_conv_db_microblaze_0_0 is
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
    Dbg_Trig_In : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out : out STD_LOGIC_VECTOR ( 0 to 7 );
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
  end component neural_net_accel_conv_db_microblaze_0_0;
  component neural_net_accel_conv_db_microblaze_0_axi_intc_0 is
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
  end component neural_net_accel_conv_db_microblaze_0_axi_intc_0;
  component neural_net_accel_conv_db_microblaze_0_xlconcat_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component neural_net_accel_conv_db_microblaze_0_xlconcat_0;
  component neural_net_accel_conv_db_rst_clk_wiz_0_100M_0 is
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
  end component neural_net_accel_conv_db_rst_clk_wiz_0_100M_0;
  component neural_net_accel_conv_db_xadc_wiz_0_0 is
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
  end component neural_net_accel_conv_db_xadc_wiz_0_0;
  component neural_net_accel_conv_db_mig_7series_0_0 is
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
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    mmcm_locked : out STD_LOGIC;
    sys_clk_i : in STD_LOGIC;
    init_calib_complete : out STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  end component neural_net_accel_conv_db_mig_7series_0_0;
  component neural_net_accel_conv_db_rst_mig_7series_0_100M_1 is
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
  end component neural_net_accel_conv_db_rst_mig_7series_0_100M_1;
  component neural_net_accel_conv_db_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component neural_net_accel_conv_db_xlconstant_0_0;
  component neural_net_accel_conv_db_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe25 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe28 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe30 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe33 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe40 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe42 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe43 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe46 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    probe48 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe49 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    probe50 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe51 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe52 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe53 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe54 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe55 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe56 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe57 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe58 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe59 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe60 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe61 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe62 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe63 : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component neural_net_accel_conv_db_ila_0_0;
  component neural_net_accel_conv_db_ila_1_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe33 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe40 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe42 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe43 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe46 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component neural_net_accel_conv_db_ila_1_0;
  component neural_net_accel_conv_db_Convolution_Layer_32bit_0_0 is
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
  end component neural_net_accel_conv_db_Convolution_Layer_32bit_0_0;
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
  signal Convolution_Layer_32bit_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_BREADY : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_BVALID : STD_LOGIC;
  signal Convolution_Layer_32bit_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal Convolution_Layer_32bit_0_ila_acc_fifo_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_acc_fifo_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_acc_fifo_empty : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_acc_fifo_full : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_acc_fifo_rd_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_acc_fifo_valid : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_acc_fifo_wr_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_acc_relay_addend : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_acc_relay_adder_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_acc_relay_affine_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_acc_relay_augend : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_acc_relay_bias_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_acc_relay_bias_read : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_acc_relay_complete : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_acc_relay_filter_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_acc_relay_filter_iteration_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_acc_relay_first_channel_set_complete : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_acc_relay_iteration_complete : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_acc_relay_iteration_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_acc_relay_output_pixel_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_acc_relay_prev_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_acc_relay_prev_read : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_acc_relay_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_ila_acc_relay_sum_result : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_acc_relay_volume_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_acc_relay_volume_processed : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_acc_relay_volume_row_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accu_fifo_input : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accumulator_acc_complete : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_accumulator_acc_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accumulator_acc_ready : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_accumulator_acc_valid : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_accumulator_channels_allowed_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accumulator_channels_filt_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accumulator_column_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accumulator_delay_shift_register : STD_LOGIC_VECTOR ( 77 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accumulator_filter_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accumulator_filter_size_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accumulator_kernel_delay_shift_register : STD_LOGIC_VECTOR ( 50 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accumulator_kernel_element_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accumulator_kernel_flag : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_accumulator_products_array_valid : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accumulator_que_acc_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accumulator_que_acc_valid : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_accumulator_que_fifo_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accumulator_que_fifo_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_accumulator_que_fifo_empty : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_accumulator_que_fifo_full : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_accumulator_que_fifo_rd_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_accumulator_que_fifo_valid : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_accumulator_que_fifo_wr_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_accumulator_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_ila_bias_fifo_data_return : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_bias_fifo_data_return_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_bias_fifo_din_mux : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_bias_fifo_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_bias_fifo_empty : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_bias_fifo_full : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_bias_fifo_rd_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_bias_fifo_return_wr_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_bias_fifo_valid : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_bias_fifo_wr_en_mux : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_controller_accumulator_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_controller_all_channels_processed : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_controller_channel_iteration_calc : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_channel_iteration_complete : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_controller_channel_iteration_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_channel_iterations_required : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_channel_mask : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_channels_allowed : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_channels_in_set : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_channels_processed : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_element_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_empty_data_complete : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_fifo_clear : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_controller_fifo_clear_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_filter_column_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_filter_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_filter_iteration_calc : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_filter_iteration_complete : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_controller_filter_iteration_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_filter_iterations_required : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_filter_row_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_filters_in_set : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_input_volume_channels : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_input_volume_row_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_input_volume_size : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_iteration_calc : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_iteration_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_more_dsps_needed : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_controller_num_iterations : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_number_of_filters : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_operation_complete : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_controller_pad_8bit : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_pad_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_pad_row_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_padded_volume_column_size : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_padded_volume_row_size : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_stride_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_stride_index : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_volume_channel_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_volume_column_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_volume_index_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_volume_row : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_volume_row_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_volume_rows_processed : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_weight_channel_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_weight_filter_channels : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_weight_filter_size : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_controller_weight_index_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_get_volume_row : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_get_weight_row : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_inbuff_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_inbuff_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_inbuff_empty : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_inbuff_full : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_inbuff_rd_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_inbuff_valid : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_kernel_layer_1_result_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_kernel_layer_2_result_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_kernel_layer_3_result : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_kernel_values_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_kernel_values_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_kernel_values_2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_kernel_values_3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_kernel_values_4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_kernel_values_5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_kernel_values_6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_layer_1_result_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_layer_2_result_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_layer_3_result_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_layer_4_result_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_layer_5_result : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_layer_6_result : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_acc_row_complete : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_affine_channels_in_set : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_affine_filter_iteration_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_affine_filters_in_set : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_affine_filters_iterations : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_affine_select : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_axi_araddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_axi_arlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_axi_arready : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_axi_arsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_axi_arvalid : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_axi_awaddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_axi_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_axi_awready : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_axi_awvalid : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_axi_bready : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_axi_bvalid : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_axi_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_axi_rlast : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_axi_rready : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_axi_rvalid : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_axi_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_axi_wlast : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_axi_wready : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_axi_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_axi_wvalid : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_bias_addr_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_bias_addr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_bias_length : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_bias_values_loaded : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_busy : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_calculated : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_ch_al_filt : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_channel_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_channel_loop_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_channels_allowed : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_channels_iterations : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_column_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_conv_complete : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_convolution_done : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_data_written : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_debug_mode : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_dsps_used : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_filter_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_filter_iterations_required : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_fsm_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_input_addr_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_input_arsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_input_channel_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_input_data_addr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_input_index : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_input_volume_channels : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_input_volume_height : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_input_volume_row_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_input_volume_width : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_iteration_complete : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_iteration_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_iterations_required : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_last_channel_base : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_layer_ready : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_more_bursts_needed : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_more_dsps : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_number_of_filters : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_operation_complete : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_out_last_channel_base : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_out_volume_row_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_output_addr_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_output_base_pixel : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_output_channel_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_output_data_addr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_output_index : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_output_volume_channels : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_output_volume_height : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_output_volume_width : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_pad : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_prev_addr_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_prev_addr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_prev_channel_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_prev_index : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_prev_last_channel_base : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_rbc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_reads_remaining : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_relu_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_row_complete : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_row_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_row_loop_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_start : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_stride : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_stride_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_volume_complete : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_wbc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_weight_filter_channels : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_weight_filter_height : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_weight_filter_width : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_weight_index : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_weights_addr_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_weights_addr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_master_weights_loaded : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_master_writes_remaining : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_multiplier_mult_a_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_multiplier_mult_a_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_multiplier_mult_a_2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_multiplier_mult_a_21 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_multiplier_mult_a_22 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_multiplier_mult_a_23 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_multiplier_mult_b_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_multiplier_mult_b_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_multiplier_mult_b_2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_multiplier_mult_b_21 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_multiplier_mult_b_22 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_multiplier_mult_b_23 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_outbuff_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_outbuff_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_outbuff_empty : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_outbuff_full : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_outbuff_valid : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_outbuff_wr_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_prev_fifo_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_prev_fifo_empty : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_prev_fifo_rd_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_prev_fifo_valid : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_prev_weight_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_products_array_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_products_array_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_products_array_2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_products_array_21 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_products_array_22 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_products_array_23 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_reset_weight_fifo_n : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_router_acc_ready : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_router_affine_complete : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_router_affine_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_router_conv_complete : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_router_convolution_en : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_router_disable_channel_n : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_router_filter_kernal_loaded : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_router_volume_ready : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_fifo_din_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_fifo_din_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_fifo_din_2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_fifo_din_21 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_fifo_din_22 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_fifo_din_23 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_fifo_empty : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_fifo_full : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_fifo_rd_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_fifo_valid : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_fifo_wr_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_mux_new_data_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_mux_prev_data_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_mux_prev_data_wr_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_mux_recycled_data_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_mux_recycled_data_wr_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_calc_params : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_volume_router_column_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_data_return_wr_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_data_valid : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_delay_shift_register : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_element_counter : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_empty_data_complete : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_empty_data_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_empty_done : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_volume_router_filter_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_loaded_rows_processed : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_pad_16bit : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_padded_volume_size : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_ready : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_snake_fill_complete : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_router_stop_stack_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_stack_fifo_full : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_volume_stack_fifo_wr_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_fifo_din_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_fifo_din_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_fifo_din_2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_fifo_din_21 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_fifo_din_22 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_fifo_din_23 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_fifo_empty : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_fifo_full : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_fifo_rd_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_fifo_valid : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_fifo_wr_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_mux_full : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_mux_new_data_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_mux_prev_data_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_mux_prev_data_wr_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_mux_recycle_filter_data_wr_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_mux_recycled_data_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_mux_wr_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_router_clear_weights : STD_LOGIC;
  signal Convolution_Layer_32bit_0_ila_weight_router_data_valid : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_router_delay_shift_register : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_router_filter_data_return_wr_en : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_router_filter_element_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_router_ready : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal Convolution_Layer_32bit_0_ila_weight_router_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Convolution_Layer_32bit_0_o_convolution_done : STD_LOGIC;
  signal Convolution_Layer_32bit_0_o_cycle : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Convolution_Layer_32bit_0_o_epoch : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARLOCK : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWLOCK : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_BREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_BVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal clk_wiz_0_clk_out3 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal clock_rtl_1 : STD_LOGIC;
  signal ila_10_TRIG_OUT_ACK : STD_LOGIC;
  signal ila_10_TRIG_OUT_TRIG : STD_LOGIC;
  signal mdm_1_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mdm_1_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mdm_1_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mdm_1_M_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mdm_1_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mdm_1_M_AXI_ARLOCK : STD_LOGIC;
  signal mdm_1_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mdm_1_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mdm_1_M_AXI_ARREADY : STD_LOGIC;
  signal mdm_1_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mdm_1_M_AXI_ARVALID : STD_LOGIC;
  signal mdm_1_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mdm_1_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mdm_1_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mdm_1_M_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mdm_1_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mdm_1_M_AXI_AWLOCK : STD_LOGIC;
  signal mdm_1_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mdm_1_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mdm_1_M_AXI_AWREADY : STD_LOGIC;
  signal mdm_1_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mdm_1_M_AXI_AWVALID : STD_LOGIC;
  signal mdm_1_M_AXI_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mdm_1_M_AXI_BREADY : STD_LOGIC;
  signal mdm_1_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mdm_1_M_AXI_BVALID : STD_LOGIC;
  signal mdm_1_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mdm_1_M_AXI_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mdm_1_M_AXI_RLAST : STD_LOGIC;
  signal mdm_1_M_AXI_RREADY : STD_LOGIC;
  signal mdm_1_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mdm_1_M_AXI_RVALID : STD_LOGIC;
  signal mdm_1_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mdm_1_M_AXI_WLAST : STD_LOGIC;
  signal mdm_1_M_AXI_WREADY : STD_LOGIC;
  signal mdm_1_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mdm_1_M_AXI_WVALID : STD_LOGIC;
  signal mdm_1_TRIG_OUT_0_ACK : STD_LOGIC;
  signal mdm_1_TRIG_OUT_0_TRIG : STD_LOGIC;
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
  signal microblaze_0_M_AXI_DC_ARREADY : STD_LOGIC;
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
  signal microblaze_0_M_AXI_DC_AWREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_AWVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_BREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_BVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_RLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_RVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_WLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_WREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_WVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DP_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DP_ARVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DP_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DP_AWVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_BREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DP_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DP_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DP_WVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_IC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_IC_ARLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_ARREADY : STD_LOGIC;
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
  signal microblaze_0_M_AXI_IC_AWREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_AWVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_BREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_BVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_RLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_RVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_WLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_WREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_WVALID : STD_LOGIC;
  signal microblaze_0_axi_intc_interrupt_ACK : STD_LOGIC_VECTOR ( 0 to 1 );
  signal microblaze_0_axi_intc_interrupt_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_intc_interrupt_INTERRUPT : STD_LOGIC;
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
  signal microblaze_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal microblaze_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal microblaze_0_debug_CAPTURE : STD_LOGIC;
  signal microblaze_0_debug_CLK : STD_LOGIC;
  signal microblaze_0_debug_DISABLE : STD_LOGIC;
  signal microblaze_0_debug_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal microblaze_0_debug_RST : STD_LOGIC;
  signal microblaze_0_debug_SHIFT : STD_LOGIC;
  signal microblaze_0_debug_TDI : STD_LOGIC;
  signal microblaze_0_debug_TDO : STD_LOGIC;
  signal microblaze_0_debug_TRIG_ACK_IN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal microblaze_0_debug_TRIG_ACK_OUT : STD_LOGIC_VECTOR ( 0 to 7 );
  signal microblaze_0_debug_TRIG_IN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal microblaze_0_debug_TRIG_OUT : STD_LOGIC_VECTOR ( 0 to 7 );
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
  signal microblaze_0_intc_axi_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_intc_axi_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_AWREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_intc_axi_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_intc_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intc_axi_BVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_intc_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intc_axi_RVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_WREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_intc_axi_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_intr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_lmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_lmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_lmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_lmb_CE : STD_LOGIC;
  signal microblaze_0_lmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_lmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_lmb_READY : STD_LOGIC;
  signal microblaze_0_lmb_UE : STD_LOGIC;
  signal microblaze_0_lmb_WAIT : STD_LOGIC;
  signal microblaze_0_lmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_lmb_WRITESTROBE : STD_LOGIC;
  signal mig_7series_0_DDR4_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal mig_7series_0_DDR4_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mig_7series_0_DDR4_CAS_N : STD_LOGIC;
  signal mig_7series_0_DDR4_CKE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR4_CK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR4_CK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR4_DM : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mig_7series_0_DDR4_DQ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mig_7series_0_DDR4_DQS_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mig_7series_0_DDR4_DQS_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mig_7series_0_DDR4_ODT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR4_RAS_N : STD_LOGIC;
  signal mig_7series_0_DDR4_RESET_N : STD_LOGIC;
  signal mig_7series_0_DDR4_WE_N : STD_LOGIC;
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
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_acc_fifo_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_acc_fifo_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_bias_fifo_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_bias_fifo_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_controller_fifo_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_inbuff_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_inbuff_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_outbuff_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_outbuff_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_prev_fifo_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_weight_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_m00_axi_error_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_m00_axi_txn_done_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_o_data_written_UNCONNECTED : STD_LOGIC;
  signal NLW_Convolution_Layer_32bit_0_ila_controller_input_volume_size_10bit_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_pad_10bit_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_controller_pad_16bit_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_reg_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_reg_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_reg_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_result_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_result_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_layer_3_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_kernel_values_10_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal NLW_Convolution_Layer_32bit_0_ila_layer_3_result_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_3_result_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_3_result_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_4_reg_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_4_reg_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_4_result_1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_5_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_layer_6_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_20_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_20_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal NLW_Convolution_Layer_32bit_0_ila_products_array_20_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_almost_empty_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_almost_full_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
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
  signal NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_20_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal NLW_Convolution_Layer_32bit_0_ila_volume_stack_fifo_almost_full_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_almost_empty_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_almost_full_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
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
  signal NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_20_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal NLW_Convolution_Layer_32bit_0_ila_weight_mux_almost_full_UNCONNECTED : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_axi_uartlite_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_wiz_0_clk_out2_UNCONNECTED : STD_LOGIC;
  signal NLW_mig_7series_0_init_calib_complete_UNCONNECTED : STD_LOGIC;
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
  attribute BMM_INFO_PROCESSOR of microblaze_0 : label is "microblaze-le > neural_net_accel_conv_db microblaze_0_local_memory/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of microblaze_0 : label is "yes";
begin
  DDR3_addr(14 downto 0) <= mig_7series_0_DDR4_ADDR(14 downto 0);
  DDR3_ba(2 downto 0) <= mig_7series_0_DDR4_BA(2 downto 0);
  DDR3_cas_n <= mig_7series_0_DDR4_CAS_N;
  DDR3_ck_n(0) <= mig_7series_0_DDR4_CK_N(0);
  DDR3_ck_p(0) <= mig_7series_0_DDR4_CK_P(0);
  DDR3_cke(0) <= mig_7series_0_DDR4_CKE(0);
  DDR3_dm(1 downto 0) <= mig_7series_0_DDR4_DM(1 downto 0);
  DDR3_odt(0) <= mig_7series_0_DDR4_ODT(0);
  DDR3_ras_n <= mig_7series_0_DDR4_RAS_N;
  DDR3_reset_n <= mig_7series_0_DDR4_RESET_N;
  DDR3_we_n <= mig_7series_0_DDR4_WE_N;
  axi_uartlite_0_UART_RxD <= uart_rtl_rxd;
  clock_rtl_1 <= i_sys_clk;
  conv_busy <= Convolution_Layer_32bit_0_ila_master_busy;
  reset_rtl_1 <= i_reset_n;
  uart_rtl_txd <= axi_uartlite_0_UART_TxD;
Convolution_Layer_32bit_0: component neural_net_accel_conv_db_Convolution_Layer_32bit_0_0
     port map (
      i_ext_reset_n => reset_rtl_1,
      ila_acc_fifo_almost_empty => NLW_Convolution_Layer_32bit_0_ila_acc_fifo_almost_empty_UNCONNECTED,
      ila_acc_fifo_almost_full => NLW_Convolution_Layer_32bit_0_ila_acc_fifo_almost_full_UNCONNECTED,
      ila_acc_fifo_din(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_fifo_din(31 downto 0),
      ila_acc_fifo_dout(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_fifo_dout(31 downto 0),
      ila_acc_fifo_empty => Convolution_Layer_32bit_0_ila_acc_fifo_empty,
      ila_acc_fifo_full => Convolution_Layer_32bit_0_ila_acc_fifo_full,
      ila_acc_fifo_rd_en => Convolution_Layer_32bit_0_ila_acc_fifo_rd_en,
      ila_acc_fifo_valid => Convolution_Layer_32bit_0_ila_acc_fifo_valid,
      ila_acc_fifo_wr_en => Convolution_Layer_32bit_0_ila_acc_fifo_wr_en,
      ila_acc_relay_addend(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_addend(31 downto 0),
      ila_acc_relay_adder_counter(7 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_adder_counter(7 downto 0),
      ila_acc_relay_affine_en => Convolution_Layer_32bit_0_ila_acc_relay_affine_en,
      ila_acc_relay_augend(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_augend(31 downto 0),
      ila_acc_relay_bias_data(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_bias_data(31 downto 0),
      ila_acc_relay_bias_read => Convolution_Layer_32bit_0_ila_acc_relay_bias_read,
      ila_acc_relay_complete => Convolution_Layer_32bit_0_ila_acc_relay_complete,
      ila_acc_relay_filter_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_filter_counter(15 downto 0),
      ila_acc_relay_filter_iteration_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_filter_iteration_counter(15 downto 0),
      ila_acc_relay_first_channel_set_complete => Convolution_Layer_32bit_0_ila_acc_relay_first_channel_set_complete,
      ila_acc_relay_iteration_complete => Convolution_Layer_32bit_0_ila_acc_relay_iteration_complete,
      ila_acc_relay_iteration_counter(7 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_iteration_counter(7 downto 0),
      ila_acc_relay_output_pixel_counter(7 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_output_pixel_counter(7 downto 0),
      ila_acc_relay_prev_data(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_prev_data(31 downto 0),
      ila_acc_relay_prev_read => Convolution_Layer_32bit_0_ila_acc_relay_prev_read,
      ila_acc_relay_state(3 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_state(3 downto 0),
      ila_acc_relay_sum_result(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_sum_result(31 downto 0),
      ila_acc_relay_volume_data(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_volume_data(31 downto 0),
      ila_acc_relay_volume_processed => Convolution_Layer_32bit_0_ila_acc_relay_volume_processed,
      ila_acc_relay_volume_row_counter(7 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_volume_row_counter(7 downto 0),
      ila_accu_fifo_input(31 downto 0) => Convolution_Layer_32bit_0_ila_accu_fifo_input(31 downto 0),
      ila_accumulator_acc_complete => Convolution_Layer_32bit_0_ila_accumulator_acc_complete,
      ila_accumulator_acc_data(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_acc_data(31 downto 0),
      ila_accumulator_acc_ready => Convolution_Layer_32bit_0_ila_accumulator_acc_ready,
      ila_accumulator_acc_valid => Convolution_Layer_32bit_0_ila_accumulator_acc_valid,
      ila_accumulator_channels_allowed_counter(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_channels_allowed_counter(31 downto 0),
      ila_accumulator_channels_filt_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_channels_filt_counter(15 downto 0),
      ila_accumulator_column_counter(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_column_counter(31 downto 0),
      ila_accumulator_delay_shift_register(77 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_delay_shift_register(77 downto 0),
      ila_accumulator_filter_counter(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_filter_counter(31 downto 0),
      ila_accumulator_filter_size_counter(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_filter_size_counter(31 downto 0),
      ila_accumulator_kernel_delay_shift_register(50 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_kernel_delay_shift_register(50 downto 0),
      ila_accumulator_kernel_element_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_kernel_element_counter(15 downto 0),
      ila_accumulator_kernel_flag => Convolution_Layer_32bit_0_ila_accumulator_kernel_flag,
      ila_accumulator_products_array_valid(32 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_products_array_valid(32 downto 0),
      ila_accumulator_que_acc_data(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_que_acc_data(31 downto 0),
      ila_accumulator_que_acc_valid => Convolution_Layer_32bit_0_ila_accumulator_que_acc_valid,
      ila_accumulator_que_fifo_almost_empty => NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_almost_empty_UNCONNECTED,
      ila_accumulator_que_fifo_almost_full => NLW_Convolution_Layer_32bit_0_ila_accumulator_que_fifo_almost_full_UNCONNECTED,
      ila_accumulator_que_fifo_din(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_que_fifo_din(31 downto 0),
      ila_accumulator_que_fifo_dout(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_que_fifo_dout(31 downto 0),
      ila_accumulator_que_fifo_empty => Convolution_Layer_32bit_0_ila_accumulator_que_fifo_empty,
      ila_accumulator_que_fifo_full => Convolution_Layer_32bit_0_ila_accumulator_que_fifo_full,
      ila_accumulator_que_fifo_rd_en => Convolution_Layer_32bit_0_ila_accumulator_que_fifo_rd_en,
      ila_accumulator_que_fifo_valid => Convolution_Layer_32bit_0_ila_accumulator_que_fifo_valid,
      ila_accumulator_que_fifo_wr_en => Convolution_Layer_32bit_0_ila_accumulator_que_fifo_wr_en,
      ila_accumulator_state(3 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_state(3 downto 0),
      ila_bias_fifo_almost_empty => NLW_Convolution_Layer_32bit_0_ila_bias_fifo_almost_empty_UNCONNECTED,
      ila_bias_fifo_almost_full => NLW_Convolution_Layer_32bit_0_ila_bias_fifo_almost_full_UNCONNECTED,
      ila_bias_fifo_data_return(31 downto 0) => Convolution_Layer_32bit_0_ila_bias_fifo_data_return(31 downto 0),
      ila_bias_fifo_data_return_en => Convolution_Layer_32bit_0_ila_bias_fifo_data_return_en,
      ila_bias_fifo_din_mux(31 downto 0) => Convolution_Layer_32bit_0_ila_bias_fifo_din_mux(31 downto 0),
      ila_bias_fifo_dout(31 downto 0) => Convolution_Layer_32bit_0_ila_bias_fifo_dout(31 downto 0),
      ila_bias_fifo_empty => Convolution_Layer_32bit_0_ila_bias_fifo_empty,
      ila_bias_fifo_full => Convolution_Layer_32bit_0_ila_bias_fifo_full,
      ila_bias_fifo_rd_en => Convolution_Layer_32bit_0_ila_bias_fifo_rd_en,
      ila_bias_fifo_return_wr_en => Convolution_Layer_32bit_0_ila_bias_fifo_return_wr_en,
      ila_bias_fifo_valid => Convolution_Layer_32bit_0_ila_bias_fifo_valid,
      ila_bias_fifo_wr_en_mux => Convolution_Layer_32bit_0_ila_bias_fifo_wr_en_mux,
      ila_controller_accumulator_en => Convolution_Layer_32bit_0_ila_controller_accumulator_en,
      ila_controller_all_channels_processed => Convolution_Layer_32bit_0_ila_controller_all_channels_processed,
      ila_controller_channel_iteration_calc(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_channel_iteration_calc(15 downto 0),
      ila_controller_channel_iteration_complete => Convolution_Layer_32bit_0_ila_controller_channel_iteration_complete,
      ila_controller_channel_iteration_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_channel_iteration_counter(15 downto 0),
      ila_controller_channel_iterations_required(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_channel_iterations_required(15 downto 0),
      ila_controller_channel_mask(32 downto 0) => Convolution_Layer_32bit_0_ila_controller_channel_mask(32 downto 0),
      ila_controller_channels_allowed(7 downto 0) => Convolution_Layer_32bit_0_ila_controller_channels_allowed(7 downto 0),
      ila_controller_channels_in_set(7 downto 0) => Convolution_Layer_32bit_0_ila_controller_channels_in_set(7 downto 0),
      ila_controller_channels_processed(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_channels_processed(15 downto 0),
      ila_controller_element_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_element_counter(15 downto 0),
      ila_controller_empty_data_complete(32 downto 0) => Convolution_Layer_32bit_0_ila_controller_empty_data_complete(32 downto 0),
      ila_controller_fifo_clear => Convolution_Layer_32bit_0_ila_controller_fifo_clear,
      ila_controller_fifo_clear_counter(7 downto 0) => Convolution_Layer_32bit_0_ila_controller_fifo_clear_counter(7 downto 0),
      ila_controller_fifo_reset => NLW_Convolution_Layer_32bit_0_ila_controller_fifo_reset_UNCONNECTED,
      ila_controller_filter_column_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_filter_column_counter(15 downto 0),
      ila_controller_filter_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_filter_counter(15 downto 0),
      ila_controller_filter_iteration_calc(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_filter_iteration_calc(15 downto 0),
      ila_controller_filter_iteration_complete => Convolution_Layer_32bit_0_ila_controller_filter_iteration_complete,
      ila_controller_filter_iteration_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_filter_iteration_counter(15 downto 0),
      ila_controller_filter_iterations_required(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_filter_iterations_required(15 downto 0),
      ila_controller_filter_row_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_filter_row_counter(15 downto 0),
      ila_controller_filters_in_set(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_filters_in_set(15 downto 0),
      ila_controller_input_volume_channels(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_input_volume_channels(15 downto 0),
      ila_controller_input_volume_row_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_input_volume_row_counter(15 downto 0),
      ila_controller_input_volume_size(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_input_volume_size(15 downto 0),
      ila_controller_input_volume_size_10bit(9 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_input_volume_size_10bit_UNCONNECTED(9 downto 0),
      ila_controller_iteration_calc(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_iteration_calc(15 downto 0),
      ila_controller_iteration_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_iteration_counter(15 downto 0),
      ila_controller_more_dsps_needed => Convolution_Layer_32bit_0_ila_controller_more_dsps_needed,
      ila_controller_num_iterations(7 downto 0) => Convolution_Layer_32bit_0_ila_controller_num_iterations(7 downto 0),
      ila_controller_number_of_filters(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_number_of_filters(15 downto 0),
      ila_controller_operation_complete => Convolution_Layer_32bit_0_ila_controller_operation_complete,
      ila_controller_pad_10bit(9 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_pad_10bit_UNCONNECTED(9 downto 0),
      ila_controller_pad_16bit(15 downto 0) => NLW_Convolution_Layer_32bit_0_ila_controller_pad_16bit_UNCONNECTED(15 downto 0),
      ila_controller_pad_8bit(7 downto 0) => Convolution_Layer_32bit_0_ila_controller_pad_8bit(7 downto 0),
      ila_controller_pad_counter(3 downto 0) => Convolution_Layer_32bit_0_ila_controller_pad_counter(3 downto 0),
      ila_controller_pad_row_counter(3 downto 0) => Convolution_Layer_32bit_0_ila_controller_pad_row_counter(3 downto 0),
      ila_controller_padded_volume_column_size(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_padded_volume_column_size(15 downto 0),
      ila_controller_padded_volume_row_size(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_padded_volume_row_size(15 downto 0),
      ila_controller_state(4 downto 0) => Convolution_Layer_32bit_0_ila_controller_state(4 downto 0),
      ila_controller_stride_counter(3 downto 0) => Convolution_Layer_32bit_0_ila_controller_stride_counter(3 downto 0),
      ila_controller_stride_index(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_stride_index(15 downto 0),
      ila_controller_volume_channel_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_volume_channel_counter(15 downto 0),
      ila_controller_volume_column_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_volume_column_counter(15 downto 0),
      ila_controller_volume_index_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_volume_index_counter(15 downto 0),
      ila_controller_volume_row(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_volume_row(15 downto 0),
      ila_controller_volume_row_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_volume_row_counter(15 downto 0),
      ila_controller_volume_rows_processed(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_volume_rows_processed(15 downto 0),
      ila_controller_weight_channel_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_weight_channel_counter(15 downto 0),
      ila_controller_weight_filter_channels(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_weight_filter_channels(15 downto 0),
      ila_controller_weight_filter_size(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_weight_filter_size(15 downto 0),
      ila_controller_weight_index_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_weight_index_counter(15 downto 0),
      ila_get_volume_row(32 downto 0) => Convolution_Layer_32bit_0_ila_get_volume_row(32 downto 0),
      ila_get_weight_row(32 downto 0) => Convolution_Layer_32bit_0_ila_get_weight_row(32 downto 0),
      ila_inbuff_almost_empty => NLW_Convolution_Layer_32bit_0_ila_inbuff_almost_empty_UNCONNECTED,
      ila_inbuff_almost_full => NLW_Convolution_Layer_32bit_0_ila_inbuff_almost_full_UNCONNECTED,
      ila_inbuff_din(31 downto 0) => Convolution_Layer_32bit_0_ila_inbuff_din(31 downto 0),
      ila_inbuff_dout(31 downto 0) => Convolution_Layer_32bit_0_ila_inbuff_dout(31 downto 0),
      ila_inbuff_empty => Convolution_Layer_32bit_0_ila_inbuff_empty,
      ila_inbuff_full => Convolution_Layer_32bit_0_ila_inbuff_full,
      ila_inbuff_rd_en => Convolution_Layer_32bit_0_ila_inbuff_rd_en,
      ila_inbuff_valid => Convolution_Layer_32bit_0_ila_inbuff_valid,
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
      ila_kernel_layer_1_result_0(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_layer_1_result_0(31 downto 0),
      ila_kernel_layer_1_result_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_1_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_result_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_2_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_result_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_3_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_result_4(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_4_UNCONNECTED(31 downto 0),
      ila_kernel_layer_1_result_5(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_1_result_5_UNCONNECTED(31 downto 0),
      ila_kernel_layer_2_reg_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_reg_0_UNCONNECTED(31 downto 0),
      ila_kernel_layer_2_reg_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_reg_1_UNCONNECTED(31 downto 0),
      ila_kernel_layer_2_reg_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_reg_2_UNCONNECTED(31 downto 0),
      ila_kernel_layer_2_result_0(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_layer_2_result_0(31 downto 0),
      ila_kernel_layer_2_result_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_result_1_UNCONNECTED(31 downto 0),
      ila_kernel_layer_2_result_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_2_result_2_UNCONNECTED(31 downto 0),
      ila_kernel_layer_3_reg(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_layer_3_reg_UNCONNECTED(31 downto 0),
      ila_kernel_layer_3_result(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_layer_3_result(31 downto 0),
      ila_kernel_values_0(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_values_0(31 downto 0),
      ila_kernel_values_1(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_values_1(31 downto 0),
      ila_kernel_values_10(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_kernel_values_10_UNCONNECTED(31 downto 0),
      ila_kernel_values_2(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_values_2(31 downto 0),
      ila_kernel_values_3(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_values_3(31 downto 0),
      ila_kernel_values_4(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_values_4(31 downto 0),
      ila_kernel_values_5(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_values_5(31 downto 0),
      ila_kernel_values_6(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_values_6(31 downto 0),
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
      ila_layer_1_result_0(31 downto 0) => Convolution_Layer_32bit_0_ila_layer_1_result_0(31 downto 0),
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
      ila_layer_2_result_0(31 downto 0) => Convolution_Layer_32bit_0_ila_layer_2_result_0(31 downto 0),
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
      ila_layer_3_result_0(31 downto 0) => Convolution_Layer_32bit_0_ila_layer_3_result_0(31 downto 0),
      ila_layer_3_result_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_3_result_1_UNCONNECTED(31 downto 0),
      ila_layer_3_result_2(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_3_result_2_UNCONNECTED(31 downto 0),
      ila_layer_3_result_3(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_3_result_3_UNCONNECTED(31 downto 0),
      ila_layer_4_reg_0(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_4_reg_0_UNCONNECTED(31 downto 0),
      ila_layer_4_reg_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_4_reg_1_UNCONNECTED(31 downto 0),
      ila_layer_4_result_0(31 downto 0) => Convolution_Layer_32bit_0_ila_layer_4_result_0(31 downto 0),
      ila_layer_4_result_1(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_4_result_1_UNCONNECTED(31 downto 0),
      ila_layer_5_reg(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_5_reg_UNCONNECTED(31 downto 0),
      ila_layer_5_result(31 downto 0) => Convolution_Layer_32bit_0_ila_layer_5_result(31 downto 0),
      ila_layer_6_reg(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_layer_6_reg_UNCONNECTED(31 downto 0),
      ila_layer_6_result(31 downto 0) => Convolution_Layer_32bit_0_ila_layer_6_result(31 downto 0),
      ila_master_acc_row_complete => Convolution_Layer_32bit_0_ila_master_acc_row_complete,
      ila_master_affine_channels_in_set(15 downto 0) => Convolution_Layer_32bit_0_ila_master_affine_channels_in_set(15 downto 0),
      ila_master_affine_filter_iteration_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_master_affine_filter_iteration_counter(15 downto 0),
      ila_master_affine_filters_in_set(15 downto 0) => Convolution_Layer_32bit_0_ila_master_affine_filters_in_set(15 downto 0),
      ila_master_affine_filters_iterations(15 downto 0) => Convolution_Layer_32bit_0_ila_master_affine_filters_iterations(15 downto 0),
      ila_master_affine_select => Convolution_Layer_32bit_0_ila_master_affine_select,
      ila_master_axi_araddr(31 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_araddr(31 downto 0),
      ila_master_axi_arlen(7 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_arlen(7 downto 0),
      ila_master_axi_arready => Convolution_Layer_32bit_0_ila_master_axi_arready,
      ila_master_axi_arsize(2 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_arsize(2 downto 0),
      ila_master_axi_arvalid => Convolution_Layer_32bit_0_ila_master_axi_arvalid,
      ila_master_axi_awaddr(31 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_awaddr(31 downto 0),
      ila_master_axi_awlen(7 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_awlen(7 downto 0),
      ila_master_axi_awready => Convolution_Layer_32bit_0_ila_master_axi_awready,
      ila_master_axi_awvalid => Convolution_Layer_32bit_0_ila_master_axi_awvalid,
      ila_master_axi_bready => Convolution_Layer_32bit_0_ila_master_axi_bready,
      ila_master_axi_bvalid => Convolution_Layer_32bit_0_ila_master_axi_bvalid,
      ila_master_axi_rdata(31 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_rdata(31 downto 0),
      ila_master_axi_rlast => Convolution_Layer_32bit_0_ila_master_axi_rlast,
      ila_master_axi_rready => Convolution_Layer_32bit_0_ila_master_axi_rready,
      ila_master_axi_rvalid => Convolution_Layer_32bit_0_ila_master_axi_rvalid,
      ila_master_axi_wdata(31 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_wdata(31 downto 0),
      ila_master_axi_wlast => Convolution_Layer_32bit_0_ila_master_axi_wlast,
      ila_master_axi_wready => Convolution_Layer_32bit_0_ila_master_axi_wready,
      ila_master_axi_wstrb(3 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_wstrb(3 downto 0),
      ila_master_axi_wvalid => Convolution_Layer_32bit_0_ila_master_axi_wvalid,
      ila_master_bias_addr_counter(31 downto 0) => Convolution_Layer_32bit_0_ila_master_bias_addr_counter(31 downto 0),
      ila_master_bias_addr_reg(31 downto 0) => Convolution_Layer_32bit_0_ila_master_bias_addr_reg(31 downto 0),
      ila_master_bias_length(15 downto 0) => Convolution_Layer_32bit_0_ila_master_bias_length(15 downto 0),
      ila_master_bias_values_loaded => Convolution_Layer_32bit_0_ila_master_bias_values_loaded,
      ila_master_busy => Convolution_Layer_32bit_0_ila_master_busy,
      ila_master_calculated => Convolution_Layer_32bit_0_ila_master_calculated,
      ila_master_ch_al_filt(15 downto 0) => Convolution_Layer_32bit_0_ila_master_ch_al_filt(15 downto 0),
      ila_master_channel_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_master_channel_counter(15 downto 0),
      ila_master_channel_loop_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_master_channel_loop_counter(15 downto 0),
      ila_master_channels_allowed(15 downto 0) => Convolution_Layer_32bit_0_ila_master_channels_allowed(15 downto 0),
      ila_master_channels_iterations(15 downto 0) => Convolution_Layer_32bit_0_ila_master_channels_iterations(15 downto 0),
      ila_master_column_counter(7 downto 0) => Convolution_Layer_32bit_0_ila_master_column_counter(7 downto 0),
      ila_master_conv_complete => Convolution_Layer_32bit_0_ila_master_conv_complete,
      ila_master_convolution_done => Convolution_Layer_32bit_0_ila_master_convolution_done,
      ila_master_data_written => Convolution_Layer_32bit_0_ila_master_data_written,
      ila_master_debug_mode => Convolution_Layer_32bit_0_ila_master_debug_mode,
      ila_master_dsps_used(7 downto 0) => Convolution_Layer_32bit_0_ila_master_dsps_used(7 downto 0),
      ila_master_filter_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_master_filter_counter(15 downto 0),
      ila_master_filter_iterations_required(15 downto 0) => Convolution_Layer_32bit_0_ila_master_filter_iterations_required(15 downto 0),
      ila_master_fsm_state(4 downto 0) => Convolution_Layer_32bit_0_ila_master_fsm_state(4 downto 0),
      ila_master_input_addr_counter(31 downto 0) => Convolution_Layer_32bit_0_ila_master_input_addr_counter(31 downto 0),
      ila_master_input_arsize(2 downto 0) => Convolution_Layer_32bit_0_ila_master_input_arsize(2 downto 0),
      ila_master_input_channel_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_master_input_channel_counter(15 downto 0),
      ila_master_input_data_addr_reg(31 downto 0) => Convolution_Layer_32bit_0_ila_master_input_data_addr_reg(31 downto 0),
      ila_master_input_index(31 downto 0) => Convolution_Layer_32bit_0_ila_master_input_index(31 downto 0),
      ila_master_input_volume_channels(15 downto 0) => Convolution_Layer_32bit_0_ila_master_input_volume_channels(15 downto 0),
      ila_master_input_volume_height(7 downto 0) => Convolution_Layer_32bit_0_ila_master_input_volume_height(7 downto 0),
      ila_master_input_volume_row_counter(7 downto 0) => Convolution_Layer_32bit_0_ila_master_input_volume_row_counter(7 downto 0),
      ila_master_input_volume_width(7 downto 0) => Convolution_Layer_32bit_0_ila_master_input_volume_width(7 downto 0),
      ila_master_iteration_complete => Convolution_Layer_32bit_0_ila_master_iteration_complete,
      ila_master_iteration_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_master_iteration_counter(15 downto 0),
      ila_master_iterations_required(7 downto 0) => Convolution_Layer_32bit_0_ila_master_iterations_required(7 downto 0),
      ila_master_last_channel_base(31 downto 0) => Convolution_Layer_32bit_0_ila_master_last_channel_base(31 downto 0),
      ila_master_layer_ready => Convolution_Layer_32bit_0_ila_master_layer_ready,
      ila_master_more_bursts_needed => Convolution_Layer_32bit_0_ila_master_more_bursts_needed,
      ila_master_more_dsps => Convolution_Layer_32bit_0_ila_master_more_dsps,
      ila_master_number_of_filters(15 downto 0) => Convolution_Layer_32bit_0_ila_master_number_of_filters(15 downto 0),
      ila_master_operation_complete => Convolution_Layer_32bit_0_ila_master_operation_complete,
      ila_master_out_last_channel_base(31 downto 0) => Convolution_Layer_32bit_0_ila_master_out_last_channel_base(31 downto 0),
      ila_master_out_volume_row_counter(7 downto 0) => Convolution_Layer_32bit_0_ila_master_out_volume_row_counter(7 downto 0),
      ila_master_output_addr_counter(31 downto 0) => Convolution_Layer_32bit_0_ila_master_output_addr_counter(31 downto 0),
      ila_master_output_base_pixel(31 downto 0) => Convolution_Layer_32bit_0_ila_master_output_base_pixel(31 downto 0),
      ila_master_output_channel_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_master_output_channel_counter(15 downto 0),
      ila_master_output_data_addr_reg(31 downto 0) => Convolution_Layer_32bit_0_ila_master_output_data_addr_reg(31 downto 0),
      ila_master_output_index(31 downto 0) => Convolution_Layer_32bit_0_ila_master_output_index(31 downto 0),
      ila_master_output_volume_channels(11 downto 0) => Convolution_Layer_32bit_0_ila_master_output_volume_channels(11 downto 0),
      ila_master_output_volume_height(7 downto 0) => Convolution_Layer_32bit_0_ila_master_output_volume_height(7 downto 0),
      ila_master_output_volume_width(7 downto 0) => Convolution_Layer_32bit_0_ila_master_output_volume_width(7 downto 0),
      ila_master_pad(3 downto 0) => Convolution_Layer_32bit_0_ila_master_pad(3 downto 0),
      ila_master_prev_addr_counter(31 downto 0) => Convolution_Layer_32bit_0_ila_master_prev_addr_counter(31 downto 0),
      ila_master_prev_addr_reg(31 downto 0) => Convolution_Layer_32bit_0_ila_master_prev_addr_reg(31 downto 0),
      ila_master_prev_channel_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_master_prev_channel_counter(15 downto 0),
      ila_master_prev_index(31 downto 0) => Convolution_Layer_32bit_0_ila_master_prev_index(31 downto 0),
      ila_master_prev_last_channel_base(31 downto 0) => Convolution_Layer_32bit_0_ila_master_prev_last_channel_base(31 downto 0),
      ila_master_rbc(7 downto 0) => Convolution_Layer_32bit_0_ila_master_rbc(7 downto 0),
      ila_master_reads_remaining(31 downto 0) => Convolution_Layer_32bit_0_ila_master_reads_remaining(31 downto 0),
      ila_master_relu_en => Convolution_Layer_32bit_0_ila_master_relu_en,
      ila_master_row_complete => Convolution_Layer_32bit_0_ila_master_row_complete,
      ila_master_row_counter(7 downto 0) => Convolution_Layer_32bit_0_ila_master_row_counter(7 downto 0),
      ila_master_row_loop_counter(7 downto 0) => Convolution_Layer_32bit_0_ila_master_row_loop_counter(7 downto 0),
      ila_master_start => Convolution_Layer_32bit_0_ila_master_start,
      ila_master_stride(3 downto 0) => Convolution_Layer_32bit_0_ila_master_stride(3 downto 0),
      ila_master_stride_counter(3 downto 0) => Convolution_Layer_32bit_0_ila_master_stride_counter(3 downto 0),
      ila_master_volume_complete => Convolution_Layer_32bit_0_ila_master_volume_complete,
      ila_master_wbc(7 downto 0) => Convolution_Layer_32bit_0_ila_master_wbc(7 downto 0),
      ila_master_weight_filter_channels(15 downto 0) => Convolution_Layer_32bit_0_ila_master_weight_filter_channels(15 downto 0),
      ila_master_weight_filter_height(3 downto 0) => Convolution_Layer_32bit_0_ila_master_weight_filter_height(3 downto 0),
      ila_master_weight_filter_width(3 downto 0) => Convolution_Layer_32bit_0_ila_master_weight_filter_width(3 downto 0),
      ila_master_weight_index(31 downto 0) => Convolution_Layer_32bit_0_ila_master_weight_index(31 downto 0),
      ila_master_weights_addr_counter(31 downto 0) => Convolution_Layer_32bit_0_ila_master_weights_addr_counter(31 downto 0),
      ila_master_weights_addr_reg(31 downto 0) => Convolution_Layer_32bit_0_ila_master_weights_addr_reg(31 downto 0),
      ila_master_weights_loaded => Convolution_Layer_32bit_0_ila_master_weights_loaded,
      ila_master_writes_remaining(15 downto 0) => Convolution_Layer_32bit_0_ila_master_writes_remaining(15 downto 0),
      ila_multiplier_mult_a_0(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_a_0(31 downto 0),
      ila_multiplier_mult_a_1(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_a_1(31 downto 0),
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
      ila_multiplier_mult_a_2(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_a_2(31 downto 0),
      ila_multiplier_mult_a_20(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_a_20_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_a_21(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_a_21(31 downto 0),
      ila_multiplier_mult_a_22(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_a_22(31 downto 0),
      ila_multiplier_mult_a_23(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_a_23(31 downto 0),
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
      ila_multiplier_mult_b_0(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_b_0(31 downto 0),
      ila_multiplier_mult_b_1(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_b_1(31 downto 0),
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
      ila_multiplier_mult_b_2(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_b_2(31 downto 0),
      ila_multiplier_mult_b_20(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_multiplier_mult_b_20_UNCONNECTED(31 downto 0),
      ila_multiplier_mult_b_21(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_b_21(31 downto 0),
      ila_multiplier_mult_b_22(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_b_22(31 downto 0),
      ila_multiplier_mult_b_23(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_b_23(31 downto 0),
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
      ila_outbuff_din(31 downto 0) => Convolution_Layer_32bit_0_ila_outbuff_din(31 downto 0),
      ila_outbuff_dout(31 downto 0) => Convolution_Layer_32bit_0_ila_outbuff_dout(31 downto 0),
      ila_outbuff_empty => Convolution_Layer_32bit_0_ila_outbuff_empty,
      ila_outbuff_full => Convolution_Layer_32bit_0_ila_outbuff_full,
      ila_outbuff_valid => Convolution_Layer_32bit_0_ila_outbuff_valid,
      ila_outbuff_wr_en => Convolution_Layer_32bit_0_ila_outbuff_wr_en,
      ila_prev_fifo_almost_empty => NLW_Convolution_Layer_32bit_0_ila_prev_fifo_almost_empty_UNCONNECTED,
      ila_prev_fifo_dout(31 downto 0) => Convolution_Layer_32bit_0_ila_prev_fifo_dout(31 downto 0),
      ila_prev_fifo_empty => Convolution_Layer_32bit_0_ila_prev_fifo_empty,
      ila_prev_fifo_rd_en => Convolution_Layer_32bit_0_ila_prev_fifo_rd_en,
      ila_prev_fifo_valid => Convolution_Layer_32bit_0_ila_prev_fifo_valid,
      ila_prev_weight_data(31 downto 0) => Convolution_Layer_32bit_0_ila_prev_weight_data(31 downto 0),
      ila_products_array_0(31 downto 0) => Convolution_Layer_32bit_0_ila_products_array_0(31 downto 0),
      ila_products_array_1(31 downto 0) => Convolution_Layer_32bit_0_ila_products_array_1(31 downto 0),
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
      ila_products_array_2(31 downto 0) => Convolution_Layer_32bit_0_ila_products_array_2(31 downto 0),
      ila_products_array_20(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_products_array_20_UNCONNECTED(31 downto 0),
      ila_products_array_21(31 downto 0) => Convolution_Layer_32bit_0_ila_products_array_21(31 downto 0),
      ila_products_array_22(31 downto 0) => Convolution_Layer_32bit_0_ila_products_array_22(31 downto 0),
      ila_products_array_23(31 downto 0) => Convolution_Layer_32bit_0_ila_products_array_23(31 downto 0),
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
      ila_reset_weight_fifo_n => Convolution_Layer_32bit_0_ila_reset_weight_fifo_n,
      ila_router_acc_ready => Convolution_Layer_32bit_0_ila_router_acc_ready,
      ila_router_affine_complete(32 downto 0) => Convolution_Layer_32bit_0_ila_router_affine_complete(32 downto 0),
      ila_router_affine_en => Convolution_Layer_32bit_0_ila_router_affine_en,
      ila_router_conv_complete(32 downto 0) => Convolution_Layer_32bit_0_ila_router_conv_complete(32 downto 0),
      ila_router_convolution_en => Convolution_Layer_32bit_0_ila_router_convolution_en,
      ila_router_disable_channel_n(32 downto 0) => Convolution_Layer_32bit_0_ila_router_disable_channel_n(32 downto 0),
      ila_router_filter_kernal_loaded(32 downto 0) => Convolution_Layer_32bit_0_ila_router_filter_kernal_loaded(32 downto 0),
      ila_router_volume_ready(32 downto 0) => Convolution_Layer_32bit_0_ila_router_volume_ready(32 downto 0),
      ila_volume_fifo_almost_empty(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_almost_empty_UNCONNECTED(32 downto 0),
      ila_volume_fifo_almost_full(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_almost_full_UNCONNECTED(32 downto 0),
      ila_volume_fifo_din_0(31 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_din_0(31 downto 0),
      ila_volume_fifo_din_1(31 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_din_1(31 downto 0),
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
      ila_volume_fifo_din_2(31 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_din_2(31 downto 0),
      ila_volume_fifo_din_20(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_fifo_din_20_UNCONNECTED(31 downto 0),
      ila_volume_fifo_din_21(31 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_din_21(31 downto 0),
      ila_volume_fifo_din_22(31 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_din_22(31 downto 0),
      ila_volume_fifo_din_23(31 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_din_23(31 downto 0),
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
      ila_volume_fifo_empty(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_empty(32 downto 0),
      ila_volume_fifo_full(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_full(32 downto 0),
      ila_volume_fifo_rd_en(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_rd_en(32 downto 0),
      ila_volume_fifo_valid(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_valid(32 downto 0),
      ila_volume_fifo_wr_en(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_wr_en(32 downto 0),
      ila_volume_mux_new_data_en(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_mux_new_data_en(32 downto 0),
      ila_volume_mux_prev_data_en(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_mux_prev_data_en(32 downto 0),
      ila_volume_mux_prev_data_wr_en(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_mux_prev_data_wr_en(32 downto 0),
      ila_volume_mux_recycled_data_en(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_mux_recycled_data_en(32 downto 0),
      ila_volume_mux_recycled_data_wr_en(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_mux_recycled_data_wr_en(32 downto 0),
      ila_volume_router_calc_params => Convolution_Layer_32bit_0_ila_volume_router_calc_params,
      ila_volume_router_column_counter(7 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_column_counter(7 downto 0),
      ila_volume_router_data_return_wr_en(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_data_return_wr_en(32 downto 0),
      ila_volume_router_data_valid(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_data_valid(32 downto 0),
      ila_volume_router_delay_shift_register(7 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_delay_shift_register(7 downto 0),
      ila_volume_router_element_counter(9 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_element_counter(9 downto 0),
      ila_volume_router_empty_data_complete(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_empty_data_complete(32 downto 0),
      ila_volume_router_empty_data_en(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_empty_data_en(32 downto 0),
      ila_volume_router_empty_done => Convolution_Layer_32bit_0_ila_volume_router_empty_done,
      ila_volume_router_filter_counter(15 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_filter_counter(15 downto 0),
      ila_volume_router_loaded_rows_processed(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_loaded_rows_processed(32 downto 0),
      ila_volume_router_pad_16bit(15 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_pad_16bit(15 downto 0),
      ila_volume_router_padded_volume_size(15 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_padded_volume_size(15 downto 0),
      ila_volume_router_ready(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_ready(32 downto 0),
      ila_volume_router_snake_fill_complete(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_snake_fill_complete(32 downto 0),
      ila_volume_router_state(3 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_state(3 downto 0),
      ila_volume_router_stop_stack_en(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_stop_stack_en(32 downto 0),
      ila_volume_stack_fifo_almost_full(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_volume_stack_fifo_almost_full_UNCONNECTED(32 downto 0),
      ila_volume_stack_fifo_full(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_stack_fifo_full(32 downto 0),
      ila_volume_stack_fifo_wr_en(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_stack_fifo_wr_en(32 downto 0),
      ila_weight_fifo_almost_empty(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_almost_empty_UNCONNECTED(32 downto 0),
      ila_weight_fifo_almost_full(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_almost_full_UNCONNECTED(32 downto 0),
      ila_weight_fifo_din_0(31 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_din_0(31 downto 0),
      ila_weight_fifo_din_1(31 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_din_1(31 downto 0),
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
      ila_weight_fifo_din_2(31 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_din_2(31 downto 0),
      ila_weight_fifo_din_20(31 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_fifo_din_20_UNCONNECTED(31 downto 0),
      ila_weight_fifo_din_21(31 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_din_21(31 downto 0),
      ila_weight_fifo_din_22(31 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_din_22(31 downto 0),
      ila_weight_fifo_din_23(31 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_din_23(31 downto 0),
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
      ila_weight_fifo_empty(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_empty(32 downto 0),
      ila_weight_fifo_full(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_full(32 downto 0),
      ila_weight_fifo_rd_en(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_rd_en(32 downto 0),
      ila_weight_fifo_valid(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_valid(32 downto 0),
      ila_weight_fifo_wr_en(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_wr_en(32 downto 0),
      ila_weight_mux_almost_full(32 downto 0) => NLW_Convolution_Layer_32bit_0_ila_weight_mux_almost_full_UNCONNECTED(32 downto 0),
      ila_weight_mux_full(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_mux_full(32 downto 0),
      ila_weight_mux_new_data_en(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_mux_new_data_en(32 downto 0),
      ila_weight_mux_prev_data_en(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_mux_prev_data_en(32 downto 0),
      ila_weight_mux_prev_data_wr_en(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_mux_prev_data_wr_en(32 downto 0),
      ila_weight_mux_recycle_filter_data_wr_en(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_mux_recycle_filter_data_wr_en(32 downto 0),
      ila_weight_mux_recycled_data_en(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_mux_recycled_data_en(32 downto 0),
      ila_weight_mux_wr_en(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_mux_wr_en(32 downto 0),
      ila_weight_router_clear_weights => Convolution_Layer_32bit_0_ila_weight_router_clear_weights,
      ila_weight_router_data_valid(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_router_data_valid(32 downto 0),
      ila_weight_router_delay_shift_register(7 downto 0) => Convolution_Layer_32bit_0_ila_weight_router_delay_shift_register(7 downto 0),
      ila_weight_router_filter_data_return_wr_en(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_router_filter_data_return_wr_en(32 downto 0),
      ila_weight_router_filter_element_counter(3 downto 0) => Convolution_Layer_32bit_0_ila_weight_router_filter_element_counter(3 downto 0),
      ila_weight_router_ready(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_router_ready(32 downto 0),
      ila_weight_router_state(3 downto 0) => Convolution_Layer_32bit_0_ila_weight_router_state(3 downto 0),
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
      o_cycle(63 downto 0) => Convolution_Layer_32bit_0_o_cycle(63 downto 0),
      o_data_written => NLW_Convolution_Layer_32bit_0_o_data_written_UNCONNECTED,
      o_epoch(63 downto 0) => Convolution_Layer_32bit_0_o_epoch(63 downto 0),
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
axi_mem_intercon: entity work.neural_net_accel_conv_db_axi_mem_intercon_0
     port map (
      ACLK => microblaze_0_Clk,
      ARESETN => rst_clk_wiz_0_100M_interconnect_aresetn(0),
      M00_ACLK => mig_7series_0_ui_clk,
      M00_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(28 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(28 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_mem_intercon_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_mem_intercon_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(2 downto 0) => axi_mem_intercon_M00_AXI_ARID(2 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_mem_intercon_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock => axi_mem_intercon_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => axi_mem_intercon_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_mem_intercon_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_mem_intercon_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_mem_intercon_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_mem_intercon_M00_AXI_ARVALID,
      M00_AXI_awaddr(28 downto 0) => axi_mem_intercon_M00_AXI_AWADDR(28 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_mem_intercon_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_mem_intercon_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(2 downto 0) => axi_mem_intercon_M00_AXI_AWID(2 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_mem_intercon_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock => axi_mem_intercon_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_mem_intercon_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_mem_intercon_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_mem_intercon_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_mem_intercon_M00_AXI_AWVALID,
      M00_AXI_bid(2 downto 0) => axi_mem_intercon_M00_AXI_BID(2 downto 0),
      M00_AXI_bready => axi_mem_intercon_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_mem_intercon_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_mem_intercon_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(2 downto 0) => axi_mem_intercon_M00_AXI_RID(2 downto 0),
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
      S00_AXI_arlock => microblaze_0_M_AXI_DC_ARLOCK,
      S00_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_DC_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => microblaze_0_M_AXI_DC_ARQOS(3 downto 0),
      S00_AXI_arready => microblaze_0_M_AXI_DC_ARREADY,
      S00_AXI_arsize(2 downto 0) => microblaze_0_M_AXI_DC_ARSIZE(2 downto 0),
      S00_AXI_arvalid => microblaze_0_M_AXI_DC_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_0_M_AXI_DC_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => microblaze_0_M_AXI_DC_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => microblaze_0_M_AXI_DC_AWCACHE(3 downto 0),
      S00_AXI_awid(0) => microblaze_0_M_AXI_DC_AWID(0),
      S00_AXI_awlen(7 downto 0) => microblaze_0_M_AXI_DC_AWLEN(7 downto 0),
      S00_AXI_awlock => microblaze_0_M_AXI_DC_AWLOCK,
      S00_AXI_awprot(2 downto 0) => microblaze_0_M_AXI_DC_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => microblaze_0_M_AXI_DC_AWQOS(3 downto 0),
      S00_AXI_awready => microblaze_0_M_AXI_DC_AWREADY,
      S00_AXI_awsize(2 downto 0) => microblaze_0_M_AXI_DC_AWSIZE(2 downto 0),
      S00_AXI_awvalid => microblaze_0_M_AXI_DC_AWVALID,
      S00_AXI_bid(2 downto 0) => microblaze_0_M_AXI_DC_BID(2 downto 0),
      S00_AXI_bready => microblaze_0_M_AXI_DC_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_0_M_AXI_DC_BRESP(1 downto 0),
      S00_AXI_bvalid => microblaze_0_M_AXI_DC_BVALID,
      S00_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_DC_RDATA(31 downto 0),
      S00_AXI_rid(2 downto 0) => microblaze_0_M_AXI_DC_RID(2 downto 0),
      S00_AXI_rlast => microblaze_0_M_AXI_DC_RLAST,
      S00_AXI_rready => microblaze_0_M_AXI_DC_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_DC_RRESP(1 downto 0),
      S00_AXI_rvalid => microblaze_0_M_AXI_DC_RVALID,
      S00_AXI_wdata(31 downto 0) => microblaze_0_M_AXI_DC_WDATA(31 downto 0),
      S00_AXI_wlast => microblaze_0_M_AXI_DC_WLAST,
      S00_AXI_wready => microblaze_0_M_AXI_DC_WREADY,
      S00_AXI_wstrb(3 downto 0) => microblaze_0_M_AXI_DC_WSTRB(3 downto 0),
      S00_AXI_wvalid => microblaze_0_M_AXI_DC_WVALID,
      S01_ACLK => microblaze_0_Clk,
      S01_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => microblaze_0_M_AXI_IC_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => microblaze_0_M_AXI_IC_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => microblaze_0_M_AXI_IC_ARCACHE(3 downto 0),
      S01_AXI_arid(0) => microblaze_0_M_AXI_IC_ARID(0),
      S01_AXI_arlen(7 downto 0) => microblaze_0_M_AXI_IC_ARLEN(7 downto 0),
      S01_AXI_arlock => microblaze_0_M_AXI_IC_ARLOCK,
      S01_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_IC_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => microblaze_0_M_AXI_IC_ARQOS(3 downto 0),
      S01_AXI_arready => microblaze_0_M_AXI_IC_ARREADY,
      S01_AXI_arsize(2 downto 0) => microblaze_0_M_AXI_IC_ARSIZE(2 downto 0),
      S01_AXI_arvalid => microblaze_0_M_AXI_IC_ARVALID,
      S01_AXI_awaddr(31 downto 0) => microblaze_0_M_AXI_IC_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => microblaze_0_M_AXI_IC_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => microblaze_0_M_AXI_IC_AWCACHE(3 downto 0),
      S01_AXI_awid(0) => microblaze_0_M_AXI_IC_AWID(0),
      S01_AXI_awlen(7 downto 0) => microblaze_0_M_AXI_IC_AWLEN(7 downto 0),
      S01_AXI_awlock => microblaze_0_M_AXI_IC_AWLOCK,
      S01_AXI_awprot(2 downto 0) => microblaze_0_M_AXI_IC_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => microblaze_0_M_AXI_IC_AWQOS(3 downto 0),
      S01_AXI_awready => microblaze_0_M_AXI_IC_AWREADY,
      S01_AXI_awsize(2 downto 0) => microblaze_0_M_AXI_IC_AWSIZE(2 downto 0),
      S01_AXI_awvalid => microblaze_0_M_AXI_IC_AWVALID,
      S01_AXI_bid(2 downto 0) => microblaze_0_M_AXI_IC_BID(2 downto 0),
      S01_AXI_bready => microblaze_0_M_AXI_IC_BREADY,
      S01_AXI_bresp(1 downto 0) => microblaze_0_M_AXI_IC_BRESP(1 downto 0),
      S01_AXI_bvalid => microblaze_0_M_AXI_IC_BVALID,
      S01_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_IC_RDATA(31 downto 0),
      S01_AXI_rid(2 downto 0) => microblaze_0_M_AXI_IC_RID(2 downto 0),
      S01_AXI_rlast => microblaze_0_M_AXI_IC_RLAST,
      S01_AXI_rready => microblaze_0_M_AXI_IC_RREADY,
      S01_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_IC_RRESP(1 downto 0),
      S01_AXI_rvalid => microblaze_0_M_AXI_IC_RVALID,
      S01_AXI_wdata(31 downto 0) => microblaze_0_M_AXI_IC_WDATA(31 downto 0),
      S01_AXI_wlast => microblaze_0_M_AXI_IC_WLAST,
      S01_AXI_wready => microblaze_0_M_AXI_IC_WREADY,
      S01_AXI_wstrb(3 downto 0) => microblaze_0_M_AXI_IC_WSTRB(3 downto 0),
      S01_AXI_wvalid => microblaze_0_M_AXI_IC_WVALID,
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
      S02_AXI_bid(2 downto 0) => Convolution_Layer_32bit_0_M00_AXI_BID(2 downto 0),
      S02_AXI_bready => Convolution_Layer_32bit_0_M00_AXI_BREADY,
      S02_AXI_bresp(1 downto 0) => Convolution_Layer_32bit_0_M00_AXI_BRESP(1 downto 0),
      S02_AXI_bvalid => Convolution_Layer_32bit_0_M00_AXI_BVALID,
      S02_AXI_rdata(31 downto 0) => Convolution_Layer_32bit_0_M00_AXI_RDATA(31 downto 0),
      S02_AXI_rid(2 downto 0) => Convolution_Layer_32bit_0_M00_AXI_RID(2 downto 0),
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
      S03_AXI_araddr(31 downto 0) => mdm_1_M_AXI_ARADDR(31 downto 0),
      S03_AXI_arburst(1 downto 0) => mdm_1_M_AXI_ARBURST(1 downto 0),
      S03_AXI_arcache(3 downto 0) => mdm_1_M_AXI_ARCACHE(3 downto 0),
      S03_AXI_arid(0) => mdm_1_M_AXI_ARID(0),
      S03_AXI_arlen(7 downto 0) => mdm_1_M_AXI_ARLEN(7 downto 0),
      S03_AXI_arlock => mdm_1_M_AXI_ARLOCK,
      S03_AXI_arprot(2 downto 0) => mdm_1_M_AXI_ARPROT(2 downto 0),
      S03_AXI_arqos(3 downto 0) => mdm_1_M_AXI_ARQOS(3 downto 0),
      S03_AXI_arready => mdm_1_M_AXI_ARREADY,
      S03_AXI_arsize(2 downto 0) => mdm_1_M_AXI_ARSIZE(2 downto 0),
      S03_AXI_arvalid => mdm_1_M_AXI_ARVALID,
      S03_AXI_awaddr(31 downto 0) => mdm_1_M_AXI_AWADDR(31 downto 0),
      S03_AXI_awburst(1 downto 0) => mdm_1_M_AXI_AWBURST(1 downto 0),
      S03_AXI_awcache(3 downto 0) => mdm_1_M_AXI_AWCACHE(3 downto 0),
      S03_AXI_awid(0) => mdm_1_M_AXI_AWID(0),
      S03_AXI_awlen(7 downto 0) => mdm_1_M_AXI_AWLEN(7 downto 0),
      S03_AXI_awlock => mdm_1_M_AXI_AWLOCK,
      S03_AXI_awprot(2 downto 0) => mdm_1_M_AXI_AWPROT(2 downto 0),
      S03_AXI_awqos(3 downto 0) => mdm_1_M_AXI_AWQOS(3 downto 0),
      S03_AXI_awready => mdm_1_M_AXI_AWREADY,
      S03_AXI_awsize(2 downto 0) => mdm_1_M_AXI_AWSIZE(2 downto 0),
      S03_AXI_awvalid => mdm_1_M_AXI_AWVALID,
      S03_AXI_bid(2 downto 0) => mdm_1_M_AXI_BID(2 downto 0),
      S03_AXI_bready => mdm_1_M_AXI_BREADY,
      S03_AXI_bresp(1 downto 0) => mdm_1_M_AXI_BRESP(1 downto 0),
      S03_AXI_bvalid => mdm_1_M_AXI_BVALID,
      S03_AXI_rdata(31 downto 0) => mdm_1_M_AXI_RDATA(31 downto 0),
      S03_AXI_rid(2 downto 0) => mdm_1_M_AXI_RID(2 downto 0),
      S03_AXI_rlast => mdm_1_M_AXI_RLAST,
      S03_AXI_rready => mdm_1_M_AXI_RREADY,
      S03_AXI_rresp(1 downto 0) => mdm_1_M_AXI_RRESP(1 downto 0),
      S03_AXI_rvalid => mdm_1_M_AXI_RVALID,
      S03_AXI_wdata(31 downto 0) => mdm_1_M_AXI_WDATA(31 downto 0),
      S03_AXI_wlast => mdm_1_M_AXI_WLAST,
      S03_AXI_wready => mdm_1_M_AXI_WREADY,
      S03_AXI_wstrb(3 downto 0) => mdm_1_M_AXI_WSTRB(3 downto 0),
      S03_AXI_wvalid => mdm_1_M_AXI_WVALID
    );
axi_uartlite_0: component neural_net_accel_conv_db_axi_uartlite_0_0
     port map (
      interrupt => NLW_axi_uartlite_0_interrupt_UNCONNECTED,
      rx => axi_uartlite_0_UART_RxD,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(3 downto 0) => microblaze_0_axi_periph_M02_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M02_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M02_AXI_ARVALID(0),
      s_axi_awaddr(3 downto 0) => microblaze_0_axi_periph_M02_AXI_AWADDR(3 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M02_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M02_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M02_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M02_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M02_AXI_WVALID(0),
      tx => axi_uartlite_0_UART_TxD
    );
clk_wiz_0: component neural_net_accel_conv_db_clk_wiz_0_0
     port map (
      clk_in1 => clock_rtl_1,
      clk_out1 => microblaze_0_Clk,
      clk_out2 => NLW_clk_wiz_0_clk_out2_UNCONNECTED,
      clk_out3 => clk_wiz_0_clk_out3,
      locked => clk_wiz_0_locked,
      resetn => reset_rtl_1
    );
ila_0: component neural_net_accel_conv_db_ila_0_0
     port map (
      clk => microblaze_0_Clk,
      probe0(3 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_state(3 downto 0),
      probe1(0) => Convolution_Layer_32bit_0_ila_acc_relay_complete,
      probe10(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_sum_result(31 downto 0),
      probe11(0) => Convolution_Layer_32bit_0_ila_acc_relay_first_channel_set_complete,
      probe12(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_volume_data(31 downto 0),
      probe13(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_bias_data(31 downto 0),
      probe14(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_prev_data(31 downto 0),
      probe15(7 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_iteration_counter(7 downto 0),
      probe16(0) => Convolution_Layer_32bit_0_ila_acc_relay_bias_read,
      probe17(0) => Convolution_Layer_32bit_0_ila_acc_relay_prev_read,
      probe18(15 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_filter_iteration_counter(15 downto 0),
      probe19(0) => Convolution_Layer_32bit_0_ila_acc_relay_affine_en,
      probe2(0) => Convolution_Layer_32bit_0_ila_acc_relay_volume_processed,
      probe20(4 downto 0) => Convolution_Layer_32bit_0_ila_controller_state(4 downto 0),
      probe21(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_filter_iterations_required(15 downto 0),
      probe22(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_filters_in_set(15 downto 0),
      probe23(0) => Convolution_Layer_32bit_0_ila_controller_accumulator_en,
      probe24(0) => Convolution_Layer_32bit_0_ila_controller_fifo_clear,
      probe25(7 downto 0) => Convolution_Layer_32bit_0_ila_controller_channels_allowed(7 downto 0),
      probe26(0) => Convolution_Layer_32bit_0_ila_controller_more_dsps_needed,
      probe27(0) => Convolution_Layer_32bit_0_ila_controller_operation_complete,
      probe28(7 downto 0) => Convolution_Layer_32bit_0_ila_controller_num_iterations(7 downto 0),
      probe29(0) => Convolution_Layer_32bit_0_ila_controller_all_channels_processed,
      probe3(0) => Convolution_Layer_32bit_0_ila_acc_relay_iteration_complete,
      probe30(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_input_volume_row_counter(15 downto 0),
      probe31(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_volume_channel_counter(15 downto 0),
      probe32(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_weight_channel_counter(15 downto 0),
      probe33(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_filter_row_counter(15 downto 0),
      probe34(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_filter_column_counter(15 downto 0),
      probe35(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_filter_counter(15 downto 0),
      probe36(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_volume_row_counter(15 downto 0),
      probe37(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_volume_column_counter(15 downto 0),
      probe38(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_volume_index_counter(15 downto 0),
      probe39(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_weight_index_counter(15 downto 0),
      probe4(15 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_filter_counter(15 downto 0),
      probe40(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_padded_volume_row_size(15 downto 0),
      probe41(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_padded_volume_column_size(15 downto 0),
      probe42(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_volume_rows_processed(15 downto 0),
      probe43(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_element_counter(15 downto 0),
      probe44(3 downto 0) => Convolution_Layer_32bit_0_ila_controller_pad_counter(3 downto 0),
      probe45(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_channels_processed(15 downto 0),
      probe46(7 downto 0) => Convolution_Layer_32bit_0_ila_controller_pad_8bit(7 downto 0),
      probe47(9 downto 0) => B"0000000000",
      probe48(15 downto 0) => B"0000000000000000",
      probe49(9 downto 0) => B"0000000000",
      probe5(7 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_output_pixel_counter(7 downto 0),
      probe50(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_volume_row(15 downto 0),
      probe51(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_iteration_calc(15 downto 0),
      probe52(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_iteration_counter(15 downto 0),
      probe53(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_filter_iteration_counter(15 downto 0),
      probe54(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_channel_iteration_counter(15 downto 0),
      probe55(3 downto 0) => Convolution_Layer_32bit_0_ila_controller_stride_counter(3 downto 0),
      probe56(3 downto 0) => Convolution_Layer_32bit_0_ila_controller_pad_row_counter(3 downto 0),
      probe57(0) => Convolution_Layer_32bit_0_ila_controller_filter_iteration_complete,
      probe58(0) => Convolution_Layer_32bit_0_ila_controller_channel_iteration_complete,
      probe59(7 downto 0) => Convolution_Layer_32bit_0_ila_controller_fifo_clear_counter(7 downto 0),
      probe6(7 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_volume_row_counter(7 downto 0),
      probe60(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_channel_iteration_calc(15 downto 0),
      probe61(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_channel_iterations_required(15 downto 0),
      probe62(63 downto 0) => Convolution_Layer_32bit_0_o_cycle(63 downto 0),
      probe63(63 downto 0) => Convolution_Layer_32bit_0_o_epoch(63 downto 0),
      probe7(7 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_adder_counter(7 downto 0),
      probe8(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_addend(31 downto 0),
      probe9(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_relay_augend(31 downto 0)
    );
ila_1: component neural_net_accel_conv_db_ila_1_0
     port map (
      clk => microblaze_0_Clk,
      probe0(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_a_0(31 downto 0),
      probe1(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_a_1(31 downto 0),
      probe10(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_b_22(31 downto 0),
      probe11(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_b_23(31 downto 0),
      probe12(31 downto 0) => Convolution_Layer_32bit_0_ila_products_array_0(31 downto 0),
      probe13(31 downto 0) => Convolution_Layer_32bit_0_ila_products_array_1(31 downto 0),
      probe14(31 downto 0) => Convolution_Layer_32bit_0_ila_products_array_2(31 downto 0),
      probe15(31 downto 0) => Convolution_Layer_32bit_0_ila_products_array_21(31 downto 0),
      probe16(31 downto 0) => Convolution_Layer_32bit_0_ila_products_array_22(31 downto 0),
      probe17(31 downto 0) => Convolution_Layer_32bit_0_ila_products_array_23(31 downto 0),
      probe18(31 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_din_0(31 downto 0),
      probe19(31 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_din_1(31 downto 0),
      probe2(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_a_2(31 downto 0),
      probe20(31 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_din_2(31 downto 0),
      probe21(31 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_din_21(31 downto 0),
      probe22(31 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_din_22(31 downto 0),
      probe23(31 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_din_23(31 downto 0),
      probe24(31 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_din_0(31 downto 0),
      probe25(31 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_din_1(31 downto 0),
      probe26(31 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_din_2(31 downto 0),
      probe27(31 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_din_21(31 downto 0),
      probe28(31 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_din_22(31 downto 0),
      probe29(31 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_din_23(31 downto 0),
      probe3(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_a_21(31 downto 0),
      probe30(63 downto 0) => Convolution_Layer_32bit_0_o_cycle(63 downto 0),
      probe31(63 downto 0) => Convolution_Layer_32bit_0_o_epoch(63 downto 0),
      probe32(31 downto 0) => Convolution_Layer_32bit_0_ila_layer_1_result_0(31 downto 0),
      probe33(31 downto 0) => Convolution_Layer_32bit_0_ila_layer_2_result_0(31 downto 0),
      probe34(31 downto 0) => Convolution_Layer_32bit_0_ila_layer_3_result_0(31 downto 0),
      probe35(31 downto 0) => Convolution_Layer_32bit_0_ila_layer_4_result_0(31 downto 0),
      probe36(31 downto 0) => Convolution_Layer_32bit_0_ila_layer_5_result(31 downto 0),
      probe37(31 downto 0) => Convolution_Layer_32bit_0_ila_layer_6_result(31 downto 0),
      probe38(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_values_0(31 downto 0),
      probe39(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_values_1(31 downto 0),
      probe4(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_a_22(31 downto 0),
      probe40(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_values_2(31 downto 0),
      probe41(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_values_3(31 downto 0),
      probe42(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_values_4(31 downto 0),
      probe43(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_values_5(31 downto 0),
      probe44(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_values_6(31 downto 0),
      probe45(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_layer_1_result_0(31 downto 0),
      probe46(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_layer_2_result_0(31 downto 0),
      probe47(31 downto 0) => Convolution_Layer_32bit_0_ila_kernel_layer_3_result(31 downto 0),
      probe5(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_a_23(31 downto 0),
      probe6(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_b_0(31 downto 0),
      probe7(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_b_1(31 downto 0),
      probe8(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_b_2(31 downto 0),
      probe9(31 downto 0) => Convolution_Layer_32bit_0_ila_multiplier_mult_b_21(31 downto 0)
    );
ila_10: component neural_net_accel_conv_db_ila_10_0
     port map (
      clk => microblaze_0_Clk,
      probe0(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_filter_iteration_calc(15 downto 0),
      probe1(32 downto 0) => Convolution_Layer_32bit_0_ila_controller_channel_mask(32 downto 0),
      probe10(31 downto 0) => Convolution_Layer_32bit_0_ila_inbuff_din(31 downto 0),
      probe11(31 downto 0) => Convolution_Layer_32bit_0_ila_inbuff_dout(31 downto 0),
      probe12(0) => '0',
      probe13(0) => '0',
      probe14(0) => Convolution_Layer_32bit_0_ila_inbuff_empty,
      probe15(0) => Convolution_Layer_32bit_0_ila_inbuff_full,
      probe16(0) => Convolution_Layer_32bit_0_ila_inbuff_rd_en,
      probe17(0) => Convolution_Layer_32bit_0_ila_inbuff_valid,
      probe18(0) => '0',
      probe19(0) => '0',
      probe2(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_weight_filter_size(15 downto 0),
      probe20(0) => Convolution_Layer_32bit_0_ila_outbuff_empty,
      probe21(0) => Convolution_Layer_32bit_0_ila_outbuff_full,
      probe22(0) => Convolution_Layer_32bit_0_ila_outbuff_valid,
      probe23(0) => Convolution_Layer_32bit_0_ila_outbuff_wr_en,
      probe24(31 downto 0) => Convolution_Layer_32bit_0_ila_outbuff_din(31 downto 0),
      probe25(31 downto 0) => Convolution_Layer_32bit_0_ila_outbuff_dout(31 downto 0),
      probe26(0) => Convolution_Layer_32bit_0_ila_master_affine_select,
      probe27(0) => Convolution_Layer_32bit_0_ila_master_relu_en,
      probe28(0) => Convolution_Layer_32bit_0_ila_master_weights_loaded,
      probe29(0) => Convolution_Layer_32bit_0_ila_master_conv_complete,
      probe3(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_input_volume_size(15 downto 0),
      probe30(0) => Convolution_Layer_32bit_0_ila_master_more_dsps,
      probe31(0) => Convolution_Layer_32bit_0_ila_master_iteration_complete,
      probe32(0) => Convolution_Layer_32bit_0_ila_master_volume_complete,
      probe33(7 downto 0) => Convolution_Layer_32bit_0_ila_master_dsps_used(7 downto 0),
      probe34(7 downto 0) => Convolution_Layer_32bit_0_ila_master_iterations_required(7 downto 0),
      probe35(0) => Convolution_Layer_32bit_0_ila_master_row_complete,
      probe36(0) => Convolution_Layer_32bit_0_ila_master_layer_ready,
      probe37(15 downto 0) => Convolution_Layer_32bit_0_ila_master_filter_iterations_required(15 downto 0),
      probe38(0) => Convolution_Layer_32bit_0_ila_master_acc_row_complete,
      probe39(7 downto 0) => Convolution_Layer_32bit_0_ila_master_input_volume_height(7 downto 0),
      probe4(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_input_volume_channels(15 downto 0),
      probe40(7 downto 0) => Convolution_Layer_32bit_0_ila_master_input_volume_width(7 downto 0),
      probe41(15 downto 0) => Convolution_Layer_32bit_0_ila_master_input_volume_channels(15 downto 0),
      probe42(7 downto 0) => Convolution_Layer_32bit_0_ila_master_output_volume_height(7 downto 0),
      probe43(7 downto 0) => Convolution_Layer_32bit_0_ila_master_output_volume_width(7 downto 0),
      probe44(11 downto 0) => Convolution_Layer_32bit_0_ila_master_output_volume_channels(11 downto 0),
      probe45(3 downto 0) => Convolution_Layer_32bit_0_ila_master_weight_filter_height(3 downto 0),
      probe46(3 downto 0) => Convolution_Layer_32bit_0_ila_master_weight_filter_width(3 downto 0),
      probe47(15 downto 0) => Convolution_Layer_32bit_0_ila_master_weight_filter_channels(15 downto 0),
      probe48(15 downto 0) => Convolution_Layer_32bit_0_ila_master_number_of_filters(15 downto 0),
      probe49(3 downto 0) => Convolution_Layer_32bit_0_ila_master_stride(3 downto 0),
      probe5(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_weight_filter_channels(15 downto 0),
      probe50(3 downto 0) => Convolution_Layer_32bit_0_ila_master_pad(3 downto 0),
      probe51(15 downto 0) => Convolution_Layer_32bit_0_ila_master_bias_length(15 downto 0),
      probe52(15 downto 0) => Convolution_Layer_32bit_0_ila_master_ch_al_filt(15 downto 0),
      probe53(15 downto 0) => Convolution_Layer_32bit_0_ila_master_affine_channels_in_set(15 downto 0),
      probe54(15 downto 0) => Convolution_Layer_32bit_0_ila_master_affine_filters_in_set(15 downto 0),
      probe55(15 downto 0) => Convolution_Layer_32bit_0_ila_master_channels_iterations(15 downto 0),
      probe56(15 downto 0) => Convolution_Layer_32bit_0_ila_master_affine_filters_iterations(15 downto 0),
      probe57(0) => Convolution_Layer_32bit_0_ila_master_start,
      probe58(0) => Convolution_Layer_32bit_0_o_convolution_done,
      probe59(63 downto 0) => Convolution_Layer_32bit_0_o_cycle(63 downto 0),
      probe6(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_number_of_filters(15 downto 0),
      probe60(63 downto 0) => Convolution_Layer_32bit_0_o_epoch(63 downto 0),
      probe7(7 downto 0) => Convolution_Layer_32bit_0_ila_controller_channels_in_set(7 downto 0),
      probe8(15 downto 0) => Convolution_Layer_32bit_0_ila_controller_stride_index(15 downto 0),
      probe9(32 downto 0) => Convolution_Layer_32bit_0_ila_controller_empty_data_complete(32 downto 0),
      trig_in => mdm_1_TRIG_OUT_0_TRIG,
      trig_in_ack => mdm_1_TRIG_OUT_0_ACK,
      trig_out => ila_10_TRIG_OUT_TRIG,
      trig_out_ack => ila_10_TRIG_OUT_ACK
    );
ila_5: component neural_net_accel_conv_db_ila_5_0
     port map (
      clk => microblaze_0_Clk,
      probe0(31 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_awaddr(31 downto 0),
      probe1(7 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_awlen(7 downto 0),
      probe10(2 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_arsize(2 downto 0),
      probe11(0) => Convolution_Layer_32bit_0_ila_master_axi_arvalid,
      probe12(0) => Convolution_Layer_32bit_0_ila_master_axi_rready,
      probe13(0) => Convolution_Layer_32bit_0_ila_master_axi_awready,
      probe14(0) => Convolution_Layer_32bit_0_ila_master_axi_wready,
      probe15(0) => Convolution_Layer_32bit_0_ila_master_axi_bvalid,
      probe16(0) => Convolution_Layer_32bit_0_ila_master_axi_arready,
      probe17(31 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_rdata(31 downto 0),
      probe18(0) => Convolution_Layer_32bit_0_ila_master_axi_rlast,
      probe19(0) => Convolution_Layer_32bit_0_ila_master_axi_rvalid,
      probe2(0) => Convolution_Layer_32bit_0_ila_master_axi_awvalid,
      probe20(7 downto 0) => Convolution_Layer_32bit_0_ila_master_wbc(7 downto 0),
      probe21(7 downto 0) => Convolution_Layer_32bit_0_ila_master_rbc(7 downto 0),
      probe22(31 downto 0) => Convolution_Layer_32bit_0_ila_master_input_data_addr_reg(31 downto 0),
      probe23(31 downto 0) => Convolution_Layer_32bit_0_ila_master_output_data_addr_reg(31 downto 0),
      probe24(31 downto 0) => Convolution_Layer_32bit_0_ila_master_weights_addr_reg(31 downto 0),
      probe25(31 downto 0) => Convolution_Layer_32bit_0_ila_master_bias_addr_reg(31 downto 0),
      probe26(31 downto 0) => Convolution_Layer_32bit_0_ila_master_prev_addr_reg(31 downto 0),
      probe27(31 downto 0) => Convolution_Layer_32bit_0_ila_master_input_addr_counter(31 downto 0),
      probe28(31 downto 0) => Convolution_Layer_32bit_0_ila_master_output_addr_counter(31 downto 0),
      probe29(31 downto 0) => Convolution_Layer_32bit_0_ila_master_weights_addr_counter(31 downto 0),
      probe3(31 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_wdata(31 downto 0),
      probe30(31 downto 0) => Convolution_Layer_32bit_0_ila_master_bias_addr_counter(31 downto 0),
      probe31(31 downto 0) => Convolution_Layer_32bit_0_ila_master_prev_addr_counter(31 downto 0),
      probe32(7 downto 0) => Convolution_Layer_32bit_0_ila_master_row_counter(7 downto 0),
      probe33(7 downto 0) => Convolution_Layer_32bit_0_ila_master_out_volume_row_counter(7 downto 0),
      probe34(7 downto 0) => Convolution_Layer_32bit_0_ila_master_input_volume_row_counter(7 downto 0),
      probe35(15 downto 0) => Convolution_Layer_32bit_0_ila_master_channel_counter(15 downto 0),
      probe36(15 downto 0) => Convolution_Layer_32bit_0_ila_master_prev_channel_counter(15 downto 0),
      probe37(15 downto 0) => Convolution_Layer_32bit_0_ila_master_output_channel_counter(15 downto 0),
      probe38(15 downto 0) => Convolution_Layer_32bit_0_ila_master_input_channel_counter(15 downto 0),
      probe39(15 downto 0) => Convolution_Layer_32bit_0_ila_master_writes_remaining(15 downto 0),
      probe4(0) => Convolution_Layer_32bit_0_ila_master_axi_wlast,
      probe40(31 downto 0) => Convolution_Layer_32bit_0_ila_master_reads_remaining(31 downto 0),
      probe41(0) => Convolution_Layer_32bit_0_ila_master_calculated,
      probe42(7 downto 0) => Convolution_Layer_32bit_0_ila_master_column_counter(7 downto 0),
      probe43(0) => Convolution_Layer_32bit_0_ila_master_more_bursts_needed,
      probe44(15 downto 0) => Convolution_Layer_32bit_0_ila_master_iteration_counter(15 downto 0),
      probe45(15 downto 0) => Convolution_Layer_32bit_0_ila_master_channel_loop_counter(15 downto 0),
      probe46(7 downto 0) => Convolution_Layer_32bit_0_ila_master_row_loop_counter(7 downto 0),
      probe47(0) => Convolution_Layer_32bit_0_ila_master_busy,
      probe48(3 downto 0) => Convolution_Layer_32bit_0_ila_master_stride_counter(3 downto 0),
      probe49(15 downto 0) => Convolution_Layer_32bit_0_ila_master_filter_counter(15 downto 0),
      probe5(0) => Convolution_Layer_32bit_0_ila_master_axi_wvalid,
      probe50(0) => Convolution_Layer_32bit_0_ila_master_bias_values_loaded,
      probe51(15 downto 0) => Convolution_Layer_32bit_0_ila_master_channels_allowed(15 downto 0),
      probe52(0) => Convolution_Layer_32bit_0_ila_master_operation_complete,
      probe53(31 downto 0) => Convolution_Layer_32bit_0_ila_master_weight_index(31 downto 0),
      probe54(31 downto 0) => Convolution_Layer_32bit_0_ila_master_input_index(31 downto 0),
      probe55(31 downto 0) => Convolution_Layer_32bit_0_ila_master_output_index(31 downto 0),
      probe56(31 downto 0) => Convolution_Layer_32bit_0_ila_master_prev_index(31 downto 0),
      probe57(31 downto 0) => Convolution_Layer_32bit_0_ila_master_last_channel_base(31 downto 0),
      probe58(31 downto 0) => Convolution_Layer_32bit_0_ila_master_out_last_channel_base(31 downto 0),
      probe59(31 downto 0) => Convolution_Layer_32bit_0_ila_master_prev_last_channel_base(31 downto 0),
      probe6(3 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_wstrb(3 downto 0),
      probe60(0) => Convolution_Layer_32bit_0_ila_master_data_written,
      probe61(31 downto 0) => Convolution_Layer_32bit_0_ila_master_output_base_pixel(31 downto 0),
      probe62(63 downto 0) => Convolution_Layer_32bit_0_o_cycle(63 downto 0),
      probe63(63 downto 0) => Convolution_Layer_32bit_0_o_epoch(63 downto 0),
      probe7(0) => Convolution_Layer_32bit_0_ila_master_axi_bready,
      probe8(31 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_araddr(31 downto 0),
      probe9(7 downto 0) => Convolution_Layer_32bit_0_ila_master_axi_arlen(7 downto 0)
    );
ila_6: component neural_net_accel_conv_db_ila_6_0
     port map (
      clk => microblaze_0_Clk,
      probe0(2 downto 0) => Convolution_Layer_32bit_0_ila_master_input_arsize(2 downto 0),
      probe1(0) => Convolution_Layer_32bit_0_ila_master_debug_mode,
      probe10(0) => Convolution_Layer_32bit_0_ila_acc_fifo_valid,
      probe11(0) => Convolution_Layer_32bit_0_ila_acc_fifo_wr_en,
      probe12(31 downto 0) => Convolution_Layer_32bit_0_ila_accu_fifo_input(31 downto 0),
      probe13(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_fifo_din(31 downto 0),
      probe14(31 downto 0) => Convolution_Layer_32bit_0_ila_acc_fifo_dout(31 downto 0),
      probe15(32 downto 0) => B"000000000000000000000000000000000",
      probe16(32 downto 0) => B"000000000000000000000000000000000",
      probe17(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_empty(32 downto 0),
      probe18(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_full(32 downto 0),
      probe19(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_rd_en(32 downto 0),
      probe2(15 downto 0) => Convolution_Layer_32bit_0_ila_master_affine_filter_iteration_counter(15 downto 0),
      probe20(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_valid(32 downto 0),
      probe21(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_fifo_wr_en(32 downto 0),
      probe22(32 downto 0) => B"000000000000000000000000000000000",
      probe23(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_full(32 downto 0),
      probe24(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_wr_en(32 downto 0),
      probe25(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_empty(32 downto 0),
      probe26(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_rd_en(32 downto 0),
      probe27(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_fifo_valid(32 downto 0),
      probe28(32 downto 0) => B"000000000000000000000000000000000",
      probe29(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_mux_prev_data_wr_en(32 downto 0),
      probe3(0) => Convolution_Layer_32bit_0_ila_master_convolution_done,
      probe30(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_mux_new_data_en(32 downto 0),
      probe31(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_mux_prev_data_en(32 downto 0),
      probe32(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_mux_recycled_data_wr_en(32 downto 0),
      probe33(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_mux_recycled_data_en(32 downto 0),
      probe34(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_stack_fifo_wr_en(32 downto 0),
      probe35(32 downto 0) => B"000000000000000000000000000000000",
      probe36(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_stack_fifo_full(32 downto 0),
      probe37(32 downto 0) => Convolution_Layer_32bit_0_ila_get_volume_row(32 downto 0),
      probe38(32 downto 0) => Convolution_Layer_32bit_0_ila_router_disable_channel_n(32 downto 0),
      probe39(0) => Convolution_Layer_32bit_0_ila_router_convolution_en,
      probe4(4 downto 0) => Convolution_Layer_32bit_0_ila_master_fsm_state(4 downto 0),
      probe40(0) => Convolution_Layer_32bit_0_ila_router_affine_en,
      probe41(0) => Convolution_Layer_32bit_0_ila_router_acc_ready,
      probe42(32 downto 0) => Convolution_Layer_32bit_0_ila_router_filter_kernal_loaded(32 downto 0),
      probe43(32 downto 0) => Convolution_Layer_32bit_0_ila_router_conv_complete(32 downto 0),
      probe44(32 downto 0) => Convolution_Layer_32bit_0_ila_router_affine_complete(32 downto 0),
      probe45(32 downto 0) => Convolution_Layer_32bit_0_ila_router_volume_ready(32 downto 0),
      probe46(3 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_state(3 downto 0),
      probe47(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_ready(32 downto 0),
      probe48(15 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_padded_volume_size(15 downto 0),
      probe49(0) => Convolution_Layer_32bit_0_ila_volume_router_empty_done,
      probe5(0) => '0',
      probe50(3 downto 0) => Convolution_Layer_32bit_0_ila_weight_router_state(3 downto 0),
      probe51(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_stop_stack_en(32 downto 0),
      probe52(0) => Convolution_Layer_32bit_0_ila_volume_router_calc_params,
      probe53(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_data_return_wr_en(32 downto 0),
      probe54(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_data_valid(32 downto 0),
      probe55(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_loaded_rows_processed(32 downto 0),
      probe56(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_snake_fill_complete(32 downto 0),
      probe57(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_empty_data_en(32 downto 0),
      probe58(32 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_empty_data_complete(32 downto 0),
      probe59(9 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_element_counter(9 downto 0),
      probe6(0) => '0',
      probe60(15 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_filter_counter(15 downto 0),
      probe61(7 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_column_counter(7 downto 0),
      probe62(63 downto 0) => Convolution_Layer_32bit_0_o_cycle(63 downto 0),
      probe63(63 downto 0) => Convolution_Layer_32bit_0_o_epoch(63 downto 0),
      probe7(0) => Convolution_Layer_32bit_0_ila_acc_fifo_empty,
      probe8(0) => Convolution_Layer_32bit_0_ila_acc_fifo_full,
      probe9(0) => Convolution_Layer_32bit_0_ila_acc_fifo_rd_en
    );
ila_8: component neural_net_accel_conv_db_ila_8_0
     port map (
      clk => microblaze_0_Clk,
      probe0(7 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_delay_shift_register(7 downto 0),
      probe1(15 downto 0) => Convolution_Layer_32bit_0_ila_volume_router_pad_16bit(15 downto 0),
      probe10(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_mux_new_data_en(32 downto 0),
      probe11(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_mux_prev_data_en(32 downto 0),
      probe12(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_mux_recycled_data_en(32 downto 0),
      probe13(32 downto 0) => B"000000000000000000000000000000000",
      probe14(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_mux_full(32 downto 0),
      probe15(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_mux_wr_en(32 downto 0),
      probe16(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_mux_prev_data_wr_en(32 downto 0),
      probe17(32 downto 0) => Convolution_Layer_32bit_0_ila_get_weight_row(32 downto 0),
      probe18(0) => '0',
      probe19(31 downto 0) => Convolution_Layer_32bit_0_ila_bias_fifo_dout(31 downto 0),
      probe2(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_router_ready(32 downto 0),
      probe20(0) => Convolution_Layer_32bit_0_ila_bias_fifo_empty,
      probe21(0) => Convolution_Layer_32bit_0_ila_bias_fifo_full,
      probe22(0) => '0',
      probe23(0) => Convolution_Layer_32bit_0_ila_bias_fifo_rd_en,
      probe24(0) => Convolution_Layer_32bit_0_ila_bias_fifo_valid,
      probe25(31 downto 0) => Convolution_Layer_32bit_0_ila_bias_fifo_data_return(31 downto 0),
      probe26(0) => Convolution_Layer_32bit_0_ila_bias_fifo_data_return_en,
      probe27(0) => Convolution_Layer_32bit_0_ila_bias_fifo_return_wr_en,
      probe28(31 downto 0) => Convolution_Layer_32bit_0_ila_bias_fifo_din_mux(31 downto 0),
      probe29(0) => Convolution_Layer_32bit_0_ila_bias_fifo_wr_en_mux,
      probe3(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_router_filter_data_return_wr_en(32 downto 0),
      probe30(0) => '0',
      probe31(31 downto 0) => Convolution_Layer_32bit_0_ila_prev_fifo_dout(31 downto 0),
      probe32(0) => Convolution_Layer_32bit_0_ila_prev_fifo_empty,
      probe33(0) => Convolution_Layer_32bit_0_ila_prev_fifo_rd_en,
      probe34(0) => Convolution_Layer_32bit_0_ila_prev_fifo_valid,
      probe35(0) => Convolution_Layer_32bit_0_ila_reset_weight_fifo_n,
      probe36(3 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_state(3 downto 0),
      probe37(32 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_products_array_valid(32 downto 0),
      probe38(15 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_kernel_element_counter(15 downto 0),
      probe39(77 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_delay_shift_register(77 downto 0),
      probe4(0) => Convolution_Layer_32bit_0_ila_weight_router_clear_weights,
      probe40(50 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_kernel_delay_shift_register(50 downto 0),
      probe41(0) => Convolution_Layer_32bit_0_ila_accumulator_acc_ready,
      probe42(0) => Convolution_Layer_32bit_0_ila_accumulator_acc_complete,
      probe43(0) => Convolution_Layer_32bit_0_ila_accumulator_acc_valid,
      probe44(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_acc_data(31 downto 0),
      probe45(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_column_counter(31 downto 0),
      probe46(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_filter_counter(31 downto 0),
      probe47(0) => Convolution_Layer_32bit_0_ila_accumulator_kernel_flag,
      probe48(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_que_acc_data(31 downto 0),
      probe49(0) => Convolution_Layer_32bit_0_ila_accumulator_que_acc_valid,
      probe5(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_router_data_valid(32 downto 0),
      probe50(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_que_fifo_din(31 downto 0),
      probe51(0) => Convolution_Layer_32bit_0_ila_accumulator_que_fifo_wr_en,
      probe52(0) => Convolution_Layer_32bit_0_ila_accumulator_que_fifo_rd_en,
      probe53(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_que_fifo_dout(31 downto 0),
      probe54(0) => Convolution_Layer_32bit_0_ila_accumulator_que_fifo_full,
      probe55(0) => '0',
      probe56(0) => Convolution_Layer_32bit_0_ila_accumulator_que_fifo_empty,
      probe57(0) => '0',
      probe58(0) => Convolution_Layer_32bit_0_ila_accumulator_que_fifo_valid,
      probe59(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_channels_allowed_counter(31 downto 0),
      probe6(3 downto 0) => Convolution_Layer_32bit_0_ila_weight_router_filter_element_counter(3 downto 0),
      probe60(31 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_filter_size_counter(31 downto 0),
      probe61(15 downto 0) => Convolution_Layer_32bit_0_ila_accumulator_channels_filt_counter(15 downto 0),
      probe62(63 downto 0) => Convolution_Layer_32bit_0_o_cycle(63 downto 0),
      probe63(63 downto 0) => Convolution_Layer_32bit_0_o_epoch(63 downto 0),
      probe7(7 downto 0) => Convolution_Layer_32bit_0_ila_weight_router_delay_shift_register(7 downto 0),
      probe8(32 downto 0) => Convolution_Layer_32bit_0_ila_weight_mux_recycle_filter_data_wr_en(32 downto 0),
      probe9(31 downto 0) => Convolution_Layer_32bit_0_ila_prev_weight_data(31 downto 0)
    );
mdm_1: component neural_net_accel_conv_db_mdm_1_0
     port map (
      Dbg_Capture_0 => microblaze_0_debug_CAPTURE,
      Dbg_Clk_0 => microblaze_0_debug_CLK,
      Dbg_Disable_0 => microblaze_0_debug_DISABLE,
      Dbg_Reg_En_0(0 to 7) => microblaze_0_debug_REG_EN(0 to 7),
      Dbg_Rst_0 => microblaze_0_debug_RST,
      Dbg_Shift_0 => microblaze_0_debug_SHIFT,
      Dbg_TDI_0 => microblaze_0_debug_TDI,
      Dbg_TDO_0 => microblaze_0_debug_TDO,
      Dbg_Trig_Ack_In_0(0 to 7) => microblaze_0_debug_TRIG_ACK_IN(0 to 7),
      Dbg_Trig_Ack_Out_0(0 to 7) => microblaze_0_debug_TRIG_ACK_OUT(0 to 7),
      Dbg_Trig_In_0(0 to 7) => microblaze_0_debug_TRIG_IN(0 to 7),
      Dbg_Trig_Out_0(0 to 7) => microblaze_0_debug_TRIG_OUT(0 to 7),
      Dbg_Update_0 => microblaze_0_debug_UPDATE,
      Debug_SYS_Rst => mdm_1_debug_sys_rst,
      LMB_Addr_Strobe_0 => microblaze_0_lmb_ADDRSTROBE,
      LMB_Byte_Enable_0(0 to 3) => microblaze_0_lmb_BE(0 to 3),
      LMB_CE_0 => microblaze_0_lmb_CE,
      LMB_Data_Addr_0(0 to 31) => microblaze_0_lmb_ABUS(0 to 31),
      LMB_Data_Read_0(0 to 31) => microblaze_0_lmb_READDBUS(0 to 31),
      LMB_Data_Write_0(0 to 31) => microblaze_0_lmb_WRITEDBUS(0 to 31),
      LMB_Read_Strobe_0 => microblaze_0_lmb_READSTROBE,
      LMB_Ready_0 => microblaze_0_lmb_READY,
      LMB_UE_0 => microblaze_0_lmb_UE,
      LMB_Wait_0 => microblaze_0_lmb_WAIT,
      LMB_Write_Strobe_0 => microblaze_0_lmb_WRITESTROBE,
      M_AXI_ACLK => microblaze_0_Clk,
      M_AXI_ARADDR(31 downto 0) => mdm_1_M_AXI_ARADDR(31 downto 0),
      M_AXI_ARBURST(1 downto 0) => mdm_1_M_AXI_ARBURST(1 downto 0),
      M_AXI_ARCACHE(3 downto 0) => mdm_1_M_AXI_ARCACHE(3 downto 0),
      M_AXI_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M_AXI_ARID(0) => mdm_1_M_AXI_ARID(0),
      M_AXI_ARLEN(7 downto 0) => mdm_1_M_AXI_ARLEN(7 downto 0),
      M_AXI_ARLOCK => mdm_1_M_AXI_ARLOCK,
      M_AXI_ARPROT(2 downto 0) => mdm_1_M_AXI_ARPROT(2 downto 0),
      M_AXI_ARQOS(3 downto 0) => mdm_1_M_AXI_ARQOS(3 downto 0),
      M_AXI_ARREADY => mdm_1_M_AXI_ARREADY,
      M_AXI_ARSIZE(2 downto 0) => mdm_1_M_AXI_ARSIZE(2 downto 0),
      M_AXI_ARVALID => mdm_1_M_AXI_ARVALID,
      M_AXI_AWADDR(31 downto 0) => mdm_1_M_AXI_AWADDR(31 downto 0),
      M_AXI_AWBURST(1 downto 0) => mdm_1_M_AXI_AWBURST(1 downto 0),
      M_AXI_AWCACHE(3 downto 0) => mdm_1_M_AXI_AWCACHE(3 downto 0),
      M_AXI_AWID(0) => mdm_1_M_AXI_AWID(0),
      M_AXI_AWLEN(7 downto 0) => mdm_1_M_AXI_AWLEN(7 downto 0),
      M_AXI_AWLOCK => mdm_1_M_AXI_AWLOCK,
      M_AXI_AWPROT(2 downto 0) => mdm_1_M_AXI_AWPROT(2 downto 0),
      M_AXI_AWQOS(3 downto 0) => mdm_1_M_AXI_AWQOS(3 downto 0),
      M_AXI_AWREADY => mdm_1_M_AXI_AWREADY,
      M_AXI_AWSIZE(2 downto 0) => mdm_1_M_AXI_AWSIZE(2 downto 0),
      M_AXI_AWVALID => mdm_1_M_AXI_AWVALID,
      M_AXI_BID(0) => mdm_1_M_AXI_BID(0),
      M_AXI_BREADY => mdm_1_M_AXI_BREADY,
      M_AXI_BRESP(1 downto 0) => mdm_1_M_AXI_BRESP(1 downto 0),
      M_AXI_BVALID => mdm_1_M_AXI_BVALID,
      M_AXI_RDATA(31 downto 0) => mdm_1_M_AXI_RDATA(31 downto 0),
      M_AXI_RID(0) => mdm_1_M_AXI_RID(0),
      M_AXI_RLAST => mdm_1_M_AXI_RLAST,
      M_AXI_RREADY => mdm_1_M_AXI_RREADY,
      M_AXI_RRESP(1 downto 0) => mdm_1_M_AXI_RRESP(1 downto 0),
      M_AXI_RVALID => mdm_1_M_AXI_RVALID,
      M_AXI_WDATA(31 downto 0) => mdm_1_M_AXI_WDATA(31 downto 0),
      M_AXI_WLAST => mdm_1_M_AXI_WLAST,
      M_AXI_WREADY => mdm_1_M_AXI_WREADY,
      M_AXI_WSTRB(3 downto 0) => mdm_1_M_AXI_WSTRB(3 downto 0),
      M_AXI_WVALID => mdm_1_M_AXI_WVALID,
      Trig_Ack_In_0 => ila_10_TRIG_OUT_ACK,
      Trig_Ack_Out_0 => mdm_1_TRIG_OUT_0_ACK,
      Trig_In_0 => ila_10_TRIG_OUT_TRIG,
      Trig_Out_0 => mdm_1_TRIG_OUT_0_TRIG
    );
microblaze_0: component neural_net_accel_conv_db_microblaze_0_0
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
      Dbg_Trig_Ack_In(0 to 7) => microblaze_0_debug_TRIG_ACK_IN(0 to 7),
      Dbg_Trig_Ack_Out(0 to 7) => microblaze_0_debug_TRIG_ACK_OUT(0 to 7),
      Dbg_Trig_In(0 to 7) => microblaze_0_debug_TRIG_IN(0 to 7),
      Dbg_Trig_Out(0 to 7) => microblaze_0_debug_TRIG_OUT(0 to 7),
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
      Interrupt => microblaze_0_axi_intc_interrupt_INTERRUPT,
      Interrupt_Ack(0 to 1) => microblaze_0_axi_intc_interrupt_ACK(0 to 1),
      Interrupt_Address(0) => microblaze_0_axi_intc_interrupt_ADDRESS(31),
      Interrupt_Address(1) => microblaze_0_axi_intc_interrupt_ADDRESS(30),
      Interrupt_Address(2) => microblaze_0_axi_intc_interrupt_ADDRESS(29),
      Interrupt_Address(3) => microblaze_0_axi_intc_interrupt_ADDRESS(28),
      Interrupt_Address(4) => microblaze_0_axi_intc_interrupt_ADDRESS(27),
      Interrupt_Address(5) => microblaze_0_axi_intc_interrupt_ADDRESS(26),
      Interrupt_Address(6) => microblaze_0_axi_intc_interrupt_ADDRESS(25),
      Interrupt_Address(7) => microblaze_0_axi_intc_interrupt_ADDRESS(24),
      Interrupt_Address(8) => microblaze_0_axi_intc_interrupt_ADDRESS(23),
      Interrupt_Address(9) => microblaze_0_axi_intc_interrupt_ADDRESS(22),
      Interrupt_Address(10) => microblaze_0_axi_intc_interrupt_ADDRESS(21),
      Interrupt_Address(11) => microblaze_0_axi_intc_interrupt_ADDRESS(20),
      Interrupt_Address(12) => microblaze_0_axi_intc_interrupt_ADDRESS(19),
      Interrupt_Address(13) => microblaze_0_axi_intc_interrupt_ADDRESS(18),
      Interrupt_Address(14) => microblaze_0_axi_intc_interrupt_ADDRESS(17),
      Interrupt_Address(15) => microblaze_0_axi_intc_interrupt_ADDRESS(16),
      Interrupt_Address(16) => microblaze_0_axi_intc_interrupt_ADDRESS(15),
      Interrupt_Address(17) => microblaze_0_axi_intc_interrupt_ADDRESS(14),
      Interrupt_Address(18) => microblaze_0_axi_intc_interrupt_ADDRESS(13),
      Interrupt_Address(19) => microblaze_0_axi_intc_interrupt_ADDRESS(12),
      Interrupt_Address(20) => microblaze_0_axi_intc_interrupt_ADDRESS(11),
      Interrupt_Address(21) => microblaze_0_axi_intc_interrupt_ADDRESS(10),
      Interrupt_Address(22) => microblaze_0_axi_intc_interrupt_ADDRESS(9),
      Interrupt_Address(23) => microblaze_0_axi_intc_interrupt_ADDRESS(8),
      Interrupt_Address(24) => microblaze_0_axi_intc_interrupt_ADDRESS(7),
      Interrupt_Address(25) => microblaze_0_axi_intc_interrupt_ADDRESS(6),
      Interrupt_Address(26) => microblaze_0_axi_intc_interrupt_ADDRESS(5),
      Interrupt_Address(27) => microblaze_0_axi_intc_interrupt_ADDRESS(4),
      Interrupt_Address(28) => microblaze_0_axi_intc_interrupt_ADDRESS(3),
      Interrupt_Address(29) => microblaze_0_axi_intc_interrupt_ADDRESS(2),
      Interrupt_Address(30) => microblaze_0_axi_intc_interrupt_ADDRESS(1),
      Interrupt_Address(31) => microblaze_0_axi_intc_interrupt_ADDRESS(0),
      M_AXI_DC_ARADDR(31 downto 0) => microblaze_0_M_AXI_DC_ARADDR(31 downto 0),
      M_AXI_DC_ARBURST(1 downto 0) => microblaze_0_M_AXI_DC_ARBURST(1 downto 0),
      M_AXI_DC_ARCACHE(3 downto 0) => microblaze_0_M_AXI_DC_ARCACHE(3 downto 0),
      M_AXI_DC_ARID(0) => microblaze_0_M_AXI_DC_ARID(0),
      M_AXI_DC_ARLEN(7 downto 0) => microblaze_0_M_AXI_DC_ARLEN(7 downto 0),
      M_AXI_DC_ARLOCK => microblaze_0_M_AXI_DC_ARLOCK,
      M_AXI_DC_ARPROT(2 downto 0) => microblaze_0_M_AXI_DC_ARPROT(2 downto 0),
      M_AXI_DC_ARQOS(3 downto 0) => microblaze_0_M_AXI_DC_ARQOS(3 downto 0),
      M_AXI_DC_ARREADY => microblaze_0_M_AXI_DC_ARREADY,
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
      M_AXI_DC_AWREADY => microblaze_0_M_AXI_DC_AWREADY,
      M_AXI_DC_AWSIZE(2 downto 0) => microblaze_0_M_AXI_DC_AWSIZE(2 downto 0),
      M_AXI_DC_AWVALID => microblaze_0_M_AXI_DC_AWVALID,
      M_AXI_DC_BID(0) => microblaze_0_M_AXI_DC_BID(0),
      M_AXI_DC_BREADY => microblaze_0_M_AXI_DC_BREADY,
      M_AXI_DC_BRESP(1 downto 0) => microblaze_0_M_AXI_DC_BRESP(1 downto 0),
      M_AXI_DC_BVALID => microblaze_0_M_AXI_DC_BVALID,
      M_AXI_DC_RDATA(31 downto 0) => microblaze_0_M_AXI_DC_RDATA(31 downto 0),
      M_AXI_DC_RID(0) => microblaze_0_M_AXI_DC_RID(0),
      M_AXI_DC_RLAST => microblaze_0_M_AXI_DC_RLAST,
      M_AXI_DC_RREADY => microblaze_0_M_AXI_DC_RREADY,
      M_AXI_DC_RRESP(1 downto 0) => microblaze_0_M_AXI_DC_RRESP(1 downto 0),
      M_AXI_DC_RVALID => microblaze_0_M_AXI_DC_RVALID,
      M_AXI_DC_WDATA(31 downto 0) => microblaze_0_M_AXI_DC_WDATA(31 downto 0),
      M_AXI_DC_WLAST => microblaze_0_M_AXI_DC_WLAST,
      M_AXI_DC_WREADY => microblaze_0_M_AXI_DC_WREADY,
      M_AXI_DC_WSTRB(3 downto 0) => microblaze_0_M_AXI_DC_WSTRB(3 downto 0),
      M_AXI_DC_WVALID => microblaze_0_M_AXI_DC_WVALID,
      M_AXI_DP_ARADDR(31 downto 0) => microblaze_0_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => microblaze_0_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => microblaze_0_M_AXI_DP_ARREADY(0),
      M_AXI_DP_ARVALID => microblaze_0_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => microblaze_0_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => microblaze_0_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => microblaze_0_M_AXI_DP_AWREADY(0),
      M_AXI_DP_AWVALID => microblaze_0_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => microblaze_0_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => microblaze_0_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => microblaze_0_M_AXI_DP_BVALID(0),
      M_AXI_DP_RDATA(31 downto 0) => microblaze_0_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => microblaze_0_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => microblaze_0_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => microblaze_0_M_AXI_DP_RVALID(0),
      M_AXI_DP_WDATA(31 downto 0) => microblaze_0_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => microblaze_0_M_AXI_DP_WREADY(0),
      M_AXI_DP_WSTRB(3 downto 0) => microblaze_0_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => microblaze_0_M_AXI_DP_WVALID,
      M_AXI_IC_ARADDR(31 downto 0) => microblaze_0_M_AXI_IC_ARADDR(31 downto 0),
      M_AXI_IC_ARBURST(1 downto 0) => microblaze_0_M_AXI_IC_ARBURST(1 downto 0),
      M_AXI_IC_ARCACHE(3 downto 0) => microblaze_0_M_AXI_IC_ARCACHE(3 downto 0),
      M_AXI_IC_ARID(0) => microblaze_0_M_AXI_IC_ARID(0),
      M_AXI_IC_ARLEN(7 downto 0) => microblaze_0_M_AXI_IC_ARLEN(7 downto 0),
      M_AXI_IC_ARLOCK => microblaze_0_M_AXI_IC_ARLOCK,
      M_AXI_IC_ARPROT(2 downto 0) => microblaze_0_M_AXI_IC_ARPROT(2 downto 0),
      M_AXI_IC_ARQOS(3 downto 0) => microblaze_0_M_AXI_IC_ARQOS(3 downto 0),
      M_AXI_IC_ARREADY => microblaze_0_M_AXI_IC_ARREADY,
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
      M_AXI_IC_AWREADY => microblaze_0_M_AXI_IC_AWREADY,
      M_AXI_IC_AWSIZE(2 downto 0) => microblaze_0_M_AXI_IC_AWSIZE(2 downto 0),
      M_AXI_IC_AWVALID => microblaze_0_M_AXI_IC_AWVALID,
      M_AXI_IC_BID(0) => microblaze_0_M_AXI_IC_BID(0),
      M_AXI_IC_BREADY => microblaze_0_M_AXI_IC_BREADY,
      M_AXI_IC_BRESP(1 downto 0) => microblaze_0_M_AXI_IC_BRESP(1 downto 0),
      M_AXI_IC_BVALID => microblaze_0_M_AXI_IC_BVALID,
      M_AXI_IC_RDATA(31 downto 0) => microblaze_0_M_AXI_IC_RDATA(31 downto 0),
      M_AXI_IC_RID(0) => microblaze_0_M_AXI_IC_RID(0),
      M_AXI_IC_RLAST => microblaze_0_M_AXI_IC_RLAST,
      M_AXI_IC_RREADY => microblaze_0_M_AXI_IC_RREADY,
      M_AXI_IC_RRESP(1 downto 0) => microblaze_0_M_AXI_IC_RRESP(1 downto 0),
      M_AXI_IC_RVALID => microblaze_0_M_AXI_IC_RVALID,
      M_AXI_IC_WDATA(31 downto 0) => microblaze_0_M_AXI_IC_WDATA(31 downto 0),
      M_AXI_IC_WLAST => microblaze_0_M_AXI_IC_WLAST,
      M_AXI_IC_WREADY => microblaze_0_M_AXI_IC_WREADY,
      M_AXI_IC_WSTRB(3 downto 0) => microblaze_0_M_AXI_IC_WSTRB(3 downto 0),
      M_AXI_IC_WVALID => microblaze_0_M_AXI_IC_WVALID,
      Read_Strobe => microblaze_0_dlmb_1_READSTROBE,
      Reset => rst_clk_wiz_0_100M_mb_reset,
      Write_Strobe => microblaze_0_dlmb_1_WRITESTROBE
    );
microblaze_0_axi_intc: component neural_net_accel_conv_db_microblaze_0_axi_intc_0
     port map (
      interrupt_address(31 downto 0) => microblaze_0_axi_intc_interrupt_ADDRESS(31 downto 0),
      intr(2 downto 0) => microblaze_0_intr(2 downto 0),
      irq => microblaze_0_axi_intc_interrupt_INTERRUPT,
      processor_ack(1) => microblaze_0_axi_intc_interrupt_ACK(0),
      processor_ack(0) => microblaze_0_axi_intc_interrupt_ACK(1),
      processor_clk => microblaze_0_Clk,
      processor_rst => rst_clk_wiz_0_100M_mb_reset,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_intc_axi_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_intc_axi_ARREADY,
      s_axi_arvalid => microblaze_0_intc_axi_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_intc_axi_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_intc_axi_AWREADY,
      s_axi_awvalid => microblaze_0_intc_axi_AWVALID(0),
      s_axi_bready => microblaze_0_intc_axi_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_intc_axi_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_intc_axi_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_intc_axi_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_intc_axi_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_intc_axi_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_intc_axi_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_intc_axi_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_intc_axi_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_intc_axi_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_intc_axi_WVALID(0)
    );
microblaze_0_axi_periph: entity work.neural_net_accel_conv_db_microblaze_0_axi_periph_0
     port map (
      ACLK => microblaze_0_Clk,
      ARESETN => rst_clk_wiz_0_100M_interconnect_aresetn(0),
      M00_ACLK => microblaze_0_Clk,
      M00_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => microblaze_0_intc_axi_ARADDR(31 downto 0),
      M00_AXI_arready(0) => microblaze_0_intc_axi_ARREADY,
      M00_AXI_arvalid(0) => microblaze_0_intc_axi_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => microblaze_0_intc_axi_AWADDR(31 downto 0),
      M00_AXI_awready(0) => microblaze_0_intc_axi_AWREADY,
      M00_AXI_awvalid(0) => microblaze_0_intc_axi_AWVALID(0),
      M00_AXI_bready(0) => microblaze_0_intc_axi_BREADY(0),
      M00_AXI_bresp(1 downto 0) => microblaze_0_intc_axi_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => microblaze_0_intc_axi_BVALID,
      M00_AXI_rdata(31 downto 0) => microblaze_0_intc_axi_RDATA(31 downto 0),
      M00_AXI_rready(0) => microblaze_0_intc_axi_RREADY(0),
      M00_AXI_rresp(1 downto 0) => microblaze_0_intc_axi_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => microblaze_0_intc_axi_RVALID,
      M00_AXI_wdata(31 downto 0) => microblaze_0_intc_axi_WDATA(31 downto 0),
      M00_AXI_wready(0) => microblaze_0_intc_axi_WREADY,
      M00_AXI_wstrb(3 downto 0) => microblaze_0_intc_axi_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => microblaze_0_intc_axi_WVALID(0),
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
      M02_AXI_arready(0) => microblaze_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid(0) => microblaze_0_axi_periph_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
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
      M03_AXI_arready => microblaze_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid => microblaze_0_axi_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
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
      S00_ACLK => microblaze_0_Clk,
      S00_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => microblaze_0_M_AXI_DP_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_DP_ARPROT(2 downto 0),
      S00_AXI_arready(0) => microblaze_0_M_AXI_DP_ARREADY(0),
      S00_AXI_arvalid(0) => microblaze_0_M_AXI_DP_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_0_M_AXI_DP_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => microblaze_0_M_AXI_DP_AWPROT(2 downto 0),
      S00_AXI_awready(0) => microblaze_0_M_AXI_DP_AWREADY(0),
      S00_AXI_awvalid(0) => microblaze_0_M_AXI_DP_AWVALID,
      S00_AXI_bready(0) => microblaze_0_M_AXI_DP_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_0_M_AXI_DP_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => microblaze_0_M_AXI_DP_BVALID(0),
      S00_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_DP_RDATA(31 downto 0),
      S00_AXI_rready(0) => microblaze_0_M_AXI_DP_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_DP_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => microblaze_0_M_AXI_DP_RVALID(0),
      S00_AXI_wdata(31 downto 0) => microblaze_0_M_AXI_DP_WDATA(31 downto 0),
      S00_AXI_wready(0) => microblaze_0_M_AXI_DP_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => microblaze_0_M_AXI_DP_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => microblaze_0_M_AXI_DP_WVALID
    );
microblaze_0_local_memory: entity work.microblaze_0_local_memory_imp_PB9IIY
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
      LMB_M_abus(0 to 31) => microblaze_0_lmb_ABUS(0 to 31),
      LMB_M_addrstrobe => microblaze_0_lmb_ADDRSTROBE,
      LMB_M_be(0 to 3) => microblaze_0_lmb_BE(0 to 3),
      LMB_M_ce => microblaze_0_lmb_CE,
      LMB_M_readdbus(0 to 31) => microblaze_0_lmb_READDBUS(0 to 31),
      LMB_M_readstrobe => microblaze_0_lmb_READSTROBE,
      LMB_M_ready => microblaze_0_lmb_READY,
      LMB_M_ue => microblaze_0_lmb_UE,
      LMB_M_wait => microblaze_0_lmb_WAIT,
      LMB_M_writedbus(0 to 31) => microblaze_0_lmb_WRITEDBUS(0 to 31),
      LMB_M_writestrobe => microblaze_0_lmb_WRITESTROBE,
      SYS_Rst => rst_clk_wiz_0_100M_bus_struct_reset(0)
    );
microblaze_0_xlconcat: component neural_net_accel_conv_db_microblaze_0_xlconcat_0
     port map (
      In0(0) => Convolution_Layer_32bit_0_o_convolution_done,
      In1(0) => xlconstant_0_dout(0),
      In2(0) => xlconstant_0_dout(0),
      dout(2 downto 0) => microblaze_0_intr(2 downto 0)
    );
mig_7series_0: component neural_net_accel_conv_db_mig_7series_0_0
     port map (
      aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      clk_ref_i => clk_wiz_0_clk_out3,
      ddr3_addr(14 downto 0) => mig_7series_0_DDR4_ADDR(14 downto 0),
      ddr3_ba(2 downto 0) => mig_7series_0_DDR4_BA(2 downto 0),
      ddr3_cas_n => mig_7series_0_DDR4_CAS_N,
      ddr3_ck_n(0) => mig_7series_0_DDR4_CK_N(0),
      ddr3_ck_p(0) => mig_7series_0_DDR4_CK_P(0),
      ddr3_cke(0) => mig_7series_0_DDR4_CKE(0),
      ddr3_dm(1 downto 0) => mig_7series_0_DDR4_DM(1 downto 0),
      ddr3_dq(15 downto 0) => DDR3_dq(15 downto 0),
      ddr3_dqs_n(1 downto 0) => DDR3_dqs_n(1 downto 0),
      ddr3_dqs_p(1 downto 0) => DDR3_dqs_p(1 downto 0),
      ddr3_odt(0) => mig_7series_0_DDR4_ODT(0),
      ddr3_ras_n => mig_7series_0_DDR4_RAS_N,
      ddr3_reset_n => mig_7series_0_DDR4_RESET_N,
      ddr3_we_n => mig_7series_0_DDR4_WE_N,
      device_temp_i(11 downto 0) => xadc_wiz_0_temp_out(11 downto 0),
      init_calib_complete => NLW_mig_7series_0_init_calib_complete_UNCONNECTED,
      mmcm_locked => mig_7series_0_mmcm_locked,
      s_axi_araddr(28 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(28 downto 0),
      s_axi_arburst(1 downto 0) => axi_mem_intercon_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_mem_intercon_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arid(2 downto 0) => axi_mem_intercon_M00_AXI_ARID(2 downto 0),
      s_axi_arlen(7 downto 0) => axi_mem_intercon_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock => axi_mem_intercon_M00_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => axi_mem_intercon_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => axi_mem_intercon_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => axi_mem_intercon_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_mem_intercon_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_mem_intercon_M00_AXI_ARVALID,
      s_axi_awaddr(28 downto 0) => axi_mem_intercon_M00_AXI_AWADDR(28 downto 0),
      s_axi_awburst(1 downto 0) => axi_mem_intercon_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_mem_intercon_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => axi_mem_intercon_M00_AXI_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => axi_mem_intercon_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_mem_intercon_M00_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => axi_mem_intercon_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => axi_mem_intercon_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_mem_intercon_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_mem_intercon_M00_AXI_AWVALID,
      s_axi_bid(2 downto 0) => axi_mem_intercon_M00_AXI_BID(2 downto 0),
      s_axi_bready => axi_mem_intercon_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_mem_intercon_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_mem_intercon_M00_AXI_RDATA(31 downto 0),
      s_axi_rid(2 downto 0) => axi_mem_intercon_M00_AXI_RID(2 downto 0),
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
rst_clk_wiz_0_100M: component neural_net_accel_conv_db_rst_clk_wiz_0_100M_0
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
rst_mig_7series_0_100M: component neural_net_accel_conv_db_rst_mig_7series_0_100M_1
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
xadc_wiz_0: component neural_net_accel_conv_db_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      eoc_out => NLW_xadc_wiz_0_eoc_out_UNCONNECTED,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      ip2intc_irpt => NLW_xadc_wiz_0_ip2intc_irpt_UNCONNECTED,
      ot_out => NLW_xadc_wiz_0_ot_out_UNCONNECTED,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(10 downto 0) => microblaze_0_axi_periph_M03_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M03_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M03_AXI_ARVALID,
      s_axi_awaddr(10 downto 0) => microblaze_0_axi_periph_M03_AXI_AWADDR(10 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M03_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M03_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M03_AXI_WVALID,
      temp_out(11 downto 0) => xadc_wiz_0_temp_out(11 downto 0),
      user_temp_alarm_out => NLW_xadc_wiz_0_user_temp_alarm_out_UNCONNECTED,
      vccaux_alarm_out => NLW_xadc_wiz_0_vccaux_alarm_out_UNCONNECTED,
      vccint_alarm_out => NLW_xadc_wiz_0_vccint_alarm_out_UNCONNECTED,
      vn_in => '0',
      vp_in => '0'
    );
xlconstant_0: component neural_net_accel_conv_db_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
