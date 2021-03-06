--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Thu Mar 28 16:23:50 2019
--Host        : Marks-M3800 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target softmax_test_cs.bd
--Design      : softmax_test_cs
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1D71AZK is
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
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
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
end s00_couplers_imp_1D71AZK;

architecture STRUCTURE of s00_couplers_imp_1D71AZK is
  component softmax_test_cs_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component softmax_test_cs_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(0) <= s00_couplers_to_auto_pc_BID(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(0) <= s00_couplers_to_auto_pc_RID(0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(0) <= S_AXI_arid(0);
  s00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_pc_ARLOCK <= S_AXI_arlock;
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(0) <= S_AXI_awid(0);
  s00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_pc_AWLOCK <= S_AXI_awlock;
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component softmax_test_cs_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(0) => s00_couplers_to_auto_pc_ARID(0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_pc_ARLOCK,
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(0) => s00_couplers_to_auto_pc_AWID(0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_pc_AWLOCK,
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(0) => s00_couplers_to_auto_pc_BID(0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(0) => s00_couplers_to_auto_pc_RID(0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_2CNU3I is
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
    M_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
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
end s00_couplers_imp_2CNU3I;

architecture STRUCTURE of s00_couplers_imp_2CNU3I is
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
  signal s00_couplers_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
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
  S_AXI_bid(0) <= s00_couplers_to_s00_couplers_BID(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rid(0) <= s00_couplers_to_s00_couplers_RID(0);
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
  s00_couplers_to_s00_couplers_BID(0) <= M_AXI_bid(0);
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RID(0) <= M_AXI_rid(0);
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
entity softmax_test_cs_Softmax_Tester_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end softmax_test_cs_Softmax_Tester_0_axi_periph_0;

architecture STRUCTURE of softmax_test_cs_Softmax_Tester_0_axi_periph_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_ACLK_net : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Tester_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_ARREADY : STD_LOGIC;
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_ARVALID : STD_LOGIC;
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_AWREADY : STD_LOGIC;
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_AWVALID : STD_LOGIC;
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_BREADY : STD_LOGIC;
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_BVALID : STD_LOGIC;
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_RREADY : STD_LOGIC;
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_RVALID : STD_LOGIC;
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_WREADY : STD_LOGIC;
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_Softmax_Tester_0_axi_periph_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_Softmax_Tester_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_Softmax_Tester_0_axi_periph_ARPROT(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_Softmax_Tester_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_Softmax_Tester_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_Softmax_Tester_0_axi_periph_AWPROT(2 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_Softmax_Tester_0_axi_periph_AWVALID;
  M00_AXI_bready <= s00_couplers_to_Softmax_Tester_0_axi_periph_BREADY;
  M00_AXI_rready <= s00_couplers_to_Softmax_Tester_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_Softmax_Tester_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= s00_couplers_to_Softmax_Tester_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_Softmax_Tester_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= Softmax_Tester_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= Softmax_Tester_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(0) <= Softmax_Tester_0_axi_periph_to_s00_couplers_BID(0);
  S00_AXI_bresp(1 downto 0) <= Softmax_Tester_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= Softmax_Tester_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= Softmax_Tester_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(0) <= Softmax_Tester_0_axi_periph_to_s00_couplers_RID(0);
  S00_AXI_rlast <= Softmax_Tester_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= Softmax_Tester_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= Softmax_Tester_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= Softmax_Tester_0_axi_periph_to_s00_couplers_WREADY;
  Softmax_Tester_0_axi_periph_ACLK_net <= M00_ACLK;
  Softmax_Tester_0_axi_periph_ARESETN_net <= M00_ARESETN;
  Softmax_Tester_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_ARID(0) <= S00_AXI_arid(0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_ARLOCK <= S00_AXI_arlock;
  Softmax_Tester_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  Softmax_Tester_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_AWID(0) <= S00_AXI_awid(0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_AWLOCK <= S00_AXI_awlock;
  Softmax_Tester_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  Softmax_Tester_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  Softmax_Tester_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  Softmax_Tester_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  Softmax_Tester_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  Softmax_Tester_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_Softmax_Tester_0_axi_periph_ARREADY <= M00_AXI_arready;
  s00_couplers_to_Softmax_Tester_0_axi_periph_AWREADY <= M00_AXI_awready;
  s00_couplers_to_Softmax_Tester_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_Softmax_Tester_0_axi_periph_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_Softmax_Tester_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_Softmax_Tester_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_Softmax_Tester_0_axi_periph_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_Softmax_Tester_0_axi_periph_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_1D71AZK
     port map (
      M_ACLK => Softmax_Tester_0_axi_periph_ACLK_net,
      M_ARESETN => Softmax_Tester_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_Softmax_Tester_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_Softmax_Tester_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_Softmax_Tester_0_axi_periph_ARREADY,
      M_AXI_arvalid => s00_couplers_to_Softmax_Tester_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_Softmax_Tester_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_Softmax_Tester_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_Softmax_Tester_0_axi_periph_AWREADY,
      M_AXI_awvalid => s00_couplers_to_Softmax_Tester_0_axi_periph_AWVALID,
      M_AXI_bready => s00_couplers_to_Softmax_Tester_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_Softmax_Tester_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_Softmax_Tester_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_Softmax_Tester_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_Softmax_Tester_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_Softmax_Tester_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_Softmax_Tester_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_Softmax_Tester_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_Softmax_Tester_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_Softmax_Tester_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_Softmax_Tester_0_axi_periph_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => Softmax_Tester_0_axi_periph_to_s00_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => Softmax_Tester_0_axi_periph_to_s00_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => Softmax_Tester_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => Softmax_Tester_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => Softmax_Tester_0_axi_periph_to_s00_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => Softmax_Tester_0_axi_periph_to_s00_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => Softmax_Tester_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => Softmax_Tester_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(0) => Softmax_Tester_0_axi_periph_to_s00_couplers_BID(0),
      S_AXI_bready => Softmax_Tester_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => Softmax_Tester_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => Softmax_Tester_0_axi_periph_to_s00_couplers_RID(0),
      S_AXI_rlast => Softmax_Tester_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => Softmax_Tester_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => Softmax_Tester_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => Softmax_Tester_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => Softmax_Tester_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => Softmax_Tester_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => Softmax_Tester_0_axi_periph_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity softmax_test_cs_axi_mem_intercon_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC;
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC;
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end softmax_test_cs_axi_mem_intercon_0;

architecture STRUCTURE of softmax_test_cs_axi_mem_intercon_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
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
  signal axi_mem_intercon_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_axi_mem_intercon_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_axi_mem_intercon_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_axi_mem_intercon_BREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_BVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_axi_mem_intercon_RLAST : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_RREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_RVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_WLAST : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_WREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_axi_mem_intercon_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= s00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= s00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0);
  M00_AXI_arid(0) <= s00_couplers_to_axi_mem_intercon_ARID(0);
  M00_AXI_arlen(7 downto 0) <= s00_couplers_to_axi_mem_intercon_ARLEN(7 downto 0);
  M00_AXI_arlock <= s00_couplers_to_axi_mem_intercon_ARLOCK;
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= s00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= s00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_axi_mem_intercon_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_axi_mem_intercon_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= s00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= s00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0);
  M00_AXI_awid(0) <= s00_couplers_to_axi_mem_intercon_AWID(0);
  M00_AXI_awlen(7 downto 0) <= s00_couplers_to_axi_mem_intercon_AWLEN(7 downto 0);
  M00_AXI_awlock <= s00_couplers_to_axi_mem_intercon_AWLOCK;
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= s00_couplers_to_axi_mem_intercon_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= s00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_axi_mem_intercon_AWVALID;
  M00_AXI_bready <= s00_couplers_to_axi_mem_intercon_BREADY;
  M00_AXI_rready <= s00_couplers_to_axi_mem_intercon_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_axi_mem_intercon_WDATA(31 downto 0);
  M00_AXI_wlast <= s00_couplers_to_axi_mem_intercon_WLAST;
  M00_AXI_wstrb(3 downto 0) <= s00_couplers_to_axi_mem_intercon_WSTRB(3 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_axi_mem_intercon_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_mem_intercon_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_mem_intercon_to_s00_couplers_AWREADY;
  S00_AXI_bid(0) <= axi_mem_intercon_to_s00_couplers_BID(0);
  S00_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_mem_intercon_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(0) <= axi_mem_intercon_to_s00_couplers_RID(0);
  S00_AXI_rlast <= axi_mem_intercon_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_mem_intercon_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_mem_intercon_to_s00_couplers_WREADY;
  axi_mem_intercon_ACLK_net <= M00_ACLK;
  axi_mem_intercon_ARESETN_net <= M00_ARESETN;
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
  s00_couplers_to_axi_mem_intercon_ARREADY <= M00_AXI_arready;
  s00_couplers_to_axi_mem_intercon_AWREADY <= M00_AXI_awready;
  s00_couplers_to_axi_mem_intercon_BID(0) <= M00_AXI_bid(0);
  s00_couplers_to_axi_mem_intercon_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_axi_mem_intercon_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_axi_mem_intercon_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_axi_mem_intercon_RID(0) <= M00_AXI_rid(0);
  s00_couplers_to_axi_mem_intercon_RLAST <= M00_AXI_rlast;
  s00_couplers_to_axi_mem_intercon_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_axi_mem_intercon_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_axi_mem_intercon_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_2CNU3I
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_axi_mem_intercon_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s00_couplers_to_axi_mem_intercon_ARID(0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_axi_mem_intercon_ARLEN(7 downto 0),
      M_AXI_arlock => s00_couplers_to_axi_mem_intercon_ARLOCK,
      M_AXI_arprot(2 downto 0) => s00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_axi_mem_intercon_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_axi_mem_intercon_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_axi_mem_intercon_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s00_couplers_to_axi_mem_intercon_AWID(0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_axi_mem_intercon_AWLEN(7 downto 0),
      M_AXI_awlock => s00_couplers_to_axi_mem_intercon_AWLOCK,
      M_AXI_awprot(2 downto 0) => s00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_axi_mem_intercon_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_axi_mem_intercon_AWREADY,
      M_AXI_awsize(2 downto 0) => s00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_axi_mem_intercon_AWVALID,
      M_AXI_bid(0) => s00_couplers_to_axi_mem_intercon_BID(0),
      M_AXI_bready => s00_couplers_to_axi_mem_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_axi_mem_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_axi_mem_intercon_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_axi_mem_intercon_RDATA(31 downto 0),
      M_AXI_rid(0) => s00_couplers_to_axi_mem_intercon_RID(0),
      M_AXI_rlast => s00_couplers_to_axi_mem_intercon_RLAST,
      M_AXI_rready => s00_couplers_to_axi_mem_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_axi_mem_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_axi_mem_intercon_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_axi_mem_intercon_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_axi_mem_intercon_WLAST,
      M_AXI_wready => s00_couplers_to_axi_mem_intercon_WREADY,
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_axi_mem_intercon_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_axi_mem_intercon_WVALID,
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
      S_AXI_bid(0) => axi_mem_intercon_to_s00_couplers_BID(0),
      S_AXI_bready => axi_mem_intercon_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => axi_mem_intercon_to_s00_couplers_RID(0),
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity softmax_test_cs is
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
    busy : out STD_LOGIC;
    i_reset_n : in STD_LOGIC;
    i_sys_clk : in STD_LOGIC;
    i_trigger : in STD_LOGIC;
    o_softmax_complete : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of softmax_test_cs : entity is "softmax_test_cs,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=softmax_test_cs,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=14,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=2,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of softmax_test_cs : entity is "softmax_test_cs.hwdef";
end softmax_test_cs;

architecture STRUCTURE of softmax_test_cs is
  component softmax_test_cs_mig_7series_0_0 is
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
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    mmcm_locked : out STD_LOGIC;
    sys_clk_i : in STD_LOGIC;
    init_calib_complete : out STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  end component softmax_test_cs_mig_7series_0_0;
  component softmax_test_cs_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component softmax_test_cs_clk_wiz_0_0;
  component softmax_test_cs_rst_mig_7series_0_100M_0 is
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
  end component softmax_test_cs_rst_mig_7series_0_100M_0;
  component softmax_test_cs_rst_clk_wiz_0_100M_0 is
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
  end component softmax_test_cs_rst_clk_wiz_0_100M_0;
  component softmax_test_cs_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component softmax_test_cs_xlconstant_0_0;
  component softmax_test_cs_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe28 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe33 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe34 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe38 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe40 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe41 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe42 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe43 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe44 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe46 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe47 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe48 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe49 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe50 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe51 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe52 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe53 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe54 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe55 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe56 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe57 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe58 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe59 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe60 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component softmax_test_cs_ila_0_0;
  component softmax_test_cs_ila_1_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe13 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe30 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe33 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe40 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe41 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe42 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe43 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe46 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe47 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe48 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe49 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe50 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe51 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe52 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe53 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe54 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe55 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component softmax_test_cs_ila_1_0;
  component softmax_test_cs_Softmax_Tester_0_0 is
  port (
    i_irq : in STD_LOGIC;
    i_init_calib_complete : in STD_LOGIC;
    i_trigger : in STD_LOGIC;
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
  end component softmax_test_cs_Softmax_Tester_0_0;
  component softmax_test_cs_Softmax_Layer_32bit_0_0 is
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
  end component softmax_test_cs_Softmax_Layer_32bit_0_0;
  signal Softmax_Layer_32bit_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARLOCK : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARREADY : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_ARVALID : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWLOCK : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWREADY : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_AWVALID : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_BREADY : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_BVALID : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_RLAST : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_RREADY : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_RVALID : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_WLAST : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_WREADY : STD_LOGIC;
  signal Softmax_Layer_32bit_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_M00_AXI_WVALID : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_aw_addend : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_aw_augend : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_aw_fsm_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_aw_hold_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_aw_rd_en : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_aw_sum : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_aw_sum_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_aw_sum_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_aw_sum_result_valid : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_aw_summing_complete : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_axi_araddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_axi_arlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_axi_arready : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_axi_arvalid : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_axi_awaddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_axi_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_axi_awready : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_axi_awvalid : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_axi_bready : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_axi_bvalid : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_axi_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_axi_rlast : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_axi_rready : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_axi_rvalid : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_axi_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_axi_wlast : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_axi_wready : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_axi_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_axi_wvalid : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_calculated : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_channel_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_class_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_ctrlr_busy : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_ctrlr_clear_all : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_ctrlr_controller_ready : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_ctrlr_element_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_complete : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_fifo_select : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_input : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_input_valid : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_ctrlr_fsm_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_ctrlr_softmax_complete : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_data_loaded : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_dw_dividend : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_dw_division_complete : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_dw_division_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_dw_divisor : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_dw_fsm_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_dw_hold_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_dw_quotient : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_dw_quotient_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_dw_quotient_result_valid : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_dw_rd_en : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_exp_addend : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_augend : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_data_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_exp_done : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_exp_fifo_almost_empty : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_exp_fifo_almost_full : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_exp_fifo_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_fifo_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_fifo_empty : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_exp_fifo_full : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_exp_fifo_rd_en : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_exp_fifo_valid : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_exp_fifo_wr_en : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_exp_fsm_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_function_ready : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_exp_hold_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_mult_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_multiplicand_a : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_multiplicand_b : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_multiplication_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_mux_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_mux_wr_en : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_exp_product : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_step_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_sum : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_sum_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_exp_valid_result : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_inbuff_almost_empty : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_inbuff_almost_full : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_inbuff_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_inbuff_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_inbuff_empty : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_inbuff_full : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_inbuff_rd_en : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_inbuff_valid : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_inbuff_wr_en : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_input_data_addr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_master_fsm_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_more_bursts_needed : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_num_elements : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_outbuff_almost_empty : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_outbuff_almost_full : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_outbuff_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_outbuff_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_outbuff_empty : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_outbuff_full : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_outbuff_rd_en : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_outbuff_valid : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_outbuff_wr_en : STD_LOGIC;
  signal Softmax_Layer_32bit_0_ila_smax_output_data_addr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_rbc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_reads_remaining : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_row_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_wbc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Layer_32bit_0_ila_smax_writes_remaining : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Softmax_Layer_32bit_0_o_softmax_complete : STD_LOGIC;
  signal Softmax_Tester_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Tester_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Tester_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Tester_0_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Tester_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Tester_0_M00_AXI_ARLOCK : STD_LOGIC;
  signal Softmax_Tester_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Tester_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Tester_0_M00_AXI_ARREADY : STD_LOGIC;
  signal Softmax_Tester_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Tester_0_M00_AXI_ARVALID : STD_LOGIC;
  signal Softmax_Tester_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Tester_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Tester_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Tester_0_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Tester_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Softmax_Tester_0_M00_AXI_AWLOCK : STD_LOGIC;
  signal Softmax_Tester_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Tester_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Tester_0_M00_AXI_AWREADY : STD_LOGIC;
  signal Softmax_Tester_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Tester_0_M00_AXI_AWVALID : STD_LOGIC;
  signal Softmax_Tester_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Tester_0_M00_AXI_BREADY : STD_LOGIC;
  signal Softmax_Tester_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Tester_0_M00_AXI_BVALID : STD_LOGIC;
  signal Softmax_Tester_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Tester_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Softmax_Tester_0_M00_AXI_RLAST : STD_LOGIC;
  signal Softmax_Tester_0_M00_AXI_RREADY : STD_LOGIC;
  signal Softmax_Tester_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Tester_0_M00_AXI_RVALID : STD_LOGIC;
  signal Softmax_Tester_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Tester_0_M00_AXI_WLAST : STD_LOGIC;
  signal Softmax_Tester_0_M00_AXI_WREADY : STD_LOGIC;
  signal Softmax_Tester_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Tester_0_M00_AXI_WVALID : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Tester_0_axi_periph_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Tester_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Tester_0_axi_periph_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Softmax_Tester_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Tester_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Tester_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Softmax_Tester_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Softmax_Tester_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal Softmax_Tester_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Softmax_Tester_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARLOCK : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWLOCK : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_M00_AXI_BREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_BVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_M00_AXI_RLAST : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_RVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_WLAST : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_WVALID : STD_LOGIC;
  signal clk_in1_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal i_trigger_1 : STD_LOGIC;
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
  signal reset_1 : STD_LOGIC;
  signal rst_clk_wiz_0_100M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_100M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_m00_axi_error_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_m00_axi_txn_done_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Layer_32bit_0_m00_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_Softmax_Layer_32bit_0_m00_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_Softmax_Layer_32bit_0_m00_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_Softmax_Layer_32bit_0_o_cycle_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_Softmax_Layer_32bit_0_o_epoch_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_Softmax_Tester_0_m00_axi_error_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Tester_0_m00_axi_txn_done_UNCONNECTED : STD_LOGIC;
  signal NLW_Softmax_Tester_0_m00_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_Softmax_Tester_0_m00_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_Softmax_Tester_0_m00_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ila_0_probe38_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 4 );
  signal NLW_rst_clk_wiz_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_mig_7series_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
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
  busy <= Softmax_Layer_32bit_0_ila_smax_ctrlr_busy;
  clk_in1_1 <= i_sys_clk;
  i_trigger_1 <= i_trigger;
  o_softmax_complete <= Softmax_Layer_32bit_0_o_softmax_complete;
  reset_1 <= i_reset_n;
Softmax_Layer_32bit_0: component softmax_test_cs_Softmax_Layer_32bit_0_0
     port map (
      ila_smax_aw_addend(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_addend(31 downto 0),
      ila_smax_aw_augend(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_augend(31 downto 0),
      ila_smax_aw_fsm_state(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_fsm_state(3 downto 0),
      ila_smax_aw_hold_counter(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_hold_counter(7 downto 0),
      ila_smax_aw_rd_en => Softmax_Layer_32bit_0_ila_smax_aw_rd_en,
      ila_smax_aw_sum(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_sum(31 downto 0),
      ila_smax_aw_sum_counter(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_sum_counter(15 downto 0),
      ila_smax_aw_sum_reg(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_sum_reg(31 downto 0),
      ila_smax_aw_sum_result_valid => Softmax_Layer_32bit_0_ila_smax_aw_sum_result_valid,
      ila_smax_aw_summing_complete => Softmax_Layer_32bit_0_ila_smax_aw_summing_complete,
      ila_smax_axi_araddr(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_axi_araddr(31 downto 0),
      ila_smax_axi_arlen(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_axi_arlen(7 downto 0),
      ila_smax_axi_arready => Softmax_Layer_32bit_0_ila_smax_axi_arready,
      ila_smax_axi_arvalid => Softmax_Layer_32bit_0_ila_smax_axi_arvalid,
      ila_smax_axi_awaddr(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_axi_awaddr(31 downto 0),
      ila_smax_axi_awlen(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_axi_awlen(7 downto 0),
      ila_smax_axi_awready => Softmax_Layer_32bit_0_ila_smax_axi_awready,
      ila_smax_axi_awvalid => Softmax_Layer_32bit_0_ila_smax_axi_awvalid,
      ila_smax_axi_bready => Softmax_Layer_32bit_0_ila_smax_axi_bready,
      ila_smax_axi_bvalid => Softmax_Layer_32bit_0_ila_smax_axi_bvalid,
      ila_smax_axi_rdata(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_axi_rdata(31 downto 0),
      ila_smax_axi_rlast => Softmax_Layer_32bit_0_ila_smax_axi_rlast,
      ila_smax_axi_rready => Softmax_Layer_32bit_0_ila_smax_axi_rready,
      ila_smax_axi_rvalid => Softmax_Layer_32bit_0_ila_smax_axi_rvalid,
      ila_smax_axi_wdata(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_axi_wdata(31 downto 0),
      ila_smax_axi_wlast => Softmax_Layer_32bit_0_ila_smax_axi_wlast,
      ila_smax_axi_wready => Softmax_Layer_32bit_0_ila_smax_axi_wready,
      ila_smax_axi_wstrb(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_axi_wstrb(3 downto 0),
      ila_smax_axi_wvalid => Softmax_Layer_32bit_0_ila_smax_axi_wvalid,
      ila_smax_calculated => Softmax_Layer_32bit_0_ila_smax_calculated,
      ila_smax_channel_counter(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_channel_counter(15 downto 0),
      ila_smax_class_counter(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_class_counter(31 downto 0),
      ila_smax_ctrlr_busy => Softmax_Layer_32bit_0_ila_smax_ctrlr_busy,
      ila_smax_ctrlr_clear_all => Softmax_Layer_32bit_0_ila_smax_ctrlr_clear_all,
      ila_smax_ctrlr_controller_ready => Softmax_Layer_32bit_0_ila_smax_ctrlr_controller_ready,
      ila_smax_ctrlr_element_counter(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_ctrlr_element_counter(15 downto 0),
      ila_smax_ctrlr_exp_complete => Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_complete,
      ila_smax_ctrlr_exp_fifo_select => Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_fifo_select,
      ila_smax_ctrlr_exp_input(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_input(31 downto 0),
      ila_smax_ctrlr_exp_input_valid => Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_input_valid,
      ila_smax_ctrlr_fsm_state(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_ctrlr_fsm_state(3 downto 0),
      ila_smax_ctrlr_softmax_complete => Softmax_Layer_32bit_0_ila_smax_ctrlr_softmax_complete,
      ila_smax_data_loaded => Softmax_Layer_32bit_0_ila_smax_data_loaded,
      ila_smax_dw_dividend(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_dividend(31 downto 0),
      ila_smax_dw_division_complete => Softmax_Layer_32bit_0_ila_smax_dw_division_complete,
      ila_smax_dw_division_reg(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_division_reg(31 downto 0),
      ila_smax_dw_divisor(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_divisor(31 downto 0),
      ila_smax_dw_fsm_state(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_fsm_state(3 downto 0),
      ila_smax_dw_hold_counter(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_hold_counter(7 downto 0),
      ila_smax_dw_quotient(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_quotient(31 downto 0),
      ila_smax_dw_quotient_counter(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_quotient_counter(15 downto 0),
      ila_smax_dw_quotient_result_valid => Softmax_Layer_32bit_0_ila_smax_dw_quotient_result_valid,
      ila_smax_dw_rd_en => Softmax_Layer_32bit_0_ila_smax_dw_rd_en,
      ila_smax_exp_addend(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_addend(31 downto 0),
      ila_smax_exp_augend(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_augend(31 downto 0),
      ila_smax_exp_data_reg(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_data_reg(31 downto 0),
      ila_smax_exp_exp_done => Softmax_Layer_32bit_0_ila_smax_exp_exp_done,
      ila_smax_exp_fifo_almost_empty => Softmax_Layer_32bit_0_ila_smax_exp_fifo_almost_empty,
      ila_smax_exp_fifo_almost_full => Softmax_Layer_32bit_0_ila_smax_exp_fifo_almost_full,
      ila_smax_exp_fifo_data(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_fifo_data(31 downto 0),
      ila_smax_exp_fifo_dout(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_fifo_dout(31 downto 0),
      ila_smax_exp_fifo_empty => Softmax_Layer_32bit_0_ila_smax_exp_fifo_empty,
      ila_smax_exp_fifo_full => Softmax_Layer_32bit_0_ila_smax_exp_fifo_full,
      ila_smax_exp_fifo_rd_en => Softmax_Layer_32bit_0_ila_smax_exp_fifo_rd_en,
      ila_smax_exp_fifo_valid => Softmax_Layer_32bit_0_ila_smax_exp_fifo_valid,
      ila_smax_exp_fifo_wr_en => Softmax_Layer_32bit_0_ila_smax_exp_fifo_wr_en,
      ila_smax_exp_fsm_state(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_fsm_state(3 downto 0),
      ila_smax_exp_function_ready => Softmax_Layer_32bit_0_ila_smax_exp_function_ready,
      ila_smax_exp_hold_counter(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_hold_counter(7 downto 0),
      ila_smax_exp_mult_reg(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_mult_reg(31 downto 0),
      ila_smax_exp_multiplicand_a(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_multiplicand_a(31 downto 0),
      ila_smax_exp_multiplicand_b(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_multiplicand_b(31 downto 0),
      ila_smax_exp_multiplication_counter(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_multiplication_counter(7 downto 0),
      ila_smax_exp_mux_data(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_mux_data(31 downto 0),
      ila_smax_exp_mux_wr_en => Softmax_Layer_32bit_0_ila_smax_exp_mux_wr_en,
      ila_smax_exp_product(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_product(31 downto 0),
      ila_smax_exp_step_counter(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_step_counter(7 downto 0),
      ila_smax_exp_sum(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_sum(31 downto 0),
      ila_smax_exp_sum_counter(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_sum_counter(7 downto 0),
      ila_smax_exp_valid_result => Softmax_Layer_32bit_0_ila_smax_exp_valid_result,
      ila_smax_inbuff_almost_empty => Softmax_Layer_32bit_0_ila_smax_inbuff_almost_empty,
      ila_smax_inbuff_almost_full => Softmax_Layer_32bit_0_ila_smax_inbuff_almost_full,
      ila_smax_inbuff_din(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_inbuff_din(31 downto 0),
      ila_smax_inbuff_dout(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_inbuff_dout(31 downto 0),
      ila_smax_inbuff_empty => Softmax_Layer_32bit_0_ila_smax_inbuff_empty,
      ila_smax_inbuff_full => Softmax_Layer_32bit_0_ila_smax_inbuff_full,
      ila_smax_inbuff_rd_en => Softmax_Layer_32bit_0_ila_smax_inbuff_rd_en,
      ila_smax_inbuff_valid => Softmax_Layer_32bit_0_ila_smax_inbuff_valid,
      ila_smax_inbuff_wr_en => Softmax_Layer_32bit_0_ila_smax_inbuff_wr_en,
      ila_smax_input_data_addr_reg(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_input_data_addr_reg(31 downto 0),
      ila_smax_master_fsm_state(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_master_fsm_state(3 downto 0),
      ila_smax_more_bursts_needed => Softmax_Layer_32bit_0_ila_smax_more_bursts_needed,
      ila_smax_num_elements(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_num_elements(15 downto 0),
      ila_smax_outbuff_almost_empty => Softmax_Layer_32bit_0_ila_smax_outbuff_almost_empty,
      ila_smax_outbuff_almost_full => Softmax_Layer_32bit_0_ila_smax_outbuff_almost_full,
      ila_smax_outbuff_din(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_outbuff_din(31 downto 0),
      ila_smax_outbuff_dout(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_outbuff_dout(31 downto 0),
      ila_smax_outbuff_empty => Softmax_Layer_32bit_0_ila_smax_outbuff_empty,
      ila_smax_outbuff_full => Softmax_Layer_32bit_0_ila_smax_outbuff_full,
      ila_smax_outbuff_rd_en => Softmax_Layer_32bit_0_ila_smax_outbuff_rd_en,
      ila_smax_outbuff_valid => Softmax_Layer_32bit_0_ila_smax_outbuff_valid,
      ila_smax_outbuff_wr_en => Softmax_Layer_32bit_0_ila_smax_outbuff_wr_en,
      ila_smax_output_data_addr_reg(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_output_data_addr_reg(31 downto 0),
      ila_smax_rbc(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_rbc(7 downto 0),
      ila_smax_reads_remaining(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_reads_remaining(15 downto 0),
      ila_smax_row_counter(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_row_counter(7 downto 0),
      ila_smax_wbc(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_wbc(7 downto 0),
      ila_smax_writes_remaining(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_writes_remaining(15 downto 0),
      m00_axi_aclk => mig_7series_0_ui_clk,
      m00_axi_araddr(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARADDR(31 downto 0),
      m00_axi_arburst(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARBURST(1 downto 0),
      m00_axi_arcache(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARCACHE(3 downto 0),
      m00_axi_aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      m00_axi_arid(0) => Softmax_Layer_32bit_0_M00_AXI_ARID(0),
      m00_axi_arlen(7 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARLEN(7 downto 0),
      m00_axi_arlock => Softmax_Layer_32bit_0_M00_AXI_ARLOCK,
      m00_axi_arprot(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARPROT(2 downto 0),
      m00_axi_arqos(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARQOS(3 downto 0),
      m00_axi_arready => Softmax_Layer_32bit_0_M00_AXI_ARREADY,
      m00_axi_arsize(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARSIZE(2 downto 0),
      m00_axi_aruser(0) => NLW_Softmax_Layer_32bit_0_m00_axi_aruser_UNCONNECTED(0),
      m00_axi_arvalid => Softmax_Layer_32bit_0_M00_AXI_ARVALID,
      m00_axi_awaddr(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWADDR(31 downto 0),
      m00_axi_awburst(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWBURST(1 downto 0),
      m00_axi_awcache(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWCACHE(3 downto 0),
      m00_axi_awid(0) => Softmax_Layer_32bit_0_M00_AXI_AWID(0),
      m00_axi_awlen(7 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWLEN(7 downto 0),
      m00_axi_awlock => Softmax_Layer_32bit_0_M00_AXI_AWLOCK,
      m00_axi_awprot(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWPROT(2 downto 0),
      m00_axi_awqos(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWQOS(3 downto 0),
      m00_axi_awready => Softmax_Layer_32bit_0_M00_AXI_AWREADY,
      m00_axi_awsize(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWSIZE(2 downto 0),
      m00_axi_awuser(0) => NLW_Softmax_Layer_32bit_0_m00_axi_awuser_UNCONNECTED(0),
      m00_axi_awvalid => Softmax_Layer_32bit_0_M00_AXI_AWVALID,
      m00_axi_bid(0) => Softmax_Layer_32bit_0_M00_AXI_BID(0),
      m00_axi_bready => Softmax_Layer_32bit_0_M00_AXI_BREADY,
      m00_axi_bresp(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_BRESP(1 downto 0),
      m00_axi_buser(0) => '0',
      m00_axi_bvalid => Softmax_Layer_32bit_0_M00_AXI_BVALID,
      m00_axi_error => NLW_Softmax_Layer_32bit_0_m00_axi_error_UNCONNECTED,
      m00_axi_rdata(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_RDATA(31 downto 0),
      m00_axi_rid(0) => Softmax_Layer_32bit_0_M00_AXI_RID(0),
      m00_axi_rlast => Softmax_Layer_32bit_0_M00_AXI_RLAST,
      m00_axi_rready => Softmax_Layer_32bit_0_M00_AXI_RREADY,
      m00_axi_rresp(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_RRESP(1 downto 0),
      m00_axi_ruser(0) => '0',
      m00_axi_rvalid => Softmax_Layer_32bit_0_M00_AXI_RVALID,
      m00_axi_txn_done => NLW_Softmax_Layer_32bit_0_m00_axi_txn_done_UNCONNECTED,
      m00_axi_wdata(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_WDATA(31 downto 0),
      m00_axi_wlast => Softmax_Layer_32bit_0_M00_AXI_WLAST,
      m00_axi_wready => Softmax_Layer_32bit_0_M00_AXI_WREADY,
      m00_axi_wstrb(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_WSTRB(3 downto 0),
      m00_axi_wuser(0) => NLW_Softmax_Layer_32bit_0_m00_axi_wuser_UNCONNECTED(0),
      m00_axi_wvalid => Softmax_Layer_32bit_0_M00_AXI_WVALID,
      o_cycle(63 downto 0) => NLW_Softmax_Layer_32bit_0_o_cycle_UNCONNECTED(63 downto 0),
      o_epoch(63 downto 0) => NLW_Softmax_Layer_32bit_0_o_epoch_UNCONNECTED(63 downto 0),
      o_softmax_complete => Softmax_Layer_32bit_0_o_softmax_complete,
      s00_axi_aclk => clk_wiz_0_clk_out1,
      s00_axi_araddr(31 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      s00_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      s00_axi_arready => Softmax_Tester_0_axi_periph_M00_AXI_ARREADY,
      s00_axi_arvalid => Softmax_Tester_0_axi_periph_M00_AXI_ARVALID,
      s00_axi_awaddr(31 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      s00_axi_awprot(2 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      s00_axi_awready => Softmax_Tester_0_axi_periph_M00_AXI_AWREADY,
      s00_axi_awvalid => Softmax_Tester_0_axi_periph_M00_AXI_AWVALID,
      s00_axi_bready => Softmax_Tester_0_axi_periph_M00_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => Softmax_Tester_0_axi_periph_M00_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s00_axi_rready => Softmax_Tester_0_axi_periph_M00_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => Softmax_Tester_0_axi_periph_M00_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s00_axi_wready => Softmax_Tester_0_axi_periph_M00_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => Softmax_Tester_0_axi_periph_M00_AXI_WVALID
    );
Softmax_Tester_0: component softmax_test_cs_Softmax_Tester_0_0
     port map (
      i_init_calib_complete => mig_7series_0_init_calib_complete,
      i_irq => Softmax_Layer_32bit_0_o_softmax_complete,
      i_trigger => i_trigger_1,
      m00_axi_aclk => clk_wiz_0_clk_out1,
      m00_axi_araddr(31 downto 0) => Softmax_Tester_0_M00_AXI_ARADDR(31 downto 0),
      m00_axi_arburst(1 downto 0) => Softmax_Tester_0_M00_AXI_ARBURST(1 downto 0),
      m00_axi_arcache(3 downto 0) => Softmax_Tester_0_M00_AXI_ARCACHE(3 downto 0),
      m00_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      m00_axi_arid(0) => Softmax_Tester_0_M00_AXI_ARID(0),
      m00_axi_arlen(7 downto 0) => Softmax_Tester_0_M00_AXI_ARLEN(7 downto 0),
      m00_axi_arlock => Softmax_Tester_0_M00_AXI_ARLOCK,
      m00_axi_arprot(2 downto 0) => Softmax_Tester_0_M00_AXI_ARPROT(2 downto 0),
      m00_axi_arqos(3 downto 0) => Softmax_Tester_0_M00_AXI_ARQOS(3 downto 0),
      m00_axi_arready => Softmax_Tester_0_M00_AXI_ARREADY,
      m00_axi_arsize(2 downto 0) => Softmax_Tester_0_M00_AXI_ARSIZE(2 downto 0),
      m00_axi_aruser(0) => NLW_Softmax_Tester_0_m00_axi_aruser_UNCONNECTED(0),
      m00_axi_arvalid => Softmax_Tester_0_M00_AXI_ARVALID,
      m00_axi_awaddr(31 downto 0) => Softmax_Tester_0_M00_AXI_AWADDR(31 downto 0),
      m00_axi_awburst(1 downto 0) => Softmax_Tester_0_M00_AXI_AWBURST(1 downto 0),
      m00_axi_awcache(3 downto 0) => Softmax_Tester_0_M00_AXI_AWCACHE(3 downto 0),
      m00_axi_awid(0) => Softmax_Tester_0_M00_AXI_AWID(0),
      m00_axi_awlen(7 downto 0) => Softmax_Tester_0_M00_AXI_AWLEN(7 downto 0),
      m00_axi_awlock => Softmax_Tester_0_M00_AXI_AWLOCK,
      m00_axi_awprot(2 downto 0) => Softmax_Tester_0_M00_AXI_AWPROT(2 downto 0),
      m00_axi_awqos(3 downto 0) => Softmax_Tester_0_M00_AXI_AWQOS(3 downto 0),
      m00_axi_awready => Softmax_Tester_0_M00_AXI_AWREADY,
      m00_axi_awsize(2 downto 0) => Softmax_Tester_0_M00_AXI_AWSIZE(2 downto 0),
      m00_axi_awuser(0) => NLW_Softmax_Tester_0_m00_axi_awuser_UNCONNECTED(0),
      m00_axi_awvalid => Softmax_Tester_0_M00_AXI_AWVALID,
      m00_axi_bid(0) => Softmax_Tester_0_M00_AXI_BID(0),
      m00_axi_bready => Softmax_Tester_0_M00_AXI_BREADY,
      m00_axi_bresp(1 downto 0) => Softmax_Tester_0_M00_AXI_BRESP(1 downto 0),
      m00_axi_bvalid => Softmax_Tester_0_M00_AXI_BVALID,
      m00_axi_error => NLW_Softmax_Tester_0_m00_axi_error_UNCONNECTED,
      m00_axi_rdata(31 downto 0) => Softmax_Tester_0_M00_AXI_RDATA(31 downto 0),
      m00_axi_rid(0) => Softmax_Tester_0_M00_AXI_RID(0),
      m00_axi_rlast => Softmax_Tester_0_M00_AXI_RLAST,
      m00_axi_rready => Softmax_Tester_0_M00_AXI_RREADY,
      m00_axi_rresp(1 downto 0) => Softmax_Tester_0_M00_AXI_RRESP(1 downto 0),
      m00_axi_rvalid => Softmax_Tester_0_M00_AXI_RVALID,
      m00_axi_txn_done => NLW_Softmax_Tester_0_m00_axi_txn_done_UNCONNECTED,
      m00_axi_wdata(31 downto 0) => Softmax_Tester_0_M00_AXI_WDATA(31 downto 0),
      m00_axi_wlast => Softmax_Tester_0_M00_AXI_WLAST,
      m00_axi_wready => Softmax_Tester_0_M00_AXI_WREADY,
      m00_axi_wstrb(3 downto 0) => Softmax_Tester_0_M00_AXI_WSTRB(3 downto 0),
      m00_axi_wuser(0) => NLW_Softmax_Tester_0_m00_axi_wuser_UNCONNECTED(0),
      m00_axi_wvalid => Softmax_Tester_0_M00_AXI_WVALID
    );
Softmax_Tester_0_axi_periph: entity work.softmax_test_cs_Softmax_Tester_0_axi_periph_0
     port map (
      ACLK => clk_wiz_0_clk_out1,
      ARESETN => rst_clk_wiz_0_100M_interconnect_aresetn(0),
      M00_ACLK => clk_wiz_0_clk_out1,
      M00_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => Softmax_Tester_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => Softmax_Tester_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => Softmax_Tester_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => Softmax_Tester_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => Softmax_Tester_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => Softmax_Tester_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => Softmax_Tester_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => Softmax_Tester_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => Softmax_Tester_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => Softmax_Tester_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => Softmax_Tester_0_axi_periph_M00_AXI_WVALID,
      S00_ACLK => clk_wiz_0_clk_out1,
      S00_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => Softmax_Tester_0_M00_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => Softmax_Tester_0_M00_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => Softmax_Tester_0_M00_AXI_ARCACHE(3 downto 0),
      S00_AXI_arid(0) => Softmax_Tester_0_M00_AXI_ARID(0),
      S00_AXI_arlen(7 downto 0) => Softmax_Tester_0_M00_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock => Softmax_Tester_0_M00_AXI_ARLOCK,
      S00_AXI_arprot(2 downto 0) => Softmax_Tester_0_M00_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => Softmax_Tester_0_M00_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => Softmax_Tester_0_M00_AXI_ARREADY,
      S00_AXI_arsize(2 downto 0) => Softmax_Tester_0_M00_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => Softmax_Tester_0_M00_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => Softmax_Tester_0_M00_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => Softmax_Tester_0_M00_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => Softmax_Tester_0_M00_AXI_AWCACHE(3 downto 0),
      S00_AXI_awid(0) => Softmax_Tester_0_M00_AXI_AWID(0),
      S00_AXI_awlen(7 downto 0) => Softmax_Tester_0_M00_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock => Softmax_Tester_0_M00_AXI_AWLOCK,
      S00_AXI_awprot(2 downto 0) => Softmax_Tester_0_M00_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => Softmax_Tester_0_M00_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => Softmax_Tester_0_M00_AXI_AWREADY,
      S00_AXI_awsize(2 downto 0) => Softmax_Tester_0_M00_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => Softmax_Tester_0_M00_AXI_AWVALID,
      S00_AXI_bid(0) => Softmax_Tester_0_M00_AXI_BID(0),
      S00_AXI_bready => Softmax_Tester_0_M00_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => Softmax_Tester_0_M00_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => Softmax_Tester_0_M00_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => Softmax_Tester_0_M00_AXI_RDATA(31 downto 0),
      S00_AXI_rid(0) => Softmax_Tester_0_M00_AXI_RID(0),
      S00_AXI_rlast => Softmax_Tester_0_M00_AXI_RLAST,
      S00_AXI_rready => Softmax_Tester_0_M00_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => Softmax_Tester_0_M00_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => Softmax_Tester_0_M00_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => Softmax_Tester_0_M00_AXI_WDATA(31 downto 0),
      S00_AXI_wlast => Softmax_Tester_0_M00_AXI_WLAST,
      S00_AXI_wready => Softmax_Tester_0_M00_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => Softmax_Tester_0_M00_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => Softmax_Tester_0_M00_AXI_WVALID
    );
axi_mem_intercon: entity work.softmax_test_cs_axi_mem_intercon_0
     port map (
      ACLK => mig_7series_0_ui_clk,
      ARESETN => rst_mig_7series_0_100M_interconnect_aresetn(0),
      M00_ACLK => mig_7series_0_ui_clk,
      M00_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_mem_intercon_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_mem_intercon_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(0) => axi_mem_intercon_M00_AXI_ARID(0),
      M00_AXI_arlen(7 downto 0) => axi_mem_intercon_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock => axi_mem_intercon_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => axi_mem_intercon_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_mem_intercon_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_mem_intercon_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_mem_intercon_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_mem_intercon_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_mem_intercon_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_mem_intercon_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_mem_intercon_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(0) => axi_mem_intercon_M00_AXI_AWID(0),
      M00_AXI_awlen(7 downto 0) => axi_mem_intercon_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock => axi_mem_intercon_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_mem_intercon_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_mem_intercon_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_mem_intercon_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_mem_intercon_M00_AXI_AWVALID,
      M00_AXI_bid(0) => axi_mem_intercon_M00_AXI_BID(0),
      M00_AXI_bready => axi_mem_intercon_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_mem_intercon_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_mem_intercon_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(0) => axi_mem_intercon_M00_AXI_RID(0),
      M00_AXI_rlast => axi_mem_intercon_M00_AXI_RLAST,
      M00_AXI_rready => axi_mem_intercon_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_mem_intercon_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_mem_intercon_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_mem_intercon_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => axi_mem_intercon_M00_AXI_WLAST,
      M00_AXI_wready => axi_mem_intercon_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_mem_intercon_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_mem_intercon_M00_AXI_WVALID,
      S00_ACLK => mig_7series_0_ui_clk,
      S00_ARESETN => rst_mig_7series_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARCACHE(3 downto 0),
      S00_AXI_arid(0) => Softmax_Layer_32bit_0_M00_AXI_ARID(0),
      S00_AXI_arlen(7 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock => Softmax_Layer_32bit_0_M00_AXI_ARLOCK,
      S00_AXI_arprot(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => Softmax_Layer_32bit_0_M00_AXI_ARREADY,
      S00_AXI_arsize(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => Softmax_Layer_32bit_0_M00_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWCACHE(3 downto 0),
      S00_AXI_awid(0) => Softmax_Layer_32bit_0_M00_AXI_AWID(0),
      S00_AXI_awlen(7 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock => Softmax_Layer_32bit_0_M00_AXI_AWLOCK,
      S00_AXI_awprot(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => Softmax_Layer_32bit_0_M00_AXI_AWREADY,
      S00_AXI_awsize(2 downto 0) => Softmax_Layer_32bit_0_M00_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => Softmax_Layer_32bit_0_M00_AXI_AWVALID,
      S00_AXI_bid(0) => Softmax_Layer_32bit_0_M00_AXI_BID(0),
      S00_AXI_bready => Softmax_Layer_32bit_0_M00_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => Softmax_Layer_32bit_0_M00_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_RDATA(31 downto 0),
      S00_AXI_rid(0) => Softmax_Layer_32bit_0_M00_AXI_RID(0),
      S00_AXI_rlast => Softmax_Layer_32bit_0_M00_AXI_RLAST,
      S00_AXI_rready => Softmax_Layer_32bit_0_M00_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => Softmax_Layer_32bit_0_M00_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => Softmax_Layer_32bit_0_M00_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => Softmax_Layer_32bit_0_M00_AXI_WDATA(31 downto 0),
      S00_AXI_wlast => Softmax_Layer_32bit_0_M00_AXI_WLAST,
      S00_AXI_wready => Softmax_Layer_32bit_0_M00_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => Softmax_Layer_32bit_0_M00_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => Softmax_Layer_32bit_0_M00_AXI_WVALID
    );
clk_wiz_0: component softmax_test_cs_clk_wiz_0_0
     port map (
      clk_in1 => clk_in1_1,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2,
      locked => clk_wiz_0_locked,
      resetn => reset_1
    );
ila_0: component softmax_test_cs_ila_0_0
     port map (
      clk => mig_7series_0_ui_clk,
      probe0(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_fsm_state(3 downto 0),
      probe1(0) => Softmax_Layer_32bit_0_ila_smax_exp_valid_result,
      probe10(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_augend(31 downto 0),
      probe11(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_addend(31 downto 0),
      probe12(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_sum(31 downto 0),
      probe13(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_data_reg(31 downto 0),
      probe14(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_mult_reg(31 downto 0),
      probe15(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_fifo_data(31 downto 0),
      probe16(0) => Softmax_Layer_32bit_0_ila_smax_exp_fifo_wr_en,
      probe17(0) => Softmax_Layer_32bit_0_ila_smax_exp_exp_done,
      probe18(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_fsm_state(3 downto 0),
      probe19(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_addend(31 downto 0),
      probe2(0) => Softmax_Layer_32bit_0_ila_smax_exp_function_ready,
      probe20(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_augend(31 downto 0),
      probe21(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_sum(31 downto 0),
      probe22(0) => Softmax_Layer_32bit_0_ila_smax_aw_rd_en,
      probe23(0) => Softmax_Layer_32bit_0_ila_smax_aw_summing_complete,
      probe24(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_hold_counter(7 downto 0),
      probe25(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_sum_counter(15 downto 0),
      probe26(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_sum_reg(31 downto 0),
      probe27(0) => Softmax_Layer_32bit_0_ila_smax_aw_sum_result_valid,
      probe28(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_fsm_state(3 downto 0),
      probe29(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_divisor(31 downto 0),
      probe3(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_step_counter(7 downto 0),
      probe30(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_dividend(31 downto 0),
      probe31(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_quotient(31 downto 0),
      probe32(0) => Softmax_Layer_32bit_0_ila_smax_dw_rd_en,
      probe33(0) => Softmax_Layer_32bit_0_ila_smax_dw_division_complete,
      probe34(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_hold_counter(7 downto 0),
      probe35(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_quotient_counter(15 downto 0),
      probe36(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_division_reg(31 downto 0),
      probe37(0) => Softmax_Layer_32bit_0_ila_smax_dw_quotient_result_valid,
      probe38(13 downto 4) => NLW_ila_0_probe38_UNCONNECTED(13 downto 4),
      probe38(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_ctrlr_fsm_state(3 downto 0),
      probe39(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_input(31 downto 0),
      probe4(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_multiplication_counter(7 downto 0),
      probe40(0) => Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_input_valid,
      probe41(0) => Softmax_Layer_32bit_0_ila_smax_ctrlr_controller_ready,
      probe42(0) => Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_fifo_select,
      probe43(0) => Softmax_Layer_32bit_0_ila_smax_ctrlr_exp_complete,
      probe44(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_ctrlr_element_counter(15 downto 0),
      probe45(0) => Softmax_Layer_32bit_0_ila_smax_ctrlr_softmax_complete,
      probe46(0) => Softmax_Layer_32bit_0_ila_smax_ctrlr_clear_all,
      probe47(0) => Softmax_Layer_32bit_0_ila_smax_ctrlr_busy,
      probe48(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_inbuff_din(31 downto 0),
      probe49(0) => Softmax_Layer_32bit_0_ila_smax_inbuff_wr_en,
      probe5(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_hold_counter(7 downto 0),
      probe50(0) => Softmax_Layer_32bit_0_ila_smax_inbuff_rd_en,
      probe51(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_inbuff_dout(31 downto 0),
      probe52(0) => Softmax_Layer_32bit_0_ila_smax_inbuff_full,
      probe53(0) => Softmax_Layer_32bit_0_ila_smax_inbuff_almost_full,
      probe54(0) => Softmax_Layer_32bit_0_ila_smax_inbuff_empty,
      probe55(0) => Softmax_Layer_32bit_0_ila_smax_inbuff_almost_empty,
      probe56(0) => Softmax_Layer_32bit_0_ila_smax_inbuff_valid,
      probe57(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_wbc(7 downto 0),
      probe58(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_rbc(7 downto 0),
      probe59(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_channel_counter(15 downto 0),
      probe6(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_sum_counter(7 downto 0),
      probe60(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_row_counter(7 downto 0),
      probe7(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_multiplicand_a(31 downto 0),
      probe8(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_multiplicand_b(31 downto 0),
      probe9(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_product(31 downto 0)
    );
ila_1: component softmax_test_cs_ila_1_0
     port map (
      clk => mig_7series_0_ui_clk,
      probe0(0) => Softmax_Layer_32bit_0_ila_smax_outbuff_almost_empty,
      probe1(0) => Softmax_Layer_32bit_0_ila_smax_outbuff_valid,
      probe10(0) => Softmax_Layer_32bit_0_ila_smax_exp_fifo_valid,
      probe11(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_axi_awaddr(31 downto 0),
      probe12(0) => Softmax_Layer_32bit_0_ila_smax_axi_awready,
      probe13(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_axi_awlen(7 downto 0),
      probe14(0) => Softmax_Layer_32bit_0_ila_smax_axi_awvalid,
      probe15(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_axi_wdata(31 downto 0),
      probe16(0) => Softmax_Layer_32bit_0_ila_smax_axi_wready,
      probe17(0) => Softmax_Layer_32bit_0_ila_smax_axi_wlast,
      probe18(0) => Softmax_Layer_32bit_0_ila_smax_axi_wvalid,
      probe19(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_axi_wstrb(3 downto 0),
      probe2(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_mux_data(31 downto 0),
      probe20(0) => Softmax_Layer_32bit_0_ila_smax_axi_bready,
      probe21(0) => Softmax_Layer_32bit_0_ila_smax_axi_bvalid,
      probe22(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_axi_araddr(31 downto 0),
      probe23(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_axi_arlen(7 downto 0),
      probe24(0) => Softmax_Layer_32bit_0_ila_smax_axi_arvalid,
      probe25(0) => Softmax_Layer_32bit_0_ila_smax_axi_rready,
      probe26(0) => Softmax_Layer_32bit_0_ila_smax_axi_arready,
      probe27(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_axi_rdata(31 downto 0),
      probe28(0) => Softmax_Layer_32bit_0_ila_smax_axi_rlast,
      probe29(0) => Softmax_Layer_32bit_0_ila_smax_axi_rvalid,
      probe3(0) => Softmax_Layer_32bit_0_ila_smax_exp_mux_wr_en,
      probe30(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_wbc(7 downto 0),
      probe31(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_rbc(7 downto 0),
      probe32(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_num_elements(15 downto 0),
      probe33(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_input_data_addr_reg(31 downto 0),
      probe34(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_output_data_addr_reg(31 downto 0),
      probe35(7 downto 0) => Softmax_Layer_32bit_0_ila_smax_row_counter(7 downto 0),
      probe36(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_channel_counter(15 downto 0),
      probe37(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_writes_remaining(15 downto 0),
      probe38(15 downto 0) => Softmax_Layer_32bit_0_ila_smax_reads_remaining(15 downto 0),
      probe39(0) => Softmax_Layer_32bit_0_ila_smax_calculated,
      probe4(0) => Softmax_Layer_32bit_0_ila_smax_exp_fifo_rd_en,
      probe40(0) => Softmax_Layer_32bit_0_ila_smax_more_bursts_needed,
      probe41(0) => Softmax_Layer_32bit_0_ila_smax_data_loaded,
      probe42(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_class_counter(31 downto 0),
      probe43(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_master_fsm_state(3 downto 0),
      probe44(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_outbuff_din(31 downto 0),
      probe45(0) => Softmax_Layer_32bit_0_ila_smax_outbuff_wr_en,
      probe46(0) => Softmax_Layer_32bit_0_ila_smax_outbuff_rd_en,
      probe47(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_outbuff_dout(31 downto 0),
      probe48(0) => Softmax_Layer_32bit_0_ila_smax_outbuff_full,
      probe49(0) => Softmax_Layer_32bit_0_ila_smax_outbuff_almost_full,
      probe5(31 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_fifo_dout(31 downto 0),
      probe50(0) => Softmax_Layer_32bit_0_ila_smax_outbuff_empty,
      probe51(0) => Softmax_Layer_32bit_0_o_softmax_complete,
      probe52(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_exp_fsm_state(3 downto 0),
      probe53(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_dw_fsm_state(3 downto 0),
      probe54(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_aw_fsm_state(3 downto 0),
      probe55(3 downto 0) => Softmax_Layer_32bit_0_ila_smax_ctrlr_fsm_state(3 downto 0),
      probe6(0) => Softmax_Layer_32bit_0_ila_smax_exp_fifo_full,
      probe7(0) => Softmax_Layer_32bit_0_ila_smax_exp_fifo_almost_full,
      probe8(0) => Softmax_Layer_32bit_0_ila_smax_exp_fifo_empty,
      probe9(0) => Softmax_Layer_32bit_0_ila_smax_exp_fifo_almost_empty
    );
mig_7series_0: component softmax_test_cs_mig_7series_0_0
     port map (
      aresetn => rst_mig_7series_0_100M_peripheral_aresetn(0),
      clk_ref_i => clk_wiz_0_clk_out2,
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
      device_temp_i(11 downto 0) => xlconstant_0_dout(11 downto 0),
      init_calib_complete => mig_7series_0_init_calib_complete,
      mmcm_locked => mig_7series_0_mmcm_locked,
      s_axi_araddr(28 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(28 downto 0),
      s_axi_arburst(1 downto 0) => axi_mem_intercon_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_mem_intercon_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arid(0) => axi_mem_intercon_M00_AXI_ARID(0),
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
      s_axi_awid(0) => axi_mem_intercon_M00_AXI_AWID(0),
      s_axi_awlen(7 downto 0) => axi_mem_intercon_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_mem_intercon_M00_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => axi_mem_intercon_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => axi_mem_intercon_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_mem_intercon_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_mem_intercon_M00_AXI_AWVALID,
      s_axi_bid(0) => axi_mem_intercon_M00_AXI_BID(0),
      s_axi_bready => axi_mem_intercon_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_mem_intercon_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_mem_intercon_M00_AXI_RDATA(31 downto 0),
      s_axi_rid(0) => axi_mem_intercon_M00_AXI_RID(0),
      s_axi_rlast => axi_mem_intercon_M00_AXI_RLAST,
      s_axi_rready => axi_mem_intercon_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_mem_intercon_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_mem_intercon_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_mem_intercon_M00_AXI_WDATA(31 downto 0),
      s_axi_wlast => axi_mem_intercon_M00_AXI_WLAST,
      s_axi_wready => axi_mem_intercon_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_mem_intercon_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_mem_intercon_M00_AXI_WVALID,
      sys_clk_i => clk_wiz_0_clk_out1,
      sys_rst => reset_1,
      ui_clk => mig_7series_0_ui_clk,
      ui_clk_sync_rst => mig_7series_0_ui_clk_sync_rst
    );
rst_clk_wiz_0_100M: component softmax_test_cs_rst_clk_wiz_0_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_clk_wiz_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_1,
      interconnect_aresetn(0) => rst_clk_wiz_0_100M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_clk_wiz_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
rst_mig_7series_0_100M: component softmax_test_cs_rst_mig_7series_0_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_mig_7series_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => mig_7series_0_mmcm_locked,
      ext_reset_in => mig_7series_0_ui_clk_sync_rst,
      interconnect_aresetn(0) => rst_mig_7series_0_100M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_mig_7series_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_mig_7series_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => mig_7series_0_ui_clk
    );
xlconstant_0: component softmax_test_cs_xlconstant_0_0
     port map (
      dout(11 downto 0) => xlconstant_0_dout(11 downto 0)
    );
end STRUCTURE;
