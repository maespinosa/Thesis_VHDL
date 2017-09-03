// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:microblaze:9.5
// IP Revision: 3

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
node_microblaze_0_1 your_instance_name (
  .Clk(Clk),                              // input wire Clk
  .Reset(Reset),                          // input wire Reset
  .Interrupt(Interrupt),                  // input wire Interrupt
  .Interrupt_Address(Interrupt_Address),  // input wire [0 : 31] Interrupt_Address
  .Interrupt_Ack(Interrupt_Ack),          // output wire [0 : 1] Interrupt_Ack
  .Instr_Addr(Instr_Addr),                // output wire [0 : 31] Instr_Addr
  .Instr(Instr),                          // input wire [0 : 31] Instr
  .IFetch(IFetch),                        // output wire IFetch
  .I_AS(I_AS),                            // output wire I_AS
  .IReady(IReady),                        // input wire IReady
  .IWAIT(IWAIT),                          // input wire IWAIT
  .ICE(ICE),                              // input wire ICE
  .IUE(IUE),                              // input wire IUE
  .Data_Addr(Data_Addr),                  // output wire [0 : 31] Data_Addr
  .Data_Read(Data_Read),                  // input wire [0 : 31] Data_Read
  .Data_Write(Data_Write),                // output wire [0 : 31] Data_Write
  .D_AS(D_AS),                            // output wire D_AS
  .Read_Strobe(Read_Strobe),              // output wire Read_Strobe
  .Write_Strobe(Write_Strobe),            // output wire Write_Strobe
  .DReady(DReady),                        // input wire DReady
  .DWait(DWait),                          // input wire DWait
  .DCE(DCE),                              // input wire DCE
  .DUE(DUE),                              // input wire DUE
  .Byte_Enable(Byte_Enable),              // output wire [0 : 3] Byte_Enable
  .M_AXI_DP_AWADDR(M_AXI_DP_AWADDR),      // output wire [31 : 0] M_AXI_DP_AWADDR
  .M_AXI_DP_AWPROT(M_AXI_DP_AWPROT),      // output wire [2 : 0] M_AXI_DP_AWPROT
  .M_AXI_DP_AWVALID(M_AXI_DP_AWVALID),    // output wire M_AXI_DP_AWVALID
  .M_AXI_DP_AWREADY(M_AXI_DP_AWREADY),    // input wire M_AXI_DP_AWREADY
  .M_AXI_DP_WDATA(M_AXI_DP_WDATA),        // output wire [31 : 0] M_AXI_DP_WDATA
  .M_AXI_DP_WSTRB(M_AXI_DP_WSTRB),        // output wire [3 : 0] M_AXI_DP_WSTRB
  .M_AXI_DP_WVALID(M_AXI_DP_WVALID),      // output wire M_AXI_DP_WVALID
  .M_AXI_DP_WREADY(M_AXI_DP_WREADY),      // input wire M_AXI_DP_WREADY
  .M_AXI_DP_BRESP(M_AXI_DP_BRESP),        // input wire [1 : 0] M_AXI_DP_BRESP
  .M_AXI_DP_BVALID(M_AXI_DP_BVALID),      // input wire M_AXI_DP_BVALID
  .M_AXI_DP_BREADY(M_AXI_DP_BREADY),      // output wire M_AXI_DP_BREADY
  .M_AXI_DP_ARADDR(M_AXI_DP_ARADDR),      // output wire [31 : 0] M_AXI_DP_ARADDR
  .M_AXI_DP_ARPROT(M_AXI_DP_ARPROT),      // output wire [2 : 0] M_AXI_DP_ARPROT
  .M_AXI_DP_ARVALID(M_AXI_DP_ARVALID),    // output wire M_AXI_DP_ARVALID
  .M_AXI_DP_ARREADY(M_AXI_DP_ARREADY),    // input wire M_AXI_DP_ARREADY
  .M_AXI_DP_RDATA(M_AXI_DP_RDATA),        // input wire [31 : 0] M_AXI_DP_RDATA
  .M_AXI_DP_RRESP(M_AXI_DP_RRESP),        // input wire [1 : 0] M_AXI_DP_RRESP
  .M_AXI_DP_RVALID(M_AXI_DP_RVALID),      // input wire M_AXI_DP_RVALID
  .M_AXI_DP_RREADY(M_AXI_DP_RREADY),      // output wire M_AXI_DP_RREADY
  .Dbg_Clk(Dbg_Clk),                      // input wire Dbg_Clk
  .Dbg_TDI(Dbg_TDI),                      // input wire Dbg_TDI
  .Dbg_TDO(Dbg_TDO),                      // output wire Dbg_TDO
  .Dbg_Reg_En(Dbg_Reg_En),                // input wire [0 : 7] Dbg_Reg_En
  .Dbg_Shift(Dbg_Shift),                  // input wire Dbg_Shift
  .Dbg_Capture(Dbg_Capture),              // input wire Dbg_Capture
  .Dbg_Update(Dbg_Update),                // input wire Dbg_Update
  .Debug_Rst(Debug_Rst),                  // input wire Debug_Rst
  .M_AXI_IC_AWID(M_AXI_IC_AWID),          // output wire [0 : 0] M_AXI_IC_AWID
  .M_AXI_IC_AWADDR(M_AXI_IC_AWADDR),      // output wire [31 : 0] M_AXI_IC_AWADDR
  .M_AXI_IC_AWLEN(M_AXI_IC_AWLEN),        // output wire [7 : 0] M_AXI_IC_AWLEN
  .M_AXI_IC_AWSIZE(M_AXI_IC_AWSIZE),      // output wire [2 : 0] M_AXI_IC_AWSIZE
  .M_AXI_IC_AWBURST(M_AXI_IC_AWBURST),    // output wire [1 : 0] M_AXI_IC_AWBURST
  .M_AXI_IC_AWLOCK(M_AXI_IC_AWLOCK),      // output wire M_AXI_IC_AWLOCK
  .M_AXI_IC_AWCACHE(M_AXI_IC_AWCACHE),    // output wire [3 : 0] M_AXI_IC_AWCACHE
  .M_AXI_IC_AWPROT(M_AXI_IC_AWPROT),      // output wire [2 : 0] M_AXI_IC_AWPROT
  .M_AXI_IC_AWQOS(M_AXI_IC_AWQOS),        // output wire [3 : 0] M_AXI_IC_AWQOS
  .M_AXI_IC_AWVALID(M_AXI_IC_AWVALID),    // output wire M_AXI_IC_AWVALID
  .M_AXI_IC_AWREADY(M_AXI_IC_AWREADY),    // input wire M_AXI_IC_AWREADY
  .M_AXI_IC_WDATA(M_AXI_IC_WDATA),        // output wire [31 : 0] M_AXI_IC_WDATA
  .M_AXI_IC_WSTRB(M_AXI_IC_WSTRB),        // output wire [3 : 0] M_AXI_IC_WSTRB
  .M_AXI_IC_WLAST(M_AXI_IC_WLAST),        // output wire M_AXI_IC_WLAST
  .M_AXI_IC_WVALID(M_AXI_IC_WVALID),      // output wire M_AXI_IC_WVALID
  .M_AXI_IC_WREADY(M_AXI_IC_WREADY),      // input wire M_AXI_IC_WREADY
  .M_AXI_IC_BID(M_AXI_IC_BID),            // input wire [0 : 0] M_AXI_IC_BID
  .M_AXI_IC_BRESP(M_AXI_IC_BRESP),        // input wire [1 : 0] M_AXI_IC_BRESP
  .M_AXI_IC_BVALID(M_AXI_IC_BVALID),      // input wire M_AXI_IC_BVALID
  .M_AXI_IC_BREADY(M_AXI_IC_BREADY),      // output wire M_AXI_IC_BREADY
  .M_AXI_IC_ARID(M_AXI_IC_ARID),          // output wire [0 : 0] M_AXI_IC_ARID
  .M_AXI_IC_ARADDR(M_AXI_IC_ARADDR),      // output wire [31 : 0] M_AXI_IC_ARADDR
  .M_AXI_IC_ARLEN(M_AXI_IC_ARLEN),        // output wire [7 : 0] M_AXI_IC_ARLEN
  .M_AXI_IC_ARSIZE(M_AXI_IC_ARSIZE),      // output wire [2 : 0] M_AXI_IC_ARSIZE
  .M_AXI_IC_ARBURST(M_AXI_IC_ARBURST),    // output wire [1 : 0] M_AXI_IC_ARBURST
  .M_AXI_IC_ARLOCK(M_AXI_IC_ARLOCK),      // output wire M_AXI_IC_ARLOCK
  .M_AXI_IC_ARCACHE(M_AXI_IC_ARCACHE),    // output wire [3 : 0] M_AXI_IC_ARCACHE
  .M_AXI_IC_ARPROT(M_AXI_IC_ARPROT),      // output wire [2 : 0] M_AXI_IC_ARPROT
  .M_AXI_IC_ARQOS(M_AXI_IC_ARQOS),        // output wire [3 : 0] M_AXI_IC_ARQOS
  .M_AXI_IC_ARVALID(M_AXI_IC_ARVALID),    // output wire M_AXI_IC_ARVALID
  .M_AXI_IC_ARREADY(M_AXI_IC_ARREADY),    // input wire M_AXI_IC_ARREADY
  .M_AXI_IC_RID(M_AXI_IC_RID),            // input wire [0 : 0] M_AXI_IC_RID
  .M_AXI_IC_RDATA(M_AXI_IC_RDATA),        // input wire [31 : 0] M_AXI_IC_RDATA
  .M_AXI_IC_RRESP(M_AXI_IC_RRESP),        // input wire [1 : 0] M_AXI_IC_RRESP
  .M_AXI_IC_RLAST(M_AXI_IC_RLAST),        // input wire M_AXI_IC_RLAST
  .M_AXI_IC_RVALID(M_AXI_IC_RVALID),      // input wire M_AXI_IC_RVALID
  .M_AXI_IC_RREADY(M_AXI_IC_RREADY),      // output wire M_AXI_IC_RREADY
  .M_AXI_DC_AWID(M_AXI_DC_AWID),          // output wire [0 : 0] M_AXI_DC_AWID
  .M_AXI_DC_AWADDR(M_AXI_DC_AWADDR),      // output wire [31 : 0] M_AXI_DC_AWADDR
  .M_AXI_DC_AWLEN(M_AXI_DC_AWLEN),        // output wire [7 : 0] M_AXI_DC_AWLEN
  .M_AXI_DC_AWSIZE(M_AXI_DC_AWSIZE),      // output wire [2 : 0] M_AXI_DC_AWSIZE
  .M_AXI_DC_AWBURST(M_AXI_DC_AWBURST),    // output wire [1 : 0] M_AXI_DC_AWBURST
  .M_AXI_DC_AWLOCK(M_AXI_DC_AWLOCK),      // output wire M_AXI_DC_AWLOCK
  .M_AXI_DC_AWCACHE(M_AXI_DC_AWCACHE),    // output wire [3 : 0] M_AXI_DC_AWCACHE
  .M_AXI_DC_AWPROT(M_AXI_DC_AWPROT),      // output wire [2 : 0] M_AXI_DC_AWPROT
  .M_AXI_DC_AWQOS(M_AXI_DC_AWQOS),        // output wire [3 : 0] M_AXI_DC_AWQOS
  .M_AXI_DC_AWVALID(M_AXI_DC_AWVALID),    // output wire M_AXI_DC_AWVALID
  .M_AXI_DC_AWREADY(M_AXI_DC_AWREADY),    // input wire M_AXI_DC_AWREADY
  .M_AXI_DC_WDATA(M_AXI_DC_WDATA),        // output wire [31 : 0] M_AXI_DC_WDATA
  .M_AXI_DC_WSTRB(M_AXI_DC_WSTRB),        // output wire [3 : 0] M_AXI_DC_WSTRB
  .M_AXI_DC_WLAST(M_AXI_DC_WLAST),        // output wire M_AXI_DC_WLAST
  .M_AXI_DC_WVALID(M_AXI_DC_WVALID),      // output wire M_AXI_DC_WVALID
  .M_AXI_DC_WREADY(M_AXI_DC_WREADY),      // input wire M_AXI_DC_WREADY
  .M_AXI_DC_BRESP(M_AXI_DC_BRESP),        // input wire [1 : 0] M_AXI_DC_BRESP
  .M_AXI_DC_BID(M_AXI_DC_BID),            // input wire [0 : 0] M_AXI_DC_BID
  .M_AXI_DC_BVALID(M_AXI_DC_BVALID),      // input wire M_AXI_DC_BVALID
  .M_AXI_DC_BREADY(M_AXI_DC_BREADY),      // output wire M_AXI_DC_BREADY
  .M_AXI_DC_ARID(M_AXI_DC_ARID),          // output wire [0 : 0] M_AXI_DC_ARID
  .M_AXI_DC_ARADDR(M_AXI_DC_ARADDR),      // output wire [31 : 0] M_AXI_DC_ARADDR
  .M_AXI_DC_ARLEN(M_AXI_DC_ARLEN),        // output wire [7 : 0] M_AXI_DC_ARLEN
  .M_AXI_DC_ARSIZE(M_AXI_DC_ARSIZE),      // output wire [2 : 0] M_AXI_DC_ARSIZE
  .M_AXI_DC_ARBURST(M_AXI_DC_ARBURST),    // output wire [1 : 0] M_AXI_DC_ARBURST
  .M_AXI_DC_ARLOCK(M_AXI_DC_ARLOCK),      // output wire M_AXI_DC_ARLOCK
  .M_AXI_DC_ARCACHE(M_AXI_DC_ARCACHE),    // output wire [3 : 0] M_AXI_DC_ARCACHE
  .M_AXI_DC_ARPROT(M_AXI_DC_ARPROT),      // output wire [2 : 0] M_AXI_DC_ARPROT
  .M_AXI_DC_ARQOS(M_AXI_DC_ARQOS),        // output wire [3 : 0] M_AXI_DC_ARQOS
  .M_AXI_DC_ARVALID(M_AXI_DC_ARVALID),    // output wire M_AXI_DC_ARVALID
  .M_AXI_DC_ARREADY(M_AXI_DC_ARREADY),    // input wire M_AXI_DC_ARREADY
  .M_AXI_DC_RID(M_AXI_DC_RID),            // input wire [0 : 0] M_AXI_DC_RID
  .M_AXI_DC_RDATA(M_AXI_DC_RDATA),        // input wire [31 : 0] M_AXI_DC_RDATA
  .M_AXI_DC_RRESP(M_AXI_DC_RRESP),        // input wire [1 : 0] M_AXI_DC_RRESP
  .M_AXI_DC_RLAST(M_AXI_DC_RLAST),        // input wire M_AXI_DC_RLAST
  .M_AXI_DC_RVALID(M_AXI_DC_RVALID),      // input wire M_AXI_DC_RVALID
  .M_AXI_DC_RREADY(M_AXI_DC_RREADY)      // output wire M_AXI_DC_RREADY
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file node_microblaze_0_1.v when simulating
// the core, node_microblaze_0_1. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

