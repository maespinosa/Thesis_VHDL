-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Mon Jan 14 00:34:10 2019
-- Host        : Marks-M3800 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim -rename_top final_accelerator_VGA_IF_0_0 -prefix
--               final_accelerator_VGA_IF_0_0_ neural_net_accel_conv_db_VGA_IF_0_0_sim_netlist.vhdl
-- Design      : neural_net_accel_conv_db_VGA_IF_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_M00_AXI is
  port (
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 21 downto 0 );
    m00_axi_rready : out STD_LOGIC;
    int_rdone : out STD_LOGIC;
    m00_axi_arvalid : out STD_LOGIC;
    din : out STD_LOGIC_VECTOR ( 11 downto 0 );
    int_read_next : out STD_LOGIC;
    INIT_AXI_TXN : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    m00_axi_rlast : in STD_LOGIC
  );
end final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_M00_AXI;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_M00_AXI is
  signal M_AXI_ARADDR_carry_i_1_n_0 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_i_2_n_0 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_i_3_n_0 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_n_2 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_n_3 : STD_LOGIC;
  signal \axi_araddr[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[13]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[17]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[17]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[21]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[21]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[25]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[25]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_6_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_7_n_0\ : STD_LOGIC;
  signal \axi_araddr[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[30]_i_3_n_0\ : STD_LOGIC;
  signal axi_araddr_reg : STD_LOGIC_VECTOR ( 31 downto 29 );
  signal \axi_araddr_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_3_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_3_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_3_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_3_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_3_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_3_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_3_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[30]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[30]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[30]_i_1_n_7\ : STD_LOGIC;
  signal axi_arvalid0 : STD_LOGIC;
  signal axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal burst_read_active_i_1_n_0 : STD_LOGIC;
  signal init_txn_ff : STD_LOGIC;
  signal init_txn_ff2 : STD_LOGIC;
  signal init_txn_ff_i_1_n_0 : STD_LOGIC;
  signal int_burst_read_active : STD_LOGIC;
  signal \^int_rdone\ : STD_LOGIC;
  signal \^m00_axi_araddr\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \^m00_axi_arvalid\ : STD_LOGIC;
  signal \^m00_axi_rready\ : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \mst_exec_state[1]_i_1_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal read_burst_counter : STD_LOGIC;
  signal \read_burst_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \read_burst_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \read_burst_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \read_burst_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \read_burst_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \read_burst_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \read_burst_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \read_burst_counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \read_burst_counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \read_burst_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \read_burst_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \read_burst_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \read_burst_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal read_burst_counter_reg : STD_LOGIC_VECTOR ( 11 downto 4 );
  signal \read_burst_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \read_index[8]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_2_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_4_n_0\ : STD_LOGIC;
  signal \read_index_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal reads_done_i_1_n_0 : STD_LOGIC;
  signal reads_done_i_2_n_0 : STD_LOGIC;
  signal reads_done_i_3_n_0 : STD_LOGIC;
  signal reads_done_i_4_n_0 : STD_LOGIC;
  signal reads_done_i_5_n_0 : STD_LOGIC;
  signal reads_done_i_6_n_0 : STD_LOGIC;
  signal start_single_burst_read : STD_LOGIC;
  signal start_single_burst_read_i_1_n_0 : STD_LOGIC;
  signal NLW_M_AXI_ARADDR_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_M_AXI_ARADDR_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_read_burst_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of VGA_IMAGE_FIFO_i_13 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_rready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_index[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_index[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_index[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_index[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_index[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_index[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_index[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_index[8]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of reads_done_i_5 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of reads_done_i_6 : label is "soft_lutpair0";
begin
  int_rdone <= \^int_rdone\;
  m00_axi_araddr(21 downto 0) <= \^m00_axi_araddr\(21 downto 0);
  m00_axi_arvalid <= \^m00_axi_arvalid\;
  m00_axi_rready <= \^m00_axi_rready\;
M_AXI_ARADDR_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_M_AXI_ARADDR_carry_CO_UNCONNECTED(3 downto 2),
      CO(1) => M_AXI_ARADDR_carry_n_2,
      CO(0) => M_AXI_ARADDR_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => axi_araddr_reg(30),
      DI(0) => '0',
      O(3) => NLW_M_AXI_ARADDR_carry_O_UNCONNECTED(3),
      O(2 downto 0) => \^m00_axi_araddr\(21 downto 19),
      S(3) => '0',
      S(2) => M_AXI_ARADDR_carry_i_1_n_0,
      S(1) => M_AXI_ARADDR_carry_i_2_n_0,
      S(0) => M_AXI_ARADDR_carry_i_3_n_0
    );
M_AXI_ARADDR_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(31),
      O => M_AXI_ARADDR_carry_i_1_n_0
    );
M_AXI_ARADDR_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_araddr_reg(30),
      O => M_AXI_ARADDR_carry_i_2_n_0
    );
M_AXI_ARADDR_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(29),
      O => M_AXI_ARADDR_carry_i_3_n_0
    );
VGA_IMAGE_FIFO_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => m00_axi_rvalid,
      I2 => m00_axi_rdata(11),
      O => din(11)
    );
VGA_IMAGE_FIFO_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => m00_axi_rvalid,
      I2 => m00_axi_rdata(2),
      O => din(2)
    );
VGA_IMAGE_FIFO_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => m00_axi_rvalid,
      I2 => m00_axi_rdata(1),
      O => din(1)
    );
VGA_IMAGE_FIFO_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => m00_axi_rvalid,
      I2 => m00_axi_rdata(0),
      O => din(0)
    );
VGA_IMAGE_FIFO_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m00_axi_rvalid,
      I1 => \^m00_axi_rready\,
      O => int_read_next
    );
VGA_IMAGE_FIFO_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => m00_axi_rvalid,
      I2 => m00_axi_rdata(10),
      O => din(10)
    );
VGA_IMAGE_FIFO_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => m00_axi_rvalid,
      I2 => m00_axi_rdata(9),
      O => din(9)
    );
VGA_IMAGE_FIFO_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => m00_axi_rvalid,
      I2 => m00_axi_rdata(8),
      O => din(8)
    );
VGA_IMAGE_FIFO_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => m00_axi_rvalid,
      I2 => m00_axi_rdata(7),
      O => din(7)
    );
VGA_IMAGE_FIFO_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => m00_axi_rvalid,
      I2 => m00_axi_rdata(6),
      O => din(6)
    );
VGA_IMAGE_FIFO_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => m00_axi_rvalid,
      I2 => m00_axi_rdata(5),
      O => din(5)
    );
VGA_IMAGE_FIFO_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => m00_axi_rvalid,
      I2 => m00_axi_rdata(4),
      O => din(4)
    );
VGA_IMAGE_FIFO_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => m00_axi_rvalid,
      I2 => m00_axi_rdata(3),
      O => din(3)
    );
\axi_araddr[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(3),
      O => \axi_araddr[13]_i_2_n_0\
    );
\axi_araddr[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(2),
      O => \axi_araddr[13]_i_3_n_0\
    );
\axi_araddr[13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(1),
      O => \axi_araddr[13]_i_4_n_0\
    );
\axi_araddr[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m00_axi_araddr\(0),
      O => \axi_araddr[13]_i_5_n_0\
    );
\axi_araddr[17]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(7),
      O => \axi_araddr[17]_i_2_n_0\
    );
\axi_araddr[17]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(6),
      O => \axi_araddr[17]_i_3_n_0\
    );
\axi_araddr[17]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(5),
      O => \axi_araddr[17]_i_4_n_0\
    );
\axi_araddr[17]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(4),
      O => \axi_araddr[17]_i_5_n_0\
    );
\axi_araddr[21]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(11),
      O => \axi_araddr[21]_i_2_n_0\
    );
\axi_araddr[21]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(10),
      O => \axi_araddr[21]_i_3_n_0\
    );
\axi_araddr[21]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(9),
      O => \axi_araddr[21]_i_4_n_0\
    );
\axi_araddr[21]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(8),
      O => \axi_araddr[21]_i_5_n_0\
    );
\axi_araddr[25]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(15),
      O => \axi_araddr[25]_i_2_n_0\
    );
\axi_araddr[25]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(14),
      O => \axi_araddr[25]_i_3_n_0\
    );
\axi_araddr[25]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(13),
      O => \axi_araddr[25]_i_4_n_0\
    );
\axi_araddr[25]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(12),
      O => \axi_araddr[25]_i_5_n_0\
    );
\axi_araddr[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => init_txn_ff2,
      I1 => init_txn_ff,
      I2 => m00_axi_aresetn,
      O => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m00_axi_arready,
      I1 => \^m00_axi_arvalid\,
      O => axi_arvalid0
    );
\axi_araddr[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(29),
      O => \axi_araddr[28]_i_4_n_0\
    );
\axi_araddr[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(18),
      O => \axi_araddr[28]_i_5_n_0\
    );
\axi_araddr[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(17),
      O => \axi_araddr[28]_i_6_n_0\
    );
\axi_araddr[28]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m00_axi_araddr\(16),
      O => \axi_araddr[28]_i_7_n_0\
    );
\axi_araddr[30]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(31),
      O => \axi_araddr[30]_i_2_n_0\
    );
\axi_araddr[30]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(30),
      O => \axi_araddr[30]_i_3_n_0\
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[13]_i_1_n_7\,
      Q => \^m00_axi_araddr\(0),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[13]_i_1_n_6\,
      Q => \^m00_axi_araddr\(1),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[13]_i_1_n_5\,
      Q => \^m00_axi_araddr\(2),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[13]_i_1_n_4\,
      Q => \^m00_axi_araddr\(3),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axi_araddr_reg[13]_i_1_n_0\,
      CO(2) => \axi_araddr_reg[13]_i_1_n_1\,
      CO(1) => \axi_araddr_reg[13]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \axi_araddr_reg[13]_i_1_n_4\,
      O(2) => \axi_araddr_reg[13]_i_1_n_5\,
      O(1) => \axi_araddr_reg[13]_i_1_n_6\,
      O(0) => \axi_araddr_reg[13]_i_1_n_7\,
      S(3) => \axi_araddr[13]_i_2_n_0\,
      S(2) => \axi_araddr[13]_i_3_n_0\,
      S(1) => \axi_araddr[13]_i_4_n_0\,
      S(0) => \axi_araddr[13]_i_5_n_0\
    );
\axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[17]_i_1_n_7\,
      Q => \^m00_axi_araddr\(4),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[17]_i_1_n_6\,
      Q => \^m00_axi_araddr\(5),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[17]_i_1_n_5\,
      Q => \^m00_axi_araddr\(6),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[17]_i_1_n_4\,
      Q => \^m00_axi_araddr\(7),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[17]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[13]_i_1_n_0\,
      CO(3) => \axi_araddr_reg[17]_i_1_n_0\,
      CO(2) => \axi_araddr_reg[17]_i_1_n_1\,
      CO(1) => \axi_araddr_reg[17]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[17]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_araddr_reg[17]_i_1_n_4\,
      O(2) => \axi_araddr_reg[17]_i_1_n_5\,
      O(1) => \axi_araddr_reg[17]_i_1_n_6\,
      O(0) => \axi_araddr_reg[17]_i_1_n_7\,
      S(3) => \axi_araddr[17]_i_2_n_0\,
      S(2) => \axi_araddr[17]_i_3_n_0\,
      S(1) => \axi_araddr[17]_i_4_n_0\,
      S(0) => \axi_araddr[17]_i_5_n_0\
    );
\axi_araddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[21]_i_1_n_7\,
      Q => \^m00_axi_araddr\(8),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[21]_i_1_n_6\,
      Q => \^m00_axi_araddr\(9),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[21]_i_1_n_5\,
      Q => \^m00_axi_araddr\(10),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[21]_i_1_n_4\,
      Q => \^m00_axi_araddr\(11),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[17]_i_1_n_0\,
      CO(3) => \axi_araddr_reg[21]_i_1_n_0\,
      CO(2) => \axi_araddr_reg[21]_i_1_n_1\,
      CO(1) => \axi_araddr_reg[21]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[21]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_araddr_reg[21]_i_1_n_4\,
      O(2) => \axi_araddr_reg[21]_i_1_n_5\,
      O(1) => \axi_araddr_reg[21]_i_1_n_6\,
      O(0) => \axi_araddr_reg[21]_i_1_n_7\,
      S(3) => \axi_araddr[21]_i_2_n_0\,
      S(2) => \axi_araddr[21]_i_3_n_0\,
      S(1) => \axi_araddr[21]_i_4_n_0\,
      S(0) => \axi_araddr[21]_i_5_n_0\
    );
\axi_araddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[25]_i_1_n_7\,
      Q => \^m00_axi_araddr\(12),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[25]_i_1_n_6\,
      Q => \^m00_axi_araddr\(13),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[25]_i_1_n_5\,
      Q => \^m00_axi_araddr\(14),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[25]_i_1_n_4\,
      Q => \^m00_axi_araddr\(15),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[25]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[21]_i_1_n_0\,
      CO(3) => \axi_araddr_reg[25]_i_1_n_0\,
      CO(2) => \axi_araddr_reg[25]_i_1_n_1\,
      CO(1) => \axi_araddr_reg[25]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[25]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_araddr_reg[25]_i_1_n_4\,
      O(2) => \axi_araddr_reg[25]_i_1_n_5\,
      O(1) => \axi_araddr_reg[25]_i_1_n_6\,
      O(0) => \axi_araddr_reg[25]_i_1_n_7\,
      S(3) => \axi_araddr[25]_i_2_n_0\,
      S(2) => \axi_araddr[25]_i_3_n_0\,
      S(1) => \axi_araddr[25]_i_4_n_0\,
      S(0) => \axi_araddr[25]_i_5_n_0\
    );
\axi_araddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[28]_i_3_n_7\,
      Q => \^m00_axi_araddr\(16),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[28]_i_3_n_6\,
      Q => \^m00_axi_araddr\(17),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[28]_i_3_n_5\,
      Q => \^m00_axi_araddr\(18),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[28]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[25]_i_1_n_0\,
      CO(3) => \axi_araddr_reg[28]_i_3_n_0\,
      CO(2) => \axi_araddr_reg[28]_i_3_n_1\,
      CO(1) => \axi_araddr_reg[28]_i_3_n_2\,
      CO(0) => \axi_araddr_reg[28]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_araddr_reg[28]_i_3_n_4\,
      O(2) => \axi_araddr_reg[28]_i_3_n_5\,
      O(1) => \axi_araddr_reg[28]_i_3_n_6\,
      O(0) => \axi_araddr_reg[28]_i_3_n_7\,
      S(3) => \axi_araddr[28]_i_4_n_0\,
      S(2) => \axi_araddr[28]_i_5_n_0\,
      S(1) => \axi_araddr[28]_i_6_n_0\,
      S(0) => \axi_araddr[28]_i_7_n_0\
    );
\axi_araddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[28]_i_3_n_4\,
      Q => axi_araddr_reg(29),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[30]_i_1_n_7\,
      Q => axi_araddr_reg(30),
      R => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr_reg[30]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[28]_i_3_n_0\,
      CO(3 downto 1) => \NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \axi_araddr_reg[30]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \axi_araddr_reg[30]_i_1_n_6\,
      O(0) => \axi_araddr_reg[30]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \axi_araddr[30]_i_2_n_0\,
      S(0) => \axi_araddr[30]_i_3_n_0\
    );
\axi_araddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[30]_i_1_n_6\,
      Q => axi_araddr_reg(31),
      R => \axi_araddr[28]_i_1_n_0\
    );
axi_arvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7400740000007400"
    )
        port map (
      I0 => m00_axi_arready,
      I1 => \^m00_axi_arvalid\,
      I2 => start_single_burst_read,
      I3 => m00_axi_aresetn,
      I4 => init_txn_ff,
      I5 => init_txn_ff2,
      O => axi_arvalid_i_1_n_0
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => axi_arvalid_i_1_n_0,
      Q => \^m00_axi_arvalid\,
      R => '0'
    );
axi_rready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005722"
    )
        port map (
      I0 => m00_axi_rvalid,
      I1 => prog_full,
      I2 => m00_axi_rlast,
      I3 => \^m00_axi_rready\,
      I4 => \axi_araddr[28]_i_1_n_0\,
      O => axi_rready_i_1_n_0
    );
axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^m00_axi_rready\,
      R => '0'
    );
burst_read_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF2AAA"
    )
        port map (
      I0 => int_burst_read_active,
      I1 => \^m00_axi_rready\,
      I2 => m00_axi_rvalid,
      I3 => m00_axi_rlast,
      I4 => start_single_burst_read,
      I5 => \axi_araddr[28]_i_1_n_0\,
      O => burst_read_active_i_1_n_0
    );
burst_read_active_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => burst_read_active_i_1_n_0,
      Q => int_burst_read_active,
      R => '0'
    );
init_txn_ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => init_txn_ff,
      Q => init_txn_ff2,
      R => init_txn_ff_i_1_n_0
    );
init_txn_ff_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axi_aresetn,
      O => init_txn_ff_i_1_n_0
    );
init_txn_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => INIT_AXI_TXN,
      Q => init_txn_ff,
      R => init_txn_ff_i_1_n_0
    );
\mst_exec_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02F2"
    )
        port map (
      I0 => init_txn_ff,
      I1 => init_txn_ff2,
      I2 => mst_exec_state(1),
      I3 => \^int_rdone\,
      O => \mst_exec_state[1]_i_1_n_0\
    );
\mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \mst_exec_state[1]_i_1_n_0\,
      Q => mst_exec_state(1),
      R => init_txn_ff_i_1_n_0
    );
\read_burst_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515151515555555"
    )
        port map (
      I0 => \read_burst_counter[0]_i_3_n_0\,
      I1 => read_burst_counter_reg(10),
      I2 => read_burst_counter_reg(7),
      I3 => read_burst_counter_reg(5),
      I4 => read_burst_counter_reg(4),
      I5 => read_burst_counter_reg(6),
      O => read_burst_counter
    );
\read_burst_counter[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBFBFBFBFBF"
    )
        port map (
      I0 => read_burst_counter_reg(11),
      I1 => m00_axi_arready,
      I2 => \^m00_axi_arvalid\,
      I3 => read_burst_counter_reg(8),
      I4 => read_burst_counter_reg(9),
      I5 => read_burst_counter_reg(10),
      O => \read_burst_counter[0]_i_3_n_0\
    );
\read_burst_counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[3]\,
      O => \read_burst_counter[0]_i_4_n_0\
    );
\read_burst_counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[2]\,
      O => \read_burst_counter[0]_i_5_n_0\
    );
\read_burst_counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[1]\,
      O => \read_burst_counter[0]_i_6_n_0\
    );
\read_burst_counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[0]\,
      O => \read_burst_counter[0]_i_7_n_0\
    );
\read_burst_counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(7),
      O => \read_burst_counter[4]_i_2_n_0\
    );
\read_burst_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(6),
      O => \read_burst_counter[4]_i_3_n_0\
    );
\read_burst_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(5),
      O => \read_burst_counter[4]_i_4_n_0\
    );
\read_burst_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(4),
      O => \read_burst_counter[4]_i_5_n_0\
    );
\read_burst_counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(11),
      O => \read_burst_counter[8]_i_2_n_0\
    );
\read_burst_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(10),
      O => \read_burst_counter[8]_i_3_n_0\
    );
\read_burst_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(9),
      O => \read_burst_counter[8]_i_4_n_0\
    );
\read_burst_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(8),
      O => \read_burst_counter[8]_i_5_n_0\
    );
\read_burst_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[0]_i_2_n_7\,
      Q => \read_burst_counter_reg_n_0_[0]\,
      R => \axi_araddr[28]_i_1_n_0\
    );
\read_burst_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \read_burst_counter_reg[0]_i_2_n_0\,
      CO(2) => \read_burst_counter_reg[0]_i_2_n_1\,
      CO(1) => \read_burst_counter_reg[0]_i_2_n_2\,
      CO(0) => \read_burst_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \read_burst_counter_reg[0]_i_2_n_4\,
      O(2) => \read_burst_counter_reg[0]_i_2_n_5\,
      O(1) => \read_burst_counter_reg[0]_i_2_n_6\,
      O(0) => \read_burst_counter_reg[0]_i_2_n_7\,
      S(3) => \read_burst_counter[0]_i_4_n_0\,
      S(2) => \read_burst_counter[0]_i_5_n_0\,
      S(1) => \read_burst_counter[0]_i_6_n_0\,
      S(0) => \read_burst_counter[0]_i_7_n_0\
    );
\read_burst_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[8]_i_1_n_5\,
      Q => read_burst_counter_reg(10),
      R => \axi_araddr[28]_i_1_n_0\
    );
\read_burst_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[8]_i_1_n_4\,
      Q => read_burst_counter_reg(11),
      R => \axi_araddr[28]_i_1_n_0\
    );
\read_burst_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[0]_i_2_n_6\,
      Q => \read_burst_counter_reg_n_0_[1]\,
      R => \axi_araddr[28]_i_1_n_0\
    );
\read_burst_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[0]_i_2_n_5\,
      Q => \read_burst_counter_reg_n_0_[2]\,
      R => \axi_araddr[28]_i_1_n_0\
    );
\read_burst_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[0]_i_2_n_4\,
      Q => \read_burst_counter_reg_n_0_[3]\,
      R => \axi_araddr[28]_i_1_n_0\
    );
\read_burst_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[4]_i_1_n_7\,
      Q => read_burst_counter_reg(4),
      R => \axi_araddr[28]_i_1_n_0\
    );
\read_burst_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_burst_counter_reg[0]_i_2_n_0\,
      CO(3) => \read_burst_counter_reg[4]_i_1_n_0\,
      CO(2) => \read_burst_counter_reg[4]_i_1_n_1\,
      CO(1) => \read_burst_counter_reg[4]_i_1_n_2\,
      CO(0) => \read_burst_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \read_burst_counter_reg[4]_i_1_n_4\,
      O(2) => \read_burst_counter_reg[4]_i_1_n_5\,
      O(1) => \read_burst_counter_reg[4]_i_1_n_6\,
      O(0) => \read_burst_counter_reg[4]_i_1_n_7\,
      S(3) => \read_burst_counter[4]_i_2_n_0\,
      S(2) => \read_burst_counter[4]_i_3_n_0\,
      S(1) => \read_burst_counter[4]_i_4_n_0\,
      S(0) => \read_burst_counter[4]_i_5_n_0\
    );
\read_burst_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[4]_i_1_n_6\,
      Q => read_burst_counter_reg(5),
      R => \axi_araddr[28]_i_1_n_0\
    );
\read_burst_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[4]_i_1_n_5\,
      Q => read_burst_counter_reg(6),
      R => \axi_araddr[28]_i_1_n_0\
    );
\read_burst_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[4]_i_1_n_4\,
      Q => read_burst_counter_reg(7),
      R => \axi_araddr[28]_i_1_n_0\
    );
\read_burst_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[8]_i_1_n_7\,
      Q => read_burst_counter_reg(8),
      R => \axi_araddr[28]_i_1_n_0\
    );
\read_burst_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_burst_counter_reg[4]_i_1_n_0\,
      CO(3) => \NLW_read_burst_counter_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \read_burst_counter_reg[8]_i_1_n_1\,
      CO(1) => \read_burst_counter_reg[8]_i_1_n_2\,
      CO(0) => \read_burst_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \read_burst_counter_reg[8]_i_1_n_4\,
      O(2) => \read_burst_counter_reg[8]_i_1_n_5\,
      O(1) => \read_burst_counter_reg[8]_i_1_n_6\,
      O(0) => \read_burst_counter_reg[8]_i_1_n_7\,
      S(3) => \read_burst_counter[8]_i_2_n_0\,
      S(2) => \read_burst_counter[8]_i_3_n_0\,
      S(1) => \read_burst_counter[8]_i_4_n_0\,
      S(0) => \read_burst_counter[8]_i_5_n_0\
    );
\read_burst_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[8]_i_1_n_6\,
      Q => read_burst_counter_reg(9),
      R => \axi_araddr[28]_i_1_n_0\
    );
\read_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_index_reg__0\(0),
      O => plusOp(0)
    );
\read_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \read_index_reg__0\(0),
      I1 => \read_index_reg__0\(1),
      O => plusOp(1)
    );
\read_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \read_index_reg__0\(0),
      I1 => \read_index_reg__0\(1),
      I2 => \read_index_reg__0\(2),
      O => plusOp(2)
    );
\read_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \read_index_reg__0\(1),
      I1 => \read_index_reg__0\(0),
      I2 => \read_index_reg__0\(2),
      I3 => \read_index_reg__0\(3),
      O => plusOp(3)
    );
\read_index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \read_index_reg__0\(2),
      I1 => \read_index_reg__0\(0),
      I2 => \read_index_reg__0\(1),
      I3 => \read_index_reg__0\(3),
      I4 => \read_index_reg__0\(4),
      O => plusOp(4)
    );
\read_index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \read_index_reg__0\(3),
      I1 => \read_index_reg__0\(1),
      I2 => \read_index_reg__0\(0),
      I3 => \read_index_reg__0\(2),
      I4 => \read_index_reg__0\(4),
      I5 => \read_index_reg__0\(5),
      O => plusOp(5)
    );
\read_index[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \read_index[8]_i_4_n_0\,
      I1 => \read_index_reg__0\(6),
      O => plusOp(6)
    );
\read_index[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \read_index[8]_i_4_n_0\,
      I1 => \read_index_reg__0\(6),
      I2 => \read_index_reg__0\(7),
      O => plusOp(7)
    );
\read_index[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF5D"
    )
        port map (
      I0 => m00_axi_aresetn,
      I1 => init_txn_ff,
      I2 => init_txn_ff2,
      I3 => start_single_burst_read,
      O => \read_index[8]_i_1_n_0\
    );
\read_index[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => m00_axi_rvalid,
      I2 => \read_index_reg__0\(8),
      O => \read_index[8]_i_2_n_0\
    );
\read_index[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \read_index_reg__0\(6),
      I1 => \read_index[8]_i_4_n_0\,
      I2 => \read_index_reg__0\(7),
      I3 => \read_index_reg__0\(8),
      O => plusOp(8)
    );
\read_index[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \read_index_reg__0\(5),
      I1 => \read_index_reg__0\(3),
      I2 => \read_index_reg__0\(1),
      I3 => \read_index_reg__0\(0),
      I4 => \read_index_reg__0\(2),
      I5 => \read_index_reg__0\(4),
      O => \read_index[8]_i_4_n_0\
    );
\read_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \read_index[8]_i_2_n_0\,
      D => plusOp(0),
      Q => \read_index_reg__0\(0),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \read_index[8]_i_2_n_0\,
      D => plusOp(1),
      Q => \read_index_reg__0\(1),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \read_index[8]_i_2_n_0\,
      D => plusOp(2),
      Q => \read_index_reg__0\(2),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \read_index[8]_i_2_n_0\,
      D => plusOp(3),
      Q => \read_index_reg__0\(3),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \read_index[8]_i_2_n_0\,
      D => plusOp(4),
      Q => \read_index_reg__0\(4),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \read_index[8]_i_2_n_0\,
      D => plusOp(5),
      Q => \read_index_reg__0\(5),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \read_index[8]_i_2_n_0\,
      D => plusOp(6),
      Q => \read_index_reg__0\(6),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \read_index[8]_i_2_n_0\,
      D => plusOp(7),
      Q => \read_index_reg__0\(7),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \read_index[8]_i_2_n_0\,
      D => plusOp(8),
      Q => \read_index_reg__0\(8),
      R => \read_index[8]_i_1_n_0\
    );
reads_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB00AB000000AB00"
    )
        port map (
      I0 => \^int_rdone\,
      I1 => reads_done_i_2_n_0,
      I2 => reads_done_i_3_n_0,
      I3 => m00_axi_aresetn,
      I4 => init_txn_ff,
      I5 => init_txn_ff2,
      O => reads_done_i_1_n_0
    );
reads_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F001F"
    )
        port map (
      I0 => read_burst_counter_reg(9),
      I1 => read_burst_counter_reg(8),
      I2 => read_burst_counter_reg(10),
      I3 => read_burst_counter_reg(11),
      I4 => read_burst_counter_reg(7),
      O => reads_done_i_2_n_0
    );
reads_done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF1FFFFFFFF"
    )
        port map (
      I0 => reads_done_i_4_n_0,
      I1 => read_burst_counter_reg(6),
      I2 => reads_done_i_5_n_0,
      I3 => reads_done_i_6_n_0,
      I4 => \read_index_reg__0\(8),
      I5 => \read_index_reg__0\(7),
      O => reads_done_i_3_n_0
    );
reads_done_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFF8FFF8F8F8"
    )
        port map (
      I0 => read_burst_counter_reg(4),
      I1 => read_burst_counter_reg(5),
      I2 => read_burst_counter_reg(11),
      I3 => read_burst_counter_reg(10),
      I4 => read_burst_counter_reg(8),
      I5 => read_burst_counter_reg(9),
      O => reads_done_i_4_n_0
    );
reads_done_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \read_index_reg__0\(5),
      I1 => \read_index_reg__0\(6),
      I2 => \read_index_reg__0\(3),
      I3 => \read_index_reg__0\(4),
      O => reads_done_i_5_n_0
    );
reads_done_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \read_index_reg__0\(1),
      I1 => \read_index_reg__0\(2),
      I2 => m00_axi_rvalid,
      I3 => \^m00_axi_rready\,
      I4 => \read_index_reg__0\(0),
      O => reads_done_i_6_n_0
    );
reads_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => reads_done_i_1_n_0,
      Q => \^int_rdone\,
      R => '0'
    );
start_single_burst_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB00BB04"
    )
        port map (
      I0 => \^int_rdone\,
      I1 => mst_exec_state(1),
      I2 => int_burst_read_active,
      I3 => start_single_burst_read,
      I4 => \^m00_axi_arvalid\,
      O => start_single_burst_read_i_1_n_0
    );
start_single_burst_read_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => start_single_burst_read_i_1_n_0,
      Q => start_single_burst_read,
      R => init_txn_ff_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \status_reg_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \fifo_reg_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_araddr_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \image_data_addr_reg_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \pixel_counters_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    \start_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    NET1274 : in STD_LOGIC;
    video_on : in STD_LOGIC;
    inbuff_empty : in STD_LOGIC;
    inbuff_almost_empty : in STD_LOGIC;
    full : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    inbuff_prog_empty : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    inbuff_valid : in STD_LOGIC;
    \pixel_counters_reg[0]\ : in STD_LOGIC;
    \fifo_reg_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \pixel_counters_reg[31]_0\ : in STD_LOGIC;
    \pixel_counters_reg[30]\ : in STD_LOGIC;
    \pixel_counters_reg[29]\ : in STD_LOGIC;
    \pixel_counters_reg[28]\ : in STD_LOGIC;
    \pixel_counters_reg[27]\ : in STD_LOGIC;
    \pixel_counters_reg[26]\ : in STD_LOGIC;
    \pixel_counters_reg[25]\ : in STD_LOGIC;
    \pixel_counters_reg[24]\ : in STD_LOGIC;
    \pixel_counters_reg[23]\ : in STD_LOGIC;
    \pixel_counters_reg[22]\ : in STD_LOGIC;
    \pixel_counters_reg[21]\ : in STD_LOGIC;
    \pixel_counters_reg[20]\ : in STD_LOGIC;
    \pixel_counters_reg[19]\ : in STD_LOGIC;
    \pixel_counters_reg[18]\ : in STD_LOGIC;
    \pixel_counters_reg[17]\ : in STD_LOGIC;
    \pixel_counters_reg[16]\ : in STD_LOGIC;
    \pixel_counters_reg[15]\ : in STD_LOGIC;
    \pixel_counters_reg[14]\ : in STD_LOGIC;
    \pixel_counters_reg[13]\ : in STD_LOGIC;
    \pixel_counters_reg[12]\ : in STD_LOGIC;
    \pixel_counters_reg[11]\ : in STD_LOGIC;
    \pixel_counters_reg[10]\ : in STD_LOGIC;
    \pixel_counters_reg[9]\ : in STD_LOGIC;
    \pixel_counters_reg[8]\ : in STD_LOGIC;
    \pixel_counters_reg[7]\ : in STD_LOGIC;
    \pixel_counters_reg[6]\ : in STD_LOGIC;
    \pixel_counters_reg[5]\ : in STD_LOGIC;
    \pixel_counters_reg[4]\ : in STD_LOGIC;
    \pixel_counters_reg[3]\ : in STD_LOGIC;
    \pixel_counters_reg[2]\ : in STD_LOGIC;
    \pixel_counters_reg[1]\ : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
end final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_S00_AXI;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_S00_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_araddr : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \^axi_araddr_reg[3]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal data4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal int_slv_reg_wren : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \int_slv_reg_wren[4]_i_1_n_0\ : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wr_slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \wr_slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \wr_slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal wr_slv_reg1 : STD_LOGIC_VECTOR ( 16 downto 8 );
  signal \wr_slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal wr_slv_reg4 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \wr_slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \wr_slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fifo_reg[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \fifo_reg[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fifo_reg[16]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fifo_reg[24]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fifo_reg[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fifo_reg[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_slv_reg_wren[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_slv_reg_wren[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_slv_reg_wren[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_slv_reg_wren[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \start_reg[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \start_reg[10]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \start_reg[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \start_reg[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \start_reg[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \start_reg[14]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \start_reg[15]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \start_reg[16]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \start_reg[17]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \start_reg[18]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \start_reg[19]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \start_reg[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \start_reg[20]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \start_reg[21]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \start_reg[22]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \start_reg[23]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \start_reg[24]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \start_reg[25]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \start_reg[26]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \start_reg[27]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \start_reg[28]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \start_reg[29]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \start_reg[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \start_reg[30]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \start_reg[31]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \start_reg[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \start_reg[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \start_reg[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \start_reg[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \start_reg[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \start_reg[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \start_reg[9]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \status_reg[16]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \status_reg[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wr_slv_reg0[31]_i_2\ : label is "soft_lutpair10";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \axi_araddr_reg[3]_0\(1 downto 0) <= \^axi_araddr_reg[3]_0\(1 downto 0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => \^axi_araddr_reg[3]_0\(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(4),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => \^axi_araddr_reg[3]_0\(0),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => \^axi_araddr_reg[3]_0\(1),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => axi_araddr(4),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s00_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_awready\,
      I4 => sel0(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_awready\,
      I4 => sel0(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_awready\,
      I4 => sel0(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => \^s00_axi_wready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => \^s00_axi_awready\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[0]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(0),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[10]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(10),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[11]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(11),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[12]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(12),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[13]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(13),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[14]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(14),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[15]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(15),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[16]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(16),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[17]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(17),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[18]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(18),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[19]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(19),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[1]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(1),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[20]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(20),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[21]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(21),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[22]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(22),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[23]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(23),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[24]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(24),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[25]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(25),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[26]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(26),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[27]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(27),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[28]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(28),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[29]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(29),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[2]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(2),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[30]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(30),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[31]_0\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(31),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[3]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(3),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[4]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(4),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[5]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(5),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[6]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(6),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[7]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(7),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[8]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(8),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \pixel_counters_reg[9]\,
      I1 => \^axi_araddr_reg[3]_0\(1),
      I2 => axi_araddr(4),
      I3 => \fifo_reg_reg[31]_0\(9),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\fifo_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_slv_reg4(0),
      I1 => inbuff_empty,
      I2 => \^q\(4),
      O => \fifo_reg_reg[31]\(0)
    );
\fifo_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_slv_reg4(12),
      I1 => almost_full,
      I2 => \^q\(4),
      O => \fifo_reg_reg[31]\(12)
    );
\fifo_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_slv_reg4(16),
      I1 => inbuff_prog_empty,
      I2 => \^q\(4),
      O => \fifo_reg_reg[31]\(16)
    );
\fifo_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_slv_reg4(20),
      I1 => prog_full,
      I2 => \^q\(4),
      O => \fifo_reg_reg[31]\(20)
    );
\fifo_reg[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_slv_reg4(24),
      I1 => inbuff_valid,
      I2 => \^q\(4),
      O => \fifo_reg_reg[31]\(24)
    );
\fifo_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_slv_reg4(4),
      I1 => inbuff_almost_empty,
      I2 => \^q\(4),
      O => \fifo_reg_reg[31]\(4)
    );
\fifo_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_slv_reg4(8),
      I1 => full,
      I2 => \^q\(4),
      O => \fifo_reg_reg[31]\(8)
    );
\int_slv_reg_wren[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => data4(4),
      O => int_slv_reg_wren(0)
    );
\int_slv_reg_wren[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => data4(4),
      O => int_slv_reg_wren(1)
    );
\int_slv_reg_wren[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => data4(4),
      O => int_slv_reg_wren(2)
    );
\int_slv_reg_wren[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => data4(4),
      O => int_slv_reg_wren(3)
    );
\int_slv_reg_wren[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_awready\,
      I4 => s00_axi_aresetn,
      O => \int_slv_reg_wren[4]_i_1_n_0\
    );
\int_slv_reg_wren[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => data4(4),
      O => int_slv_reg_wren(4)
    );
\int_slv_reg_wren[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => s00_axi_wstrb(0),
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_wstrb(3),
      O => data4(4)
    );
\int_slv_reg_wren_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_slv_reg_wren(0),
      Q => \^q\(0),
      R => \int_slv_reg_wren[4]_i_1_n_0\
    );
\int_slv_reg_wren_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_slv_reg_wren(1),
      Q => \^q\(1),
      R => \int_slv_reg_wren[4]_i_1_n_0\
    );
\int_slv_reg_wren_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_slv_reg_wren(2),
      Q => \^q\(2),
      R => \int_slv_reg_wren[4]_i_1_n_0\
    );
\int_slv_reg_wren_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_slv_reg_wren(3),
      Q => \^q\(3),
      R => \int_slv_reg_wren[4]_i_1_n_0\
    );
\int_slv_reg_wren_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_slv_reg_wren(4),
      Q => \^q\(4),
      R => \int_slv_reg_wren[4]_i_1_n_0\
    );
\start_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(0),
      O => D(0)
    );
\start_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(10),
      O => D(10)
    );
\start_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(11),
      O => D(11)
    );
\start_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(12),
      O => D(12)
    );
\start_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(13),
      O => D(13)
    );
\start_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(14),
      O => D(14)
    );
\start_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(15),
      O => D(15)
    );
\start_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(16),
      O => D(16)
    );
\start_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(17),
      O => D(17)
    );
\start_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(18),
      O => D(18)
    );
\start_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(19),
      O => D(19)
    );
\start_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(1),
      O => D(1)
    );
\start_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(20),
      O => D(20)
    );
\start_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(21),
      O => D(21)
    );
\start_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(22),
      O => D(22)
    );
\start_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(23),
      O => D(23)
    );
\start_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(24),
      O => D(24)
    );
\start_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(25),
      O => D(25)
    );
\start_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(26),
      O => D(26)
    );
\start_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(27),
      O => D(27)
    );
\start_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(28),
      O => D(28)
    );
\start_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(29),
      O => D(29)
    );
\start_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(2),
      O => D(2)
    );
\start_reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(30),
      O => D(30)
    );
\start_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \start_reg_reg[0]\(0),
      O => E(0)
    );
\start_reg[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(31),
      O => D(31)
    );
\start_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(3),
      O => D(3)
    );
\start_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(4),
      O => D(4)
    );
\start_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(5),
      O => D(5)
    );
\start_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(6),
      O => D(6)
    );
\start_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(7),
      O => D(7)
    );
\start_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(8),
      O => D(8)
    );
\start_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_slv_reg0(9),
      O => D(9)
    );
\status_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_slv_reg1(16),
      I1 => video_on,
      I2 => \^q\(1),
      O => \status_reg_reg[31]\(16)
    );
\status_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_slv_reg1(8),
      I1 => NET1274,
      I2 => \^q\(1),
      O => \status_reg_reg[31]\(8)
    );
\wr_slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \wr_slv_reg0[31]_i_2_n_0\,
      I4 => s00_axi_wstrb(1),
      O => \wr_slv_reg0[15]_i_1_n_0\
    );
\wr_slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \wr_slv_reg0[31]_i_2_n_0\,
      I4 => s00_axi_wstrb(2),
      O => \wr_slv_reg0[23]_i_1_n_0\
    );
\wr_slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \wr_slv_reg0[31]_i_2_n_0\,
      I4 => s00_axi_wstrb(3),
      O => \wr_slv_reg0[31]_i_1_n_0\
    );
\wr_slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s00_axi_wready\,
      O => \wr_slv_reg0[31]_i_2_n_0\
    );
\wr_slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \wr_slv_reg0[31]_i_2_n_0\,
      I4 => s00_axi_wstrb(0),
      O => \wr_slv_reg0[7]_i_1_n_0\
    );
\wr_slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => wr_slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => wr_slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => wr_slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => wr_slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => wr_slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => wr_slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => wr_slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => wr_slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => wr_slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => wr_slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => wr_slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => wr_slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => wr_slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => wr_slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => wr_slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => wr_slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => wr_slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => wr_slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => wr_slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => wr_slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => wr_slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => wr_slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => wr_slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => wr_slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => wr_slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => wr_slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => wr_slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => wr_slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => wr_slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => wr_slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => wr_slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => wr_slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \wr_slv_reg0[31]_i_2_n_0\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => s00_axi_wstrb(1),
      O => \wr_slv_reg1[15]_i_1_n_0\
    );
\wr_slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \wr_slv_reg0[31]_i_2_n_0\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => s00_axi_wstrb(2),
      O => \wr_slv_reg1[23]_i_1_n_0\
    );
\wr_slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \wr_slv_reg0[31]_i_2_n_0\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => s00_axi_wstrb(3),
      O => \wr_slv_reg1[31]_i_1_n_0\
    );
\wr_slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \wr_slv_reg0[31]_i_2_n_0\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => s00_axi_wstrb(0),
      O => \wr_slv_reg1[7]_i_1_n_0\
    );
\wr_slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \status_reg_reg[31]\(0),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \status_reg_reg[31]\(10),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \status_reg_reg[31]\(11),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \status_reg_reg[31]\(12),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \status_reg_reg[31]\(13),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \status_reg_reg[31]\(14),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \status_reg_reg[31]\(15),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => wr_slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \status_reg_reg[31]\(17),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \status_reg_reg[31]\(18),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \status_reg_reg[31]\(19),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \status_reg_reg[31]\(1),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \status_reg_reg[31]\(20),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \status_reg_reg[31]\(21),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \status_reg_reg[31]\(22),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \status_reg_reg[31]\(23),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \status_reg_reg[31]\(24),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \status_reg_reg[31]\(25),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \status_reg_reg[31]\(26),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \status_reg_reg[31]\(27),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \status_reg_reg[31]\(28),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \status_reg_reg[31]\(29),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \status_reg_reg[31]\(2),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \status_reg_reg[31]\(30),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \status_reg_reg[31]\(31),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \status_reg_reg[31]\(3),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \status_reg_reg[31]\(4),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \status_reg_reg[31]\(5),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \status_reg_reg[31]\(6),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \status_reg_reg[31]\(7),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => wr_slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \status_reg_reg[31]\(9),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => sel0(0),
      I1 => \wr_slv_reg0[31]_i_2_n_0\,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => s00_axi_wstrb(1),
      O => \wr_slv_reg2[15]_i_1_n_0\
    );
\wr_slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => sel0(0),
      I1 => \wr_slv_reg0[31]_i_2_n_0\,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => s00_axi_wstrb(2),
      O => \wr_slv_reg2[23]_i_1_n_0\
    );
\wr_slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => sel0(0),
      I1 => \wr_slv_reg0[31]_i_2_n_0\,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => s00_axi_wstrb(3),
      O => \wr_slv_reg2[31]_i_1_n_0\
    );
\wr_slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => sel0(0),
      I1 => \wr_slv_reg0[31]_i_2_n_0\,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => s00_axi_wstrb(0),
      O => \wr_slv_reg2[7]_i_1_n_0\
    );
\wr_slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \image_data_addr_reg_reg[31]\(0),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \image_data_addr_reg_reg[31]\(10),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \image_data_addr_reg_reg[31]\(11),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \image_data_addr_reg_reg[31]\(12),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \image_data_addr_reg_reg[31]\(13),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \image_data_addr_reg_reg[31]\(14),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \image_data_addr_reg_reg[31]\(15),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \image_data_addr_reg_reg[31]\(16),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \image_data_addr_reg_reg[31]\(17),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \image_data_addr_reg_reg[31]\(18),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \image_data_addr_reg_reg[31]\(19),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \image_data_addr_reg_reg[31]\(1),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \image_data_addr_reg_reg[31]\(20),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \image_data_addr_reg_reg[31]\(21),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \image_data_addr_reg_reg[31]\(22),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \image_data_addr_reg_reg[31]\(23),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \image_data_addr_reg_reg[31]\(24),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \image_data_addr_reg_reg[31]\(25),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \image_data_addr_reg_reg[31]\(26),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \image_data_addr_reg_reg[31]\(27),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \image_data_addr_reg_reg[31]\(28),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \image_data_addr_reg_reg[31]\(29),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \image_data_addr_reg_reg[31]\(2),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \image_data_addr_reg_reg[31]\(30),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \image_data_addr_reg_reg[31]\(31),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \image_data_addr_reg_reg[31]\(3),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \image_data_addr_reg_reg[31]\(4),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \image_data_addr_reg_reg[31]\(5),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \image_data_addr_reg_reg[31]\(6),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \image_data_addr_reg_reg[31]\(7),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \image_data_addr_reg_reg[31]\(8),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \image_data_addr_reg_reg[31]\(9),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \wr_slv_reg0[31]_i_2_n_0\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => s00_axi_wstrb(1),
      O => \wr_slv_reg3[15]_i_1_n_0\
    );
\wr_slv_reg3[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \wr_slv_reg0[31]_i_2_n_0\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => s00_axi_wstrb(2),
      O => \wr_slv_reg3[23]_i_1_n_0\
    );
\wr_slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \wr_slv_reg0[31]_i_2_n_0\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => s00_axi_wstrb(3),
      O => \wr_slv_reg3[31]_i_1_n_0\
    );
\wr_slv_reg3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \wr_slv_reg0[31]_i_2_n_0\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => s00_axi_wstrb(0),
      O => \wr_slv_reg3[7]_i_1_n_0\
    );
\wr_slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \pixel_counters_reg[31]\(0),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \pixel_counters_reg[31]\(10),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \pixel_counters_reg[31]\(11),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \pixel_counters_reg[31]\(12),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \pixel_counters_reg[31]\(13),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \pixel_counters_reg[31]\(14),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \pixel_counters_reg[31]\(15),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \pixel_counters_reg[31]\(16),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \pixel_counters_reg[31]\(17),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \pixel_counters_reg[31]\(18),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \pixel_counters_reg[31]\(19),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \pixel_counters_reg[31]\(1),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \pixel_counters_reg[31]\(20),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \pixel_counters_reg[31]\(21),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \pixel_counters_reg[31]\(22),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \pixel_counters_reg[31]\(23),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \pixel_counters_reg[31]\(24),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \pixel_counters_reg[31]\(25),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \pixel_counters_reg[31]\(26),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \pixel_counters_reg[31]\(27),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \pixel_counters_reg[31]\(28),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \pixel_counters_reg[31]\(29),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \pixel_counters_reg[31]\(2),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \pixel_counters_reg[31]\(30),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \pixel_counters_reg[31]\(31),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \pixel_counters_reg[31]\(3),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \pixel_counters_reg[31]\(4),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \pixel_counters_reg[31]\(5),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \pixel_counters_reg[31]\(6),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \pixel_counters_reg[31]\(7),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \pixel_counters_reg[31]\(8),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \pixel_counters_reg[31]\(9),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => sel0(0),
      I1 => \wr_slv_reg0[31]_i_2_n_0\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => s00_axi_wstrb(1),
      O => \wr_slv_reg4[15]_i_1_n_0\
    );
\wr_slv_reg4[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => sel0(0),
      I1 => \wr_slv_reg0[31]_i_2_n_0\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => s00_axi_wstrb(2),
      O => \wr_slv_reg4[23]_i_1_n_0\
    );
\wr_slv_reg4[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => sel0(0),
      I1 => \wr_slv_reg0[31]_i_2_n_0\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => s00_axi_wstrb(3),
      O => \wr_slv_reg4[31]_i_1_n_0\
    );
\wr_slv_reg4[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => sel0(0),
      I1 => \wr_slv_reg0[31]_i_2_n_0\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => s00_axi_wstrb(0),
      O => \wr_slv_reg4[7]_i_1_n_0\
    );
\wr_slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => wr_slv_reg4(0),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \fifo_reg_reg[31]\(10),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \fifo_reg_reg[31]\(11),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => wr_slv_reg4(12),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \fifo_reg_reg[31]\(13),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \fifo_reg_reg[31]\(14),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \fifo_reg_reg[31]\(15),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => wr_slv_reg4(16),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \fifo_reg_reg[31]\(17),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \fifo_reg_reg[31]\(18),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \fifo_reg_reg[31]\(19),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \fifo_reg_reg[31]\(1),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => wr_slv_reg4(20),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \fifo_reg_reg[31]\(21),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \fifo_reg_reg[31]\(22),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \fifo_reg_reg[31]\(23),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => wr_slv_reg4(24),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \fifo_reg_reg[31]\(25),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \fifo_reg_reg[31]\(26),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \fifo_reg_reg[31]\(27),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \fifo_reg_reg[31]\(28),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \fifo_reg_reg[31]\(29),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \fifo_reg_reg[31]\(2),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \fifo_reg_reg[31]\(30),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \fifo_reg_reg[31]\(31),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \fifo_reg_reg[31]\(3),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => wr_slv_reg4(4),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \fifo_reg_reg[31]\(5),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \fifo_reg_reg[31]\(6),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \fifo_reg_reg[31]\(7),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => wr_slv_reg4(8),
      R => axi_awready_i_1_n_0
    );
\wr_slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \fifo_reg_reg[31]\(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_S_AXI_INTR is
  port (
    s_axi_intr_awready : out STD_LOGIC;
    s_axi_intr_wready : out STD_LOGIC;
    s_axi_intr_arready : out STD_LOGIC;
    s_axi_intr_bvalid : out STD_LOGIC;
    s_axi_intr_rvalid : out STD_LOGIC;
    s_axi_intr_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    irq : out STD_LOGIC;
    s_axi_intr_aclk : in STD_LOGIC;
    s_axi_intr_awvalid : in STD_LOGIC;
    s_axi_intr_wvalid : in STD_LOGIC;
    s_axi_intr_arvalid : in STD_LOGIC;
    s_axi_intr_aresetn : in STD_LOGIC;
    s_axi_intr_bready : in STD_LOGIC;
    s_axi_intr_rready : in STD_LOGIC;
    s_axi_intr_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_intr_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_S_AXI_INTR;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_S_AXI_INTR is
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_arready_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awready_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_bvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_wready_i_1__0_n_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal det_intr : STD_LOGIC;
  signal \gen_intr_all[0].intr_ack_all_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_all[0].intr_all_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0\ : STD_LOGIC;
  signal \gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_reg[0].reg_intr_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0\ : STD_LOGIC;
  signal intr : STD_LOGIC;
  signal \intr[0]_i_1_n_0\ : STD_LOGIC;
  signal intr_ack_all : STD_LOGIC;
  signal intr_ack_all_ff : STD_LOGIC;
  signal intr_all : STD_LOGIC;
  signal \intr_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \intr_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \intr_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \intr_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \intr_counter_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^irq\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_out : STD_LOGIC;
  signal reg_data_out : STD_LOGIC;
  signal reg_global_intr_en : STD_LOGIC;
  signal reg_intr_ack : STD_LOGIC;
  signal reg_intr_en : STD_LOGIC;
  signal reg_intr_pending : STD_LOGIC;
  signal reg_intr_sts : STD_LOGIC;
  signal \^s_axi_intr_arready\ : STD_LOGIC;
  signal \^s_axi_intr_awready\ : STD_LOGIC;
  signal \^s_axi_intr_bvalid\ : STD_LOGIC;
  signal \^s_axi_intr_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_intr_rvalid\ : STD_LOGIC;
  signal \^s_axi_intr_wready\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_arready_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \axi_awready_i_2__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \axi_wready_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gen_intr_reg[0].reg_global_intr_en[0]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \intr_counter[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \intr_counter[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \intr_counter[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \intr_counter[3]_i_2\ : label is "soft_lutpair34";
begin
  irq <= \^irq\;
  s_axi_intr_arready <= \^s_axi_intr_arready\;
  s_axi_intr_awready <= \^s_axi_intr_awready\;
  s_axi_intr_bvalid <= \^s_axi_intr_bvalid\;
  s_axi_intr_rdata(0) <= \^s_axi_intr_rdata\(0);
  s_axi_intr_rvalid <= \^s_axi_intr_rvalid\;
  s_axi_intr_wready <= \^s_axi_intr_wready\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_intr_araddr(0),
      I1 => s_axi_intr_arvalid,
      I2 => \^s_axi_intr_arready\,
      I3 => \axi_araddr_reg_n_0_[2]\,
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_intr_araddr(1),
      I1 => s_axi_intr_arvalid,
      I2 => \^s_axi_intr_arready\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_intr_araddr(2),
      I1 => s_axi_intr_arvalid,
      I2 => \^s_axi_intr_arready\,
      I3 => \axi_araddr_reg_n_0_[4]\,
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => \axi_araddr_reg_n_0_[2]\,
      S => clear
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => \axi_araddr_reg_n_0_[3]\,
      S => clear
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => \axi_araddr_reg_n_0_[4]\,
      S => clear
    );
\axi_arready_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_intr_arvalid,
      I1 => \^s_axi_intr_arready\,
      O => \axi_arready_i_1__0_n_0\
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_arready_i_1__0_n_0\,
      Q => \^s_axi_intr_arready\,
      R => clear
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_intr_awaddr(0),
      I1 => s_axi_intr_awvalid,
      I2 => s_axi_intr_wvalid,
      I3 => \^s_axi_intr_awready\,
      I4 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_intr_awaddr(1),
      I1 => s_axi_intr_awvalid,
      I2 => s_axi_intr_wvalid,
      I3 => \^s_axi_intr_awready\,
      I4 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_intr_awaddr(2),
      I1 => s_axi_intr_awvalid,
      I2 => s_axi_intr_wvalid,
      I3 => \^s_axi_intr_awready\,
      I4 => p_0_in(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => clear
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => clear
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => p_0_in(2),
      R => clear
    );
\axi_awready_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_intr_aresetn,
      O => clear
    );
\axi_awready_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_intr_awvalid,
      I1 => s_axi_intr_wvalid,
      I2 => \^s_axi_intr_awready\,
      O => \axi_awready_i_2__0_n_0\
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_awready_i_2__0_n_0\,
      Q => \^s_axi_intr_awready\,
      R => clear
    );
\axi_bvalid_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_intr_awvalid,
      I1 => s_axi_intr_wvalid,
      I2 => \^s_axi_intr_awready\,
      I3 => \^s_axi_intr_wready\,
      I4 => s_axi_intr_bready,
      I5 => \^s_axi_intr_bvalid\,
      O => \axi_bvalid_i_1__0_n_0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_bvalid_i_1__0_n_0\,
      Q => \^s_axi_intr_bvalid\,
      R => clear
    );
\axi_rdata[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => reg_data_out,
      I1 => \^s_axi_intr_arready\,
      I2 => s_axi_intr_arvalid,
      I3 => \^s_axi_intr_rvalid\,
      I4 => \^s_axi_intr_rdata\(0),
      O => \axi_rdata[0]_i_1__0_n_0\
    );
\axi_rdata[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[0]_i_3_n_0\,
      I1 => \axi_araddr_reg_n_0_[3]\,
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => reg_intr_pending,
      I4 => \axi_araddr_reg_n_0_[2]\,
      O => reg_data_out
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_intr_ack,
      I1 => reg_intr_sts,
      I2 => \axi_araddr_reg_n_0_[3]\,
      I3 => reg_intr_en,
      I4 => \axi_araddr_reg_n_0_[2]\,
      I5 => reg_global_intr_en,
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_rdata[0]_i_1__0_n_0\,
      Q => \^s_axi_intr_rdata\(0),
      R => clear
    );
\axi_rvalid_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s_axi_intr_arvalid,
      I1 => \^s_axi_intr_arready\,
      I2 => \^s_axi_intr_rvalid\,
      I3 => s_axi_intr_rready,
      O => \axi_rvalid_i_1__0_n_0\
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_rvalid_i_1__0_n_0\,
      Q => \^s_axi_intr_rvalid\,
      R => clear
    );
\axi_wready_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_intr_awvalid,
      I1 => s_axi_intr_wvalid,
      I2 => \^s_axi_intr_wready\,
      O => \axi_wready_i_1__0_n_0\
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \axi_wready_i_1__0_n_0\,
      Q => \^s_axi_intr_wready\,
      R => clear
    );
\gen_intr_all[0].intr_ack_all_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => intr_ack_all,
      I1 => reg_intr_ack,
      I2 => s_axi_intr_aresetn,
      I3 => intr_ack_all_ff,
      O => \gen_intr_all[0].intr_ack_all_i_1_n_0\
    );
\gen_intr_all[0].intr_ack_all_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_all[0].intr_ack_all_i_1_n_0\,
      Q => intr_ack_all,
      R => '0'
    );
\gen_intr_all[0].intr_all_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => intr_all,
      I1 => reg_intr_pending,
      I2 => s_axi_intr_aresetn,
      I3 => intr_ack_all_ff,
      O => \gen_intr_all[0].intr_all_i_1_n_0\
    );
\gen_intr_all[0].intr_all_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_all[0].intr_all_i_1_n_0\,
      Q => intr_all,
      R => '0'
    );
\gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr,
      I1 => det_intr,
      O => \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1_n_0\
    );
\gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1_n_0\,
      Q => det_intr,
      R => \gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0\
    );
\gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA00"
    )
        port map (
      I0 => \^irq\,
      I1 => reg_global_intr_en,
      I2 => intr_all,
      I3 => s_axi_intr_aresetn,
      I4 => intr_ack_all,
      O => \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0\
    );
\gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0\,
      Q => \^irq\,
      R => '0'
    );
\gen_intr_reg[0].reg_global_intr_en[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => s_axi_intr_wdata(0),
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      I3 => \gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0\,
      I4 => p_0_in(1),
      I5 => reg_global_intr_en,
      O => \gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_global_intr_en[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axi_intr_awvalid,
      I1 => s_axi_intr_wvalid,
      I2 => \^s_axi_intr_awready\,
      I3 => \^s_axi_intr_wready\,
      O => \gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0\
    );
\gen_intr_reg[0].reg_global_intr_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0\,
      Q => reg_global_intr_en,
      R => clear
    );
\gen_intr_reg[0].reg_intr_ack[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => s_axi_intr_wdata(0),
      I1 => \gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0\,
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => reg_intr_ack,
      O => \gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_intr_ack_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0\,
      Q => reg_intr_ack,
      R => \gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_intr_en[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => s_axi_intr_wdata(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      I4 => \gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0\,
      I5 => reg_intr_en,
      O => \gen_intr_reg[0].reg_intr_en[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_intr_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \gen_intr_reg[0].reg_intr_en[0]_i_1_n_0\,
      Q => reg_intr_en,
      R => clear
    );
\gen_intr_reg[0].reg_intr_pending[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reg_intr_en,
      I1 => reg_intr_sts,
      O => p_1_out
    );
\gen_intr_reg[0].reg_intr_pending_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => p_1_out,
      Q => reg_intr_pending,
      R => \gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_intr_sts[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reg_intr_ack,
      I1 => s_axi_intr_aresetn,
      O => \gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0\
    );
\gen_intr_reg[0].reg_intr_sts_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => det_intr,
      Q => reg_intr_sts,
      R => \gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0\
    );
\intr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \intr_counter_reg__0\(0),
      I1 => \intr_counter_reg__0\(2),
      I2 => \intr_counter_reg__0\(1),
      I3 => \intr_counter_reg__0\(3),
      O => \intr[0]_i_1_n_0\
    );
intr_ack_all_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => intr_ack_all,
      Q => intr_ack_all_ff,
      R => clear
    );
\intr_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \intr_counter_reg__0\(0),
      O => \intr_counter[0]_i_1_n_0\
    );
\intr_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \intr_counter_reg__0\(0),
      I1 => \intr_counter_reg__0\(1),
      O => \intr_counter[1]_i_1_n_0\
    );
\intr_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \intr_counter_reg__0\(1),
      I1 => \intr_counter_reg__0\(0),
      I2 => \intr_counter_reg__0\(2),
      O => \intr_counter[2]_i_1_n_0\
    );
\intr_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \intr_counter_reg__0\(1),
      I1 => \intr_counter_reg__0\(0),
      I2 => \intr_counter_reg__0\(2),
      I3 => \intr_counter_reg__0\(3),
      O => sel
    );
\intr_counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \intr_counter_reg__0\(0),
      I1 => \intr_counter_reg__0\(1),
      I2 => \intr_counter_reg__0\(2),
      I3 => \intr_counter_reg__0\(3),
      O => \intr_counter[3]_i_2_n_0\
    );
\intr_counter_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => sel,
      D => \intr_counter[0]_i_1_n_0\,
      Q => \intr_counter_reg__0\(0),
      S => clear
    );
\intr_counter_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => sel,
      D => \intr_counter[1]_i_1_n_0\,
      Q => \intr_counter_reg__0\(1),
      S => clear
    );
\intr_counter_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => sel,
      D => \intr_counter[2]_i_1_n_0\,
      Q => \intr_counter_reg__0\(2),
      S => clear
    );
\intr_counter_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_intr_aclk,
      CE => sel,
      D => \intr_counter[3]_i_2_n_0\,
      Q => \intr_counter_reg__0\(3),
      S => clear
    );
\intr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_intr_aclk,
      CE => '1',
      D => \intr[0]_i_1_n_0\,
      Q => intr,
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_cross_clk_vga is
  port (
    video_on : out STD_LOGIC;
    inbuff_empty : out STD_LOGIC;
    inbuff_almost_empty : out STD_LOGIC;
    inbuff_prog_empty : out STD_LOGIC;
    inbuff_valid : out STD_LOGIC;
    NET1254 : out STD_LOGIC;
    prog_empty_thresh : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \pixel_counters_reg[25]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    read_en_out : in STD_LOGIC;
    i_VGA_CLK : in STD_LOGIC;
    i_reset_n : in STD_LOGIC;
    empty : in STD_LOGIC;
    almost_empty : in STD_LOGIC;
    prog_empty : in STD_LOGIC;
    valid : in STD_LOGIC;
    NET1274 : in STD_LOGIC;
    i_axi_slave_clk : in STD_LOGIC;
    \v_count_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    BUS1262 : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end final_accelerator_VGA_IF_0_0_cross_clk_vga;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_cross_clk_vga is
begin
inbuff_almost_empty_reg: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => almost_empty,
      Q => inbuff_almost_empty
    );
inbuff_empty_reg: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => empty,
      Q => inbuff_empty
    );
inbuff_prog_empty_reg: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => prog_empty,
      Q => inbuff_prog_empty
    );
inbuff_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => valid,
      Q => inbuff_valid
    );
\pixel_x_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => BUS1262(0),
      Q => \pixel_counters_reg[25]\(0)
    );
\pixel_x_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => BUS1262(1),
      Q => \pixel_counters_reg[25]\(1)
    );
\pixel_x_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => BUS1262(2),
      Q => \pixel_counters_reg[25]\(2)
    );
\pixel_x_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => BUS1262(3),
      Q => \pixel_counters_reg[25]\(3)
    );
\pixel_x_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => BUS1262(4),
      Q => \pixel_counters_reg[25]\(4)
    );
\pixel_x_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => BUS1262(5),
      Q => \pixel_counters_reg[25]\(5)
    );
\pixel_x_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => BUS1262(6),
      Q => \pixel_counters_reg[25]\(6)
    );
\pixel_x_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => BUS1262(7),
      Q => \pixel_counters_reg[25]\(7)
    );
\pixel_x_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => BUS1262(8),
      Q => \pixel_counters_reg[25]\(8)
    );
\pixel_x_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => BUS1262(9),
      Q => \pixel_counters_reg[25]\(9)
    );
\pixel_y_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \v_count_reg[9]\(0),
      Q => Q(0)
    );
\pixel_y_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \v_count_reg[9]\(1),
      Q => Q(1)
    );
\pixel_y_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \v_count_reg[9]\(2),
      Q => Q(2)
    );
\pixel_y_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \v_count_reg[9]\(3),
      Q => Q(3)
    );
\pixel_y_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \v_count_reg[9]\(4),
      Q => Q(4)
    );
\pixel_y_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \v_count_reg[9]\(5),
      Q => Q(5)
    );
\pixel_y_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \v_count_reg[9]\(6),
      Q => Q(6)
    );
\pixel_y_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \v_count_reg[9]\(7),
      Q => Q(7)
    );
\pixel_y_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \v_count_reg[9]\(8),
      Q => Q(8)
    );
\pixel_y_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \v_count_reg[9]\(9),
      Q => Q(9)
    );
\prog_empty_threshold_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => i_reset_n,
      D => '1',
      Q => prog_empty_thresh(0)
    );
start_display_reg: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => i_reset_n,
      D => NET1274,
      Q => NET1254
    );
video_on_reg: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => read_en_out,
      Q => video_on
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_vga_controller is
  port (
    INIT_AXI_TXN : out STD_LOGIC;
    INIT_AXI_TXN_reg_0 : out STD_LOGIC;
    start_display_reg_0 : out STD_LOGIC;
    \axi_rdata_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[1]\ : out STD_LOGIC;
    \axi_rdata_reg[2]\ : out STD_LOGIC;
    \axi_rdata_reg[3]\ : out STD_LOGIC;
    \axi_rdata_reg[4]\ : out STD_LOGIC;
    \axi_rdata_reg[5]\ : out STD_LOGIC;
    \axi_rdata_reg[6]\ : out STD_LOGIC;
    \axi_rdata_reg[7]\ : out STD_LOGIC;
    \axi_rdata_reg[8]\ : out STD_LOGIC;
    \axi_rdata_reg[9]\ : out STD_LOGIC;
    \axi_rdata_reg[10]\ : out STD_LOGIC;
    \axi_rdata_reg[11]\ : out STD_LOGIC;
    \axi_rdata_reg[12]\ : out STD_LOGIC;
    \axi_rdata_reg[13]\ : out STD_LOGIC;
    \axi_rdata_reg[14]\ : out STD_LOGIC;
    \axi_rdata_reg[15]\ : out STD_LOGIC;
    \axi_rdata_reg[16]\ : out STD_LOGIC;
    \axi_rdata_reg[17]\ : out STD_LOGIC;
    \axi_rdata_reg[18]\ : out STD_LOGIC;
    \axi_rdata_reg[19]\ : out STD_LOGIC;
    \axi_rdata_reg[20]\ : out STD_LOGIC;
    \axi_rdata_reg[21]\ : out STD_LOGIC;
    \axi_rdata_reg[22]\ : out STD_LOGIC;
    \axi_rdata_reg[23]\ : out STD_LOGIC;
    \axi_rdata_reg[24]\ : out STD_LOGIC;
    \axi_rdata_reg[25]\ : out STD_LOGIC;
    \axi_rdata_reg[26]\ : out STD_LOGIC;
    \axi_rdata_reg[27]\ : out STD_LOGIC;
    \axi_rdata_reg[28]\ : out STD_LOGIC;
    \axi_rdata_reg[29]\ : out STD_LOGIC;
    \axi_rdata_reg[30]\ : out STD_LOGIC;
    \axi_rdata_reg[31]\ : out STD_LOGIC;
    \axi_rdata_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_axi_master_clk : in STD_LOGIC;
    int_read_next : in STD_LOGIC;
    i_axi_slave_clk : in STD_LOGIC;
    int_rdone : in STD_LOGIC;
    \axi_araddr_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_reset_n : in STD_LOGIC;
    \int_slv_reg_wren_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    i_start_display_irq : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \wr_slv_reg1_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \wr_slv_reg2_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \wr_slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \pixel_y_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \pixel_x_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \wr_slv_reg4_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end final_accelerator_VGA_IF_0_0_vga_controller;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_vga_controller is
  signal \INIT_AXI_TXN3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \INIT_AXI_TXN3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \INIT_AXI_TXN3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \INIT_AXI_TXN3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \INIT_AXI_TXN3_carry__0_n_0\ : STD_LOGIC;
  signal \INIT_AXI_TXN3_carry__0_n_1\ : STD_LOGIC;
  signal \INIT_AXI_TXN3_carry__0_n_2\ : STD_LOGIC;
  signal \INIT_AXI_TXN3_carry__0_n_3\ : STD_LOGIC;
  signal \INIT_AXI_TXN3_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \INIT_AXI_TXN3_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \INIT_AXI_TXN3_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \INIT_AXI_TXN3_carry__1_n_1\ : STD_LOGIC;
  signal \INIT_AXI_TXN3_carry__1_n_2\ : STD_LOGIC;
  signal \INIT_AXI_TXN3_carry__1_n_3\ : STD_LOGIC;
  signal INIT_AXI_TXN3_carry_i_1_n_0 : STD_LOGIC;
  signal INIT_AXI_TXN3_carry_i_2_n_0 : STD_LOGIC;
  signal INIT_AXI_TXN3_carry_i_3_n_0 : STD_LOGIC;
  signal INIT_AXI_TXN3_carry_i_4_n_0 : STD_LOGIC;
  signal INIT_AXI_TXN3_carry_n_0 : STD_LOGIC;
  signal INIT_AXI_TXN3_carry_n_1 : STD_LOGIC;
  signal INIT_AXI_TXN3_carry_n_2 : STD_LOGIC;
  signal INIT_AXI_TXN3_carry_n_3 : STD_LOGIC;
  signal INIT_AXI_TXN_i_1_n_0 : STD_LOGIC;
  signal \^init_axi_txn_reg_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal image_data_addr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pixel_counters : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \pixel_counters[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[16]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[17]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[18]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[19]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[1]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[20]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[21]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[22]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[23]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[24]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[25]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[2]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[3]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[5]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[6]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[7]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[8]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counters[9]_i_1_n_0\ : STD_LOGIC;
  signal row_pixel_counter1 : STD_LOGIC;
  signal \row_pixel_counter1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__0_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__0_n_1\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__0_n_2\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__0_n_3\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__1_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__1_n_1\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__1_n_2\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__1_n_3\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__2_n_1\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__2_n_2\ : STD_LOGIC;
  signal \row_pixel_counter1_carry__2_n_3\ : STD_LOGIC;
  signal row_pixel_counter1_carry_i_1_n_0 : STD_LOGIC;
  signal row_pixel_counter1_carry_i_2_n_0 : STD_LOGIC;
  signal row_pixel_counter1_carry_i_3_n_0 : STD_LOGIC;
  signal row_pixel_counter1_carry_i_4_n_0 : STD_LOGIC;
  signal row_pixel_counter1_carry_i_5_n_0 : STD_LOGIC;
  signal row_pixel_counter1_carry_i_6_n_0 : STD_LOGIC;
  signal row_pixel_counter1_carry_i_7_n_0 : STD_LOGIC;
  signal row_pixel_counter1_carry_i_8_n_0 : STD_LOGIC;
  signal row_pixel_counter1_carry_n_0 : STD_LOGIC;
  signal row_pixel_counter1_carry_n_1 : STD_LOGIC;
  signal row_pixel_counter1_carry_n_2 : STD_LOGIC;
  signal row_pixel_counter1_carry_n_3 : STD_LOGIC;
  signal \row_pixel_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[24]_i_5_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[28]_i_2_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[28]_i_3_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[28]_i_4_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[28]_i_5_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \row_pixel_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal row_pixel_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \row_pixel_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \row_pixel_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \row_pixel_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \row_pixel_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \row_pixel_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \row_pixel_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \row_pixel_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \row_pixel_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \row_pixel_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \row_pixel_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \row_pixel_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \row_pixel_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \row_pixel_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \row_pixel_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \row_pixel_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \row_pixel_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \row_pixel_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \row_pixel_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \row_pixel_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \row_pixel_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \row_pixel_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \row_pixel_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \row_pixel_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \row_pixel_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \row_pixel_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \row_pixel_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \row_pixel_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \row_pixel_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \row_pixel_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \row_pixel_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \row_pixel_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \row_pixel_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \row_pixel_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \row_pixel_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \row_pixel_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \row_pixel_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \row_pixel_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \row_pixel_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \row_pixel_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \row_pixel_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \row_pixel_counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \row_pixel_counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \row_pixel_counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \row_pixel_counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \row_pixel_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \row_pixel_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \row_pixel_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \row_pixel_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \row_pixel_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \row_pixel_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \row_pixel_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \row_pixel_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \row_pixel_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \row_pixel_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \row_pixel_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \row_pixel_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \row_pixel_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \row_pixel_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \row_pixel_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \row_pixel_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \row_pixel_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \row_pixel_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \row_pixel_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal start_display_i_1_n_0 : STD_LOGIC;
  signal \^start_display_reg_0\ : STD_LOGIC;
  signal start_fill_flag : STD_LOGIC;
  signal start_fill_flag_i_1_n_0 : STD_LOGIC;
  signal \start_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \start_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal status_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_INIT_AXI_TXN3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_INIT_AXI_TXN3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_INIT_AXI_TXN3_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_INIT_AXI_TXN3_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_row_pixel_counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row_pixel_counter1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row_pixel_counter1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row_pixel_counter1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row_pixel_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of INIT_AXI_TXN_i_1 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \pixel_counters[0]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \pixel_counters[16]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \pixel_counters[17]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \pixel_counters[18]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \pixel_counters[19]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \pixel_counters[1]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \pixel_counters[20]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \pixel_counters[21]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \pixel_counters[22]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \pixel_counters[23]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \pixel_counters[24]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \pixel_counters[25]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \pixel_counters[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \pixel_counters[3]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \pixel_counters[4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \pixel_counters[5]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \pixel_counters[6]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \pixel_counters[7]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \pixel_counters[8]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \pixel_counters[9]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of start_fill_flag_i_1 : label is "soft_lutpair56";
begin
  INIT_AXI_TXN_reg_0 <= \^init_axi_txn_reg_0\;
  Q(0) <= \^q\(0);
  start_display_reg_0 <= \^start_display_reg_0\;
INIT_AXI_TXN3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => INIT_AXI_TXN3_carry_n_0,
      CO(2) => INIT_AXI_TXN3_carry_n_1,
      CO(1) => INIT_AXI_TXN3_carry_n_2,
      CO(0) => INIT_AXI_TXN3_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_INIT_AXI_TXN3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => INIT_AXI_TXN3_carry_i_1_n_0,
      S(2) => INIT_AXI_TXN3_carry_i_2_n_0,
      S(1) => INIT_AXI_TXN3_carry_i_3_n_0,
      S(0) => INIT_AXI_TXN3_carry_i_4_n_0
    );
\INIT_AXI_TXN3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => INIT_AXI_TXN3_carry_n_0,
      CO(3) => \INIT_AXI_TXN3_carry__0_n_0\,
      CO(2) => \INIT_AXI_TXN3_carry__0_n_1\,
      CO(1) => \INIT_AXI_TXN3_carry__0_n_2\,
      CO(0) => \INIT_AXI_TXN3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_INIT_AXI_TXN3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \INIT_AXI_TXN3_carry__0_i_1_n_0\,
      S(2) => \INIT_AXI_TXN3_carry__0_i_2_n_0\,
      S(1) => \INIT_AXI_TXN3_carry__0_i_3_n_0\,
      S(0) => \INIT_AXI_TXN3_carry__0_i_4_n_0\
    );
\INIT_AXI_TXN3_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => row_pixel_counter_reg(23),
      I1 => row_pixel_counter_reg(22),
      I2 => row_pixel_counter_reg(21),
      O => \INIT_AXI_TXN3_carry__0_i_1_n_0\
    );
\INIT_AXI_TXN3_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => row_pixel_counter_reg(20),
      I1 => row_pixel_counter_reg(19),
      I2 => row_pixel_counter_reg(18),
      O => \INIT_AXI_TXN3_carry__0_i_2_n_0\
    );
\INIT_AXI_TXN3_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => row_pixel_counter_reg(17),
      I1 => row_pixel_counter_reg(16),
      I2 => row_pixel_counter_reg(15),
      O => \INIT_AXI_TXN3_carry__0_i_3_n_0\
    );
\INIT_AXI_TXN3_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => row_pixel_counter_reg(14),
      I1 => row_pixel_counter_reg(13),
      I2 => row_pixel_counter_reg(12),
      O => \INIT_AXI_TXN3_carry__0_i_4_n_0\
    );
\INIT_AXI_TXN3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \INIT_AXI_TXN3_carry__0_n_0\,
      CO(3) => \NLW_INIT_AXI_TXN3_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \INIT_AXI_TXN3_carry__1_n_1\,
      CO(1) => \INIT_AXI_TXN3_carry__1_n_2\,
      CO(0) => \INIT_AXI_TXN3_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_INIT_AXI_TXN3_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \INIT_AXI_TXN3_carry__1_i_1_n_0\,
      S(1) => \INIT_AXI_TXN3_carry__1_i_2_n_0\,
      S(0) => \INIT_AXI_TXN3_carry__1_i_3_n_0\
    );
\INIT_AXI_TXN3_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_pixel_counter_reg(30),
      I1 => row_pixel_counter_reg(31),
      O => \INIT_AXI_TXN3_carry__1_i_1_n_0\
    );
\INIT_AXI_TXN3_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => row_pixel_counter_reg(29),
      I1 => row_pixel_counter_reg(28),
      I2 => row_pixel_counter_reg(27),
      O => \INIT_AXI_TXN3_carry__1_i_2_n_0\
    );
\INIT_AXI_TXN3_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => row_pixel_counter_reg(26),
      I1 => row_pixel_counter_reg(25),
      I2 => row_pixel_counter_reg(24),
      O => \INIT_AXI_TXN3_carry__1_i_3_n_0\
    );
INIT_AXI_TXN3_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => row_pixel_counter_reg(11),
      I1 => row_pixel_counter_reg(10),
      I2 => row_pixel_counter_reg(9),
      O => INIT_AXI_TXN3_carry_i_1_n_0
    );
INIT_AXI_TXN3_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => row_pixel_counter_reg(8),
      I1 => row_pixel_counter_reg(7),
      I2 => row_pixel_counter_reg(6),
      O => INIT_AXI_TXN3_carry_i_2_n_0
    );
INIT_AXI_TXN3_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => row_pixel_counter_reg(5),
      I1 => row_pixel_counter_reg(4),
      I2 => row_pixel_counter_reg(3),
      O => INIT_AXI_TXN3_carry_i_3_n_0
    );
INIT_AXI_TXN3_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => row_pixel_counter_reg(2),
      I1 => row_pixel_counter_reg(1),
      I2 => row_pixel_counter_reg(0),
      O => INIT_AXI_TXN3_carry_i_4_n_0
    );
INIT_AXI_TXN_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \INIT_AXI_TXN3_carry__1_n_1\,
      I1 => \^start_display_reg_0\,
      I2 => start_fill_flag,
      I3 => int_rdone,
      O => INIT_AXI_TXN_i_1_n_0
    );
INIT_AXI_TXN_reg: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => INIT_AXI_TXN_i_1_n_0,
      Q => INIT_AXI_TXN
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(0),
      I1 => image_data_addr_reg(0),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(0),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \^q\(0),
      O => \axi_rdata_reg[0]\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(10),
      I1 => image_data_addr_reg(10),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(10),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[10]\,
      O => \axi_rdata_reg[10]\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(11),
      I1 => image_data_addr_reg(11),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(11),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[11]\,
      O => \axi_rdata_reg[11]\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(12),
      I1 => image_data_addr_reg(12),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(12),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[12]\,
      O => \axi_rdata_reg[12]\
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(13),
      I1 => image_data_addr_reg(13),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(13),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[13]\,
      O => \axi_rdata_reg[13]\
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(14),
      I1 => image_data_addr_reg(14),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(14),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[14]\,
      O => \axi_rdata_reg[14]\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(15),
      I1 => image_data_addr_reg(15),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(15),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[15]\,
      O => \axi_rdata_reg[15]\
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(16),
      I1 => image_data_addr_reg(16),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(16),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[16]\,
      O => \axi_rdata_reg[16]\
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(17),
      I1 => image_data_addr_reg(17),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(17),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[17]\,
      O => \axi_rdata_reg[17]\
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(18),
      I1 => image_data_addr_reg(18),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(18),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[18]\,
      O => \axi_rdata_reg[18]\
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(19),
      I1 => image_data_addr_reg(19),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(19),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[19]\,
      O => \axi_rdata_reg[19]\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(1),
      I1 => image_data_addr_reg(1),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(1),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[1]\,
      O => \axi_rdata_reg[1]\
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(20),
      I1 => image_data_addr_reg(20),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(20),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[20]\,
      O => \axi_rdata_reg[20]\
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(21),
      I1 => image_data_addr_reg(21),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(21),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[21]\,
      O => \axi_rdata_reg[21]\
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(22),
      I1 => image_data_addr_reg(22),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(22),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[22]\,
      O => \axi_rdata_reg[22]\
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(23),
      I1 => image_data_addr_reg(23),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(23),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[23]\,
      O => \axi_rdata_reg[23]\
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(24),
      I1 => image_data_addr_reg(24),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(24),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[24]\,
      O => \axi_rdata_reg[24]\
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(25),
      I1 => image_data_addr_reg(25),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(25),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[25]\,
      O => \axi_rdata_reg[25]\
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(26),
      I1 => image_data_addr_reg(26),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(26),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[26]\,
      O => \axi_rdata_reg[26]\
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(27),
      I1 => image_data_addr_reg(27),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(27),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[27]\,
      O => \axi_rdata_reg[27]\
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(28),
      I1 => image_data_addr_reg(28),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(28),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[28]\,
      O => \axi_rdata_reg[28]\
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(29),
      I1 => image_data_addr_reg(29),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(29),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[29]\,
      O => \axi_rdata_reg[29]\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(2),
      I1 => image_data_addr_reg(2),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(2),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[2]\,
      O => \axi_rdata_reg[2]\
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(30),
      I1 => image_data_addr_reg(30),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(30),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[30]\,
      O => \axi_rdata_reg[30]\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(31),
      I1 => image_data_addr_reg(31),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(31),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[31]\,
      O => \axi_rdata_reg[31]\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(3),
      I1 => image_data_addr_reg(3),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(3),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[3]\,
      O => \axi_rdata_reg[3]\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(4),
      I1 => image_data_addr_reg(4),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(4),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[4]\,
      O => \axi_rdata_reg[4]\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(5),
      I1 => image_data_addr_reg(5),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(5),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[5]\,
      O => \axi_rdata_reg[5]\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(6),
      I1 => image_data_addr_reg(6),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(6),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[6]\,
      O => \axi_rdata_reg[6]\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(7),
      I1 => image_data_addr_reg(7),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(7),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[7]\,
      O => \axi_rdata_reg[7]\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(8),
      I1 => image_data_addr_reg(8),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(8),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[8]\,
      O => \axi_rdata_reg[8]\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel_counters(9),
      I1 => image_data_addr_reg(9),
      I2 => \axi_araddr_reg[3]\(1),
      I3 => status_reg(9),
      I4 => \axi_araddr_reg[3]\(0),
      I5 => \start_reg_reg_n_0_[9]\,
      O => \axi_rdata_reg[9]\
    );
\fifo_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(0),
      Q => \axi_rdata_reg[31]_0\(0)
    );
\fifo_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(10),
      Q => \axi_rdata_reg[31]_0\(10)
    );
\fifo_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(11),
      Q => \axi_rdata_reg[31]_0\(11)
    );
\fifo_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg4_reg[31]\(12),
      Q => \axi_rdata_reg[31]_0\(12)
    );
\fifo_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(13),
      Q => \axi_rdata_reg[31]_0\(13)
    );
\fifo_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(14),
      Q => \axi_rdata_reg[31]_0\(14)
    );
\fifo_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(15),
      Q => \axi_rdata_reg[31]_0\(15)
    );
\fifo_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(16),
      Q => \axi_rdata_reg[31]_0\(16)
    );
\fifo_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(17),
      Q => \axi_rdata_reg[31]_0\(17)
    );
\fifo_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(18),
      Q => \axi_rdata_reg[31]_0\(18)
    );
\fifo_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(19),
      Q => \axi_rdata_reg[31]_0\(19)
    );
\fifo_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(1),
      Q => \axi_rdata_reg[31]_0\(1)
    );
\fifo_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg4_reg[31]\(20),
      Q => \axi_rdata_reg[31]_0\(20)
    );
\fifo_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(21),
      Q => \axi_rdata_reg[31]_0\(21)
    );
\fifo_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(22),
      Q => \axi_rdata_reg[31]_0\(22)
    );
\fifo_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(23),
      Q => \axi_rdata_reg[31]_0\(23)
    );
\fifo_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(24),
      Q => \axi_rdata_reg[31]_0\(24)
    );
\fifo_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(25),
      Q => \axi_rdata_reg[31]_0\(25)
    );
\fifo_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(26),
      Q => \axi_rdata_reg[31]_0\(26)
    );
\fifo_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(27),
      Q => \axi_rdata_reg[31]_0\(27)
    );
\fifo_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(28),
      Q => \axi_rdata_reg[31]_0\(28)
    );
\fifo_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(29),
      Q => \axi_rdata_reg[31]_0\(29)
    );
\fifo_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(2),
      Q => \axi_rdata_reg[31]_0\(2)
    );
\fifo_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(30),
      Q => \axi_rdata_reg[31]_0\(30)
    );
\fifo_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(31),
      Q => \axi_rdata_reg[31]_0\(31)
    );
\fifo_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(3),
      Q => \axi_rdata_reg[31]_0\(3)
    );
\fifo_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(4),
      Q => \axi_rdata_reg[31]_0\(4)
    );
\fifo_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(5),
      Q => \axi_rdata_reg[31]_0\(5)
    );
\fifo_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(6),
      Q => \axi_rdata_reg[31]_0\(6)
    );
\fifo_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(7),
      Q => \axi_rdata_reg[31]_0\(7)
    );
\fifo_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg4_reg[31]\(8),
      Q => \axi_rdata_reg[31]_0\(8)
    );
\fifo_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(4),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg4_reg[31]\(9),
      Q => \axi_rdata_reg[31]_0\(9)
    );
h_sync_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reset_n,
      O => \^init_axi_txn_reg_0\
    );
\image_data_addr_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(0),
      Q => image_data_addr_reg(0)
    );
\image_data_addr_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg2_reg[31]\(10),
      Q => image_data_addr_reg(10)
    );
\image_data_addr_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg2_reg[31]\(11),
      Q => image_data_addr_reg(11)
    );
\image_data_addr_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(12),
      Q => image_data_addr_reg(12)
    );
\image_data_addr_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg2_reg[31]\(13),
      Q => image_data_addr_reg(13)
    );
\image_data_addr_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg2_reg[31]\(14),
      Q => image_data_addr_reg(14)
    );
\image_data_addr_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg2_reg[31]\(15),
      Q => image_data_addr_reg(15)
    );
\image_data_addr_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(16),
      Q => image_data_addr_reg(16)
    );
\image_data_addr_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(17),
      Q => image_data_addr_reg(17)
    );
\image_data_addr_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(18),
      Q => image_data_addr_reg(18)
    );
\image_data_addr_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(19),
      Q => image_data_addr_reg(19)
    );
\image_data_addr_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(1),
      Q => image_data_addr_reg(1)
    );
\image_data_addr_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(20),
      Q => image_data_addr_reg(20)
    );
\image_data_addr_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(21),
      Q => image_data_addr_reg(21)
    );
\image_data_addr_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(22),
      Q => image_data_addr_reg(22)
    );
\image_data_addr_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(23),
      Q => image_data_addr_reg(23)
    );
\image_data_addr_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(24),
      Q => image_data_addr_reg(24)
    );
\image_data_addr_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(25),
      Q => image_data_addr_reg(25)
    );
\image_data_addr_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg2_reg[31]\(26),
      Q => image_data_addr_reg(26)
    );
\image_data_addr_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg2_reg[31]\(27),
      Q => image_data_addr_reg(27)
    );
\image_data_addr_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg2_reg[31]\(28),
      Q => image_data_addr_reg(28)
    );
\image_data_addr_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg2_reg[31]\(29),
      Q => image_data_addr_reg(29)
    );
\image_data_addr_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(2),
      Q => image_data_addr_reg(2)
    );
\image_data_addr_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg2_reg[31]\(30),
      Q => image_data_addr_reg(30)
    );
\image_data_addr_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg2_reg[31]\(31),
      Q => image_data_addr_reg(31)
    );
\image_data_addr_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(3),
      Q => image_data_addr_reg(3)
    );
\image_data_addr_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(4),
      Q => image_data_addr_reg(4)
    );
\image_data_addr_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(5),
      Q => image_data_addr_reg(5)
    );
\image_data_addr_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(6),
      Q => image_data_addr_reg(6)
    );
\image_data_addr_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(7),
      Q => image_data_addr_reg(7)
    );
\image_data_addr_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(8),
      Q => image_data_addr_reg(8)
    );
\image_data_addr_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(2),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg2_reg[31]\(9),
      Q => image_data_addr_reg(9)
    );
\pixel_counters[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(0),
      I1 => \pixel_y_reg[9]\(0),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[0]_i_1_n_0\
    );
\pixel_counters[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(16),
      I1 => \pixel_x_reg[9]\(0),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[16]_i_1_n_0\
    );
\pixel_counters[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(17),
      I1 => \pixel_x_reg[9]\(1),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[17]_i_1_n_0\
    );
\pixel_counters[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(18),
      I1 => \pixel_x_reg[9]\(2),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[18]_i_1_n_0\
    );
\pixel_counters[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(19),
      I1 => \pixel_x_reg[9]\(3),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[19]_i_1_n_0\
    );
\pixel_counters[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(1),
      I1 => \pixel_y_reg[9]\(1),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[1]_i_1_n_0\
    );
\pixel_counters[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(20),
      I1 => \pixel_x_reg[9]\(4),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[20]_i_1_n_0\
    );
\pixel_counters[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(21),
      I1 => \pixel_x_reg[9]\(5),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[21]_i_1_n_0\
    );
\pixel_counters[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(22),
      I1 => \pixel_x_reg[9]\(6),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[22]_i_1_n_0\
    );
\pixel_counters[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(23),
      I1 => \pixel_x_reg[9]\(7),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[23]_i_1_n_0\
    );
\pixel_counters[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(24),
      I1 => \pixel_x_reg[9]\(8),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[24]_i_1_n_0\
    );
\pixel_counters[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(25),
      I1 => \pixel_x_reg[9]\(9),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[25]_i_1_n_0\
    );
\pixel_counters[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(2),
      I1 => \pixel_y_reg[9]\(2),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[2]_i_1_n_0\
    );
\pixel_counters[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(3),
      I1 => \pixel_y_reg[9]\(3),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[3]_i_1_n_0\
    );
\pixel_counters[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(4),
      I1 => \pixel_y_reg[9]\(4),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[4]_i_1_n_0\
    );
\pixel_counters[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(5),
      I1 => \pixel_y_reg[9]\(5),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[5]_i_1_n_0\
    );
\pixel_counters[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(6),
      I1 => \pixel_y_reg[9]\(6),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[6]_i_1_n_0\
    );
\pixel_counters[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(7),
      I1 => \pixel_y_reg[9]\(7),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[7]_i_1_n_0\
    );
\pixel_counters[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(8),
      I1 => \pixel_y_reg[9]\(8),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[8]_i_1_n_0\
    );
\pixel_counters[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \wr_slv_reg3_reg[31]\(9),
      I1 => \pixel_y_reg[9]\(9),
      I2 => \int_slv_reg_wren_reg[4]\(3),
      O => \pixel_counters[9]_i_1_n_0\
    );
\pixel_counters_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[0]_i_1_n_0\,
      Q => pixel_counters(0)
    );
\pixel_counters_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(3),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg3_reg[31]\(10),
      Q => pixel_counters(10)
    );
\pixel_counters_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(3),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg3_reg[31]\(11),
      Q => pixel_counters(11)
    );
\pixel_counters_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(3),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg3_reg[31]\(12),
      Q => pixel_counters(12)
    );
\pixel_counters_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(3),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg3_reg[31]\(13),
      Q => pixel_counters(13)
    );
\pixel_counters_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(3),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg3_reg[31]\(14),
      Q => pixel_counters(14)
    );
\pixel_counters_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(3),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg3_reg[31]\(15),
      Q => pixel_counters(15)
    );
\pixel_counters_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[16]_i_1_n_0\,
      Q => pixel_counters(16)
    );
\pixel_counters_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[17]_i_1_n_0\,
      Q => pixel_counters(17)
    );
\pixel_counters_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[18]_i_1_n_0\,
      Q => pixel_counters(18)
    );
\pixel_counters_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[19]_i_1_n_0\,
      Q => pixel_counters(19)
    );
\pixel_counters_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[1]_i_1_n_0\,
      Q => pixel_counters(1)
    );
\pixel_counters_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[20]_i_1_n_0\,
      Q => pixel_counters(20)
    );
\pixel_counters_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[21]_i_1_n_0\,
      Q => pixel_counters(21)
    );
\pixel_counters_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[22]_i_1_n_0\,
      Q => pixel_counters(22)
    );
\pixel_counters_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[23]_i_1_n_0\,
      Q => pixel_counters(23)
    );
\pixel_counters_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[24]_i_1_n_0\,
      Q => pixel_counters(24)
    );
\pixel_counters_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[25]_i_1_n_0\,
      Q => pixel_counters(25)
    );
\pixel_counters_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(3),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg3_reg[31]\(26),
      Q => pixel_counters(26)
    );
\pixel_counters_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(3),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg3_reg[31]\(27),
      Q => pixel_counters(27)
    );
\pixel_counters_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(3),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg3_reg[31]\(28),
      Q => pixel_counters(28)
    );
\pixel_counters_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(3),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg3_reg[31]\(29),
      Q => pixel_counters(29)
    );
\pixel_counters_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[2]_i_1_n_0\,
      Q => pixel_counters(2)
    );
\pixel_counters_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(3),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg3_reg[31]\(30),
      Q => pixel_counters(30)
    );
\pixel_counters_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(3),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg3_reg[31]\(31),
      Q => pixel_counters(31)
    );
\pixel_counters_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[3]_i_1_n_0\,
      Q => pixel_counters(3)
    );
\pixel_counters_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[4]_i_1_n_0\,
      Q => pixel_counters(4)
    );
\pixel_counters_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[5]_i_1_n_0\,
      Q => pixel_counters(5)
    );
\pixel_counters_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[6]_i_1_n_0\,
      Q => pixel_counters(6)
    );
\pixel_counters_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[7]_i_1_n_0\,
      Q => pixel_counters(7)
    );
\pixel_counters_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[8]_i_1_n_0\,
      Q => pixel_counters(8)
    );
\pixel_counters_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \pixel_counters[9]_i_1_n_0\,
      Q => pixel_counters(9)
    );
row_pixel_counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => row_pixel_counter1_carry_n_0,
      CO(2) => row_pixel_counter1_carry_n_1,
      CO(1) => row_pixel_counter1_carry_n_2,
      CO(0) => row_pixel_counter1_carry_n_3,
      CYINIT => '0',
      DI(3) => row_pixel_counter1_carry_i_1_n_0,
      DI(2) => row_pixel_counter1_carry_i_2_n_0,
      DI(1) => row_pixel_counter1_carry_i_3_n_0,
      DI(0) => row_pixel_counter1_carry_i_4_n_0,
      O(3 downto 0) => NLW_row_pixel_counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => row_pixel_counter1_carry_i_5_n_0,
      S(2) => row_pixel_counter1_carry_i_6_n_0,
      S(1) => row_pixel_counter1_carry_i_7_n_0,
      S(0) => row_pixel_counter1_carry_i_8_n_0
    );
\row_pixel_counter1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => row_pixel_counter1_carry_n_0,
      CO(3) => \row_pixel_counter1_carry__0_n_0\,
      CO(2) => \row_pixel_counter1_carry__0_n_1\,
      CO(1) => \row_pixel_counter1_carry__0_n_2\,
      CO(0) => \row_pixel_counter1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \row_pixel_counter1_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_row_pixel_counter1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \row_pixel_counter1_carry__0_i_2_n_0\,
      S(2) => \row_pixel_counter1_carry__0_i_3_n_0\,
      S(1) => \row_pixel_counter1_carry__0_i_4_n_0\,
      S(0) => \row_pixel_counter1_carry__0_i_5_n_0\
    );
\row_pixel_counter1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_pixel_counter_reg(9),
      O => \row_pixel_counter1_carry__0_i_1_n_0\
    );
\row_pixel_counter1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_pixel_counter_reg(14),
      I1 => row_pixel_counter_reg(15),
      O => \row_pixel_counter1_carry__0_i_2_n_0\
    );
\row_pixel_counter1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_pixel_counter_reg(12),
      I1 => row_pixel_counter_reg(13),
      O => \row_pixel_counter1_carry__0_i_3_n_0\
    );
\row_pixel_counter1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_pixel_counter_reg(10),
      I1 => row_pixel_counter_reg(11),
      O => \row_pixel_counter1_carry__0_i_4_n_0\
    );
\row_pixel_counter1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_pixel_counter_reg(9),
      I1 => row_pixel_counter_reg(8),
      O => \row_pixel_counter1_carry__0_i_5_n_0\
    );
\row_pixel_counter1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_pixel_counter1_carry__0_n_0\,
      CO(3) => \row_pixel_counter1_carry__1_n_0\,
      CO(2) => \row_pixel_counter1_carry__1_n_1\,
      CO(1) => \row_pixel_counter1_carry__1_n_2\,
      CO(0) => \row_pixel_counter1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_row_pixel_counter1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \row_pixel_counter1_carry__1_i_1_n_0\,
      S(2) => \row_pixel_counter1_carry__1_i_2_n_0\,
      S(1) => \row_pixel_counter1_carry__1_i_3_n_0\,
      S(0) => \row_pixel_counter1_carry__1_i_4_n_0\
    );
\row_pixel_counter1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_pixel_counter_reg(22),
      I1 => row_pixel_counter_reg(23),
      O => \row_pixel_counter1_carry__1_i_1_n_0\
    );
\row_pixel_counter1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_pixel_counter_reg(20),
      I1 => row_pixel_counter_reg(21),
      O => \row_pixel_counter1_carry__1_i_2_n_0\
    );
\row_pixel_counter1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_pixel_counter_reg(18),
      I1 => row_pixel_counter_reg(19),
      O => \row_pixel_counter1_carry__1_i_3_n_0\
    );
\row_pixel_counter1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_pixel_counter_reg(16),
      I1 => row_pixel_counter_reg(17),
      O => \row_pixel_counter1_carry__1_i_4_n_0\
    );
\row_pixel_counter1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_pixel_counter1_carry__1_n_0\,
      CO(3) => row_pixel_counter1,
      CO(2) => \row_pixel_counter1_carry__2_n_1\,
      CO(1) => \row_pixel_counter1_carry__2_n_2\,
      CO(0) => \row_pixel_counter1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => row_pixel_counter_reg(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_row_pixel_counter1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \row_pixel_counter1_carry__2_i_1_n_0\,
      S(2) => \row_pixel_counter1_carry__2_i_2_n_0\,
      S(1) => \row_pixel_counter1_carry__2_i_3_n_0\,
      S(0) => \row_pixel_counter1_carry__2_i_4_n_0\
    );
\row_pixel_counter1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_pixel_counter_reg(30),
      I1 => row_pixel_counter_reg(31),
      O => \row_pixel_counter1_carry__2_i_1_n_0\
    );
\row_pixel_counter1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_pixel_counter_reg(28),
      I1 => row_pixel_counter_reg(29),
      O => \row_pixel_counter1_carry__2_i_2_n_0\
    );
\row_pixel_counter1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_pixel_counter_reg(26),
      I1 => row_pixel_counter_reg(27),
      O => \row_pixel_counter1_carry__2_i_3_n_0\
    );
\row_pixel_counter1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_pixel_counter_reg(24),
      I1 => row_pixel_counter_reg(25),
      O => \row_pixel_counter1_carry__2_i_4_n_0\
    );
row_pixel_counter1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_pixel_counter_reg(6),
      I1 => row_pixel_counter_reg(7),
      O => row_pixel_counter1_carry_i_1_n_0
    );
row_pixel_counter1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => row_pixel_counter_reg(4),
      I1 => row_pixel_counter_reg(5),
      O => row_pixel_counter1_carry_i_2_n_0
    );
row_pixel_counter1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => row_pixel_counter_reg(2),
      I1 => row_pixel_counter_reg(3),
      O => row_pixel_counter1_carry_i_3_n_0
    );
row_pixel_counter1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => row_pixel_counter_reg(0),
      I1 => row_pixel_counter_reg(1),
      O => row_pixel_counter1_carry_i_4_n_0
    );
row_pixel_counter1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_pixel_counter_reg(6),
      I1 => row_pixel_counter_reg(7),
      O => row_pixel_counter1_carry_i_5_n_0
    );
row_pixel_counter1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter_reg(4),
      I1 => row_pixel_counter_reg(5),
      O => row_pixel_counter1_carry_i_6_n_0
    );
row_pixel_counter1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter_reg(2),
      I1 => row_pixel_counter_reg(3),
      O => row_pixel_counter1_carry_i_7_n_0
    );
row_pixel_counter1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter_reg(0),
      I1 => row_pixel_counter_reg(1),
      O => row_pixel_counter1_carry_i_8_n_0
    );
\row_pixel_counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(3),
      O => \row_pixel_counter[0]_i_2_n_0\
    );
\row_pixel_counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(2),
      O => \row_pixel_counter[0]_i_3_n_0\
    );
\row_pixel_counter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(1),
      O => \row_pixel_counter[0]_i_4_n_0\
    );
\row_pixel_counter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => row_pixel_counter_reg(0),
      I1 => row_pixel_counter1,
      O => \row_pixel_counter[0]_i_5_n_0\
    );
\row_pixel_counter[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(15),
      O => \row_pixel_counter[12]_i_2_n_0\
    );
\row_pixel_counter[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(14),
      O => \row_pixel_counter[12]_i_3_n_0\
    );
\row_pixel_counter[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(13),
      O => \row_pixel_counter[12]_i_4_n_0\
    );
\row_pixel_counter[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(12),
      O => \row_pixel_counter[12]_i_5_n_0\
    );
\row_pixel_counter[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(19),
      O => \row_pixel_counter[16]_i_2_n_0\
    );
\row_pixel_counter[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(18),
      O => \row_pixel_counter[16]_i_3_n_0\
    );
\row_pixel_counter[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(17),
      O => \row_pixel_counter[16]_i_4_n_0\
    );
\row_pixel_counter[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(16),
      O => \row_pixel_counter[16]_i_5_n_0\
    );
\row_pixel_counter[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(23),
      O => \row_pixel_counter[20]_i_2_n_0\
    );
\row_pixel_counter[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(22),
      O => \row_pixel_counter[20]_i_3_n_0\
    );
\row_pixel_counter[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(21),
      O => \row_pixel_counter[20]_i_4_n_0\
    );
\row_pixel_counter[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(20),
      O => \row_pixel_counter[20]_i_5_n_0\
    );
\row_pixel_counter[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(27),
      O => \row_pixel_counter[24]_i_2_n_0\
    );
\row_pixel_counter[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(26),
      O => \row_pixel_counter[24]_i_3_n_0\
    );
\row_pixel_counter[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(25),
      O => \row_pixel_counter[24]_i_4_n_0\
    );
\row_pixel_counter[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(24),
      O => \row_pixel_counter[24]_i_5_n_0\
    );
\row_pixel_counter[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(31),
      O => \row_pixel_counter[28]_i_2_n_0\
    );
\row_pixel_counter[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(30),
      O => \row_pixel_counter[28]_i_3_n_0\
    );
\row_pixel_counter[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(29),
      O => \row_pixel_counter[28]_i_4_n_0\
    );
\row_pixel_counter[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(28),
      O => \row_pixel_counter[28]_i_5_n_0\
    );
\row_pixel_counter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(7),
      O => \row_pixel_counter[4]_i_2_n_0\
    );
\row_pixel_counter[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(6),
      O => \row_pixel_counter[4]_i_3_n_0\
    );
\row_pixel_counter[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(5),
      O => \row_pixel_counter[4]_i_4_n_0\
    );
\row_pixel_counter[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(4),
      O => \row_pixel_counter[4]_i_5_n_0\
    );
\row_pixel_counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(11),
      O => \row_pixel_counter[8]_i_2_n_0\
    );
\row_pixel_counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(10),
      O => \row_pixel_counter[8]_i_3_n_0\
    );
\row_pixel_counter[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(9),
      O => \row_pixel_counter[8]_i_4_n_0\
    );
\row_pixel_counter[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => row_pixel_counter1,
      I1 => row_pixel_counter_reg(8),
      O => \row_pixel_counter[8]_i_5_n_0\
    );
\row_pixel_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[0]_i_1_n_7\,
      Q => row_pixel_counter_reg(0)
    );
\row_pixel_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \row_pixel_counter_reg[0]_i_1_n_0\,
      CO(2) => \row_pixel_counter_reg[0]_i_1_n_1\,
      CO(1) => \row_pixel_counter_reg[0]_i_1_n_2\,
      CO(0) => \row_pixel_counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => row_pixel_counter1,
      O(3) => \row_pixel_counter_reg[0]_i_1_n_4\,
      O(2) => \row_pixel_counter_reg[0]_i_1_n_5\,
      O(1) => \row_pixel_counter_reg[0]_i_1_n_6\,
      O(0) => \row_pixel_counter_reg[0]_i_1_n_7\,
      S(3) => \row_pixel_counter[0]_i_2_n_0\,
      S(2) => \row_pixel_counter[0]_i_3_n_0\,
      S(1) => \row_pixel_counter[0]_i_4_n_0\,
      S(0) => \row_pixel_counter[0]_i_5_n_0\
    );
\row_pixel_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[8]_i_1_n_5\,
      Q => row_pixel_counter_reg(10)
    );
\row_pixel_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[8]_i_1_n_4\,
      Q => row_pixel_counter_reg(11)
    );
\row_pixel_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[12]_i_1_n_7\,
      Q => row_pixel_counter_reg(12)
    );
\row_pixel_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_pixel_counter_reg[8]_i_1_n_0\,
      CO(3) => \row_pixel_counter_reg[12]_i_1_n_0\,
      CO(2) => \row_pixel_counter_reg[12]_i_1_n_1\,
      CO(1) => \row_pixel_counter_reg[12]_i_1_n_2\,
      CO(0) => \row_pixel_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \row_pixel_counter_reg[12]_i_1_n_4\,
      O(2) => \row_pixel_counter_reg[12]_i_1_n_5\,
      O(1) => \row_pixel_counter_reg[12]_i_1_n_6\,
      O(0) => \row_pixel_counter_reg[12]_i_1_n_7\,
      S(3) => \row_pixel_counter[12]_i_2_n_0\,
      S(2) => \row_pixel_counter[12]_i_3_n_0\,
      S(1) => \row_pixel_counter[12]_i_4_n_0\,
      S(0) => \row_pixel_counter[12]_i_5_n_0\
    );
\row_pixel_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[12]_i_1_n_6\,
      Q => row_pixel_counter_reg(13)
    );
\row_pixel_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[12]_i_1_n_5\,
      Q => row_pixel_counter_reg(14)
    );
\row_pixel_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[12]_i_1_n_4\,
      Q => row_pixel_counter_reg(15)
    );
\row_pixel_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[16]_i_1_n_7\,
      Q => row_pixel_counter_reg(16)
    );
\row_pixel_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_pixel_counter_reg[12]_i_1_n_0\,
      CO(3) => \row_pixel_counter_reg[16]_i_1_n_0\,
      CO(2) => \row_pixel_counter_reg[16]_i_1_n_1\,
      CO(1) => \row_pixel_counter_reg[16]_i_1_n_2\,
      CO(0) => \row_pixel_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \row_pixel_counter_reg[16]_i_1_n_4\,
      O(2) => \row_pixel_counter_reg[16]_i_1_n_5\,
      O(1) => \row_pixel_counter_reg[16]_i_1_n_6\,
      O(0) => \row_pixel_counter_reg[16]_i_1_n_7\,
      S(3) => \row_pixel_counter[16]_i_2_n_0\,
      S(2) => \row_pixel_counter[16]_i_3_n_0\,
      S(1) => \row_pixel_counter[16]_i_4_n_0\,
      S(0) => \row_pixel_counter[16]_i_5_n_0\
    );
\row_pixel_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[16]_i_1_n_6\,
      Q => row_pixel_counter_reg(17)
    );
\row_pixel_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[16]_i_1_n_5\,
      Q => row_pixel_counter_reg(18)
    );
\row_pixel_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[16]_i_1_n_4\,
      Q => row_pixel_counter_reg(19)
    );
\row_pixel_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[0]_i_1_n_6\,
      Q => row_pixel_counter_reg(1)
    );
\row_pixel_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[20]_i_1_n_7\,
      Q => row_pixel_counter_reg(20)
    );
\row_pixel_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_pixel_counter_reg[16]_i_1_n_0\,
      CO(3) => \row_pixel_counter_reg[20]_i_1_n_0\,
      CO(2) => \row_pixel_counter_reg[20]_i_1_n_1\,
      CO(1) => \row_pixel_counter_reg[20]_i_1_n_2\,
      CO(0) => \row_pixel_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \row_pixel_counter_reg[20]_i_1_n_4\,
      O(2) => \row_pixel_counter_reg[20]_i_1_n_5\,
      O(1) => \row_pixel_counter_reg[20]_i_1_n_6\,
      O(0) => \row_pixel_counter_reg[20]_i_1_n_7\,
      S(3) => \row_pixel_counter[20]_i_2_n_0\,
      S(2) => \row_pixel_counter[20]_i_3_n_0\,
      S(1) => \row_pixel_counter[20]_i_4_n_0\,
      S(0) => \row_pixel_counter[20]_i_5_n_0\
    );
\row_pixel_counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[20]_i_1_n_6\,
      Q => row_pixel_counter_reg(21)
    );
\row_pixel_counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[20]_i_1_n_5\,
      Q => row_pixel_counter_reg(22)
    );
\row_pixel_counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[20]_i_1_n_4\,
      Q => row_pixel_counter_reg(23)
    );
\row_pixel_counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[24]_i_1_n_7\,
      Q => row_pixel_counter_reg(24)
    );
\row_pixel_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_pixel_counter_reg[20]_i_1_n_0\,
      CO(3) => \row_pixel_counter_reg[24]_i_1_n_0\,
      CO(2) => \row_pixel_counter_reg[24]_i_1_n_1\,
      CO(1) => \row_pixel_counter_reg[24]_i_1_n_2\,
      CO(0) => \row_pixel_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \row_pixel_counter_reg[24]_i_1_n_4\,
      O(2) => \row_pixel_counter_reg[24]_i_1_n_5\,
      O(1) => \row_pixel_counter_reg[24]_i_1_n_6\,
      O(0) => \row_pixel_counter_reg[24]_i_1_n_7\,
      S(3) => \row_pixel_counter[24]_i_2_n_0\,
      S(2) => \row_pixel_counter[24]_i_3_n_0\,
      S(1) => \row_pixel_counter[24]_i_4_n_0\,
      S(0) => \row_pixel_counter[24]_i_5_n_0\
    );
\row_pixel_counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[24]_i_1_n_6\,
      Q => row_pixel_counter_reg(25)
    );
\row_pixel_counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[24]_i_1_n_5\,
      Q => row_pixel_counter_reg(26)
    );
\row_pixel_counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[24]_i_1_n_4\,
      Q => row_pixel_counter_reg(27)
    );
\row_pixel_counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[28]_i_1_n_7\,
      Q => row_pixel_counter_reg(28)
    );
\row_pixel_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_pixel_counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_row_pixel_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \row_pixel_counter_reg[28]_i_1_n_1\,
      CO(1) => \row_pixel_counter_reg[28]_i_1_n_2\,
      CO(0) => \row_pixel_counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \row_pixel_counter_reg[28]_i_1_n_4\,
      O(2) => \row_pixel_counter_reg[28]_i_1_n_5\,
      O(1) => \row_pixel_counter_reg[28]_i_1_n_6\,
      O(0) => \row_pixel_counter_reg[28]_i_1_n_7\,
      S(3) => \row_pixel_counter[28]_i_2_n_0\,
      S(2) => \row_pixel_counter[28]_i_3_n_0\,
      S(1) => \row_pixel_counter[28]_i_4_n_0\,
      S(0) => \row_pixel_counter[28]_i_5_n_0\
    );
\row_pixel_counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[28]_i_1_n_6\,
      Q => row_pixel_counter_reg(29)
    );
\row_pixel_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[0]_i_1_n_5\,
      Q => row_pixel_counter_reg(2)
    );
\row_pixel_counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[28]_i_1_n_5\,
      Q => row_pixel_counter_reg(30)
    );
\row_pixel_counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[28]_i_1_n_4\,
      Q => row_pixel_counter_reg(31)
    );
\row_pixel_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[0]_i_1_n_4\,
      Q => row_pixel_counter_reg(3)
    );
\row_pixel_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[4]_i_1_n_7\,
      Q => row_pixel_counter_reg(4)
    );
\row_pixel_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_pixel_counter_reg[0]_i_1_n_0\,
      CO(3) => \row_pixel_counter_reg[4]_i_1_n_0\,
      CO(2) => \row_pixel_counter_reg[4]_i_1_n_1\,
      CO(1) => \row_pixel_counter_reg[4]_i_1_n_2\,
      CO(0) => \row_pixel_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \row_pixel_counter_reg[4]_i_1_n_4\,
      O(2) => \row_pixel_counter_reg[4]_i_1_n_5\,
      O(1) => \row_pixel_counter_reg[4]_i_1_n_6\,
      O(0) => \row_pixel_counter_reg[4]_i_1_n_7\,
      S(3) => \row_pixel_counter[4]_i_2_n_0\,
      S(2) => \row_pixel_counter[4]_i_3_n_0\,
      S(1) => \row_pixel_counter[4]_i_4_n_0\,
      S(0) => \row_pixel_counter[4]_i_5_n_0\
    );
\row_pixel_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[4]_i_1_n_6\,
      Q => row_pixel_counter_reg(5)
    );
\row_pixel_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[4]_i_1_n_5\,
      Q => row_pixel_counter_reg(6)
    );
\row_pixel_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[4]_i_1_n_4\,
      Q => row_pixel_counter_reg(7)
    );
\row_pixel_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[8]_i_1_n_7\,
      Q => row_pixel_counter_reg(8)
    );
\row_pixel_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_pixel_counter_reg[4]_i_1_n_0\,
      CO(3) => \row_pixel_counter_reg[8]_i_1_n_0\,
      CO(2) => \row_pixel_counter_reg[8]_i_1_n_1\,
      CO(1) => \row_pixel_counter_reg[8]_i_1_n_2\,
      CO(0) => \row_pixel_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \row_pixel_counter_reg[8]_i_1_n_4\,
      O(2) => \row_pixel_counter_reg[8]_i_1_n_5\,
      O(1) => \row_pixel_counter_reg[8]_i_1_n_6\,
      O(0) => \row_pixel_counter_reg[8]_i_1_n_7\,
      S(3) => \row_pixel_counter[8]_i_2_n_0\,
      S(2) => \row_pixel_counter[8]_i_3_n_0\,
      S(1) => \row_pixel_counter[8]_i_4_n_0\,
      S(0) => \row_pixel_counter[8]_i_5_n_0\
    );
\row_pixel_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => int_read_next,
      CLR => \^init_axi_txn_reg_0\,
      D => \row_pixel_counter_reg[8]_i_1_n_6\,
      Q => row_pixel_counter_reg(9)
    );
start_display_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF54"
    )
        port map (
      I0 => \int_slv_reg_wren_reg[4]\(0),
      I1 => \^q\(0),
      I2 => i_start_display_irq,
      I3 => \^start_display_reg_0\,
      O => start_display_i_1_n_0
    );
start_display_reg: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => start_display_i_1_n_0,
      Q => \^start_display_reg_0\
    );
start_fill_flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \INIT_AXI_TXN3_carry__1_n_1\,
      I1 => \^start_display_reg_0\,
      I2 => start_fill_flag,
      O => start_fill_flag_i_1_n_0
    );
start_fill_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => i_axi_master_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => start_fill_flag_i_1_n_0,
      Q => start_fill_flag
    );
\start_reg[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reset_n,
      O => \start_reg[31]_i_3_n_0\
    );
\start_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(0),
      Q => \^q\(0)
    );
\start_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \start_reg[31]_i_3_n_0\,
      D => D(10),
      Q => \start_reg_reg_n_0_[10]\
    );
\start_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \start_reg[31]_i_3_n_0\,
      D => D(11),
      Q => \start_reg_reg_n_0_[11]\
    );
\start_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(12),
      Q => \start_reg_reg_n_0_[12]\
    );
\start_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \start_reg[31]_i_3_n_0\,
      D => D(13),
      Q => \start_reg_reg_n_0_[13]\
    );
\start_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \start_reg[31]_i_3_n_0\,
      D => D(14),
      Q => \start_reg_reg_n_0_[14]\
    );
\start_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \start_reg[31]_i_3_n_0\,
      D => D(15),
      Q => \start_reg_reg_n_0_[15]\
    );
\start_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(16),
      Q => \start_reg_reg_n_0_[16]\
    );
\start_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(17),
      Q => \start_reg_reg_n_0_[17]\
    );
\start_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(18),
      Q => \start_reg_reg_n_0_[18]\
    );
\start_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(19),
      Q => \start_reg_reg_n_0_[19]\
    );
\start_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(1),
      Q => \start_reg_reg_n_0_[1]\
    );
\start_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(20),
      Q => \start_reg_reg_n_0_[20]\
    );
\start_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(21),
      Q => \start_reg_reg_n_0_[21]\
    );
\start_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(22),
      Q => \start_reg_reg_n_0_[22]\
    );
\start_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(23),
      Q => \start_reg_reg_n_0_[23]\
    );
\start_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(24),
      Q => \start_reg_reg_n_0_[24]\
    );
\start_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(25),
      Q => \start_reg_reg_n_0_[25]\
    );
\start_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \start_reg[31]_i_3_n_0\,
      D => D(26),
      Q => \start_reg_reg_n_0_[26]\
    );
\start_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \start_reg[31]_i_3_n_0\,
      D => D(27),
      Q => \start_reg_reg_n_0_[27]\
    );
\start_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \start_reg[31]_i_3_n_0\,
      D => D(28),
      Q => \start_reg_reg_n_0_[28]\
    );
\start_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \start_reg[31]_i_3_n_0\,
      D => D(29),
      Q => \start_reg_reg_n_0_[29]\
    );
\start_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(2),
      Q => \start_reg_reg_n_0_[2]\
    );
\start_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \start_reg[31]_i_3_n_0\,
      D => D(30),
      Q => \start_reg_reg_n_0_[30]\
    );
\start_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \start_reg[31]_i_3_n_0\,
      D => D(31),
      Q => \start_reg_reg_n_0_[31]\
    );
\start_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(3),
      Q => \start_reg_reg_n_0_[3]\
    );
\start_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(4),
      Q => \start_reg_reg_n_0_[4]\
    );
\start_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(5),
      Q => \start_reg_reg_n_0_[5]\
    );
\start_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(6),
      Q => \start_reg_reg_n_0_[6]\
    );
\start_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(7),
      Q => \start_reg_reg_n_0_[7]\
    );
\start_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(8),
      Q => \start_reg_reg_n_0_[8]\
    );
\start_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => E(0),
      CLR => \^init_axi_txn_reg_0\,
      D => D(9),
      Q => \start_reg_reg_n_0_[9]\
    );
\status_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(0),
      Q => status_reg(0)
    );
\status_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg1_reg[31]\(10),
      Q => status_reg(10)
    );
\status_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg1_reg[31]\(11),
      Q => status_reg(11)
    );
\status_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(12),
      Q => status_reg(12)
    );
\status_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg1_reg[31]\(13),
      Q => status_reg(13)
    );
\status_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg1_reg[31]\(14),
      Q => status_reg(14)
    );
\status_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg1_reg[31]\(15),
      Q => status_reg(15)
    );
\status_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(16),
      Q => status_reg(16)
    );
\status_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(17),
      Q => status_reg(17)
    );
\status_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(18),
      Q => status_reg(18)
    );
\status_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(19),
      Q => status_reg(19)
    );
\status_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(1),
      Q => status_reg(1)
    );
\status_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(20),
      Q => status_reg(20)
    );
\status_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(21),
      Q => status_reg(21)
    );
\status_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(22),
      Q => status_reg(22)
    );
\status_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(23),
      Q => status_reg(23)
    );
\status_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(24),
      Q => status_reg(24)
    );
\status_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(25),
      Q => status_reg(25)
    );
\status_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg1_reg[31]\(26),
      Q => status_reg(26)
    );
\status_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg1_reg[31]\(27),
      Q => status_reg(27)
    );
\status_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg1_reg[31]\(28),
      Q => status_reg(28)
    );
\status_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg1_reg[31]\(29),
      Q => status_reg(29)
    );
\status_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(2),
      Q => status_reg(2)
    );
\status_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg1_reg[31]\(30),
      Q => status_reg(30)
    );
\status_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \start_reg[31]_i_3_n_0\,
      D => \wr_slv_reg1_reg[31]\(31),
      Q => status_reg(31)
    );
\status_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(3),
      Q => status_reg(3)
    );
\status_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(4),
      Q => status_reg(4)
    );
\status_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(5),
      Q => status_reg(5)
    );
\status_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(6),
      Q => status_reg(6)
    );
\status_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(7),
      Q => status_reg(7)
    );
\status_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => '1',
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(8),
      Q => status_reg(8)
    );
\status_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_axi_slave_clk,
      CE => \int_slv_reg_wren_reg[4]\(1),
      CLR => \^init_axi_txn_reg_0\,
      D => \wr_slv_reg1_reg[31]\(9),
      Q => status_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_vga_sync is
  port (
    read_en_out : out STD_LOGIC;
    o_hsync : out STD_LOGIC;
    o_vsync : out STD_LOGIC;
    BUS1262 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    o_vga_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    i_VGA_CLK : in STD_LOGIC;
    i_reset_n : in STD_LOGIC;
    prog_empty : in STD_LOGIC;
    NET1254 : in STD_LOGIC;
    valid : in STD_LOGIC;
    vga_data_out : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end final_accelerator_VGA_IF_0_0_vga_sync;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_vga_sync is
  signal \^bus1262\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal current_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[9]_i_1_n_0\ : STD_LOGIC;
  signal h_sync_i_1_n_0 : STD_LOGIC;
  signal h_sync_i_3_n_0 : STD_LOGIC;
  signal \v_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_5_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_6_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_7_n_0\ : STD_LOGIC;
  signal v_sync_i_1_n_0 : STD_LOGIC;
  signal v_sync_i_2_n_0 : STD_LOGIC;
  signal video_on_i_1_n_0 : STD_LOGIC;
  signal video_on_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_state[1]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \h_count[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \h_count[1]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \h_count[2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \h_count[3]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \h_count[5]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \h_count[6]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \h_count[7]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of h_sync_i_3 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \o_vga_data[0]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \o_vga_data[10]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \o_vga_data[1]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \o_vga_data[2]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \o_vga_data[3]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \o_vga_data[4]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \o_vga_data[5]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \o_vga_data[6]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \o_vga_data[7]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \o_vga_data[8]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \o_vga_data[9]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \v_count[0]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \v_count[0]_i_2\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \v_count[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \v_count[3]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \v_count[5]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \v_count[6]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \v_count[7]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \v_count[9]_i_2\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \v_count[9]_i_4\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \v_count[9]_i_7\ : label is "soft_lutpair70";
begin
  BUS1262(9 downto 0) <= \^bus1262\(9 downto 0);
  Q(9 downto 0) <= \^q\(9 downto 0);
\current_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => current_state(1),
      I1 => prog_empty,
      I2 => NET1254,
      O => \current_state[1]_i_1_n_0\
    );
\current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \current_state[1]_i_1_n_0\,
      Q => current_state(1)
    );
\h_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(1),
      I1 => \^bus1262\(0),
      O => \h_count[0]_i_1_n_0\
    );
\h_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^bus1262\(1),
      I1 => \^bus1262\(0),
      I2 => \v_count[9]_i_1_n_0\,
      O => \h_count[1]_i_1_n_0\
    );
\h_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \^bus1262\(2),
      I1 => \^bus1262\(0),
      I2 => \^bus1262\(1),
      I3 => \v_count[9]_i_1_n_0\,
      O => \h_count[2]_i_1_n_0\
    );
\h_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^bus1262\(3),
      I1 => \^bus1262\(1),
      I2 => \^bus1262\(0),
      I3 => \^bus1262\(2),
      I4 => \v_count[9]_i_1_n_0\,
      O => \h_count[3]_i_1_n_0\
    );
\h_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \^bus1262\(4),
      I1 => \^bus1262\(2),
      I2 => \^bus1262\(0),
      I3 => \^bus1262\(1),
      I4 => \^bus1262\(3),
      I5 => \v_count[9]_i_1_n_0\,
      O => \h_count[4]_i_1_n_0\
    );
\h_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \^bus1262\(5),
      I1 => \h_count[8]_i_2_n_0\,
      I2 => \v_count[9]_i_1_n_0\,
      O => \h_count[5]_i_1_n_0\
    );
\h_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A6"
    )
        port map (
      I0 => \^bus1262\(6),
      I1 => \^bus1262\(5),
      I2 => \h_count[8]_i_2_n_0\,
      I3 => \v_count[9]_i_1_n_0\,
      O => \h_count[6]_i_1_n_0\
    );
\h_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA6A"
    )
        port map (
      I0 => \^bus1262\(7),
      I1 => \^bus1262\(6),
      I2 => \^bus1262\(5),
      I3 => \h_count[8]_i_2_n_0\,
      I4 => \v_count[9]_i_1_n_0\,
      O => \h_count[7]_i_1_n_0\
    );
\h_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA6AAA"
    )
        port map (
      I0 => \^bus1262\(8),
      I1 => \^bus1262\(5),
      I2 => \^bus1262\(6),
      I3 => \^bus1262\(7),
      I4 => \h_count[8]_i_2_n_0\,
      I5 => \v_count[9]_i_1_n_0\,
      O => \h_count[8]_i_1_n_0\
    );
\h_count[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^bus1262\(3),
      I1 => \^bus1262\(1),
      I2 => \^bus1262\(0),
      I3 => \^bus1262\(2),
      I4 => \^bus1262\(4),
      O => \h_count[8]_i_2_n_0\
    );
\h_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A028A0A080"
    )
        port map (
      I0 => current_state(1),
      I1 => \^bus1262\(7),
      I2 => \^bus1262\(9),
      I3 => \^bus1262\(5),
      I4 => \^bus1262\(6),
      I5 => \v_count[9]_i_3_n_0\,
      O => \h_count[9]_i_1_n_0\
    );
\h_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \h_count[0]_i_1_n_0\,
      Q => \^bus1262\(0)
    );
\h_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \h_count[1]_i_1_n_0\,
      Q => \^bus1262\(1)
    );
\h_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \h_count[2]_i_1_n_0\,
      Q => \^bus1262\(2)
    );
\h_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \h_count[3]_i_1_n_0\,
      Q => \^bus1262\(3)
    );
\h_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \h_count[4]_i_1_n_0\,
      Q => \^bus1262\(4)
    );
\h_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \h_count[5]_i_1_n_0\,
      Q => \^bus1262\(5)
    );
\h_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \h_count[6]_i_1_n_0\,
      Q => \^bus1262\(6)
    );
\h_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \h_count[7]_i_1_n_0\,
      Q => \^bus1262\(7)
    );
\h_count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \h_count[8]_i_1_n_0\,
      Q => \^bus1262\(8)
    );
\h_count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => \h_count[9]_i_1_n_0\,
      Q => \^bus1262\(9)
    );
h_sync_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AA8"
    )
        port map (
      I0 => h_sync_i_3_n_0,
      I1 => \^bus1262\(4),
      I2 => \^bus1262\(5),
      I3 => \^bus1262\(6),
      O => h_sync_i_1_n_0
    );
h_sync_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^bus1262\(8),
      I1 => \^bus1262\(7),
      I2 => current_state(1),
      I3 => \^bus1262\(9),
      O => h_sync_i_3_n_0
    );
h_sync_reg: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => h_sync_i_1_n_0,
      Q => o_hsync
    );
\o_vga_data[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(1),
      I1 => valid,
      I2 => vga_data_out(0),
      O => o_vga_data(0)
    );
\o_vga_data[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(1),
      I1 => valid,
      I2 => vga_data_out(10),
      O => o_vga_data(10)
    );
\o_vga_data[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(1),
      I1 => valid,
      I2 => vga_data_out(11),
      O => o_vga_data(11)
    );
\o_vga_data[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(1),
      I1 => valid,
      I2 => vga_data_out(1),
      O => o_vga_data(1)
    );
\o_vga_data[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(1),
      I1 => valid,
      I2 => vga_data_out(2),
      O => o_vga_data(2)
    );
\o_vga_data[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(1),
      I1 => valid,
      I2 => vga_data_out(3),
      O => o_vga_data(3)
    );
\o_vga_data[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(1),
      I1 => valid,
      I2 => vga_data_out(4),
      O => o_vga_data(4)
    );
\o_vga_data[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(1),
      I1 => valid,
      I2 => vga_data_out(5),
      O => o_vga_data(5)
    );
\o_vga_data[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(1),
      I1 => valid,
      I2 => vga_data_out(6),
      O => o_vga_data(6)
    );
\o_vga_data[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(1),
      I1 => valid,
      I2 => vga_data_out(7),
      O => o_vga_data(7)
    );
\o_vga_data[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(1),
      I1 => valid,
      I2 => vga_data_out(8),
      O => o_vga_data(8)
    );
\o_vga_data[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(1),
      I1 => valid,
      I2 => vga_data_out(9),
      O => o_vga_data(9)
    );
\v_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(0),
      I1 => current_state(1),
      I2 => \v_count[0]_i_2_n_0\,
      O => \v_count[0]_i_1_n_0\
    );
\v_count[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \v_count[9]_i_6_n_0\,
      I1 => \^q\(8),
      I2 => \^q\(9),
      I3 => \^q\(6),
      I4 => \^q\(7),
      O => \v_count[0]_i_2_n_0\
    );
\v_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \v_count[1]_i_1_n_0\
    );
\v_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \v_count[2]_i_1_n_0\
    );
\v_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \v_count[3]_i_1_n_0\
    );
\v_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => \v_count[4]_i_1_n_0\
    );
\v_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => \^q\(5),
      I2 => \v_count[9]_i_5_n_0\,
      O => \v_count[5]_i_1_n_0\
    );
\v_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => \^q\(6),
      I2 => \v_count[9]_i_5_n_0\,
      I3 => \^q\(5),
      O => \v_count[6]_i_1_n_0\
    );
\v_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => \^q\(7),
      I2 => \v_count[9]_i_5_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(5),
      O => \v_count[7]_i_1_n_0\
    );
\v_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => \^q\(8),
      I2 => \v_count[9]_i_5_n_0\,
      I3 => \^q\(7),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \v_count[8]_i_1_n_0\
    );
\v_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000100FFFFFFFF"
    )
        port map (
      I0 => \v_count[9]_i_3_n_0\,
      I1 => \^bus1262\(6),
      I2 => \^bus1262\(5),
      I3 => \^bus1262\(9),
      I4 => \^bus1262\(7),
      I5 => current_state(1),
      O => \v_count[9]_i_1_n_0\
    );
\v_count[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => \^q\(9),
      I2 => \v_count[9]_i_5_n_0\,
      I3 => video_on_i_2_n_0,
      O => \v_count[9]_i_2_n_0\
    );
\v_count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^bus1262\(4),
      I1 => \^bus1262\(2),
      I2 => \^bus1262\(0),
      I3 => \^bus1262\(1),
      I4 => \^bus1262\(3),
      I5 => \^bus1262\(8),
      O => \v_count[9]_i_3_n_0\
    );
\v_count[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \v_count[9]_i_6_n_0\,
      I2 => \v_count[9]_i_7_n_0\,
      I3 => current_state(1),
      O => \v_count[9]_i_4_n_0\
    );
\v_count[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(4),
      O => \v_count[9]_i_5_n_0\
    );
\v_count[9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(5),
      I4 => \^q\(4),
      O => \v_count[9]_i_6_n_0\
    );
\v_count[9]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(9),
      I3 => \^q\(8),
      O => \v_count[9]_i_7_n_0\
    );
\v_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => \v_count[9]_i_1_n_0\,
      CLR => i_reset_n,
      D => \v_count[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\v_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => \v_count[9]_i_1_n_0\,
      CLR => i_reset_n,
      D => \v_count[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\v_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => \v_count[9]_i_1_n_0\,
      CLR => i_reset_n,
      D => \v_count[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\v_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => \v_count[9]_i_1_n_0\,
      CLR => i_reset_n,
      D => \v_count[3]_i_1_n_0\,
      Q => \^q\(3)
    );
\v_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => \v_count[9]_i_1_n_0\,
      CLR => i_reset_n,
      D => \v_count[4]_i_1_n_0\,
      Q => \^q\(4)
    );
\v_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => \v_count[9]_i_1_n_0\,
      CLR => i_reset_n,
      D => \v_count[5]_i_1_n_0\,
      Q => \^q\(5)
    );
\v_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => \v_count[9]_i_1_n_0\,
      CLR => i_reset_n,
      D => \v_count[6]_i_1_n_0\,
      Q => \^q\(6)
    );
\v_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => \v_count[9]_i_1_n_0\,
      CLR => i_reset_n,
      D => \v_count[7]_i_1_n_0\,
      Q => \^q\(7)
    );
\v_count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => \v_count[9]_i_1_n_0\,
      CLR => i_reset_n,
      D => \v_count[8]_i_1_n_0\,
      Q => \^q\(8)
    );
\v_count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => \v_count[9]_i_1_n_0\,
      CLR => i_reset_n,
      D => \v_count[9]_i_2_n_0\,
      Q => \^q\(9)
    );
v_sync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => v_sync_i_2_n_0,
      O => v_sync_i_1_n_0
    );
v_sync_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(9),
      I5 => current_state(1),
      O => v_sync_i_2_n_0
    );
v_sync_reg: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => v_sync_i_1_n_0,
      Q => o_vsync
    );
video_on_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001F0000000000"
    )
        port map (
      I0 => \^bus1262\(8),
      I1 => \^bus1262\(7),
      I2 => \^bus1262\(9),
      I3 => current_state(1),
      I4 => \^q\(9),
      I5 => video_on_i_2_n_0,
      O => video_on_i_1_n_0
    );
video_on_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \^q\(8),
      O => video_on_i_2_n_0
    );
video_on_reg: unisim.vcomponents.FDCE
     port map (
      C => i_VGA_CLK,
      CE => '1',
      CLR => i_reset_n,
      D => video_on_i_1_n_0,
      Q => read_en_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_blk_mem_gen_prim_wrapper is
  port (
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_ram_rd_en : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d3_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    din : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end final_accelerator_VGA_IF_0_0_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_blk_mem_gen_prim_wrapper is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_69\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_70\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_77\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_78\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_91\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => \gic0.gc1.count_d3_reg[10]\(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => Q(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => wr_clk,
      CLKBWRCLK => rd_clk,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 14) => B"000000000000000000",
      DIADI(13 downto 8) => din(11 downto 6),
      DIADI(7 downto 6) => B"00",
      DIADI(5 downto 0) => din(5 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 16) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 16),
      DOBDO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_69\,
      DOBDO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_70\,
      DOBDO(13 downto 8) => D(11 downto 6),
      DOBDO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_77\,
      DOBDO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_78\,
      DOBDO(5 downto 0) => D(5 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 2),
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_91\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => WEA(0),
      ENBWREN => tmp_ram_rd_en,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => SR(0),
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_compare is
  port (
    comp1 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[10]\ : in STD_LOGIC
  );
end final_accelerator_VGA_IF_0_0_compare;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_compare is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal carrynet_4 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => comp1,
      CO(0) => carrynet_4,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \gnxpm_cdc.rd_pntr_bin_reg[10]\,
      S(0) => v1_reg(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_compare_3 is
  port (
    comp2 : out STD_LOGIC;
    ram_full_i_reg : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[10]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    comp1 : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_accelerator_VGA_IF_0_0_compare_3 : entity is "compare";
end final_accelerator_VGA_IF_0_0_compare_3;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_compare_3 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal carrynet_4 : STD_LOGIC;
  signal \^comp2\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
  comp2 <= \^comp2\;
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^comp2\,
      CO(0) => carrynet_4,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \gnxpm_cdc.rd_pntr_bin_reg[10]\,
      S(0) => v1_reg_0(4)
    );
ram_full_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF20"
    )
        port map (
      I0 => \^comp2\,
      I1 => \out\,
      I2 => wr_en,
      I3 => comp1,
      I4 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      O => ram_full_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_compare_4 is
  port (
    \gaf.ram_almost_full_i_reg\ : out STD_LOGIC;
    v1_reg_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[10]\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    comp2 : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    almost_full : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_accelerator_VGA_IF_0_0_compare_4 : entity is "compare";
end final_accelerator_VGA_IF_0_0_compare_4;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_compare_4 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal carrynet_4 : STD_LOGIC;
  signal comp3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gaf.ram_almost_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00F8000000F8"
    )
        port map (
      I0 => comp3,
      I1 => wr_en,
      I2 => comp2,
      I3 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      I4 => \out\,
      I5 => almost_full,
      O => \gaf.ram_almost_full_i_reg\
    );
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_1(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => comp3,
      CO(0) => carrynet_4,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \gnxpm_cdc.rd_pntr_bin_reg[10]\,
      S(0) => v1_reg_1(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_compare_5 is
  port (
    ram_empty_i0 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gc1.count_d2_reg[10]\ : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC;
    comp1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_accelerator_VGA_IF_0_0_compare_5 : entity is "compare";
end final_accelerator_VGA_IF_0_0_compare_5;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_compare_5 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal carrynet_4 : STD_LOGIC;
  signal comp0 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => comp0,
      CO(0) => carrynet_4,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \gc1.count_d2_reg[10]\,
      S(0) => v1_reg(4)
    );
ram_empty_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEFFFAAAAAAAA"
    )
        port map (
      I0 => comp0,
      I1 => rd_en,
      I2 => \gpregsm1.curr_fwft_state_reg[1]\(0),
      I3 => \gpregsm1.curr_fwft_state_reg[1]\(1),
      I4 => \out\,
      I5 => comp1,
      O => ram_empty_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_compare_6 is
  port (
    comp1 : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gc1.count_d1_reg[10]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_accelerator_VGA_IF_0_0_compare_6 : entity is "compare";
end final_accelerator_VGA_IF_0_0_compare_6;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_compare_6 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal carrynet_4 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => comp1,
      CO(0) => carrynet_4,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \gc1.count_d1_reg[10]\,
      S(0) => v1_reg_0(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_rd_bin_cntr is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    ram_empty_fb_i_reg_0 : out STD_LOGIC;
    \gc1.count_d2_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end final_accelerator_VGA_IF_0_0_rd_bin_cntr;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \gc1.count[10]_i_2_n_0\ : STD_LOGIC;
  signal \^gc1.count_d2_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal rd_pntr_plus2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc1.count[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gc1.count[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gc1.count[3]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gc1.count[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gc1.count[6]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gc1.count[7]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gc1.count[8]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \gc1.count[9]_i_1\ : label is "soft_lutpair48";
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
  \gc1.count_d2_reg[9]_0\(9 downto 0) <= \^gc1.count_d2_reg[9]_0\(9 downto 0);
\gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      O => \plusOp__0\(0)
    );
\gc1.count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rd_pntr_plus2(8),
      I1 => rd_pntr_plus2(6),
      I2 => \gc1.count[10]_i_2_n_0\,
      I3 => rd_pntr_plus2(7),
      I4 => rd_pntr_plus2(9),
      I5 => rd_pntr_plus2(10),
      O => \plusOp__0\(10)
    );
\gc1.count[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rd_pntr_plus2(5),
      I1 => rd_pntr_plus2(3),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(0),
      I4 => rd_pntr_plus2(2),
      I5 => rd_pntr_plus2(4),
      O => \gc1.count[10]_i_2_n_0\
    );
\gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      O => \plusOp__0\(1)
    );
\gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      I2 => rd_pntr_plus2(2),
      O => \plusOp__0\(2)
    );
\gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus2(1),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(2),
      I3 => rd_pntr_plus2(3),
      O => \plusOp__0\(3)
    );
\gc1.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus2(2),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(3),
      I4 => rd_pntr_plus2(4),
      O => \plusOp__0\(4)
    );
\gc1.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rd_pntr_plus2(3),
      I1 => rd_pntr_plus2(1),
      I2 => rd_pntr_plus2(0),
      I3 => rd_pntr_plus2(2),
      I4 => rd_pntr_plus2(4),
      I5 => rd_pntr_plus2(5),
      O => \plusOp__0\(5)
    );
\gc1.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count[10]_i_2_n_0\,
      I1 => rd_pntr_plus2(6),
      O => \plusOp__0\(6)
    );
\gc1.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gc1.count[10]_i_2_n_0\,
      I1 => rd_pntr_plus2(6),
      I2 => rd_pntr_plus2(7),
      O => \plusOp__0\(7)
    );
\gc1.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus2(6),
      I1 => \gc1.count[10]_i_2_n_0\,
      I2 => rd_pntr_plus2(7),
      I3 => rd_pntr_plus2(8),
      O => \plusOp__0\(8)
    );
\gc1.count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus2(7),
      I1 => \gc1.count[10]_i_2_n_0\,
      I2 => rd_pntr_plus2(6),
      I3 => rd_pntr_plus2(8),
      I4 => rd_pntr_plus2(9),
      O => \plusOp__0\(9)
    );
\gc1.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(0),
      PRE => \out\(0),
      Q => \^gc1.count_d2_reg[9]_0\(0)
    );
\gc1.count_d1_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => rd_pntr_plus2(10),
      Q => rd_pntr_plus1(10)
    );
\gc1.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => rd_pntr_plus2(1),
      Q => \^gc1.count_d2_reg[9]_0\(1)
    );
\gc1.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => rd_pntr_plus2(2),
      Q => \^gc1.count_d2_reg[9]_0\(2)
    );
\gc1.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => rd_pntr_plus2(3),
      Q => \^gc1.count_d2_reg[9]_0\(3)
    );
\gc1.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => rd_pntr_plus2(4),
      Q => \^gc1.count_d2_reg[9]_0\(4)
    );
\gc1.count_d1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => rd_pntr_plus2(5),
      Q => \^gc1.count_d2_reg[9]_0\(5)
    );
\gc1.count_d1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => rd_pntr_plus2(6),
      Q => \^gc1.count_d2_reg[9]_0\(6)
    );
\gc1.count_d1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => rd_pntr_plus2(7),
      Q => \^gc1.count_d2_reg[9]_0\(7)
    );
\gc1.count_d1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => rd_pntr_plus2(8),
      Q => \^gc1.count_d2_reg[9]_0\(8)
    );
\gc1.count_d1_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => rd_pntr_plus2(9),
      Q => \^gc1.count_d2_reg[9]_0\(9)
    );
\gc1.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc1.count_d2_reg[9]_0\(0),
      Q => \^q\(0)
    );
\gc1.count_d2_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => rd_pntr_plus1(10),
      Q => \^q\(10)
    );
\gc1.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc1.count_d2_reg[9]_0\(1),
      Q => \^q\(1)
    );
\gc1.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc1.count_d2_reg[9]_0\(2),
      Q => \^q\(2)
    );
\gc1.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc1.count_d2_reg[9]_0\(3),
      Q => \^q\(3)
    );
\gc1.count_d2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc1.count_d2_reg[9]_0\(4),
      Q => \^q\(4)
    );
\gc1.count_d2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc1.count_d2_reg[9]_0\(5),
      Q => \^q\(5)
    );
\gc1.count_d2_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc1.count_d2_reg[9]_0\(6),
      Q => \^q\(6)
    );
\gc1.count_d2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc1.count_d2_reg[9]_0\(7),
      Q => \^q\(7)
    );
\gc1.count_d2_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc1.count_d2_reg[9]_0\(8),
      Q => \^q\(8)
    );
\gc1.count_d2_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \^gc1.count_d2_reg[9]_0\(9),
      Q => \^q\(9)
    );
\gc1.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(0),
      Q => rd_pntr_plus2(0)
    );
\gc1.count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(10),
      Q => rd_pntr_plus2(10)
    );
\gc1.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(1),
      PRE => \out\(0),
      Q => rd_pntr_plus2(1)
    );
\gc1.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(2),
      Q => rd_pntr_plus2(2)
    );
\gc1.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(3),
      Q => rd_pntr_plus2(3)
    );
\gc1.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(4),
      Q => rd_pntr_plus2(4)
    );
\gc1.count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(5),
      Q => rd_pntr_plus2(5)
    );
\gc1.count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(6),
      Q => rd_pntr_plus2(6)
    );
\gc1.count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(7),
      Q => rd_pntr_plus2(7)
    );
\gc1.count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(8),
      Q => rd_pntr_plus2(8)
    );
\gc1.count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      CLR => \out\(0),
      D => \plusOp__0\(9),
      Q => rd_pntr_plus2(9)
    );
\gmux.gm[5].gms.ms_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => WR_PNTR_RD(0),
      O => ram_empty_fb_i_reg
    );
\gmux.gm[5].gms.ms_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rd_pntr_plus1(10),
      I1 => WR_PNTR_RD(0),
      O => ram_empty_fb_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_rd_fwft is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    almost_empty : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    tmp_ram_rd_en : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_bm.dout_i_reg[11]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC
  );
end final_accelerator_VGA_IF_0_0_rd_fwft;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_rd_fwft is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  almost_empty <= aempty_fwft_i;
  empty <= empty_fwft_i;
  \out\(1 downto 0) <= curr_fwft_state(1 downto 0);
  valid <= user_valid;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBBBB"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      I1 => ram_empty_fb_i_reg,
      I2 => rd_en,
      I3 => curr_fwft_state(0),
      I4 => curr_fwft_state(1),
      O => tmp_ram_rd_en
    );
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEFD8000"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => ram_empty_fb_i_reg,
      I2 => rd_en,
      I3 => curr_fwft_state(1),
      I4 => aempty_fwft_fb_i,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(1),
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(1),
      Q => aempty_fwft_i
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb_i,
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(1),
      Q => empty_fwft_fb_i
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb_o_i,
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(1),
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(1),
      Q => empty_fwft_i
    );
\gc1.count_d1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BF"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => ram_empty_fb_i_reg,
      O => E(0)
    );
\goreg_bm.dout_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => rd_en,
      O => \goreg_bm.dout_i_reg[11]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => ram_empty_fb_i_reg,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(1),
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(1),
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(1),
      D => next_fwft_state(0),
      Q => user_valid
    );
plusOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEA"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => p_0_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_rd_pe_as is
  port (
    prog_empty : out STD_LOGIC;
    p_0_out : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gnxpm_cdc.wr_pntr_bin_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gnxpm_cdc.wr_pntr_bin_reg[10]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rd_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ram_empty_fb_i_reg : in STD_LOGIC
  );
end final_accelerator_VGA_IF_0_0_rd_pe_as;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_rd_pe_as is
  signal diff_pntr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \gpe3.gpe3b.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal leqOp : STD_LOGIC;
  signal \leqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_n_3\ : STD_LOGIC;
  signal leqOp_carry_i_10_n_0 : STD_LOGIC;
  signal leqOp_carry_i_1_n_0 : STD_LOGIC;
  signal leqOp_carry_i_2_n_0 : STD_LOGIC;
  signal leqOp_carry_i_3_n_0 : STD_LOGIC;
  signal leqOp_carry_i_4_n_0 : STD_LOGIC;
  signal leqOp_carry_i_5_n_0 : STD_LOGIC;
  signal leqOp_carry_i_6_n_0 : STD_LOGIC;
  signal leqOp_carry_i_7_n_0 : STD_LOGIC;
  signal leqOp_carry_i_8_n_0 : STD_LOGIC;
  signal leqOp_carry_i_9_n_0 : STD_LOGIC;
  signal leqOp_carry_n_0 : STD_LOGIC;
  signal leqOp_carry_n_1 : STD_LOGIC;
  signal leqOp_carry_n_2 : STD_LOGIC;
  signal leqOp_carry_n_3 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal NLW_leqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_leqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of leqOp_carry_i_10 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of leqOp_carry_i_9 : label is "soft_lutpair46";
begin
  prog_empty <= \^prog_empty\;
\gdiff.diff_pntr_pad_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \out\(0),
      D => plusOp(10),
      Q => diff_pntr(9)
    );
\gdiff.diff_pntr_pad_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \out\(0),
      D => plusOp(11),
      Q => diff_pntr(10)
    );
\gdiff.diff_pntr_pad_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \out\(0),
      D => plusOp(1),
      Q => diff_pntr(0)
    );
\gdiff.diff_pntr_pad_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \out\(0),
      D => plusOp(2),
      Q => diff_pntr(1)
    );
\gdiff.diff_pntr_pad_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \out\(0),
      D => plusOp(3),
      Q => diff_pntr(2)
    );
\gdiff.diff_pntr_pad_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \out\(0),
      D => plusOp(4),
      Q => diff_pntr(3)
    );
\gdiff.diff_pntr_pad_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \out\(0),
      D => plusOp(5),
      Q => diff_pntr(4)
    );
\gdiff.diff_pntr_pad_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \out\(0),
      D => plusOp(6),
      Q => diff_pntr(5)
    );
\gdiff.diff_pntr_pad_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \out\(0),
      D => plusOp(7),
      Q => diff_pntr(6)
    );
\gdiff.diff_pntr_pad_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \out\(0),
      D => plusOp(8),
      Q => diff_pntr(7)
    );
\gdiff.diff_pntr_pad_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \out\(0),
      D => plusOp(9),
      Q => diff_pntr(8)
    );
\gpe3.gpe3b.prog_empty_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^prog_empty\,
      I1 => ram_empty_fb_i_reg,
      I2 => leqOp,
      O => \gpe3.gpe3b.prog_empty_i_i_1_n_0\
    );
\gpe3.gpe3b.prog_empty_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gpe3.gpe3b.prog_empty_i_i_1_n_0\,
      PRE => \out\(0),
      Q => \^prog_empty\
    );
leqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => leqOp_carry_n_0,
      CO(2) => leqOp_carry_n_1,
      CO(1) => leqOp_carry_n_2,
      CO(0) => leqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => leqOp_carry_i_1_n_0,
      DI(2) => leqOp_carry_i_2_n_0,
      DI(1) => leqOp_carry_i_3_n_0,
      DI(0) => leqOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_leqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => leqOp_carry_i_5_n_0,
      S(2) => leqOp_carry_i_6_n_0,
      S(1) => leqOp_carry_i_7_n_0,
      S(0) => leqOp_carry_i_8_n_0
    );
\leqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => leqOp_carry_n_0,
      CO(3 downto 2) => \NLW_leqOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => leqOp,
      CO(0) => \leqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \leqOp_carry__0_i_1_n_0\,
      DI(0) => \leqOp_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_leqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \leqOp_carry__0_i_3_n_0\,
      S(0) => \leqOp_carry__0_i_4_n_0\
    );
\leqOp_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444441"
    )
        port map (
      I0 => diff_pntr(10),
      I1 => prog_empty_thresh(10),
      I2 => prog_empty_thresh(8),
      I3 => \leqOp_carry__0_i_5_n_0\,
      I4 => prog_empty_thresh(7),
      I5 => prog_empty_thresh(9),
      O => \leqOp_carry__0_i_1_n_0\
    );
\leqOp_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44400001FFFD4443"
    )
        port map (
      I0 => diff_pntr(8),
      I1 => prog_empty_thresh(8),
      I2 => \leqOp_carry__0_i_5_n_0\,
      I3 => prog_empty_thresh(7),
      I4 => prog_empty_thresh(9),
      I5 => diff_pntr(9),
      O => \leqOp_carry__0_i_2_n_0\
    );
\leqOp_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => diff_pntr(10),
      I1 => prog_empty_thresh(10),
      I2 => prog_empty_thresh(8),
      I3 => \leqOp_carry__0_i_5_n_0\,
      I4 => prog_empty_thresh(7),
      I5 => prog_empty_thresh(9),
      O => \leqOp_carry__0_i_3_n_0\
    );
\leqOp_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9994000200029994"
    )
        port map (
      I0 => diff_pntr(8),
      I1 => prog_empty_thresh(8),
      I2 => \leqOp_carry__0_i_5_n_0\,
      I3 => prog_empty_thresh(7),
      I4 => prog_empty_thresh(9),
      I5 => diff_pntr(9),
      O => \leqOp_carry__0_i_4_n_0\
    );
\leqOp_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => prog_empty_thresh(5),
      I1 => prog_empty_thresh(3),
      I2 => prog_empty_thresh(1),
      I3 => prog_empty_thresh(2),
      I4 => prog_empty_thresh(4),
      I5 => prog_empty_thresh(6),
      O => \leqOp_carry__0_i_5_n_0\
    );
leqOp_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4001FD43"
    )
        port map (
      I0 => diff_pntr(6),
      I1 => prog_empty_thresh(6),
      I2 => leqOp_carry_i_9_n_0,
      I3 => prog_empty_thresh(7),
      I4 => diff_pntr(7),
      O => leqOp_carry_i_1_n_0
    );
leqOp_carry_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => prog_empty_thresh(2),
      I1 => prog_empty_thresh(1),
      I2 => prog_empty_thresh(3),
      O => leqOp_carry_i_10_n_0
    );
leqOp_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4001FD43"
    )
        port map (
      I0 => diff_pntr(4),
      I1 => prog_empty_thresh(4),
      I2 => leqOp_carry_i_10_n_0,
      I3 => prog_empty_thresh(5),
      I4 => diff_pntr(5),
      O => leqOp_carry_i_2_n_0
    );
leqOp_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4001FD43"
    )
        port map (
      I0 => diff_pntr(2),
      I1 => prog_empty_thresh(2),
      I2 => prog_empty_thresh(1),
      I3 => prog_empty_thresh(3),
      I4 => diff_pntr(3),
      O => leqOp_carry_i_3_n_0
    );
leqOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"022F"
    )
        port map (
      I0 => prog_empty_thresh(0),
      I1 => diff_pntr(0),
      I2 => prog_empty_thresh(1),
      I3 => diff_pntr(1),
      O => leqOp_carry_i_4_n_0
    );
leqOp_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"94020294"
    )
        port map (
      I0 => diff_pntr(6),
      I1 => prog_empty_thresh(6),
      I2 => leqOp_carry_i_9_n_0,
      I3 => prog_empty_thresh(7),
      I4 => diff_pntr(7),
      O => leqOp_carry_i_5_n_0
    );
leqOp_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"94020294"
    )
        port map (
      I0 => diff_pntr(4),
      I1 => prog_empty_thresh(4),
      I2 => leqOp_carry_i_10_n_0,
      I3 => prog_empty_thresh(5),
      I4 => diff_pntr(5),
      O => leqOp_carry_i_6_n_0
    );
leqOp_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"94020294"
    )
        port map (
      I0 => diff_pntr(2),
      I1 => prog_empty_thresh(2),
      I2 => prog_empty_thresh(1),
      I3 => prog_empty_thresh(3),
      I4 => diff_pntr(3),
      O => leqOp_carry_i_7_n_0
    );
leqOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => prog_empty_thresh(0),
      I1 => diff_pntr(0),
      I2 => prog_empty_thresh(1),
      I3 => diff_pntr(1),
      O => leqOp_carry_i_8_n_0
    );
leqOp_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => prog_empty_thresh(4),
      I1 => prog_empty_thresh(2),
      I2 => prog_empty_thresh(1),
      I3 => prog_empty_thresh(3),
      I4 => prog_empty_thresh(5),
      O => leqOp_carry_i_9_n_0
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => p_0_out,
      DI(3 downto 0) => WR_PNTR_RD(3 downto 0),
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => S(3 downto 0)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => WR_PNTR_RD(7 downto 4),
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => \gnxpm_cdc.wr_pntr_bin_reg[7]\(3 downto 0)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => WR_PNTR_RD(9 downto 8),
      O(3) => \NLW_plusOp_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => \gnxpm_cdc.wr_pntr_bin_reg[10]\(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_synchronizer_ff is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
end final_accelerator_VGA_IF_0_0_synchronizer_ff;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_synchronizer_ff is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_synchronizer_ff_0 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_accelerator_VGA_IF_0_0_synchronizer_ff_0 : entity is "synchronizer_ff";
end final_accelerator_VGA_IF_0_0_synchronizer_ff_0;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_synchronizer_ff_0 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_synchronizer_ff_1 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_accelerator_VGA_IF_0_0_synchronizer_ff_1 : entity is "synchronizer_ff";
end final_accelerator_VGA_IF_0_0_synchronizer_ff_1;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_synchronizer_ff_1 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_synchronizer_ff_2 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_accelerator_VGA_IF_0_0_synchronizer_ff_2 : entity is "synchronizer_ff";
end final_accelerator_VGA_IF_0_0_synchronizer_ff_2;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_synchronizer_ff_2 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    rd_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized0\ : entity is "synchronizer_ff";
end \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized0\;

architecture STRUCTURE of \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized0\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[10]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[10]\ : label is "yes";
  attribute msgon of \Q_reg_reg[10]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[7]\ : label is "yes";
  attribute msgon of \Q_reg_reg[7]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[8]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[8]\ : label is "yes";
  attribute msgon of \Q_reg_reg[8]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[9]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[9]\ : label is "yes";
  attribute msgon of \Q_reg_reg[9]\ : label is "true";
begin
  D(10 downto 0) <= Q_reg(10 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(10),
      Q => Q_reg(10)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(6),
      Q => Q_reg(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(7),
      Q => Q_reg(7)
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(8),
      Q => Q_reg(8)
    );
\Q_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(9),
      Q => Q_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    wr_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized1\ : entity is "synchronizer_ff";
end \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized1\;

architecture STRUCTURE of \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized1\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[10]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[10]\ : label is "yes";
  attribute msgon of \Q_reg_reg[10]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[7]\ : label is "yes";
  attribute msgon of \Q_reg_reg[7]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[8]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[8]\ : label is "yes";
  attribute msgon of \Q_reg_reg[8]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[9]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[9]\ : label is "yes";
  attribute msgon of \Q_reg_reg[9]\ : label is "true";
begin
  D(10 downto 0) <= Q_reg(10 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(10),
      Q => Q_reg(10)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(6),
      Q => Q_reg(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(7),
      Q => Q_reg(7)
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(8),
      Q => Q_reg(8)
    );
\Q_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(9),
      Q => Q_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized2\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gnxpm_cdc.wr_pntr_bin_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    rd_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized2\ : entity is "synchronizer_ff";
end \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized2\;

architecture STRUCTURE of \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized2\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  signal \gnxpm_cdc.wr_pntr_bin[4]_i_2_n_0\ : STD_LOGIC;
  signal \^gnxpm_cdc.wr_pntr_bin_reg[9]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[10]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[10]\ : label is "yes";
  attribute msgon of \Q_reg_reg[10]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[7]\ : label is "yes";
  attribute msgon of \Q_reg_reg[7]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[8]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[8]\ : label is "yes";
  attribute msgon of \Q_reg_reg[8]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[9]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[9]\ : label is "yes";
  attribute msgon of \Q_reg_reg[9]\ : label is "true";
begin
  \gnxpm_cdc.wr_pntr_bin_reg[9]\(9 downto 0) <= \^gnxpm_cdc.wr_pntr_bin_reg[9]\(9 downto 0);
  \out\(0) <= Q_reg(10);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(10),
      Q => Q_reg(10)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(6),
      Q => Q_reg(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(7),
      Q => Q_reg(7)
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(8),
      Q => Q_reg(8)
    );
\Q_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(9),
      Q => Q_reg(9)
    );
\gnxpm_cdc.wr_pntr_bin[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q_reg(1),
      I1 => Q_reg(0),
      I2 => Q_reg(2),
      I3 => \^gnxpm_cdc.wr_pntr_bin_reg[9]\(4),
      I4 => Q_reg(3),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[9]\(0)
    );
\gnxpm_cdc.wr_pntr_bin[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(2),
      I1 => \^gnxpm_cdc.wr_pntr_bin_reg[9]\(4),
      I2 => Q_reg(3),
      I3 => Q_reg(1),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[9]\(1)
    );
\gnxpm_cdc.wr_pntr_bin[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(3),
      I1 => \^gnxpm_cdc.wr_pntr_bin_reg[9]\(4),
      I2 => Q_reg(2),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[9]\(2)
    );
\gnxpm_cdc.wr_pntr_bin[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gnxpm_cdc.wr_pntr_bin_reg[9]\(4),
      I1 => Q_reg(3),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[9]\(3)
    );
\gnxpm_cdc.wr_pntr_bin[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(10),
      I1 => Q_reg(4),
      I2 => Q_reg(5),
      I3 => \gnxpm_cdc.wr_pntr_bin[4]_i_2_n_0\,
      I4 => Q_reg(8),
      I5 => Q_reg(9),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[9]\(4)
    );
\gnxpm_cdc.wr_pntr_bin[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(6),
      I1 => Q_reg(7),
      O => \gnxpm_cdc.wr_pntr_bin[4]_i_2_n_0\
    );
\gnxpm_cdc.wr_pntr_bin[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(7),
      I1 => Q_reg(5),
      I2 => Q_reg(6),
      I3 => Q_reg(10),
      I4 => Q_reg(8),
      I5 => Q_reg(9),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[9]\(5)
    );
\gnxpm_cdc.wr_pntr_bin[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q_reg(8),
      I1 => Q_reg(6),
      I2 => Q_reg(7),
      I3 => Q_reg(10),
      I4 => Q_reg(9),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[9]\(6)
    );
\gnxpm_cdc.wr_pntr_bin[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(8),
      I1 => Q_reg(7),
      I2 => Q_reg(10),
      I3 => Q_reg(9),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[9]\(7)
    );
\gnxpm_cdc.wr_pntr_bin[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(9),
      I1 => Q_reg(8),
      I2 => Q_reg(10),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[9]\(8)
    );
\gnxpm_cdc.wr_pntr_bin[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(9),
      I1 => Q_reg(10),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[9]\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized3\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    wr_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized3\ : entity is "synchronizer_ff";
end \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized3\;

architecture STRUCTURE of \final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized3\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  signal \gnxpm_cdc.rd_pntr_bin[4]_i_2_n_0\ : STD_LOGIC;
  signal \^gnxpm_cdc.rd_pntr_bin_reg[9]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[10]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[10]\ : label is "yes";
  attribute msgon of \Q_reg_reg[10]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[7]\ : label is "yes";
  attribute msgon of \Q_reg_reg[7]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[8]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[8]\ : label is "yes";
  attribute msgon of \Q_reg_reg[8]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[9]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[9]\ : label is "yes";
  attribute msgon of \Q_reg_reg[9]\ : label is "true";
begin
  \gnxpm_cdc.rd_pntr_bin_reg[9]\(9 downto 0) <= \^gnxpm_cdc.rd_pntr_bin_reg[9]\(9 downto 0);
  \out\(0) <= Q_reg(10);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(10),
      Q => Q_reg(10)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(6),
      Q => Q_reg(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(7),
      Q => Q_reg(7)
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(8),
      Q => Q_reg(8)
    );
\Q_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => D(9),
      Q => Q_reg(9)
    );
\gnxpm_cdc.rd_pntr_bin[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q_reg(1),
      I1 => Q_reg(0),
      I2 => Q_reg(2),
      I3 => \^gnxpm_cdc.rd_pntr_bin_reg[9]\(4),
      I4 => Q_reg(3),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[9]\(0)
    );
\gnxpm_cdc.rd_pntr_bin[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(2),
      I1 => \^gnxpm_cdc.rd_pntr_bin_reg[9]\(4),
      I2 => Q_reg(3),
      I3 => Q_reg(1),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[9]\(1)
    );
\gnxpm_cdc.rd_pntr_bin[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(3),
      I1 => \^gnxpm_cdc.rd_pntr_bin_reg[9]\(4),
      I2 => Q_reg(2),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[9]\(2)
    );
\gnxpm_cdc.rd_pntr_bin[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gnxpm_cdc.rd_pntr_bin_reg[9]\(4),
      I1 => Q_reg(3),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[9]\(3)
    );
\gnxpm_cdc.rd_pntr_bin[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(10),
      I1 => Q_reg(4),
      I2 => Q_reg(5),
      I3 => \gnxpm_cdc.rd_pntr_bin[4]_i_2_n_0\,
      I4 => Q_reg(8),
      I5 => Q_reg(9),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[9]\(4)
    );
\gnxpm_cdc.rd_pntr_bin[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(6),
      I1 => Q_reg(7),
      O => \gnxpm_cdc.rd_pntr_bin[4]_i_2_n_0\
    );
\gnxpm_cdc.rd_pntr_bin[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(7),
      I1 => Q_reg(5),
      I2 => Q_reg(6),
      I3 => Q_reg(10),
      I4 => Q_reg(8),
      I5 => Q_reg(9),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[9]\(5)
    );
\gnxpm_cdc.rd_pntr_bin[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q_reg(8),
      I1 => Q_reg(6),
      I2 => Q_reg(7),
      I3 => Q_reg(10),
      I4 => Q_reg(9),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[9]\(6)
    );
\gnxpm_cdc.rd_pntr_bin[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(8),
      I1 => Q_reg(7),
      I2 => Q_reg(10),
      I3 => Q_reg(9),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[9]\(7)
    );
\gnxpm_cdc.rd_pntr_bin[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(9),
      I1 => Q_reg(8),
      I2 => Q_reg(10),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[9]\(8)
    );
\gnxpm_cdc.rd_pntr_bin[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(9),
      I1 => Q_reg(10),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[9]\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_wr_bin_cntr is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \gdiff.diff_pntr_pad_reg[8]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gdiff.diff_pntr_pad_reg[11]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gic0.gc1.count_d1_reg[10]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gic0.gc1.count_d2_reg[10]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end final_accelerator_VGA_IF_0_0_wr_bin_cntr;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \gic0.gc1.count[10]_i_2_n_0\ : STD_LOGIC;
  signal \^gic0.gc1.count_d1_reg[10]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gic0.gc1.count_d2_reg[10]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wr_pntr_plus3 : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc1.count[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \gic0.gc1.count[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \gic0.gc1.count[3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \gic0.gc1.count[4]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \gic0.gc1.count[6]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \gic0.gc1.count[7]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \gic0.gc1.count[8]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \gic0.gc1.count[9]_i_1\ : label is "soft_lutpair53";
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
  \gic0.gc1.count_d1_reg[10]_0\(0) <= \^gic0.gc1.count_d1_reg[10]_0\(0);
  \gic0.gc1.count_d2_reg[10]_0\(0) <= \^gic0.gc1.count_d2_reg[10]_0\(0);
\gic0.gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      O => \plusOp__1\(0)
    );
\gic0.gc1.count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => wr_pntr_plus3(8),
      I1 => wr_pntr_plus3(6),
      I2 => \gic0.gc1.count[10]_i_2_n_0\,
      I3 => wr_pntr_plus3(7),
      I4 => wr_pntr_plus3(9),
      I5 => \^gic0.gc1.count_d1_reg[10]_0\(0),
      O => \plusOp__1\(10)
    );
\gic0.gc1.count[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => wr_pntr_plus3(5),
      I1 => wr_pntr_plus3(3),
      I2 => wr_pntr_plus3(1),
      I3 => wr_pntr_plus3(0),
      I4 => wr_pntr_plus3(2),
      I5 => wr_pntr_plus3(4),
      O => \gic0.gc1.count[10]_i_2_n_0\
    );
\gic0.gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      I1 => wr_pntr_plus3(1),
      O => \plusOp__1\(1)
    );
\gic0.gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      I1 => wr_pntr_plus3(1),
      I2 => wr_pntr_plus3(2),
      O => \plusOp__1\(2)
    );
\gic0.gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_pntr_plus3(1),
      I1 => wr_pntr_plus3(0),
      I2 => wr_pntr_plus3(2),
      I3 => wr_pntr_plus3(3),
      O => \plusOp__1\(3)
    );
\gic0.gc1.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => wr_pntr_plus3(2),
      I1 => wr_pntr_plus3(0),
      I2 => wr_pntr_plus3(1),
      I3 => wr_pntr_plus3(3),
      I4 => wr_pntr_plus3(4),
      O => \plusOp__1\(4)
    );
\gic0.gc1.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => wr_pntr_plus3(3),
      I1 => wr_pntr_plus3(1),
      I2 => wr_pntr_plus3(0),
      I3 => wr_pntr_plus3(2),
      I4 => wr_pntr_plus3(4),
      I5 => wr_pntr_plus3(5),
      O => \plusOp__1\(5)
    );
\gic0.gc1.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count[10]_i_2_n_0\,
      I1 => wr_pntr_plus3(6),
      O => \plusOp__1\(6)
    );
\gic0.gc1.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gic0.gc1.count[10]_i_2_n_0\,
      I1 => wr_pntr_plus3(6),
      I2 => wr_pntr_plus3(7),
      O => \plusOp__1\(7)
    );
\gic0.gc1.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_pntr_plus3(6),
      I1 => \gic0.gc1.count[10]_i_2_n_0\,
      I2 => wr_pntr_plus3(7),
      I3 => wr_pntr_plus3(8),
      O => \plusOp__1\(8)
    );
\gic0.gc1.count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => wr_pntr_plus3(7),
      I1 => \gic0.gc1.count[10]_i_2_n_0\,
      I2 => wr_pntr_plus3(6),
      I3 => wr_pntr_plus3(8),
      I4 => wr_pntr_plus3(9),
      O => \plusOp__1\(9)
    );
\gic0.gc1.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(0),
      Q => wr_pntr_plus2(0)
    );
\gic0.gc1.count_d1_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc1.count_d1_reg[10]_0\(0),
      Q => \^gic0.gc1.count_d2_reg[10]_0\(0)
    );
\gic0.gc1.count_d1_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => wr_pntr_plus3(1),
      PRE => AR(0),
      Q => wr_pntr_plus2(1)
    );
\gic0.gc1.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(2),
      Q => wr_pntr_plus2(2)
    );
\gic0.gc1.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(3),
      Q => wr_pntr_plus2(3)
    );
\gic0.gc1.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(4),
      Q => wr_pntr_plus2(4)
    );
\gic0.gc1.count_d1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(5),
      Q => wr_pntr_plus2(5)
    );
\gic0.gc1.count_d1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(6),
      Q => wr_pntr_plus2(6)
    );
\gic0.gc1.count_d1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(7),
      Q => wr_pntr_plus2(7)
    );
\gic0.gc1.count_d1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(8),
      Q => wr_pntr_plus2(8)
    );
\gic0.gc1.count_d1_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(9),
      Q => wr_pntr_plus2(9)
    );
\gic0.gc1.count_d2_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => wr_pntr_plus2(0),
      PRE => AR(0),
      Q => \^q\(0)
    );
\gic0.gc1.count_d2_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc1.count_d2_reg[10]_0\(0),
      Q => \^q\(10)
    );
\gic0.gc1.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(1),
      Q => \^q\(1)
    );
\gic0.gc1.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(2),
      Q => \^q\(2)
    );
\gic0.gc1.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(3),
      Q => \^q\(3)
    );
\gic0.gc1.count_d2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(4),
      Q => \^q\(4)
    );
\gic0.gc1.count_d2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(5),
      Q => \^q\(5)
    );
\gic0.gc1.count_d2_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(6),
      Q => \^q\(6)
    );
\gic0.gc1.count_d2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(7),
      Q => \^q\(7)
    );
\gic0.gc1.count_d2_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(8),
      Q => \^q\(8)
    );
\gic0.gc1.count_d2_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(9),
      Q => \^q\(9)
    );
\gic0.gc1.count_d3_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(0),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(0)
    );
\gic0.gc1.count_d3_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(10),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(10)
    );
\gic0.gc1.count_d3_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(1)
    );
\gic0.gc1.count_d3_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(2)
    );
\gic0.gc1.count_d3_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(3)
    );
\gic0.gc1.count_d3_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(4),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(4)
    );
\gic0.gc1.count_d3_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(5),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(5)
    );
\gic0.gc1.count_d3_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(6),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(6)
    );
\gic0.gc1.count_d3_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(7),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(7)
    );
\gic0.gc1.count_d3_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(8),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(8)
    );
\gic0.gc1.count_d3_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(9),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9)
    );
\gic0.gc1.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \plusOp__1\(0),
      PRE => AR(0),
      Q => wr_pntr_plus3(0)
    );
\gic0.gc1.count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(10),
      Q => \^gic0.gc1.count_d1_reg[10]_0\(0)
    );
\gic0.gc1.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \plusOp__1\(1),
      PRE => AR(0),
      Q => wr_pntr_plus3(1)
    );
\gic0.gc1.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(2),
      Q => wr_pntr_plus3(2)
    );
\gic0.gc1.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(3),
      Q => wr_pntr_plus3(3)
    );
\gic0.gc1.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(4),
      Q => wr_pntr_plus3(4)
    );
\gic0.gc1.count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(5),
      Q => wr_pntr_plus3(5)
    );
\gic0.gc1.count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(6),
      Q => wr_pntr_plus3(6)
    );
\gic0.gc1.count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(7),
      Q => wr_pntr_plus3(7)
    );
\gic0.gc1.count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(8),
      Q => wr_pntr_plus3(8)
    );
\gic0.gc1.count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(9),
      Q => wr_pntr_plus3(9)
    );
\gmux.gm[0].gm1.m1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => RD_PNTR_WR(0),
      I2 => \^q\(1),
      I3 => RD_PNTR_WR(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => RD_PNTR_WR(0),
      I2 => wr_pntr_plus2(1),
      I3 => RD_PNTR_WR(1),
      O => v1_reg_0(0)
    );
\gmux.gm[0].gm1.m1_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      I1 => RD_PNTR_WR(0),
      I2 => wr_pntr_plus3(1),
      I3 => RD_PNTR_WR(1),
      O => v1_reg_1(0)
    );
\gmux.gm[1].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => RD_PNTR_WR(2),
      I2 => \^q\(3),
      I3 => RD_PNTR_WR(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(2),
      I1 => RD_PNTR_WR(2),
      I2 => wr_pntr_plus2(3),
      I3 => RD_PNTR_WR(3),
      O => v1_reg_0(1)
    );
\gmux.gm[1].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus3(2),
      I1 => RD_PNTR_WR(2),
      I2 => wr_pntr_plus3(3),
      I3 => RD_PNTR_WR(3),
      O => v1_reg_1(1)
    );
\gmux.gm[2].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => RD_PNTR_WR(4),
      I2 => \^q\(5),
      I3 => RD_PNTR_WR(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(4),
      I1 => RD_PNTR_WR(4),
      I2 => wr_pntr_plus2(5),
      I3 => RD_PNTR_WR(5),
      O => v1_reg_0(2)
    );
\gmux.gm[2].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus3(4),
      I1 => RD_PNTR_WR(4),
      I2 => wr_pntr_plus3(5),
      I3 => RD_PNTR_WR(5),
      O => v1_reg_1(2)
    );
\gmux.gm[3].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(6),
      I1 => RD_PNTR_WR(6),
      I2 => \^q\(7),
      I3 => RD_PNTR_WR(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(6),
      I1 => RD_PNTR_WR(6),
      I2 => wr_pntr_plus2(7),
      I3 => RD_PNTR_WR(7),
      O => v1_reg_0(3)
    );
\gmux.gm[3].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus3(6),
      I1 => RD_PNTR_WR(6),
      I2 => wr_pntr_plus3(7),
      I3 => RD_PNTR_WR(7),
      O => v1_reg_1(3)
    );
\gmux.gm[4].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(8),
      I1 => RD_PNTR_WR(8),
      I2 => \^q\(9),
      I3 => RD_PNTR_WR(9),
      O => v1_reg(4)
    );
\gmux.gm[4].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(8),
      I1 => RD_PNTR_WR(8),
      I2 => wr_pntr_plus2(9),
      I3 => RD_PNTR_WR(9),
      O => v1_reg_0(4)
    );
\gmux.gm[4].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus3(8),
      I1 => RD_PNTR_WR(8),
      I2 => wr_pntr_plus3(9),
      I3 => RD_PNTR_WR(9),
      O => v1_reg_1(4)
    );
\plusOp_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => RD_PNTR_WR(7),
      O => \gdiff.diff_pntr_pad_reg[8]\(3)
    );
\plusOp_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => RD_PNTR_WR(6),
      O => \gdiff.diff_pntr_pad_reg[8]\(2)
    );
\plusOp_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => RD_PNTR_WR(5),
      O => \gdiff.diff_pntr_pad_reg[8]\(1)
    );
\plusOp_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => RD_PNTR_WR(4),
      O => \gdiff.diff_pntr_pad_reg[8]\(0)
    );
\plusOp_carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => RD_PNTR_WR(10),
      O => \gdiff.diff_pntr_pad_reg[11]\(2)
    );
\plusOp_carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => RD_PNTR_WR(9),
      O => \gdiff.diff_pntr_pad_reg[11]\(1)
    );
\plusOp_carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => RD_PNTR_WR(8),
      O => \gdiff.diff_pntr_pad_reg[11]\(0)
    );
\plusOp_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => RD_PNTR_WR(3),
      O => S(3)
    );
\plusOp_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => RD_PNTR_WR(2),
      O => S(2)
    );
\plusOp_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => RD_PNTR_WR(1),
      O => S(1)
    );
\plusOp_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => RD_PNTR_WR(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_wr_pf_as is
  port (
    prog_full : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc1.count_d2_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc1.count_d2_reg[10]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end final_accelerator_VGA_IF_0_0_wr_pf_as;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_wr_pf_as is
  signal \gdiff.diff_pntr_pad_reg_n_0_[10]\ : STD_LOGIC;
  signal \gdiff.diff_pntr_pad_reg_n_0_[11]\ : STD_LOGIC;
  signal \gdiff.diff_pntr_pad_reg_n_0_[1]\ : STD_LOGIC;
  signal \gdiff.diff_pntr_pad_reg_n_0_[2]\ : STD_LOGIC;
  signal \gdiff.diff_pntr_pad_reg_n_0_[3]\ : STD_LOGIC;
  signal \gdiff.diff_pntr_pad_reg_n_0_[4]\ : STD_LOGIC;
  signal \gdiff.diff_pntr_pad_reg_n_0_[5]\ : STD_LOGIC;
  signal \gdiff.diff_pntr_pad_reg_n_0_[6]\ : STD_LOGIC;
  signal \gdiff.diff_pntr_pad_reg_n_0_[7]\ : STD_LOGIC;
  signal \gdiff.diff_pntr_pad_reg_n_0_[8]\ : STD_LOGIC;
  signal \gdiff.diff_pntr_pad_reg_n_0_[9]\ : STD_LOGIC;
  signal geqOp : STD_LOGIC;
  signal \geqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_n_3\ : STD_LOGIC;
  signal geqOp_carry_i_10_n_0 : STD_LOGIC;
  signal geqOp_carry_i_1_n_0 : STD_LOGIC;
  signal geqOp_carry_i_2_n_0 : STD_LOGIC;
  signal geqOp_carry_i_3_n_0 : STD_LOGIC;
  signal geqOp_carry_i_4_n_0 : STD_LOGIC;
  signal geqOp_carry_i_5_n_0 : STD_LOGIC;
  signal geqOp_carry_i_6_n_0 : STD_LOGIC;
  signal geqOp_carry_i_7_n_0 : STD_LOGIC;
  signal geqOp_carry_i_8_n_0 : STD_LOGIC;
  signal geqOp_carry_i_9_n_0 : STD_LOGIC;
  signal geqOp_carry_n_0 : STD_LOGIC;
  signal geqOp_carry_n_1 : STD_LOGIC;
  signal geqOp_carry_n_2 : STD_LOGIC;
  signal geqOp_carry_n_3 : STD_LOGIC;
  signal \gpf3.gpf3a.prog_full_i_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_carry__1_n_7\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal NLW_geqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_geqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of geqOp_carry_i_10 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of geqOp_carry_i_9 : label is "soft_lutpair51";
begin
  prog_full <= \^prog_full\;
\gdiff.diff_pntr_pad_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \plusOp_carry__1_n_6\,
      Q => \gdiff.diff_pntr_pad_reg_n_0_[10]\
    );
\gdiff.diff_pntr_pad_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \plusOp_carry__1_n_5\,
      Q => \gdiff.diff_pntr_pad_reg_n_0_[11]\
    );
\gdiff.diff_pntr_pad_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => plusOp_carry_n_7,
      Q => \gdiff.diff_pntr_pad_reg_n_0_[1]\
    );
\gdiff.diff_pntr_pad_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => plusOp_carry_n_6,
      Q => \gdiff.diff_pntr_pad_reg_n_0_[2]\
    );
\gdiff.diff_pntr_pad_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => plusOp_carry_n_5,
      Q => \gdiff.diff_pntr_pad_reg_n_0_[3]\
    );
\gdiff.diff_pntr_pad_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => plusOp_carry_n_4,
      Q => \gdiff.diff_pntr_pad_reg_n_0_[4]\
    );
\gdiff.diff_pntr_pad_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \plusOp_carry__0_n_7\,
      Q => \gdiff.diff_pntr_pad_reg_n_0_[5]\
    );
\gdiff.diff_pntr_pad_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \plusOp_carry__0_n_6\,
      Q => \gdiff.diff_pntr_pad_reg_n_0_[6]\
    );
\gdiff.diff_pntr_pad_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \plusOp_carry__0_n_5\,
      Q => \gdiff.diff_pntr_pad_reg_n_0_[7]\
    );
\gdiff.diff_pntr_pad_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \plusOp_carry__0_n_4\,
      Q => \gdiff.diff_pntr_pad_reg_n_0_[8]\
    );
\gdiff.diff_pntr_pad_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \plusOp_carry__1_n_7\,
      Q => \gdiff.diff_pntr_pad_reg_n_0_[9]\
    );
geqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => geqOp_carry_n_0,
      CO(2) => geqOp_carry_n_1,
      CO(1) => geqOp_carry_n_2,
      CO(0) => geqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => geqOp_carry_i_1_n_0,
      DI(2) => geqOp_carry_i_2_n_0,
      DI(1) => geqOp_carry_i_3_n_0,
      DI(0) => geqOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_geqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => geqOp_carry_i_5_n_0,
      S(2) => geqOp_carry_i_6_n_0,
      S(1) => geqOp_carry_i_7_n_0,
      S(0) => geqOp_carry_i_8_n_0
    );
\geqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => geqOp_carry_n_0,
      CO(3 downto 2) => \NLW_geqOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => geqOp,
      CO(0) => \geqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \geqOp_carry__0_i_1_n_0\,
      DI(0) => \geqOp_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_geqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \geqOp_carry__0_i_3_n_0\,
      S(0) => \geqOp_carry__0_i_4_n_0\
    );
\geqOp_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555600000000"
    )
        port map (
      I0 => prog_full_thresh(10),
      I1 => prog_full_thresh(8),
      I2 => \geqOp_carry__0_i_5_n_0\,
      I3 => prog_full_thresh(7),
      I4 => prog_full_thresh(9),
      I5 => \gdiff.diff_pntr_pad_reg_n_0_[11]\,
      O => \geqOp_carry__0_i_1_n_0\
    );
\geqOp_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808088CCECECEE0"
    )
        port map (
      I0 => \gdiff.diff_pntr_pad_reg_n_0_[9]\,
      I1 => \gdiff.diff_pntr_pad_reg_n_0_[10]\,
      I2 => prog_full_thresh(8),
      I3 => \geqOp_carry__0_i_5_n_0\,
      I4 => prog_full_thresh(7),
      I5 => prog_full_thresh(9),
      O => \geqOp_carry__0_i_2_n_0\
    );
\geqOp_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA955555556"
    )
        port map (
      I0 => prog_full_thresh(10),
      I1 => prog_full_thresh(8),
      I2 => \geqOp_carry__0_i_5_n_0\,
      I3 => prog_full_thresh(7),
      I4 => prog_full_thresh(9),
      I5 => \gdiff.diff_pntr_pad_reg_n_0_[11]\,
      O => \geqOp_carry__0_i_3_n_0\
    );
\geqOp_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => \gdiff.diff_pntr_pad_reg_n_0_[9]\,
      I1 => \gdiff.diff_pntr_pad_reg_n_0_[10]\,
      I2 => prog_full_thresh(8),
      I3 => \geqOp_carry__0_i_5_n_0\,
      I4 => prog_full_thresh(7),
      I5 => prog_full_thresh(9),
      O => \geqOp_carry__0_i_4_n_0\
    );
\geqOp_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => prog_full_thresh(5),
      I1 => prog_full_thresh(3),
      I2 => prog_full_thresh(1),
      I3 => prog_full_thresh(2),
      I4 => prog_full_thresh(4),
      I5 => prog_full_thresh(6),
      O => \geqOp_carry__0_i_5_n_0\
    );
geqOp_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088CCEE0"
    )
        port map (
      I0 => \gdiff.diff_pntr_pad_reg_n_0_[7]\,
      I1 => \gdiff.diff_pntr_pad_reg_n_0_[8]\,
      I2 => prog_full_thresh(6),
      I3 => geqOp_carry_i_9_n_0,
      I4 => prog_full_thresh(7),
      O => geqOp_carry_i_1_n_0
    );
geqOp_carry_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => prog_full_thresh(2),
      I1 => prog_full_thresh(1),
      I2 => prog_full_thresh(3),
      O => geqOp_carry_i_10_n_0
    );
geqOp_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088CCEE0"
    )
        port map (
      I0 => \gdiff.diff_pntr_pad_reg_n_0_[5]\,
      I1 => \gdiff.diff_pntr_pad_reg_n_0_[6]\,
      I2 => prog_full_thresh(4),
      I3 => geqOp_carry_i_10_n_0,
      I4 => prog_full_thresh(5),
      O => geqOp_carry_i_2_n_0
    );
geqOp_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088CCEE0"
    )
        port map (
      I0 => \gdiff.diff_pntr_pad_reg_n_0_[3]\,
      I1 => \gdiff.diff_pntr_pad_reg_n_0_[4]\,
      I2 => prog_full_thresh(2),
      I3 => prog_full_thresh(1),
      I4 => prog_full_thresh(3),
      O => geqOp_carry_i_3_n_0
    );
geqOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F220"
    )
        port map (
      I0 => \gdiff.diff_pntr_pad_reg_n_0_[1]\,
      I1 => prog_full_thresh(0),
      I2 => \gdiff.diff_pntr_pad_reg_n_0_[2]\,
      I3 => prog_full_thresh(1),
      O => geqOp_carry_i_4_n_0
    );
geqOp_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84422118"
    )
        port map (
      I0 => \gdiff.diff_pntr_pad_reg_n_0_[7]\,
      I1 => \gdiff.diff_pntr_pad_reg_n_0_[8]\,
      I2 => prog_full_thresh(6),
      I3 => geqOp_carry_i_9_n_0,
      I4 => prog_full_thresh(7),
      O => geqOp_carry_i_5_n_0
    );
geqOp_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84422118"
    )
        port map (
      I0 => \gdiff.diff_pntr_pad_reg_n_0_[5]\,
      I1 => \gdiff.diff_pntr_pad_reg_n_0_[6]\,
      I2 => prog_full_thresh(4),
      I3 => geqOp_carry_i_10_n_0,
      I4 => prog_full_thresh(5),
      O => geqOp_carry_i_6_n_0
    );
geqOp_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84422118"
    )
        port map (
      I0 => \gdiff.diff_pntr_pad_reg_n_0_[3]\,
      I1 => \gdiff.diff_pntr_pad_reg_n_0_[4]\,
      I2 => prog_full_thresh(2),
      I3 => prog_full_thresh(1),
      I4 => prog_full_thresh(3),
      O => geqOp_carry_i_7_n_0
    );
geqOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \gdiff.diff_pntr_pad_reg_n_0_[1]\,
      I1 => prog_full_thresh(0),
      I2 => \gdiff.diff_pntr_pad_reg_n_0_[2]\,
      I3 => prog_full_thresh(1),
      O => geqOp_carry_i_8_n_0
    );
geqOp_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => prog_full_thresh(4),
      I1 => prog_full_thresh(2),
      I2 => prog_full_thresh(1),
      I3 => prog_full_thresh(3),
      I4 => prog_full_thresh(5),
      O => geqOp_carry_i_9_n_0
    );
\gpf3.gpf3a.prog_full_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => geqOp,
      I1 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      I2 => ram_full_fb_i_reg,
      I3 => \^prog_full\,
      O => \gpf3.gpf3a.prog_full_i_i_1_n_0\
    );
\gpf3.gpf3a.prog_full_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gpf3.gpf3a.prog_full_i_i_1_n_0\,
      PRE => \out\,
      Q => \^prog_full\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => E(0),
      DI(3 downto 0) => Q(3 downto 0),
      O(3) => plusOp_carry_n_4,
      O(2) => plusOp_carry_n_5,
      O(1) => plusOp_carry_n_6,
      O(0) => plusOp_carry_n_7,
      S(3 downto 0) => S(3 downto 0)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3) => \plusOp_carry__0_n_4\,
      O(2) => \plusOp_carry__0_n_5\,
      O(1) => \plusOp_carry__0_n_6\,
      O(0) => \plusOp_carry__0_n_7\,
      S(3 downto 0) => \gic0.gc1.count_d2_reg[7]\(3 downto 0)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => Q(9 downto 8),
      O(3) => \NLW_plusOp_carry__1_O_UNCONNECTED\(3),
      O(2) => \plusOp_carry__1_n_5\,
      O(1) => \plusOp_carry__1_n_6\,
      O(0) => \plusOp_carry__1_n_7\,
      S(3) => '0',
      S(2 downto 0) => \gic0.gc1.count_d2_reg[10]\(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_blk_mem_gen_prim_width is
  port (
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_ram_rd_en : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d3_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    din : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end final_accelerator_VGA_IF_0_0_blk_mem_gen_prim_width;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_blk_mem_gen_prim_width is
begin
\prim_noinit.ram\: entity work.final_accelerator_VGA_IF_0_0_blk_mem_gen_prim_wrapper
     port map (
      D(11 downto 0) => D(11 downto 0),
      Q(10 downto 0) => Q(10 downto 0),
      SR(0) => SR(0),
      WEA(0) => WEA(0),
      din(11 downto 0) => din(11 downto 0),
      \gic0.gc1.count_d3_reg[10]\(10 downto 0) => \gic0.gc1.count_d3_reg[10]\(10 downto 0),
      rd_clk => rd_clk,
      tmp_ram_rd_en => tmp_ram_rd_en,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_clk_x_pntrs is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \gdiff.diff_pntr_pad_reg[8]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gdiff.diff_pntr_pad_reg[11]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_full_i_reg : out STD_LOGIC;
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 10 downto 0 );
    ram_full_i_reg_0 : out STD_LOGIC;
    \gaf.ram_almost_full_i_reg\ : out STD_LOGIC;
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \gic0.gc1.count_d2_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d1_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc1.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gic0.gc1.count_d3_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    wr_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end final_accelerator_VGA_IF_0_0_clk_x_pntrs;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_clk_x_pntrs is
  signal \^rd_pntr_wr\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal bin2gray : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_10\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_9\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[8]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[9]_i_1_n_0\ : STD_LOGIC;
  signal gray2bin : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_0_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_4_out : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_5_out : STD_LOGIC_VECTOR ( 10 to 10 );
  signal p_6_out : STD_LOGIC_VECTOR ( 10 to 10 );
  signal rd_pntr_gc : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal wr_pntr_gc : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[3]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[8]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[9]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[5]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[6]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[7]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[8]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[9]_i_1\ : label is "soft_lutpair40";
begin
  RD_PNTR_WR(10 downto 0) <= \^rd_pntr_wr\(10 downto 0);
  WR_PNTR_RD(10 downto 0) <= \^wr_pntr_rd\(10 downto 0);
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(0),
      I1 => Q(0),
      I2 => \^wr_pntr_rd\(1),
      I3 => Q(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(0),
      I1 => \gc1.count_d1_reg[9]\(0),
      I2 => \^wr_pntr_rd\(1),
      I3 => \gc1.count_d1_reg[9]\(1),
      O => v1_reg_0(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(2),
      I1 => Q(2),
      I2 => \^wr_pntr_rd\(3),
      I3 => Q(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(2),
      I1 => \gc1.count_d1_reg[9]\(2),
      I2 => \^wr_pntr_rd\(3),
      I3 => \gc1.count_d1_reg[9]\(3),
      O => v1_reg_0(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(4),
      I1 => Q(4),
      I2 => \^wr_pntr_rd\(5),
      I3 => Q(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(4),
      I1 => \gc1.count_d1_reg[9]\(4),
      I2 => \^wr_pntr_rd\(5),
      I3 => \gc1.count_d1_reg[9]\(5),
      O => v1_reg_0(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(6),
      I1 => Q(6),
      I2 => \^wr_pntr_rd\(7),
      I3 => Q(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(6),
      I1 => \gc1.count_d1_reg[9]\(6),
      I2 => \^wr_pntr_rd\(7),
      I3 => \gc1.count_d1_reg[9]\(7),
      O => v1_reg_0(3)
    );
\gmux.gm[4].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(8),
      I1 => Q(8),
      I2 => \^wr_pntr_rd\(9),
      I3 => Q(9),
      O => v1_reg(4)
    );
\gmux.gm[4].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(8),
      I1 => \gc1.count_d1_reg[9]\(8),
      I2 => \^wr_pntr_rd\(9),
      I3 => \gc1.count_d1_reg[9]\(9),
      O => v1_reg_0(4)
    );
\gmux.gm[5].gms.ms_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^rd_pntr_wr\(10),
      I1 => \gic0.gc1.count_d2_reg[10]\(0),
      O => ram_full_i_reg
    );
\gmux.gm[5].gms.ms_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^rd_pntr_wr\(10),
      I1 => \gic0.gc1.count_d1_reg[10]\(0),
      O => ram_full_i_reg_0
    );
\gmux.gm[5].gms.ms_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^rd_pntr_wr\(10),
      I1 => D(0),
      O => \gaf.ram_almost_full_i_reg\
    );
\gnxpm_cdc.gsync_stage[1].rd_stg_inst\: entity work.\final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized0\
     port map (
      D(10 downto 0) => p_3_out(10 downto 0),
      Q(10 downto 0) => wr_pntr_gc(10 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      rd_clk => rd_clk
    );
\gnxpm_cdc.gsync_stage[1].wr_stg_inst\: entity work.\final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized1\
     port map (
      AR(0) => AR(0),
      D(10 downto 0) => p_4_out(10 downto 0),
      Q(10 downto 0) => rd_pntr_gc(10 downto 0),
      wr_clk => wr_clk
    );
\gnxpm_cdc.gsync_stage[2].rd_stg_inst\: entity work.\final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized2\
     port map (
      D(10 downto 0) => p_3_out(10 downto 0),
      \gnxpm_cdc.wr_pntr_bin_reg[9]\(9) => p_0_out,
      \gnxpm_cdc.wr_pntr_bin_reg[9]\(8 downto 0) => gray2bin(8 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      \out\(0) => p_5_out(10),
      rd_clk => rd_clk
    );
\gnxpm_cdc.gsync_stage[2].wr_stg_inst\: entity work.\final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized3\
     port map (
      AR(0) => AR(0),
      D(10 downto 0) => p_4_out(10 downto 0),
      \gnxpm_cdc.rd_pntr_bin_reg[9]\(9) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1\,
      \gnxpm_cdc.rd_pntr_bin_reg[9]\(8) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2\,
      \gnxpm_cdc.rd_pntr_bin_reg[9]\(7) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3\,
      \gnxpm_cdc.rd_pntr_bin_reg[9]\(6) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\,
      \gnxpm_cdc.rd_pntr_bin_reg[9]\(5) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5\,
      \gnxpm_cdc.rd_pntr_bin_reg[9]\(4) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\,
      \gnxpm_cdc.rd_pntr_bin_reg[9]\(3) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7\,
      \gnxpm_cdc.rd_pntr_bin_reg[9]\(2) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8\,
      \gnxpm_cdc.rd_pntr_bin_reg[9]\(1) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_9\,
      \gnxpm_cdc.rd_pntr_bin_reg[9]\(0) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_10\,
      \out\(0) => p_6_out(10),
      wr_clk => wr_clk
    );
\gnxpm_cdc.rd_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_10\,
      Q => \^rd_pntr_wr\(0)
    );
\gnxpm_cdc.rd_pntr_bin_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => p_6_out(10),
      Q => \^rd_pntr_wr\(10)
    );
\gnxpm_cdc.rd_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_9\,
      Q => \^rd_pntr_wr\(1)
    );
\gnxpm_cdc.rd_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8\,
      Q => \^rd_pntr_wr\(2)
    );
\gnxpm_cdc.rd_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7\,
      Q => \^rd_pntr_wr\(3)
    );
\gnxpm_cdc.rd_pntr_bin_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\,
      Q => \^rd_pntr_wr\(4)
    );
\gnxpm_cdc.rd_pntr_bin_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5\,
      Q => \^rd_pntr_wr\(5)
    );
\gnxpm_cdc.rd_pntr_bin_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\,
      Q => \^rd_pntr_wr\(6)
    );
\gnxpm_cdc.rd_pntr_bin_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3\,
      Q => \^rd_pntr_wr\(7)
    );
\gnxpm_cdc.rd_pntr_bin_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2\,
      Q => \^rd_pntr_wr\(8)
    );
\gnxpm_cdc.rd_pntr_bin_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1\,
      Q => \^rd_pntr_wr\(9)
    );
\gnxpm_cdc.rd_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      O => \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      O => \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      O => \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      O => \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      O => \gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(7),
      I1 => Q(8),
      O => \gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(8),
      I1 => Q(9),
      O => \gnxpm_cdc.rd_pntr_gc[8]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(9),
      I1 => Q(10),
      O => \gnxpm_cdc.rd_pntr_gc[9]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0\,
      Q => rd_pntr_gc(0)
    );
\gnxpm_cdc.rd_pntr_gc_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(10),
      Q => rd_pntr_gc(10)
    );
\gnxpm_cdc.rd_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0\,
      Q => rd_pntr_gc(1)
    );
\gnxpm_cdc.rd_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0\,
      Q => rd_pntr_gc(2)
    );
\gnxpm_cdc.rd_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0\,
      Q => rd_pntr_gc(3)
    );
\gnxpm_cdc.rd_pntr_gc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0\,
      Q => rd_pntr_gc(4)
    );
\gnxpm_cdc.rd_pntr_gc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0\,
      Q => rd_pntr_gc(5)
    );
\gnxpm_cdc.rd_pntr_gc_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0\,
      Q => rd_pntr_gc(6)
    );
\gnxpm_cdc.rd_pntr_gc_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0\,
      Q => rd_pntr_gc(7)
    );
\gnxpm_cdc.rd_pntr_gc_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[8]_i_1_n_0\,
      Q => rd_pntr_gc(8)
    );
\gnxpm_cdc.rd_pntr_gc_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.rd_pntr_gc[9]_i_1_n_0\,
      Q => rd_pntr_gc(9)
    );
\gnxpm_cdc.wr_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(0),
      Q => \^wr_pntr_rd\(0)
    );
\gnxpm_cdc.wr_pntr_bin_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => p_5_out(10),
      Q => \^wr_pntr_rd\(10)
    );
\gnxpm_cdc.wr_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(1),
      Q => \^wr_pntr_rd\(1)
    );
\gnxpm_cdc.wr_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(2),
      Q => \^wr_pntr_rd\(2)
    );
\gnxpm_cdc.wr_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(3),
      Q => \^wr_pntr_rd\(3)
    );
\gnxpm_cdc.wr_pntr_bin_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(4),
      Q => \^wr_pntr_rd\(4)
    );
\gnxpm_cdc.wr_pntr_bin_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(5),
      Q => \^wr_pntr_rd\(5)
    );
\gnxpm_cdc.wr_pntr_bin_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(6),
      Q => \^wr_pntr_rd\(6)
    );
\gnxpm_cdc.wr_pntr_bin_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(7),
      Q => \^wr_pntr_rd\(7)
    );
\gnxpm_cdc.wr_pntr_bin_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(8),
      Q => \^wr_pntr_rd\(8)
    );
\gnxpm_cdc.wr_pntr_bin_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => p_0_out,
      Q => \^wr_pntr_rd\(9)
    );
\gnxpm_cdc.wr_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[10]\(0),
      I1 => \gic0.gc1.count_d3_reg[10]\(1),
      O => bin2gray(0)
    );
\gnxpm_cdc.wr_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[10]\(1),
      I1 => \gic0.gc1.count_d3_reg[10]\(2),
      O => bin2gray(1)
    );
\gnxpm_cdc.wr_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[10]\(2),
      I1 => \gic0.gc1.count_d3_reg[10]\(3),
      O => bin2gray(2)
    );
\gnxpm_cdc.wr_pntr_gc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[10]\(3),
      I1 => \gic0.gc1.count_d3_reg[10]\(4),
      O => bin2gray(3)
    );
\gnxpm_cdc.wr_pntr_gc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[10]\(4),
      I1 => \gic0.gc1.count_d3_reg[10]\(5),
      O => bin2gray(4)
    );
\gnxpm_cdc.wr_pntr_gc[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[10]\(5),
      I1 => \gic0.gc1.count_d3_reg[10]\(6),
      O => bin2gray(5)
    );
\gnxpm_cdc.wr_pntr_gc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[10]\(6),
      I1 => \gic0.gc1.count_d3_reg[10]\(7),
      O => bin2gray(6)
    );
\gnxpm_cdc.wr_pntr_gc[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[10]\(7),
      I1 => \gic0.gc1.count_d3_reg[10]\(8),
      O => bin2gray(7)
    );
\gnxpm_cdc.wr_pntr_gc[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[10]\(8),
      I1 => \gic0.gc1.count_d3_reg[10]\(9),
      O => bin2gray(8)
    );
\gnxpm_cdc.wr_pntr_gc[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[10]\(9),
      I1 => \gic0.gc1.count_d3_reg[10]\(10),
      O => bin2gray(9)
    );
\gnxpm_cdc.wr_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(0),
      Q => wr_pntr_gc(0)
    );
\gnxpm_cdc.wr_pntr_gc_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => \gic0.gc1.count_d3_reg[10]\(10),
      Q => wr_pntr_gc(10)
    );
\gnxpm_cdc.wr_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(1),
      Q => wr_pntr_gc(1)
    );
\gnxpm_cdc.wr_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(2),
      Q => wr_pntr_gc(2)
    );
\gnxpm_cdc.wr_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(3),
      Q => wr_pntr_gc(3)
    );
\gnxpm_cdc.wr_pntr_gc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(4),
      Q => wr_pntr_gc(4)
    );
\gnxpm_cdc.wr_pntr_gc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(5),
      Q => wr_pntr_gc(5)
    );
\gnxpm_cdc.wr_pntr_gc_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(6),
      Q => wr_pntr_gc(6)
    );
\gnxpm_cdc.wr_pntr_gc_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(7),
      Q => wr_pntr_gc(7)
    );
\gnxpm_cdc.wr_pntr_gc_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(8),
      Q => wr_pntr_gc(8)
    );
\gnxpm_cdc.wr_pntr_gc_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(9),
      Q => wr_pntr_gc(9)
    );
\plusOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(7),
      I1 => Q(7),
      O => \gdiff.diff_pntr_pad_reg[8]\(3)
    );
\plusOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(6),
      I1 => Q(6),
      O => \gdiff.diff_pntr_pad_reg[8]\(2)
    );
\plusOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(5),
      I1 => Q(5),
      O => \gdiff.diff_pntr_pad_reg[8]\(1)
    );
\plusOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(4),
      I1 => Q(4),
      O => \gdiff.diff_pntr_pad_reg[8]\(0)
    );
\plusOp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(10),
      I1 => Q(10),
      O => \gdiff.diff_pntr_pad_reg[11]\(2)
    );
\plusOp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(9),
      I1 => Q(9),
      O => \gdiff.diff_pntr_pad_reg[11]\(1)
    );
\plusOp_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(8),
      I1 => Q(8),
      O => \gdiff.diff_pntr_pad_reg[11]\(0)
    );
plusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(3),
      I1 => Q(3),
      O => S(3)
    );
plusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(2),
      I1 => Q(2),
      O => S(2)
    );
plusOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(1),
      I1 => Q(1),
      O => S(1)
    );
plusOp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(0),
      I1 => Q(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_rd_status_flags_as is
  port (
    \out\ : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gc1.count_d2_reg[10]\ : in STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gc1.count_d1_reg[10]\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end final_accelerator_VGA_IF_0_0_rd_status_flags_as;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_rd_status_flags_as is
  signal comp1 : STD_LOGIC;
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  signal ram_empty_i0 : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
c0: entity work.final_accelerator_VGA_IF_0_0_compare_5
     port map (
      comp1 => comp1,
      \gc1.count_d2_reg[10]\ => \gc1.count_d2_reg[10]\,
      \gpregsm1.curr_fwft_state_reg[1]\(1 downto 0) => \gpregsm1.curr_fwft_state_reg[1]\(1 downto 0),
      \out\ => ram_empty_fb_i,
      ram_empty_i0 => ram_empty_i0,
      rd_en => rd_en,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
c1: entity work.final_accelerator_VGA_IF_0_0_compare_6
     port map (
      comp1 => comp1,
      \gc1.count_d1_reg[10]\ => \gc1.count_d1_reg[10]\,
      v1_reg_0(4 downto 0) => v1_reg_0(4 downto 0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_reset_blk_ramfifo is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gc1.count_reg[0]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    WR_RST_BUSY : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end final_accelerator_VGA_IF_0_0_reset_blk_ramfifo;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_reset_blk_ramfifo is
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\ : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of rd_rst_reg : signal is std.standard.true;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg1 : STD_LOGIC;
  attribute async_reg of rst_rd_reg1 : signal is "true";
  attribute msgon of rst_rd_reg1 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg1 : STD_LOGIC;
  attribute async_reg of rst_wr_reg1 : signal is "true";
  attribute msgon of rst_wr_reg1 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH of wr_rst_reg : signal is std.standard.true;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "no";
begin
  WR_RST_BUSY <= rst_d3;
  \gc1.count_reg[0]\(2 downto 0) <= rd_rst_reg(2 downto 0);
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d2;
  \out\(1 downto 0) <= wr_rst_reg(1 downto 0);
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d2,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst\: entity work.final_accelerator_VGA_IF_0_0_synchronizer_ff
     port map (
      in0(0) => rd_rst_asreg,
      \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\,
      \out\ => p_7_out,
      rd_clk => rd_clk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst\: entity work.final_accelerator_VGA_IF_0_0_synchronizer_ff_0
     port map (
      in0(0) => wr_rst_asreg,
      \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\,
      \out\ => p_8_out,
      wr_clk => wr_clk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst\: entity work.final_accelerator_VGA_IF_0_0_synchronizer_ff_1
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      in0(0) => rd_rst_asreg,
      \out\ => p_7_out,
      rd_clk => rd_clk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst\: entity work.final_accelerator_VGA_IF_0_0_synchronizer_ff_2
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      in0(0) => wr_rst_asreg,
      \out\ => p_8_out,
      wr_clk => wr_clk
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(2)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => rst,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => rst,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_wr_status_flags_as is
  port (
    full : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[10]\ : in STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[10]_0\ : in STD_LOGIC;
    v1_reg_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[10]_1\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d2_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC
  );
end final_accelerator_VGA_IF_0_0_wr_status_flags_as;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_wr_status_flags_as is
  signal \^almost_full\ : STD_LOGIC;
  signal c2_n_1 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal comp2 : STD_LOGIC;
  signal \gaf.c3_n_0\ : STD_LOGIC;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  almost_full <= \^almost_full\;
  full <= ram_full_i;
  \out\ <= ram_full_fb_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => ram_full_fb_i,
      O => E(0)
    );
c1: entity work.final_accelerator_VGA_IF_0_0_compare
     port map (
      comp1 => comp1,
      \gnxpm_cdc.rd_pntr_bin_reg[10]\ => \gnxpm_cdc.rd_pntr_bin_reg[10]\,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
c2: entity work.final_accelerator_VGA_IF_0_0_compare_3
     port map (
      comp1 => comp1,
      comp2 => comp2,
      \gnxpm_cdc.rd_pntr_bin_reg[10]\ => \gnxpm_cdc.rd_pntr_bin_reg[10]_0\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      \out\ => ram_full_fb_i,
      ram_full_i_reg => c2_n_1,
      v1_reg_0(4 downto 0) => v1_reg_0(4 downto 0),
      wr_en => wr_en
    );
\gaf.c3\: entity work.final_accelerator_VGA_IF_0_0_compare_4
     port map (
      almost_full => \^almost_full\,
      comp2 => comp2,
      \gaf.ram_almost_full_i_reg\ => \gaf.c3_n_0\,
      \gnxpm_cdc.rd_pntr_bin_reg[10]\ => \gnxpm_cdc.rd_pntr_bin_reg[10]_1\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      \out\ => ram_full_fb_i,
      v1_reg_1(4 downto 0) => v1_reg_1(4 downto 0),
      wr_en => wr_en
    );
\gaf.ram_almost_full_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gaf.c3_n_0\,
      PRE => \grstd1.grst_full.grst_f.rst_d2_reg\,
      Q => \^almost_full\
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => c2_n_1,
      PRE => \grstd1.grst_full.grst_f.rst_d2_reg\,
      Q => ram_full_fb_i
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => c2_n_1,
      PRE => \grstd1.grst_full.grst_f.rst_d2_reg\,
      Q => ram_full_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_blk_mem_gen_generic_cstr is
  port (
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_ram_rd_en : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d3_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    din : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end final_accelerator_VGA_IF_0_0_blk_mem_gen_generic_cstr;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.final_accelerator_VGA_IF_0_0_blk_mem_gen_prim_width
     port map (
      D(11 downto 0) => D(11 downto 0),
      Q(10 downto 0) => Q(10 downto 0),
      SR(0) => SR(0),
      WEA(0) => WEA(0),
      din(11 downto 0) => din(11 downto 0),
      \gic0.gc1.count_d3_reg[10]\(10 downto 0) => \gic0.gc1.count_d3_reg[10]\(10 downto 0),
      rd_clk => rd_clk,
      tmp_ram_rd_en => tmp_ram_rd_en,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_rd_logic is
  port (
    almost_empty : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \gc1.count_d2_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    tmp_ram_rd_en : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 10 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gnxpm_cdc.wr_pntr_bin_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gnxpm_cdc.wr_pntr_bin_reg[10]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 10 downto 0 );
    rd_en : in STD_LOGIC
  );
end final_accelerator_VGA_IF_0_0_rd_logic;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_rd_logic is
  signal \gr1.gr1_int.rfwft_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal rpntr_n_0 : STD_LOGIC;
  signal rpntr_n_12 : STD_LOGIC;
begin
\gr1.gr1_int.rfwft\: entity work.final_accelerator_VGA_IF_0_0_rd_fwft
     port map (
      E(0) => p_7_out,
      almost_empty => almost_empty,
      empty => empty,
      \goreg_bm.dout_i_reg[11]\(0) => E(0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(1 downto 0) => \out\(1 downto 0),
      \out\(1) => \gr1.gr1_int.rfwft_n_0\,
      \out\(0) => p_0_in(0),
      p_0_out => p_0_out,
      ram_empty_fb_i_reg => p_2_out,
      rd_clk => rd_clk,
      rd_en => rd_en,
      tmp_ram_rd_en => tmp_ram_rd_en,
      valid => valid
    );
\gras.gpe.rdpe\: entity work.final_accelerator_VGA_IF_0_0_rd_pe_as
     port map (
      S(3 downto 0) => S(3 downto 0),
      WR_PNTR_RD(9 downto 0) => WR_PNTR_RD(9 downto 0),
      \gnxpm_cdc.wr_pntr_bin_reg[10]\(2 downto 0) => \gnxpm_cdc.wr_pntr_bin_reg[10]\(2 downto 0),
      \gnxpm_cdc.wr_pntr_bin_reg[7]\(3 downto 0) => \gnxpm_cdc.wr_pntr_bin_reg[7]\(3 downto 0),
      \out\(0) => \out\(1),
      p_0_out => p_0_out,
      prog_empty => prog_empty,
      prog_empty_thresh(10 downto 0) => prog_empty_thresh(10 downto 0),
      ram_empty_fb_i_reg => p_2_out,
      rd_clk => rd_clk
    );
\gras.rsts\: entity work.final_accelerator_VGA_IF_0_0_rd_status_flags_as
     port map (
      \gc1.count_d1_reg[10]\ => rpntr_n_12,
      \gc1.count_d2_reg[10]\ => rpntr_n_0,
      \gpregsm1.curr_fwft_state_reg[1]\(1) => \gr1.gr1_int.rfwft_n_0\,
      \gpregsm1.curr_fwft_state_reg[1]\(0) => p_0_in(0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0) => \out\(1),
      \out\ => p_2_out,
      rd_clk => rd_clk,
      rd_en => rd_en,
      v1_reg(4 downto 0) => v1_reg(4 downto 0),
      v1_reg_0(4 downto 0) => v1_reg_0(4 downto 0)
    );
rpntr: entity work.final_accelerator_VGA_IF_0_0_rd_bin_cntr
     port map (
      E(0) => p_7_out,
      Q(10 downto 0) => Q(10 downto 0),
      WR_PNTR_RD(0) => WR_PNTR_RD(10),
      \gc1.count_d2_reg[9]_0\(9 downto 0) => \gc1.count_d2_reg[9]\(9 downto 0),
      \out\(0) => \out\(1),
      ram_empty_fb_i_reg => rpntr_n_0,
      ram_empty_fb_i_reg_0 => rpntr_n_12,
      rd_clk => rd_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_wr_logic is
  port (
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d2_reg[10]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d1_reg[10]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[10]\ : in STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[10]_0\ : in STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[10]_1\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    wr_en : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    prog_full_thresh : in STD_LOGIC_VECTOR ( 10 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end final_accelerator_VGA_IF_0_0_wr_logic;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_wr_logic is
  signal \^wea\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \c2/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gaf.c3/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gwas.wsts_n_1\ : STD_LOGIC;
  signal p_13_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wpntr_n_0 : STD_LOGIC;
  signal wpntr_n_1 : STD_LOGIC;
  signal wpntr_n_15 : STD_LOGIC;
  signal wpntr_n_16 : STD_LOGIC;
  signal wpntr_n_17 : STD_LOGIC;
  signal wpntr_n_18 : STD_LOGIC;
  signal wpntr_n_19 : STD_LOGIC;
  signal wpntr_n_2 : STD_LOGIC;
  signal wpntr_n_20 : STD_LOGIC;
  signal wpntr_n_21 : STD_LOGIC;
  signal wpntr_n_3 : STD_LOGIC;
begin
  WEA(0) <= \^wea\(0);
\gwas.gpf.wrpf\: entity work.final_accelerator_VGA_IF_0_0_wr_pf_as
     port map (
      AR(0) => AR(0),
      E(0) => \^wea\(0),
      Q(9 downto 0) => p_13_out(9 downto 0),
      S(3) => wpntr_n_0,
      S(2) => wpntr_n_1,
      S(1) => wpntr_n_2,
      S(0) => wpntr_n_3,
      \gic0.gc1.count_d2_reg[10]\(2) => wpntr_n_19,
      \gic0.gc1.count_d2_reg[10]\(1) => wpntr_n_20,
      \gic0.gc1.count_d2_reg[10]\(0) => wpntr_n_21,
      \gic0.gc1.count_d2_reg[7]\(3) => wpntr_n_15,
      \gic0.gc1.count_d2_reg[7]\(2) => wpntr_n_16,
      \gic0.gc1.count_d2_reg[7]\(1) => wpntr_n_17,
      \gic0.gc1.count_d2_reg[7]\(0) => wpntr_n_18,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      \out\ => \out\,
      prog_full => prog_full,
      prog_full_thresh(10 downto 0) => prog_full_thresh(10 downto 0),
      ram_full_fb_i_reg => \gwas.wsts_n_1\,
      wr_clk => wr_clk
    );
\gwas.wsts\: entity work.final_accelerator_VGA_IF_0_0_wr_status_flags_as
     port map (
      E(0) => \^wea\(0),
      almost_full => almost_full,
      full => full,
      \gnxpm_cdc.rd_pntr_bin_reg[10]\ => \gnxpm_cdc.rd_pntr_bin_reg[10]\,
      \gnxpm_cdc.rd_pntr_bin_reg[10]_0\ => \gnxpm_cdc.rd_pntr_bin_reg[10]_0\,
      \gnxpm_cdc.rd_pntr_bin_reg[10]_1\ => \gnxpm_cdc.rd_pntr_bin_reg[10]_1\,
      \grstd1.grst_full.grst_f.rst_d2_reg\ => \out\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      \out\ => \gwas.wsts_n_1\,
      v1_reg(4 downto 0) => \c1/v1_reg\(4 downto 0),
      v1_reg_0(4 downto 0) => \c2/v1_reg\(4 downto 0),
      v1_reg_1(4 downto 0) => \gaf.c3/v1_reg\(4 downto 0),
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wpntr: entity work.final_accelerator_VGA_IF_0_0_wr_bin_cntr
     port map (
      AR(0) => AR(0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(10 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(10 downto 0),
      E(0) => \^wea\(0),
      Q(10) => Q(0),
      Q(9 downto 0) => p_13_out(9 downto 0),
      RD_PNTR_WR(10 downto 0) => RD_PNTR_WR(10 downto 0),
      S(3) => wpntr_n_0,
      S(2) => wpntr_n_1,
      S(1) => wpntr_n_2,
      S(0) => wpntr_n_3,
      \gdiff.diff_pntr_pad_reg[11]\(2) => wpntr_n_19,
      \gdiff.diff_pntr_pad_reg[11]\(1) => wpntr_n_20,
      \gdiff.diff_pntr_pad_reg[11]\(0) => wpntr_n_21,
      \gdiff.diff_pntr_pad_reg[8]\(3) => wpntr_n_15,
      \gdiff.diff_pntr_pad_reg[8]\(2) => wpntr_n_16,
      \gdiff.diff_pntr_pad_reg[8]\(1) => wpntr_n_17,
      \gdiff.diff_pntr_pad_reg[8]\(0) => wpntr_n_18,
      \gic0.gc1.count_d1_reg[10]_0\(0) => \gic0.gc1.count_d1_reg[10]\(0),
      \gic0.gc1.count_d2_reg[10]_0\(0) => \gic0.gc1.count_d2_reg[10]\(0),
      v1_reg(4 downto 0) => \c1/v1_reg\(4 downto 0),
      v1_reg_0(4 downto 0) => \c2/v1_reg\(4 downto 0),
      v1_reg_1(4 downto 0) => \gaf.c3/v1_reg\(4 downto 0),
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_blk_mem_gen_top is
  port (
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_ram_rd_en : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d3_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    din : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end final_accelerator_VGA_IF_0_0_blk_mem_gen_top;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_blk_mem_gen_top is
begin
\valid.cstr\: entity work.final_accelerator_VGA_IF_0_0_blk_mem_gen_generic_cstr
     port map (
      D(11 downto 0) => D(11 downto 0),
      Q(10 downto 0) => Q(10 downto 0),
      SR(0) => SR(0),
      WEA(0) => WEA(0),
      din(11 downto 0) => din(11 downto 0),
      \gic0.gc1.count_d3_reg[10]\(10 downto 0) => \gic0.gc1.count_d3_reg[10]\(10 downto 0),
      rd_clk => rd_clk,
      tmp_ram_rd_en => tmp_ram_rd_en,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_blk_mem_gen_v8_3_5_synth is
  port (
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_ram_rd_en : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d3_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    din : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end final_accelerator_VGA_IF_0_0_blk_mem_gen_v8_3_5_synth;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_blk_mem_gen_v8_3_5_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.final_accelerator_VGA_IF_0_0_blk_mem_gen_top
     port map (
      D(11 downto 0) => D(11 downto 0),
      Q(10 downto 0) => Q(10 downto 0),
      SR(0) => SR(0),
      WEA(0) => WEA(0),
      din(11 downto 0) => din(11 downto 0),
      \gic0.gc1.count_d3_reg[10]\(10 downto 0) => \gic0.gc1.count_d3_reg[10]\(10 downto 0),
      rd_clk => rd_clk,
      tmp_ram_rd_en => tmp_ram_rd_en,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_blk_mem_gen_v8_3_5 is
  port (
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_ram_rd_en : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d3_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    din : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end final_accelerator_VGA_IF_0_0_blk_mem_gen_v8_3_5;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_blk_mem_gen_v8_3_5 is
begin
inst_blk_mem_gen: entity work.final_accelerator_VGA_IF_0_0_blk_mem_gen_v8_3_5_synth
     port map (
      D(11 downto 0) => D(11 downto 0),
      Q(10 downto 0) => Q(10 downto 0),
      SR(0) => SR(0),
      WEA(0) => WEA(0),
      din(11 downto 0) => din(11 downto 0),
      \gic0.gc1.count_d3_reg[10]\(10 downto 0) => \gic0.gc1.count_d3_reg[10]\(10 downto 0),
      rd_clk => rd_clk,
      tmp_ram_rd_en => tmp_ram_rd_en,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_memory is
  port (
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_ram_rd_en : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d3_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end final_accelerator_VGA_IF_0_0_memory;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_memory is
  signal doutb : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.final_accelerator_VGA_IF_0_0_blk_mem_gen_v8_3_5
     port map (
      D(11 downto 0) => doutb(11 downto 0),
      Q(10 downto 0) => Q(10 downto 0),
      SR(0) => SR(0),
      WEA(0) => WEA(0),
      din(11 downto 0) => din(11 downto 0),
      \gic0.gc1.count_d3_reg[10]\(10 downto 0) => \gic0.gc1.count_d3_reg[10]\(10 downto 0),
      rd_clk => rd_clk,
      tmp_ram_rd_en => tmp_ram_rd_en,
      wr_clk => wr_clk
    );
\goreg_bm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => doutb(0),
      Q => dout(0),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => doutb(10),
      Q => dout(10),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => doutb(11),
      Q => dout(11),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => doutb(1),
      Q => dout(1),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => doutb(2),
      Q => dout(2),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => doutb(3),
      Q => dout(3),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => doutb(4),
      Q => dout(4),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => doutb(5),
      Q => dout(5),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => doutb(6),
      Q => dout(6),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => doutb(7),
      Q => dout(7),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => doutb(8),
      Q => dout(8),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => doutb(9),
      Q => dout(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_fifo_generator_ramfifo is
  port (
    WR_RST_BUSY : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    almost_full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    wr_en : in STD_LOGIC;
    prog_full_thresh : in STD_LOGIC_VECTOR ( 10 downto 0 );
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 10 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rst : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
end final_accelerator_VGA_IF_0_0_fifo_generator_ramfifo;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_fifo_generator_ramfifo is
  signal \^wr_rst_busy\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_15\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_16\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_17\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_18\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_19\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_2\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_20\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_21\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_22\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_3\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_34\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_35\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_4\ : STD_LOGIC;
  signal \gras.rsts/c0/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gras.rsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 10 to 10 );
  signal p_22_out : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_23_out : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_5_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rd_rst_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal tmp_ram_rd_en : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal wr_pntr_plus3 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal wr_rst_i : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  WR_RST_BUSY <= \^wr_rst_busy\;
\gntv_or_sync_fifo.gcx.clkx\: entity work.final_accelerator_VGA_IF_0_0_clk_x_pntrs
     port map (
      AR(0) => wr_rst_i(0),
      D(0) => wr_pntr_plus3(10),
      Q(10 downto 0) => p_0_out_0(10 downto 0),
      RD_PNTR_WR(10 downto 0) => p_23_out(10 downto 0),
      S(3) => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      S(2) => \gntv_or_sync_fifo.gcx.clkx_n_1\,
      S(1) => \gntv_or_sync_fifo.gcx.clkx_n_2\,
      S(0) => \gntv_or_sync_fifo.gcx.clkx_n_3\,
      WR_PNTR_RD(10 downto 0) => p_22_out(10 downto 0),
      \gaf.ram_almost_full_i_reg\ => \gntv_or_sync_fifo.gcx.clkx_n_35\,
      \gc1.count_d1_reg[9]\(9 downto 0) => rd_pntr_plus1(9 downto 0),
      \gdiff.diff_pntr_pad_reg[11]\(2) => \gntv_or_sync_fifo.gcx.clkx_n_19\,
      \gdiff.diff_pntr_pad_reg[11]\(1) => \gntv_or_sync_fifo.gcx.clkx_n_20\,
      \gdiff.diff_pntr_pad_reg[11]\(0) => \gntv_or_sync_fifo.gcx.clkx_n_21\,
      \gdiff.diff_pntr_pad_reg[8]\(3) => \gntv_or_sync_fifo.gcx.clkx_n_15\,
      \gdiff.diff_pntr_pad_reg[8]\(2) => \gntv_or_sync_fifo.gcx.clkx_n_16\,
      \gdiff.diff_pntr_pad_reg[8]\(1) => \gntv_or_sync_fifo.gcx.clkx_n_17\,
      \gdiff.diff_pntr_pad_reg[8]\(0) => \gntv_or_sync_fifo.gcx.clkx_n_18\,
      \gic0.gc1.count_d1_reg[10]\(0) => wr_pntr_plus2(10),
      \gic0.gc1.count_d2_reg[10]\(0) => p_13_out(10),
      \gic0.gc1.count_d3_reg[10]\(10 downto 0) => p_12_out(10 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => rd_rst_i(1),
      ram_full_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_22\,
      ram_full_i_reg_0 => \gntv_or_sync_fifo.gcx.clkx_n_34\,
      rd_clk => rd_clk,
      v1_reg(4 downto 0) => \gras.rsts/c0/v1_reg\(4 downto 0),
      v1_reg_0(4 downto 0) => \gras.rsts/c1/v1_reg\(4 downto 0),
      wr_clk => wr_clk
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.final_accelerator_VGA_IF_0_0_rd_logic
     port map (
      E(0) => p_5_out,
      Q(10 downto 0) => p_0_out_0(10 downto 0),
      S(3) => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      S(2) => \gntv_or_sync_fifo.gcx.clkx_n_1\,
      S(1) => \gntv_or_sync_fifo.gcx.clkx_n_2\,
      S(0) => \gntv_or_sync_fifo.gcx.clkx_n_3\,
      WR_PNTR_RD(10 downto 0) => p_22_out(10 downto 0),
      almost_empty => almost_empty,
      empty => empty,
      \gc1.count_d2_reg[9]\(9 downto 0) => rd_pntr_plus1(9 downto 0),
      \gnxpm_cdc.wr_pntr_bin_reg[10]\(2) => \gntv_or_sync_fifo.gcx.clkx_n_19\,
      \gnxpm_cdc.wr_pntr_bin_reg[10]\(1) => \gntv_or_sync_fifo.gcx.clkx_n_20\,
      \gnxpm_cdc.wr_pntr_bin_reg[10]\(0) => \gntv_or_sync_fifo.gcx.clkx_n_21\,
      \gnxpm_cdc.wr_pntr_bin_reg[7]\(3) => \gntv_or_sync_fifo.gcx.clkx_n_15\,
      \gnxpm_cdc.wr_pntr_bin_reg[7]\(2) => \gntv_or_sync_fifo.gcx.clkx_n_16\,
      \gnxpm_cdc.wr_pntr_bin_reg[7]\(1) => \gntv_or_sync_fifo.gcx.clkx_n_17\,
      \gnxpm_cdc.wr_pntr_bin_reg[7]\(0) => \gntv_or_sync_fifo.gcx.clkx_n_18\,
      \out\(1) => rd_rst_i(2),
      \out\(0) => rd_rst_i(0),
      prog_empty => prog_empty,
      prog_empty_thresh(10 downto 0) => prog_empty_thresh(10 downto 0),
      rd_clk => rd_clk,
      rd_en => rd_en,
      tmp_ram_rd_en => tmp_ram_rd_en,
      v1_reg(4 downto 0) => \gras.rsts/c0/v1_reg\(4 downto 0),
      v1_reg_0(4 downto 0) => \gras.rsts/c1/v1_reg\(4 downto 0),
      valid => valid
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.final_accelerator_VGA_IF_0_0_wr_logic
     port map (
      AR(0) => wr_rst_i(1),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(10 downto 0) => p_12_out(10 downto 0),
      Q(0) => p_13_out(10),
      RD_PNTR_WR(10 downto 0) => p_23_out(10 downto 0),
      WEA(0) => \gntv_or_sync_fifo.gl0.wr_n_4\,
      almost_full => almost_full,
      full => full,
      \gic0.gc1.count_d1_reg[10]\(0) => wr_pntr_plus3(10),
      \gic0.gc1.count_d2_reg[10]\(0) => wr_pntr_plus2(10),
      \gnxpm_cdc.rd_pntr_bin_reg[10]\ => \gntv_or_sync_fifo.gcx.clkx_n_22\,
      \gnxpm_cdc.rd_pntr_bin_reg[10]_0\ => \gntv_or_sync_fifo.gcx.clkx_n_34\,
      \gnxpm_cdc.rd_pntr_bin_reg[10]_1\ => \gntv_or_sync_fifo.gcx.clkx_n_35\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \^wr_rst_busy\,
      \out\ => rst_full_ff_i,
      prog_full => prog_full,
      prog_full_thresh(10 downto 0) => prog_full_thresh(10 downto 0),
      wr_clk => wr_clk,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.final_accelerator_VGA_IF_0_0_memory
     port map (
      E(0) => p_5_out,
      Q(10 downto 0) => p_0_out_0(10 downto 0),
      SR(0) => rd_rst_i(0),
      WEA(0) => \gntv_or_sync_fifo.gl0.wr_n_4\,
      din(11 downto 0) => din(11 downto 0),
      dout(11 downto 0) => dout(11 downto 0),
      \gic0.gc1.count_d3_reg[10]\(10 downto 0) => p_12_out(10 downto 0),
      rd_clk => rd_clk,
      tmp_ram_rd_en => tmp_ram_rd_en,
      wr_clk => wr_clk
    );
rstblk: entity work.final_accelerator_VGA_IF_0_0_reset_blk_ramfifo
     port map (
      WR_RST_BUSY => \^wr_rst_busy\,
      \gc1.count_reg[0]\(2 downto 0) => rd_rst_i(2 downto 0),
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_ff_i,
      \out\(1 downto 0) => wr_rst_i(1 downto 0),
      rd_clk => rd_clk,
      rst => rst,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_fifo_generator_top is
  port (
    WR_RST_BUSY : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    almost_full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    wr_en : in STD_LOGIC;
    prog_full_thresh : in STD_LOGIC_VECTOR ( 10 downto 0 );
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 10 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rst : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
end final_accelerator_VGA_IF_0_0_fifo_generator_top;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_fifo_generator_top is
begin
\grf.rf\: entity work.final_accelerator_VGA_IF_0_0_fifo_generator_ramfifo
     port map (
      WR_RST_BUSY => WR_RST_BUSY,
      almost_empty => almost_empty,
      almost_full => almost_full,
      din(11 downto 0) => din(11 downto 0),
      dout(11 downto 0) => dout(11 downto 0),
      empty => empty,
      full => full,
      prog_empty => prog_empty,
      prog_empty_thresh(10 downto 0) => prog_empty_thresh(10 downto 0),
      prog_full => prog_full,
      prog_full_thresh(10 downto 0) => prog_full_thresh(10 downto 0),
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      valid => valid,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3_synth is
  port (
    WR_RST_BUSY : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    almost_full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    wr_en : in STD_LOGIC;
    prog_full_thresh : in STD_LOGIC_VECTOR ( 10 downto 0 );
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 10 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rst : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
end final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3_synth;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3_synth is
begin
\gconvfifo.rf\: entity work.final_accelerator_VGA_IF_0_0_fifo_generator_top
     port map (
      WR_RST_BUSY => WR_RST_BUSY,
      almost_empty => almost_empty,
      almost_full => almost_full,
      din(11 downto 0) => din(11 downto 0),
      dout(11 downto 0) => dout(11 downto 0),
      empty => empty,
      full => full,
      prog_empty => prog_empty,
      prog_empty_thresh(10 downto 0) => prog_empty_thresh(10 downto 0),
      prog_full => prog_full,
      prog_full_thresh(10 downto 0) => prog_full_thresh(10 downto 0),
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      valid => valid,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 10 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 10 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 10 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 10 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 10 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 10 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 11;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 12;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 12;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 2;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is "2kx18";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 3;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 2047;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 2046;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 3;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 11;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 2048;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 11;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 11;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 2048;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 11;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 : entity is 1;
end final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(10) <= \<const0>\;
  data_count(9) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  rd_data_count(10) <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(10) <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3_synth
     port map (
      WR_RST_BUSY => wr_rst_busy,
      almost_empty => almost_empty,
      almost_full => almost_full,
      din(11 downto 0) => din(11 downto 0),
      dout(11 downto 0) => dout(11 downto 0),
      empty => empty,
      full => full,
      prog_empty => prog_empty,
      prog_empty_thresh(10 downto 0) => prog_empty_thresh(10 downto 0),
      prog_full => prog_full,
      prog_full_thresh(10 downto 0) => prog_full_thresh(10 downto 0),
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      valid => valid,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_VGA_FIFO is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 10 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_accelerator_VGA_IF_0_0_VGA_FIFO : entity is "VGA_FIFO,fifo_generator_v13_1_3,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of final_accelerator_VGA_IF_0_0_VGA_FIFO : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of final_accelerator_VGA_IF_0_0_VGA_FIFO : entity is "fifo_generator_v13_1_3,Vivado 2016.4";
end final_accelerator_VGA_IF_0_0_VGA_FIFO;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_VGA_FIFO is
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 11;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 12;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 12;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 1;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 1;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 1;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 2;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "2kx18";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 2047;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 2046;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 3;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 11;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 2048;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 11;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 11;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 2048;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 11;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
begin
U0: entity work.final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(10 downto 0) => NLW_U0_data_count_UNCONNECTED(10 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(11 downto 0) => din(11 downto 0),
      dout(11 downto 0) => dout(11 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => prog_empty,
      prog_empty_thresh(10 downto 0) => prog_empty_thresh(10 downto 0),
      prog_empty_thresh_assert(10 downto 0) => B"00000000000",
      prog_empty_thresh_negate(10 downto 0) => B"00000000000",
      prog_full => prog_full,
      prog_full_thresh(10 downto 0) => prog_full_thresh(10 downto 0),
      prog_full_thresh_assert(10 downto 0) => B"00000000000",
      prog_full_thresh_negate(10 downto 0) => B"00000000000",
      rd_clk => rd_clk,
      rd_data_count(10 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(10 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => rst,
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => valid,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => wr_clk,
      wr_data_count(10 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(10 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_vga_if_ip is
  port (
    vga_data_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    valid : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    read_en_out : out STD_LOGIC;
    video_on : out STD_LOGIC;
    inbuff_empty : out STD_LOGIC;
    inbuff_almost_empty : out STD_LOGIC;
    inbuff_prog_empty : out STD_LOGIC;
    inbuff_valid : out STD_LOGIC;
    INIT_AXI_TXN : out STD_LOGIC;
    NET1274 : out STD_LOGIC;
    o_hsync : out STD_LOGIC;
    o_vsync : out STD_LOGIC;
    \axi_rdata_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[1]\ : out STD_LOGIC;
    \axi_rdata_reg[2]\ : out STD_LOGIC;
    \axi_rdata_reg[3]\ : out STD_LOGIC;
    \axi_rdata_reg[4]\ : out STD_LOGIC;
    \axi_rdata_reg[5]\ : out STD_LOGIC;
    \axi_rdata_reg[6]\ : out STD_LOGIC;
    \axi_rdata_reg[7]\ : out STD_LOGIC;
    \axi_rdata_reg[8]\ : out STD_LOGIC;
    \axi_rdata_reg[9]\ : out STD_LOGIC;
    \axi_rdata_reg[10]\ : out STD_LOGIC;
    \axi_rdata_reg[11]\ : out STD_LOGIC;
    \axi_rdata_reg[12]\ : out STD_LOGIC;
    \axi_rdata_reg[13]\ : out STD_LOGIC;
    \axi_rdata_reg[14]\ : out STD_LOGIC;
    \axi_rdata_reg[15]\ : out STD_LOGIC;
    \axi_rdata_reg[16]\ : out STD_LOGIC;
    \axi_rdata_reg[17]\ : out STD_LOGIC;
    \axi_rdata_reg[18]\ : out STD_LOGIC;
    \axi_rdata_reg[19]\ : out STD_LOGIC;
    \axi_rdata_reg[20]\ : out STD_LOGIC;
    \axi_rdata_reg[21]\ : out STD_LOGIC;
    \axi_rdata_reg[22]\ : out STD_LOGIC;
    \axi_rdata_reg[23]\ : out STD_LOGIC;
    \axi_rdata_reg[24]\ : out STD_LOGIC;
    \axi_rdata_reg[25]\ : out STD_LOGIC;
    \axi_rdata_reg[26]\ : out STD_LOGIC;
    \axi_rdata_reg[27]\ : out STD_LOGIC;
    \axi_rdata_reg[28]\ : out STD_LOGIC;
    \axi_rdata_reg[29]\ : out STD_LOGIC;
    \axi_rdata_reg[30]\ : out STD_LOGIC;
    \axi_rdata_reg[31]\ : out STD_LOGIC;
    \axi_rdata_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_vga_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    i_axi_master_clk : in STD_LOGIC;
    i_VGA_CLK : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    int_read_next : in STD_LOGIC;
    i_axi_slave_clk : in STD_LOGIC;
    int_rdone : in STD_LOGIC;
    \axi_araddr_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_reset_n : in STD_LOGIC;
    \int_slv_reg_wren_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    i_start_display_irq : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \wr_slv_reg1_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \wr_slv_reg2_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \wr_slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \wr_slv_reg4_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end final_accelerator_VGA_IF_0_0_vga_if_ip;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_vga_if_ip is
  signal BUS1258 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal BUS1262 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal BUS1401 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal NET1254 : STD_LOGIC;
  signal \^net1274\ : STD_LOGIC;
  signal NET1303 : STD_LOGIC;
  signal NET1312 : STD_LOGIC;
  signal NET182 : STD_LOGIC;
  signal VGA_CNTLR_n_1 : STD_LOGIC;
  signal pixel_x : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pixel_y : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^read_en_out\ : STD_LOGIC;
  signal \^valid\ : STD_LOGIC;
  signal \^vga_data_out\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of VGA_IMAGE_FIFO : label is "VGA_FIFO,fifo_generator_v13_1_3,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of VGA_IMAGE_FIFO : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of VGA_IMAGE_FIFO : label is "fifo_generator_v13_1_3,Vivado 2016.4";
begin
  NET1274 <= \^net1274\;
  read_en_out <= \^read_en_out\;
  valid <= \^valid\;
  vga_data_out(11 downto 0) <= \^vga_data_out\(11 downto 0);
VGA_CNTLR: entity work.final_accelerator_VGA_IF_0_0_vga_controller
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(0) => E(0),
      INIT_AXI_TXN => INIT_AXI_TXN,
      INIT_AXI_TXN_reg_0 => VGA_CNTLR_n_1,
      Q(0) => Q(0),
      \axi_araddr_reg[3]\(1 downto 0) => \axi_araddr_reg[3]\(1 downto 0),
      \axi_rdata_reg[0]\ => \axi_rdata_reg[0]\,
      \axi_rdata_reg[10]\ => \axi_rdata_reg[10]\,
      \axi_rdata_reg[11]\ => \axi_rdata_reg[11]\,
      \axi_rdata_reg[12]\ => \axi_rdata_reg[12]\,
      \axi_rdata_reg[13]\ => \axi_rdata_reg[13]\,
      \axi_rdata_reg[14]\ => \axi_rdata_reg[14]\,
      \axi_rdata_reg[15]\ => \axi_rdata_reg[15]\,
      \axi_rdata_reg[16]\ => \axi_rdata_reg[16]\,
      \axi_rdata_reg[17]\ => \axi_rdata_reg[17]\,
      \axi_rdata_reg[18]\ => \axi_rdata_reg[18]\,
      \axi_rdata_reg[19]\ => \axi_rdata_reg[19]\,
      \axi_rdata_reg[1]\ => \axi_rdata_reg[1]\,
      \axi_rdata_reg[20]\ => \axi_rdata_reg[20]\,
      \axi_rdata_reg[21]\ => \axi_rdata_reg[21]\,
      \axi_rdata_reg[22]\ => \axi_rdata_reg[22]\,
      \axi_rdata_reg[23]\ => \axi_rdata_reg[23]\,
      \axi_rdata_reg[24]\ => \axi_rdata_reg[24]\,
      \axi_rdata_reg[25]\ => \axi_rdata_reg[25]\,
      \axi_rdata_reg[26]\ => \axi_rdata_reg[26]\,
      \axi_rdata_reg[27]\ => \axi_rdata_reg[27]\,
      \axi_rdata_reg[28]\ => \axi_rdata_reg[28]\,
      \axi_rdata_reg[29]\ => \axi_rdata_reg[29]\,
      \axi_rdata_reg[2]\ => \axi_rdata_reg[2]\,
      \axi_rdata_reg[30]\ => \axi_rdata_reg[30]\,
      \axi_rdata_reg[31]\ => \axi_rdata_reg[31]\,
      \axi_rdata_reg[31]_0\(31 downto 0) => \axi_rdata_reg[31]_0\(31 downto 0),
      \axi_rdata_reg[3]\ => \axi_rdata_reg[3]\,
      \axi_rdata_reg[4]\ => \axi_rdata_reg[4]\,
      \axi_rdata_reg[5]\ => \axi_rdata_reg[5]\,
      \axi_rdata_reg[6]\ => \axi_rdata_reg[6]\,
      \axi_rdata_reg[7]\ => \axi_rdata_reg[7]\,
      \axi_rdata_reg[8]\ => \axi_rdata_reg[8]\,
      \axi_rdata_reg[9]\ => \axi_rdata_reg[9]\,
      i_axi_master_clk => i_axi_master_clk,
      i_axi_slave_clk => i_axi_slave_clk,
      i_reset_n => i_reset_n,
      i_start_display_irq => i_start_display_irq,
      int_rdone => int_rdone,
      int_read_next => int_read_next,
      \int_slv_reg_wren_reg[4]\(4 downto 0) => \int_slv_reg_wren_reg[4]\(4 downto 0),
      \pixel_x_reg[9]\(9 downto 0) => pixel_x(9 downto 0),
      \pixel_y_reg[9]\(9 downto 0) => pixel_y(9 downto 0),
      start_display_reg_0 => \^net1274\,
      \wr_slv_reg1_reg[31]\(31 downto 0) => \wr_slv_reg1_reg[31]\(31 downto 0),
      \wr_slv_reg2_reg[31]\(31 downto 0) => \wr_slv_reg2_reg[31]\(31 downto 0),
      \wr_slv_reg3_reg[31]\(31 downto 0) => \wr_slv_reg3_reg[31]\(31 downto 0),
      \wr_slv_reg4_reg[31]\(31 downto 0) => \wr_slv_reg4_reg[31]\(31 downto 0)
    );
VGA_CROSS_CLK: entity work.final_accelerator_VGA_IF_0_0_cross_clk_vga
     port map (
      BUS1262(9 downto 0) => BUS1262(9 downto 0),
      NET1254 => NET1254,
      NET1274 => \^net1274\,
      Q(9 downto 0) => pixel_y(9 downto 0),
      almost_empty => NET1312,
      empty => NET1303,
      i_VGA_CLK => i_VGA_CLK,
      i_axi_slave_clk => i_axi_slave_clk,
      i_reset_n => VGA_CNTLR_n_1,
      inbuff_almost_empty => inbuff_almost_empty,
      inbuff_empty => inbuff_empty,
      inbuff_prog_empty => inbuff_prog_empty,
      inbuff_valid => inbuff_valid,
      \pixel_counters_reg[25]\(9 downto 0) => pixel_x(9 downto 0),
      prog_empty => NET182,
      prog_empty_thresh(0) => BUS1401(9),
      read_en_out => \^read_en_out\,
      \v_count_reg[9]\(9 downto 0) => BUS1258(9 downto 0),
      valid => \^valid\,
      video_on => video_on
    );
VGA_IF: entity work.final_accelerator_VGA_IF_0_0_vga_sync
     port map (
      BUS1262(9 downto 0) => BUS1262(9 downto 0),
      NET1254 => NET1254,
      Q(9 downto 0) => BUS1258(9 downto 0),
      i_VGA_CLK => i_VGA_CLK,
      i_reset_n => VGA_CNTLR_n_1,
      o_hsync => o_hsync,
      o_vga_data(11 downto 0) => o_vga_data(11 downto 0),
      o_vsync => o_vsync,
      prog_empty => NET182,
      read_en_out => \^read_en_out\,
      valid => \^valid\,
      vga_data_out(11 downto 0) => \^vga_data_out\(11 downto 0)
    );
VGA_IMAGE_FIFO: entity work.final_accelerator_VGA_IF_0_0_VGA_FIFO
     port map (
      almost_empty => NET1312,
      almost_full => almost_full,
      din(11 downto 0) => din(11 downto 0),
      dout(11 downto 0) => \^vga_data_out\(11 downto 0),
      empty => NET1303,
      full => full,
      prog_empty => NET182,
      prog_empty_thresh(10) => '0',
      prog_empty_thresh(9) => BUS1401(9),
      prog_empty_thresh(8) => '0',
      prog_empty_thresh(7) => BUS1401(9),
      prog_empty_thresh(6 downto 0) => B"0000000",
      prog_full => prog_full,
      prog_full_thresh(10 downto 0) => B"11110000000",
      rd_clk => i_VGA_CLK,
      rd_en => \^read_en_out\,
      rst => VGA_CNTLR_n_1,
      valid => \^valid\,
      wr_clk => i_axi_master_clk,
      wr_en => int_read_next
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0_VGA_IF_v1_0 is
  port (
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    s_axi_intr_wready : out STD_LOGIC;
    s_axi_intr_awready : out STD_LOGIC;
    s_axi_intr_arready : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 21 downto 0 );
    vga_data_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    pixel_valid_out : out STD_LOGIC;
    read_en_out : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arvalid : out STD_LOGIC;
    o_vga_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s_axi_intr_bvalid : out STD_LOGIC;
    s_axi_intr_rvalid : out STD_LOGIC;
    s_axi_intr_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    irq : out STD_LOGIC;
    o_hsync : out STD_LOGIC;
    o_vsync : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_intr_awvalid : in STD_LOGIC;
    s_axi_intr_wvalid : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    s_axi_intr_arvalid : in STD_LOGIC;
    s_axi_intr_aresetn : in STD_LOGIC;
    i_axi_master_clk : in STD_LOGIC;
    i_VGA_CLK : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_axi_slave_clk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_aclk : in STD_LOGIC;
    s_axi_intr_aclk : in STD_LOGIC;
    s_axi_intr_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    i_reset_n : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    i_start_display_irq : in STD_LOGIC;
    m00_axi_rlast : in STD_LOGIC;
    s_axi_intr_bready : in STD_LOGIC;
    s_axi_intr_rready : in STD_LOGIC;
    s_axi_intr_wdata : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end final_accelerator_VGA_IF_0_0_VGA_IF_v1_0;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0_VGA_IF_v1_0 is
  signal INIT_AXI_TXN : STD_LOGIC;
  signal NET1274 : STD_LOGIC;
  signal VGA_IF_v1_0_M00_AXI_inst_n_25 : STD_LOGIC;
  signal VGA_IF_v1_0_M00_AXI_inst_n_26 : STD_LOGIC;
  signal VGA_IF_v1_0_M00_AXI_inst_n_27 : STD_LOGIC;
  signal VGA_IF_v1_0_M00_AXI_inst_n_28 : STD_LOGIC;
  signal VGA_IF_v1_0_M00_AXI_inst_n_29 : STD_LOGIC;
  signal VGA_IF_v1_0_M00_AXI_inst_n_30 : STD_LOGIC;
  signal VGA_IF_v1_0_M00_AXI_inst_n_31 : STD_LOGIC;
  signal VGA_IF_v1_0_M00_AXI_inst_n_32 : STD_LOGIC;
  signal VGA_IF_v1_0_M00_AXI_inst_n_33 : STD_LOGIC;
  signal VGA_IF_v1_0_M00_AXI_inst_n_34 : STD_LOGIC;
  signal VGA_IF_v1_0_M00_AXI_inst_n_35 : STD_LOGIC;
  signal VGA_IF_v1_0_M00_AXI_inst_n_36 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_10 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_102 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_106 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_11 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_12 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_13 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_14 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_15 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_16 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_17 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_18 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_19 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_20 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_21 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_22 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_23 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_24 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_25 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_26 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_27 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_28 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_29 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_30 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_31 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_32 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_33 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_34 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_35 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_36 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_37 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_38 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_39 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_42 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_5 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_58 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_6 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_66 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_7 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_8 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_82 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_86 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_9 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_90 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_94 : STD_LOGIC;
  signal VGA_IF_v1_0_S00_AXI_inst_n_98 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal fifo_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal inbuff_almost_empty : STD_LOGIC;
  signal inbuff_empty : STD_LOGIC;
  signal inbuff_prog_empty : STD_LOGIC;
  signal inbuff_valid : STD_LOGIC;
  signal int_inbuff_almost_full : STD_LOGIC;
  signal int_inbuff_full : STD_LOGIC;
  signal int_inbuff_prog_full : STD_LOGIC;
  signal int_o_start_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal int_rdone : STD_LOGIC;
  signal int_read_next : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal slv_reg_wren : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vga_if_ip_inst_n_26 : STD_LOGIC;
  signal vga_if_ip_inst_n_28 : STD_LOGIC;
  signal vga_if_ip_inst_n_29 : STD_LOGIC;
  signal vga_if_ip_inst_n_30 : STD_LOGIC;
  signal vga_if_ip_inst_n_31 : STD_LOGIC;
  signal vga_if_ip_inst_n_32 : STD_LOGIC;
  signal vga_if_ip_inst_n_33 : STD_LOGIC;
  signal vga_if_ip_inst_n_34 : STD_LOGIC;
  signal vga_if_ip_inst_n_35 : STD_LOGIC;
  signal vga_if_ip_inst_n_36 : STD_LOGIC;
  signal vga_if_ip_inst_n_37 : STD_LOGIC;
  signal vga_if_ip_inst_n_38 : STD_LOGIC;
  signal vga_if_ip_inst_n_39 : STD_LOGIC;
  signal vga_if_ip_inst_n_40 : STD_LOGIC;
  signal vga_if_ip_inst_n_41 : STD_LOGIC;
  signal vga_if_ip_inst_n_42 : STD_LOGIC;
  signal vga_if_ip_inst_n_43 : STD_LOGIC;
  signal vga_if_ip_inst_n_44 : STD_LOGIC;
  signal vga_if_ip_inst_n_45 : STD_LOGIC;
  signal vga_if_ip_inst_n_46 : STD_LOGIC;
  signal vga_if_ip_inst_n_47 : STD_LOGIC;
  signal vga_if_ip_inst_n_48 : STD_LOGIC;
  signal vga_if_ip_inst_n_49 : STD_LOGIC;
  signal vga_if_ip_inst_n_50 : STD_LOGIC;
  signal vga_if_ip_inst_n_51 : STD_LOGIC;
  signal vga_if_ip_inst_n_52 : STD_LOGIC;
  signal vga_if_ip_inst_n_53 : STD_LOGIC;
  signal vga_if_ip_inst_n_54 : STD_LOGIC;
  signal vga_if_ip_inst_n_55 : STD_LOGIC;
  signal vga_if_ip_inst_n_56 : STD_LOGIC;
  signal vga_if_ip_inst_n_57 : STD_LOGIC;
  signal vga_if_ip_inst_n_58 : STD_LOGIC;
  signal video_on : STD_LOGIC;
  signal wr_slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal wr_slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal wr_slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal wr_slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 1 );
begin
VGA_IF_v1_0_M00_AXI_inst: entity work.final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_M00_AXI
     port map (
      INIT_AXI_TXN => INIT_AXI_TXN,
      din(11) => VGA_IF_v1_0_M00_AXI_inst_n_25,
      din(10) => VGA_IF_v1_0_M00_AXI_inst_n_26,
      din(9) => VGA_IF_v1_0_M00_AXI_inst_n_27,
      din(8) => VGA_IF_v1_0_M00_AXI_inst_n_28,
      din(7) => VGA_IF_v1_0_M00_AXI_inst_n_29,
      din(6) => VGA_IF_v1_0_M00_AXI_inst_n_30,
      din(5) => VGA_IF_v1_0_M00_AXI_inst_n_31,
      din(4) => VGA_IF_v1_0_M00_AXI_inst_n_32,
      din(3) => VGA_IF_v1_0_M00_AXI_inst_n_33,
      din(2) => VGA_IF_v1_0_M00_AXI_inst_n_34,
      din(1) => VGA_IF_v1_0_M00_AXI_inst_n_35,
      din(0) => VGA_IF_v1_0_M00_AXI_inst_n_36,
      int_rdone => int_rdone,
      int_read_next => int_read_next,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(21 downto 0) => m00_axi_araddr(21 downto 0),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arready => m00_axi_arready,
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_rdata(11 downto 0) => m00_axi_rdata(11 downto 0),
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_rready => m00_axi_rready,
      m00_axi_rvalid => m00_axi_rvalid,
      prog_full => int_inbuff_prog_full
    );
VGA_IF_v1_0_S00_AXI_inst: entity work.final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_S00_AXI
     port map (
      D(31) => VGA_IF_v1_0_S00_AXI_inst_n_5,
      D(30) => VGA_IF_v1_0_S00_AXI_inst_n_6,
      D(29) => VGA_IF_v1_0_S00_AXI_inst_n_7,
      D(28) => VGA_IF_v1_0_S00_AXI_inst_n_8,
      D(27) => VGA_IF_v1_0_S00_AXI_inst_n_9,
      D(26) => VGA_IF_v1_0_S00_AXI_inst_n_10,
      D(25) => VGA_IF_v1_0_S00_AXI_inst_n_11,
      D(24) => VGA_IF_v1_0_S00_AXI_inst_n_12,
      D(23) => VGA_IF_v1_0_S00_AXI_inst_n_13,
      D(22) => VGA_IF_v1_0_S00_AXI_inst_n_14,
      D(21) => VGA_IF_v1_0_S00_AXI_inst_n_15,
      D(20) => VGA_IF_v1_0_S00_AXI_inst_n_16,
      D(19) => VGA_IF_v1_0_S00_AXI_inst_n_17,
      D(18) => VGA_IF_v1_0_S00_AXI_inst_n_18,
      D(17) => VGA_IF_v1_0_S00_AXI_inst_n_19,
      D(16) => VGA_IF_v1_0_S00_AXI_inst_n_20,
      D(15) => VGA_IF_v1_0_S00_AXI_inst_n_21,
      D(14) => VGA_IF_v1_0_S00_AXI_inst_n_22,
      D(13) => VGA_IF_v1_0_S00_AXI_inst_n_23,
      D(12) => VGA_IF_v1_0_S00_AXI_inst_n_24,
      D(11) => VGA_IF_v1_0_S00_AXI_inst_n_25,
      D(10) => VGA_IF_v1_0_S00_AXI_inst_n_26,
      D(9) => VGA_IF_v1_0_S00_AXI_inst_n_27,
      D(8) => VGA_IF_v1_0_S00_AXI_inst_n_28,
      D(7) => VGA_IF_v1_0_S00_AXI_inst_n_29,
      D(6) => VGA_IF_v1_0_S00_AXI_inst_n_30,
      D(5) => VGA_IF_v1_0_S00_AXI_inst_n_31,
      D(4) => VGA_IF_v1_0_S00_AXI_inst_n_32,
      D(3) => VGA_IF_v1_0_S00_AXI_inst_n_33,
      D(2) => VGA_IF_v1_0_S00_AXI_inst_n_34,
      D(1) => VGA_IF_v1_0_S00_AXI_inst_n_35,
      D(0) => VGA_IF_v1_0_S00_AXI_inst_n_36,
      E(0) => VGA_IF_v1_0_S00_AXI_inst_n_42,
      NET1274 => NET1274,
      Q(4) => VGA_IF_v1_0_S00_AXI_inst_n_37,
      Q(3) => VGA_IF_v1_0_S00_AXI_inst_n_38,
      Q(2) => VGA_IF_v1_0_S00_AXI_inst_n_39,
      Q(1) => p_0_in0,
      Q(0) => slv_reg_wren(0),
      almost_full => int_inbuff_almost_full,
      \axi_araddr_reg[3]_0\(1 downto 0) => axi_araddr(3 downto 2),
      \fifo_reg_reg[31]\(31 downto 25) => wr_slv_reg4(31 downto 25),
      \fifo_reg_reg[31]\(24) => VGA_IF_v1_0_S00_AXI_inst_n_82,
      \fifo_reg_reg[31]\(23 downto 21) => wr_slv_reg4(23 downto 21),
      \fifo_reg_reg[31]\(20) => VGA_IF_v1_0_S00_AXI_inst_n_86,
      \fifo_reg_reg[31]\(19 downto 17) => wr_slv_reg4(19 downto 17),
      \fifo_reg_reg[31]\(16) => VGA_IF_v1_0_S00_AXI_inst_n_90,
      \fifo_reg_reg[31]\(15 downto 13) => wr_slv_reg4(15 downto 13),
      \fifo_reg_reg[31]\(12) => VGA_IF_v1_0_S00_AXI_inst_n_94,
      \fifo_reg_reg[31]\(11 downto 9) => wr_slv_reg4(11 downto 9),
      \fifo_reg_reg[31]\(8) => VGA_IF_v1_0_S00_AXI_inst_n_98,
      \fifo_reg_reg[31]\(7 downto 5) => wr_slv_reg4(7 downto 5),
      \fifo_reg_reg[31]\(4) => VGA_IF_v1_0_S00_AXI_inst_n_102,
      \fifo_reg_reg[31]\(3 downto 1) => wr_slv_reg4(3 downto 1),
      \fifo_reg_reg[31]\(0) => VGA_IF_v1_0_S00_AXI_inst_n_106,
      \fifo_reg_reg[31]_0\(31 downto 0) => fifo_reg(31 downto 0),
      full => int_inbuff_full,
      \image_data_addr_reg_reg[31]\(31 downto 0) => wr_slv_reg2(31 downto 0),
      inbuff_almost_empty => inbuff_almost_empty,
      inbuff_empty => inbuff_empty,
      inbuff_prog_empty => inbuff_prog_empty,
      inbuff_valid => inbuff_valid,
      \pixel_counters_reg[0]\ => vga_if_ip_inst_n_26,
      \pixel_counters_reg[10]\ => vga_if_ip_inst_n_37,
      \pixel_counters_reg[11]\ => vga_if_ip_inst_n_38,
      \pixel_counters_reg[12]\ => vga_if_ip_inst_n_39,
      \pixel_counters_reg[13]\ => vga_if_ip_inst_n_40,
      \pixel_counters_reg[14]\ => vga_if_ip_inst_n_41,
      \pixel_counters_reg[15]\ => vga_if_ip_inst_n_42,
      \pixel_counters_reg[16]\ => vga_if_ip_inst_n_43,
      \pixel_counters_reg[17]\ => vga_if_ip_inst_n_44,
      \pixel_counters_reg[18]\ => vga_if_ip_inst_n_45,
      \pixel_counters_reg[19]\ => vga_if_ip_inst_n_46,
      \pixel_counters_reg[1]\ => vga_if_ip_inst_n_28,
      \pixel_counters_reg[20]\ => vga_if_ip_inst_n_47,
      \pixel_counters_reg[21]\ => vga_if_ip_inst_n_48,
      \pixel_counters_reg[22]\ => vga_if_ip_inst_n_49,
      \pixel_counters_reg[23]\ => vga_if_ip_inst_n_50,
      \pixel_counters_reg[24]\ => vga_if_ip_inst_n_51,
      \pixel_counters_reg[25]\ => vga_if_ip_inst_n_52,
      \pixel_counters_reg[26]\ => vga_if_ip_inst_n_53,
      \pixel_counters_reg[27]\ => vga_if_ip_inst_n_54,
      \pixel_counters_reg[28]\ => vga_if_ip_inst_n_55,
      \pixel_counters_reg[29]\ => vga_if_ip_inst_n_56,
      \pixel_counters_reg[2]\ => vga_if_ip_inst_n_29,
      \pixel_counters_reg[30]\ => vga_if_ip_inst_n_57,
      \pixel_counters_reg[31]\(31 downto 0) => wr_slv_reg3(31 downto 0),
      \pixel_counters_reg[31]_0\ => vga_if_ip_inst_n_58,
      \pixel_counters_reg[3]\ => vga_if_ip_inst_n_30,
      \pixel_counters_reg[4]\ => vga_if_ip_inst_n_31,
      \pixel_counters_reg[5]\ => vga_if_ip_inst_n_32,
      \pixel_counters_reg[6]\ => vga_if_ip_inst_n_33,
      \pixel_counters_reg[7]\ => vga_if_ip_inst_n_34,
      \pixel_counters_reg[8]\ => vga_if_ip_inst_n_35,
      \pixel_counters_reg[9]\ => vga_if_ip_inst_n_36,
      prog_full => int_inbuff_prog_full,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \start_reg_reg[0]\(0) => int_o_start_reg(0),
      \status_reg_reg[31]\(31 downto 17) => wr_slv_reg1(31 downto 17),
      \status_reg_reg[31]\(16) => VGA_IF_v1_0_S00_AXI_inst_n_58,
      \status_reg_reg[31]\(15 downto 9) => wr_slv_reg1(15 downto 9),
      \status_reg_reg[31]\(8) => VGA_IF_v1_0_S00_AXI_inst_n_66,
      \status_reg_reg[31]\(7 downto 0) => wr_slv_reg1(7 downto 0),
      video_on => video_on
    );
VGA_IF_v1_0_S_AXI_INTR_inst: entity work.final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_S_AXI_INTR
     port map (
      irq => irq,
      s_axi_intr_aclk => s_axi_intr_aclk,
      s_axi_intr_araddr(2 downto 0) => s_axi_intr_araddr(2 downto 0),
      s_axi_intr_aresetn => s_axi_intr_aresetn,
      s_axi_intr_arready => s_axi_intr_arready,
      s_axi_intr_arvalid => s_axi_intr_arvalid,
      s_axi_intr_awaddr(2 downto 0) => s_axi_intr_awaddr(2 downto 0),
      s_axi_intr_awready => s_axi_intr_awready,
      s_axi_intr_awvalid => s_axi_intr_awvalid,
      s_axi_intr_bready => s_axi_intr_bready,
      s_axi_intr_bvalid => s_axi_intr_bvalid,
      s_axi_intr_rdata(0) => s_axi_intr_rdata(0),
      s_axi_intr_rready => s_axi_intr_rready,
      s_axi_intr_rvalid => s_axi_intr_rvalid,
      s_axi_intr_wdata(0) => s_axi_intr_wdata(0),
      s_axi_intr_wready => s_axi_intr_wready,
      s_axi_intr_wvalid => s_axi_intr_wvalid
    );
vga_if_ip_inst: entity work.final_accelerator_VGA_IF_0_0_vga_if_ip
     port map (
      D(31) => VGA_IF_v1_0_S00_AXI_inst_n_5,
      D(30) => VGA_IF_v1_0_S00_AXI_inst_n_6,
      D(29) => VGA_IF_v1_0_S00_AXI_inst_n_7,
      D(28) => VGA_IF_v1_0_S00_AXI_inst_n_8,
      D(27) => VGA_IF_v1_0_S00_AXI_inst_n_9,
      D(26) => VGA_IF_v1_0_S00_AXI_inst_n_10,
      D(25) => VGA_IF_v1_0_S00_AXI_inst_n_11,
      D(24) => VGA_IF_v1_0_S00_AXI_inst_n_12,
      D(23) => VGA_IF_v1_0_S00_AXI_inst_n_13,
      D(22) => VGA_IF_v1_0_S00_AXI_inst_n_14,
      D(21) => VGA_IF_v1_0_S00_AXI_inst_n_15,
      D(20) => VGA_IF_v1_0_S00_AXI_inst_n_16,
      D(19) => VGA_IF_v1_0_S00_AXI_inst_n_17,
      D(18) => VGA_IF_v1_0_S00_AXI_inst_n_18,
      D(17) => VGA_IF_v1_0_S00_AXI_inst_n_19,
      D(16) => VGA_IF_v1_0_S00_AXI_inst_n_20,
      D(15) => VGA_IF_v1_0_S00_AXI_inst_n_21,
      D(14) => VGA_IF_v1_0_S00_AXI_inst_n_22,
      D(13) => VGA_IF_v1_0_S00_AXI_inst_n_23,
      D(12) => VGA_IF_v1_0_S00_AXI_inst_n_24,
      D(11) => VGA_IF_v1_0_S00_AXI_inst_n_25,
      D(10) => VGA_IF_v1_0_S00_AXI_inst_n_26,
      D(9) => VGA_IF_v1_0_S00_AXI_inst_n_27,
      D(8) => VGA_IF_v1_0_S00_AXI_inst_n_28,
      D(7) => VGA_IF_v1_0_S00_AXI_inst_n_29,
      D(6) => VGA_IF_v1_0_S00_AXI_inst_n_30,
      D(5) => VGA_IF_v1_0_S00_AXI_inst_n_31,
      D(4) => VGA_IF_v1_0_S00_AXI_inst_n_32,
      D(3) => VGA_IF_v1_0_S00_AXI_inst_n_33,
      D(2) => VGA_IF_v1_0_S00_AXI_inst_n_34,
      D(1) => VGA_IF_v1_0_S00_AXI_inst_n_35,
      D(0) => VGA_IF_v1_0_S00_AXI_inst_n_36,
      E(0) => VGA_IF_v1_0_S00_AXI_inst_n_42,
      INIT_AXI_TXN => INIT_AXI_TXN,
      NET1274 => NET1274,
      Q(0) => int_o_start_reg(0),
      almost_full => int_inbuff_almost_full,
      \axi_araddr_reg[3]\(1 downto 0) => axi_araddr(3 downto 2),
      \axi_rdata_reg[0]\ => vga_if_ip_inst_n_26,
      \axi_rdata_reg[10]\ => vga_if_ip_inst_n_37,
      \axi_rdata_reg[11]\ => vga_if_ip_inst_n_38,
      \axi_rdata_reg[12]\ => vga_if_ip_inst_n_39,
      \axi_rdata_reg[13]\ => vga_if_ip_inst_n_40,
      \axi_rdata_reg[14]\ => vga_if_ip_inst_n_41,
      \axi_rdata_reg[15]\ => vga_if_ip_inst_n_42,
      \axi_rdata_reg[16]\ => vga_if_ip_inst_n_43,
      \axi_rdata_reg[17]\ => vga_if_ip_inst_n_44,
      \axi_rdata_reg[18]\ => vga_if_ip_inst_n_45,
      \axi_rdata_reg[19]\ => vga_if_ip_inst_n_46,
      \axi_rdata_reg[1]\ => vga_if_ip_inst_n_28,
      \axi_rdata_reg[20]\ => vga_if_ip_inst_n_47,
      \axi_rdata_reg[21]\ => vga_if_ip_inst_n_48,
      \axi_rdata_reg[22]\ => vga_if_ip_inst_n_49,
      \axi_rdata_reg[23]\ => vga_if_ip_inst_n_50,
      \axi_rdata_reg[24]\ => vga_if_ip_inst_n_51,
      \axi_rdata_reg[25]\ => vga_if_ip_inst_n_52,
      \axi_rdata_reg[26]\ => vga_if_ip_inst_n_53,
      \axi_rdata_reg[27]\ => vga_if_ip_inst_n_54,
      \axi_rdata_reg[28]\ => vga_if_ip_inst_n_55,
      \axi_rdata_reg[29]\ => vga_if_ip_inst_n_56,
      \axi_rdata_reg[2]\ => vga_if_ip_inst_n_29,
      \axi_rdata_reg[30]\ => vga_if_ip_inst_n_57,
      \axi_rdata_reg[31]\ => vga_if_ip_inst_n_58,
      \axi_rdata_reg[31]_0\(31 downto 0) => fifo_reg(31 downto 0),
      \axi_rdata_reg[3]\ => vga_if_ip_inst_n_30,
      \axi_rdata_reg[4]\ => vga_if_ip_inst_n_31,
      \axi_rdata_reg[5]\ => vga_if_ip_inst_n_32,
      \axi_rdata_reg[6]\ => vga_if_ip_inst_n_33,
      \axi_rdata_reg[7]\ => vga_if_ip_inst_n_34,
      \axi_rdata_reg[8]\ => vga_if_ip_inst_n_35,
      \axi_rdata_reg[9]\ => vga_if_ip_inst_n_36,
      din(11) => VGA_IF_v1_0_M00_AXI_inst_n_25,
      din(10) => VGA_IF_v1_0_M00_AXI_inst_n_26,
      din(9) => VGA_IF_v1_0_M00_AXI_inst_n_27,
      din(8) => VGA_IF_v1_0_M00_AXI_inst_n_28,
      din(7) => VGA_IF_v1_0_M00_AXI_inst_n_29,
      din(6) => VGA_IF_v1_0_M00_AXI_inst_n_30,
      din(5) => VGA_IF_v1_0_M00_AXI_inst_n_31,
      din(4) => VGA_IF_v1_0_M00_AXI_inst_n_32,
      din(3) => VGA_IF_v1_0_M00_AXI_inst_n_33,
      din(2) => VGA_IF_v1_0_M00_AXI_inst_n_34,
      din(1) => VGA_IF_v1_0_M00_AXI_inst_n_35,
      din(0) => VGA_IF_v1_0_M00_AXI_inst_n_36,
      full => int_inbuff_full,
      i_VGA_CLK => i_VGA_CLK,
      i_axi_master_clk => i_axi_master_clk,
      i_axi_slave_clk => i_axi_slave_clk,
      i_reset_n => i_reset_n,
      i_start_display_irq => i_start_display_irq,
      inbuff_almost_empty => inbuff_almost_empty,
      inbuff_empty => inbuff_empty,
      inbuff_prog_empty => inbuff_prog_empty,
      inbuff_valid => inbuff_valid,
      int_rdone => int_rdone,
      int_read_next => int_read_next,
      \int_slv_reg_wren_reg[4]\(4) => VGA_IF_v1_0_S00_AXI_inst_n_37,
      \int_slv_reg_wren_reg[4]\(3) => VGA_IF_v1_0_S00_AXI_inst_n_38,
      \int_slv_reg_wren_reg[4]\(2) => VGA_IF_v1_0_S00_AXI_inst_n_39,
      \int_slv_reg_wren_reg[4]\(1) => p_0_in0,
      \int_slv_reg_wren_reg[4]\(0) => slv_reg_wren(0),
      o_hsync => o_hsync,
      o_vga_data(11 downto 0) => o_vga_data(11 downto 0),
      o_vsync => o_vsync,
      prog_full => int_inbuff_prog_full,
      read_en_out => read_en_out,
      valid => pixel_valid_out,
      vga_data_out(11 downto 0) => vga_data_out(11 downto 0),
      video_on => video_on,
      \wr_slv_reg1_reg[31]\(31 downto 17) => wr_slv_reg1(31 downto 17),
      \wr_slv_reg1_reg[31]\(16) => VGA_IF_v1_0_S00_AXI_inst_n_58,
      \wr_slv_reg1_reg[31]\(15 downto 9) => wr_slv_reg1(15 downto 9),
      \wr_slv_reg1_reg[31]\(8) => VGA_IF_v1_0_S00_AXI_inst_n_66,
      \wr_slv_reg1_reg[31]\(7 downto 0) => wr_slv_reg1(7 downto 0),
      \wr_slv_reg2_reg[31]\(31 downto 0) => wr_slv_reg2(31 downto 0),
      \wr_slv_reg3_reg[31]\(31 downto 0) => wr_slv_reg3(31 downto 0),
      \wr_slv_reg4_reg[31]\(31 downto 25) => wr_slv_reg4(31 downto 25),
      \wr_slv_reg4_reg[31]\(24) => VGA_IF_v1_0_S00_AXI_inst_n_82,
      \wr_slv_reg4_reg[31]\(23 downto 21) => wr_slv_reg4(23 downto 21),
      \wr_slv_reg4_reg[31]\(20) => VGA_IF_v1_0_S00_AXI_inst_n_86,
      \wr_slv_reg4_reg[31]\(19 downto 17) => wr_slv_reg4(19 downto 17),
      \wr_slv_reg4_reg[31]\(16) => VGA_IF_v1_0_S00_AXI_inst_n_90,
      \wr_slv_reg4_reg[31]\(15 downto 13) => wr_slv_reg4(15 downto 13),
      \wr_slv_reg4_reg[31]\(12) => VGA_IF_v1_0_S00_AXI_inst_n_94,
      \wr_slv_reg4_reg[31]\(11 downto 9) => wr_slv_reg4(11 downto 9),
      \wr_slv_reg4_reg[31]\(8) => VGA_IF_v1_0_S00_AXI_inst_n_98,
      \wr_slv_reg4_reg[31]\(7 downto 5) => wr_slv_reg4(7 downto 5),
      \wr_slv_reg4_reg[31]\(4) => VGA_IF_v1_0_S00_AXI_inst_n_102,
      \wr_slv_reg4_reg[31]\(3 downto 1) => wr_slv_reg4(3 downto 1),
      \wr_slv_reg4_reg[31]\(0) => VGA_IF_v1_0_S00_AXI_inst_n_106
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_accelerator_VGA_IF_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of final_accelerator_VGA_IF_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_accelerator_VGA_IF_0_0 : entity is "neural_net_accel_conv_db_VGA_IF_0_0,VGA_IF_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of final_accelerator_VGA_IF_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of final_accelerator_VGA_IF_0_0 : entity is "VGA_IF_v1_0,Vivado 2016.4";
end final_accelerator_VGA_IF_0_0;

architecture STRUCTURE of final_accelerator_VGA_IF_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal \^s_axi_intr_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  m00_axi_araddr(31 downto 10) <= \^m00_axi_araddr\(31 downto 10);
  m00_axi_araddr(9) <= \<const0>\;
  m00_axi_araddr(8) <= \<const0>\;
  m00_axi_araddr(7) <= \<const0>\;
  m00_axi_araddr(6) <= \<const0>\;
  m00_axi_araddr(5) <= \<const0>\;
  m00_axi_araddr(4) <= \<const0>\;
  m00_axi_araddr(3) <= \<const0>\;
  m00_axi_araddr(2) <= \<const0>\;
  m00_axi_araddr(1) <= \<const0>\;
  m00_axi_araddr(0) <= \<const0>\;
  m00_axi_arburst(1) <= \<const0>\;
  m00_axi_arburst(0) <= \<const1>\;
  m00_axi_arcache(3) <= \<const0>\;
  m00_axi_arcache(2) <= \<const0>\;
  m00_axi_arcache(1) <= \<const1>\;
  m00_axi_arcache(0) <= \<const0>\;
  m00_axi_arid(0) <= \<const0>\;
  m00_axi_arlen(7) <= \<const1>\;
  m00_axi_arlen(6) <= \<const1>\;
  m00_axi_arlen(5) <= \<const1>\;
  m00_axi_arlen(4) <= \<const1>\;
  m00_axi_arlen(3) <= \<const1>\;
  m00_axi_arlen(2) <= \<const1>\;
  m00_axi_arlen(1) <= \<const1>\;
  m00_axi_arlen(0) <= \<const1>\;
  m00_axi_arlock <= \<const0>\;
  m00_axi_arprot(2) <= \<const0>\;
  m00_axi_arprot(1) <= \<const0>\;
  m00_axi_arprot(0) <= \<const0>\;
  m00_axi_arqos(3) <= \<const0>\;
  m00_axi_arqos(2) <= \<const0>\;
  m00_axi_arqos(1) <= \<const0>\;
  m00_axi_arqos(0) <= \<const0>\;
  m00_axi_arsize(2) <= \<const0>\;
  m00_axi_arsize(1) <= \<const1>\;
  m00_axi_arsize(0) <= \<const0>\;
  m00_axi_aruser(0) <= \<const1>\;
  m00_axi_awaddr(31) <= \<const0>\;
  m00_axi_awaddr(30) <= \<const1>\;
  m00_axi_awaddr(29) <= \<const0>\;
  m00_axi_awaddr(28) <= \<const0>\;
  m00_axi_awaddr(27) <= \<const0>\;
  m00_axi_awaddr(26) <= \<const0>\;
  m00_axi_awaddr(25) <= \<const0>\;
  m00_axi_awaddr(24) <= \<const0>\;
  m00_axi_awaddr(23) <= \<const0>\;
  m00_axi_awaddr(22) <= \<const0>\;
  m00_axi_awaddr(21) <= \<const0>\;
  m00_axi_awaddr(20) <= \<const0>\;
  m00_axi_awaddr(19) <= \<const0>\;
  m00_axi_awaddr(18) <= \<const0>\;
  m00_axi_awaddr(17) <= \<const0>\;
  m00_axi_awaddr(16) <= \<const0>\;
  m00_axi_awaddr(15) <= \<const0>\;
  m00_axi_awaddr(14) <= \<const0>\;
  m00_axi_awaddr(13) <= \<const0>\;
  m00_axi_awaddr(12) <= \<const0>\;
  m00_axi_awaddr(11) <= \<const0>\;
  m00_axi_awaddr(10) <= \<const0>\;
  m00_axi_awaddr(9) <= \<const0>\;
  m00_axi_awaddr(8) <= \<const0>\;
  m00_axi_awaddr(7) <= \<const0>\;
  m00_axi_awaddr(6) <= \<const0>\;
  m00_axi_awaddr(5) <= \<const0>\;
  m00_axi_awaddr(4) <= \<const0>\;
  m00_axi_awaddr(3) <= \<const0>\;
  m00_axi_awaddr(2) <= \<const0>\;
  m00_axi_awaddr(1) <= \<const0>\;
  m00_axi_awaddr(0) <= \<const0>\;
  m00_axi_awburst(1) <= \<const0>\;
  m00_axi_awburst(0) <= \<const1>\;
  m00_axi_awcache(3) <= \<const0>\;
  m00_axi_awcache(2) <= \<const0>\;
  m00_axi_awcache(1) <= \<const1>\;
  m00_axi_awcache(0) <= \<const0>\;
  m00_axi_awid(0) <= \<const0>\;
  m00_axi_awlen(7) <= \<const1>\;
  m00_axi_awlen(6) <= \<const1>\;
  m00_axi_awlen(5) <= \<const1>\;
  m00_axi_awlen(4) <= \<const1>\;
  m00_axi_awlen(3) <= \<const1>\;
  m00_axi_awlen(2) <= \<const1>\;
  m00_axi_awlen(1) <= \<const1>\;
  m00_axi_awlen(0) <= \<const1>\;
  m00_axi_awlock <= \<const0>\;
  m00_axi_awprot(2) <= \<const0>\;
  m00_axi_awprot(1) <= \<const0>\;
  m00_axi_awprot(0) <= \<const0>\;
  m00_axi_awqos(3) <= \<const0>\;
  m00_axi_awqos(2) <= \<const0>\;
  m00_axi_awqos(1) <= \<const0>\;
  m00_axi_awqos(0) <= \<const0>\;
  m00_axi_awsize(2) <= \<const0>\;
  m00_axi_awsize(1) <= \<const1>\;
  m00_axi_awsize(0) <= \<const0>\;
  m00_axi_awuser(0) <= \<const1>\;
  m00_axi_awvalid <= \<const0>\;
  m00_axi_bready <= \<const0>\;
  m00_axi_error <= \<const0>\;
  m00_axi_txn_done <= \<const0>\;
  m00_axi_wdata(31) <= \<const0>\;
  m00_axi_wdata(30) <= \<const0>\;
  m00_axi_wdata(29) <= \<const0>\;
  m00_axi_wdata(28) <= \<const0>\;
  m00_axi_wdata(27) <= \<const0>\;
  m00_axi_wdata(26) <= \<const0>\;
  m00_axi_wdata(25) <= \<const0>\;
  m00_axi_wdata(24) <= \<const0>\;
  m00_axi_wdata(23) <= \<const0>\;
  m00_axi_wdata(22) <= \<const0>\;
  m00_axi_wdata(21) <= \<const0>\;
  m00_axi_wdata(20) <= \<const0>\;
  m00_axi_wdata(19) <= \<const0>\;
  m00_axi_wdata(18) <= \<const0>\;
  m00_axi_wdata(17) <= \<const0>\;
  m00_axi_wdata(16) <= \<const0>\;
  m00_axi_wdata(15) <= \<const0>\;
  m00_axi_wdata(14) <= \<const0>\;
  m00_axi_wdata(13) <= \<const0>\;
  m00_axi_wdata(12) <= \<const0>\;
  m00_axi_wdata(11) <= \<const0>\;
  m00_axi_wdata(10) <= \<const0>\;
  m00_axi_wdata(9) <= \<const0>\;
  m00_axi_wdata(8) <= \<const0>\;
  m00_axi_wdata(7) <= \<const0>\;
  m00_axi_wdata(6) <= \<const0>\;
  m00_axi_wdata(5) <= \<const0>\;
  m00_axi_wdata(4) <= \<const0>\;
  m00_axi_wdata(3) <= \<const0>\;
  m00_axi_wdata(2) <= \<const0>\;
  m00_axi_wdata(1) <= \<const0>\;
  m00_axi_wdata(0) <= \<const0>\;
  m00_axi_wlast <= \<const0>\;
  m00_axi_wstrb(3) <= \<const1>\;
  m00_axi_wstrb(2) <= \<const1>\;
  m00_axi_wstrb(1) <= \<const1>\;
  m00_axi_wstrb(0) <= \<const1>\;
  m00_axi_wuser(0) <= \<const0>\;
  m00_axi_wvalid <= \<const0>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  s_axi_intr_bresp(1) <= \<const0>\;
  s_axi_intr_bresp(0) <= \<const0>\;
  s_axi_intr_rdata(31) <= \<const0>\;
  s_axi_intr_rdata(30) <= \<const0>\;
  s_axi_intr_rdata(29) <= \<const0>\;
  s_axi_intr_rdata(28) <= \<const0>\;
  s_axi_intr_rdata(27) <= \<const0>\;
  s_axi_intr_rdata(26) <= \<const0>\;
  s_axi_intr_rdata(25) <= \<const0>\;
  s_axi_intr_rdata(24) <= \<const0>\;
  s_axi_intr_rdata(23) <= \<const0>\;
  s_axi_intr_rdata(22) <= \<const0>\;
  s_axi_intr_rdata(21) <= \<const0>\;
  s_axi_intr_rdata(20) <= \<const0>\;
  s_axi_intr_rdata(19) <= \<const0>\;
  s_axi_intr_rdata(18) <= \<const0>\;
  s_axi_intr_rdata(17) <= \<const0>\;
  s_axi_intr_rdata(16) <= \<const0>\;
  s_axi_intr_rdata(15) <= \<const0>\;
  s_axi_intr_rdata(14) <= \<const0>\;
  s_axi_intr_rdata(13) <= \<const0>\;
  s_axi_intr_rdata(12) <= \<const0>\;
  s_axi_intr_rdata(11) <= \<const0>\;
  s_axi_intr_rdata(10) <= \<const0>\;
  s_axi_intr_rdata(9) <= \<const0>\;
  s_axi_intr_rdata(8) <= \<const0>\;
  s_axi_intr_rdata(7) <= \<const0>\;
  s_axi_intr_rdata(6) <= \<const0>\;
  s_axi_intr_rdata(5) <= \<const0>\;
  s_axi_intr_rdata(4) <= \<const0>\;
  s_axi_intr_rdata(3) <= \<const0>\;
  s_axi_intr_rdata(2) <= \<const0>\;
  s_axi_intr_rdata(1) <= \<const0>\;
  s_axi_intr_rdata(0) <= \^s_axi_intr_rdata\(0);
  s_axi_intr_rresp(1) <= \<const0>\;
  s_axi_intr_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.final_accelerator_VGA_IF_0_0_VGA_IF_v1_0
     port map (
      i_VGA_CLK => i_VGA_CLK,
      i_axi_master_clk => i_axi_master_clk,
      i_axi_slave_clk => i_axi_slave_clk,
      i_reset_n => i_reset_n,
      i_start_display_irq => i_start_display_irq,
      irq => irq,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(21 downto 0) => \^m00_axi_araddr\(31 downto 10),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arready => m00_axi_arready,
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_rdata(11 downto 0) => m00_axi_rdata(11 downto 0),
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_rready => m00_axi_rready,
      m00_axi_rvalid => m00_axi_rvalid,
      o_hsync => o_hsync,
      o_vga_data(11 downto 0) => o_vga_data(11 downto 0),
      o_vsync => o_vsync,
      pixel_valid_out => pixel_valid_out,
      read_en_out => read_en_out,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s_axi_intr_aclk => s_axi_intr_aclk,
      s_axi_intr_araddr(2 downto 0) => s_axi_intr_araddr(4 downto 2),
      s_axi_intr_aresetn => s_axi_intr_aresetn,
      s_axi_intr_arready => s_axi_intr_arready,
      s_axi_intr_arvalid => s_axi_intr_arvalid,
      s_axi_intr_awaddr(2 downto 0) => s_axi_intr_awaddr(4 downto 2),
      s_axi_intr_awready => s_axi_intr_awready,
      s_axi_intr_awvalid => s_axi_intr_awvalid,
      s_axi_intr_bready => s_axi_intr_bready,
      s_axi_intr_bvalid => s_axi_intr_bvalid,
      s_axi_intr_rdata(0) => \^s_axi_intr_rdata\(0),
      s_axi_intr_rready => s_axi_intr_rready,
      s_axi_intr_rvalid => s_axi_intr_rvalid,
      s_axi_intr_wdata(0) => s_axi_intr_wdata(0),
      s_axi_intr_wready => s_axi_intr_wready,
      s_axi_intr_wvalid => s_axi_intr_wvalid,
      vga_data_out(11 downto 0) => vga_data_out(11 downto 0)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
