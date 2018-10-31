-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Tue Oct 02 00:53:42 2018
-- Host        : Marks-M3800-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Sourcetree_Local/Thesis_VHDL/Xilinx_Projects/Thesis_CNN/Thesis_CNN.srcs/sources_1/bd/sim_mp_test/ip/sim_mp_test_Maxpool_Tester_0_0/sim_mp_test_Maxpool_Tester_0_0_sim_netlist.vhdl
-- Design      : sim_mp_test_Maxpool_Tester_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sim_mp_test_Maxpool_Tester_0_0_Max_Pool_Tester_v1_0_M00_AXI is
  port (
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_awsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bready : out STD_LOGIC;
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_wready : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    init_calib_complete : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sim_mp_test_Maxpool_Tester_0_0_Max_Pool_Tester_v1_0_M00_AXI : entity is "Max_Pool_Tester_v1_0_M00_AXI";
end sim_mp_test_Maxpool_Tester_0_0_Max_Pool_Tester_v1_0_M00_AXI;

architecture STRUCTURE of sim_mp_test_Maxpool_Tester_0_0_Max_Pool_Tester_v1_0_M00_AXI is
  signal \FSM_sequential_current_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current_state : signal is "yes";
  signal next_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_current_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_current_state_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_sequential_current_state_reg[4]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[4]\ : label is "LD";
begin
\FSM_sequential_current_state[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axi_aresetn,
      O => \FSM_sequential_current_state[4]_i_1_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      CLR => \FSM_sequential_current_state[4]_i_1_n_0\,
      D => next_state(0),
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      CLR => \FSM_sequential_current_state[4]_i_1_n_0\,
      D => next_state(1),
      Q => current_state(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      CLR => \FSM_sequential_current_state[4]_i_1_n_0\,
      D => next_state(2),
      Q => current_state(2)
    );
\FSM_sequential_current_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      CLR => \FSM_sequential_current_state[4]_i_1_n_0\,
      D => next_state(3),
      Q => current_state(3)
    );
\FSM_sequential_current_state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      CLR => \FSM_sequential_current_state[4]_i_1_n_0\,
      D => next_state(4),
      Q => current_state(4)
    );
\FSM_sequential_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_next_state_reg[0]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[4]_i_2_n_0\,
      GE => '1',
      Q => next_state(0)
    );
\FSM_sequential_next_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0200"
    )
        port map (
      I0 => \FSM_sequential_next_state_reg[0]_i_2_n_0\,
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => init_calib_complete,
      I4 => \FSM_sequential_next_state_reg[0]_i_3_n_0\,
      I5 => \FSM_sequential_next_state_reg[0]_i_4_n_0\,
      O => \FSM_sequential_next_state_reg[0]_i_1_n_0\
    );
\FSM_sequential_next_state_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(3),
      I2 => current_state(1),
      O => \FSM_sequential_next_state_reg[0]_i_2_n_0\
    );
\FSM_sequential_next_state_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1016001A12120908"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(4),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => m00_axi_awready,
      O => \FSM_sequential_next_state_reg[0]_i_3_n_0\
    );
\FSM_sequential_next_state_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020404420240"
    )
        port map (
      I0 => m00_axi_wready,
      I1 => current_state(0),
      I2 => current_state(4),
      I3 => current_state(3),
      I4 => current_state(1),
      I5 => current_state(2),
      O => \FSM_sequential_next_state_reg[0]_i_4_n_0\
    );
\FSM_sequential_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_next_state_reg[1]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[4]_i_2_n_0\,
      GE => '1',
      Q => next_state(1)
    );
\FSM_sequential_next_state_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_next_state_reg[1]_i_2_n_0\,
      I1 => \FSM_sequential_next_state_reg[1]_i_3_n_0\,
      O => \FSM_sequential_next_state_reg[1]_i_1_n_0\,
      S => current_state(4)
    );
\FSM_sequential_next_state_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22743F22CCCCCCCC"
    )
        port map (
      I0 => m00_axi_awready,
      I1 => current_state(1),
      I2 => m00_axi_wready,
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => current_state(0),
      O => \FSM_sequential_next_state_reg[1]_i_2_n_0\
    );
\FSM_sequential_next_state_reg[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => m00_axi_wready,
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      O => \FSM_sequential_next_state_reg[1]_i_3_n_0\
    );
\FSM_sequential_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_next_state_reg[2]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[4]_i_2_n_0\,
      GE => '1',
      Q => next_state(2)
    );
\FSM_sequential_next_state_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_next_state_reg[2]_i_2_n_0\,
      I1 => current_state(4),
      O => \FSM_sequential_next_state_reg[2]_i_1_n_0\
    );
\FSM_sequential_next_state_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05FFFFFFCF000000"
    )
        port map (
      I0 => m00_axi_awready,
      I1 => m00_axi_wready,
      I2 => current_state(3),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => current_state(2),
      O => \FSM_sequential_next_state_reg[2]_i_2_n_0\
    );
\FSM_sequential_next_state_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_next_state_reg[3]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[4]_i_2_n_0\,
      GE => '1',
      Q => next_state(3)
    );
\FSM_sequential_next_state_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA2AAA"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => m00_axi_awready,
      I5 => current_state(4),
      O => \FSM_sequential_next_state_reg[3]_i_1_n_0\
    );
\FSM_sequential_next_state_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_next_state_reg[4]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[4]_i_2_n_0\,
      GE => '1',
      Q => next_state(4)
    );
\FSM_sequential_next_state_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800F00"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(2),
      I3 => current_state(4),
      I4 => current_state(3),
      O => \FSM_sequential_next_state_reg[4]_i_1_n_0\
    );
\FSM_sequential_next_state_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00330023FFFF6BD7"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => m00_axi_bvalid,
      I5 => current_state(4),
      O => \FSM_sequential_next_state_reg[4]_i_2_n_0\
    );
\m00_axi_awaddr[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01202016"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(4),
      I2 => current_state(2),
      I3 => current_state(3),
      I4 => current_state(1),
      O => m00_axi_awaddr(3)
    );
\m00_axi_awaddr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000118"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(4),
      I4 => current_state(0),
      O => m00_axi_awaddr(0)
    );
\m00_axi_awaddr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002016"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(4),
      I2 => current_state(2),
      I3 => current_state(3),
      I4 => current_state(1),
      O => m00_axi_awaddr(1)
    );
\m00_axi_awaddr[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00600108"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(4),
      I4 => current_state(0),
      O => m00_axi_awaddr(2)
    );
m00_axi_awvalid_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02040912"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(4),
      I3 => current_state(2),
      I4 => current_state(3),
      O => m00_axi_awsize(0)
    );
m00_axi_bready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00049248"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(2),
      I3 => current_state(3),
      I4 => current_state(4),
      O => m00_axi_bready
    );
\m00_axi_wdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => current_state(4),
      O => m00_axi_wdata(0)
    );
\m00_axi_wdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => current_state(2),
      O => m00_axi_wdata(2)
    );
\m00_axi_wdata[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10400010"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(0),
      I2 => current_state(3),
      I3 => current_state(2),
      I4 => current_state(1),
      O => m00_axi_wdata(7)
    );
\m00_axi_wdata[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04004104"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(1),
      I4 => current_state(0),
      O => m00_axi_wdata(3)
    );
\m00_axi_wdata[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000110"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(4),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(0),
      O => m00_axi_wdata(4)
    );
\m00_axi_wdata[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002400"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => current_state(4),
      O => m00_axi_wdata(5)
    );
\m00_axi_wdata[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002410"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(3),
      I3 => current_state(0),
      I4 => current_state(4),
      O => m00_axi_wdata(6)
    );
\m00_axi_wdata[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(2),
      I2 => current_state(3),
      I3 => current_state(0),
      I4 => current_state(1),
      O => m00_axi_wdata(10)
    );
\m00_axi_wdata[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(2),
      I2 => current_state(3),
      I3 => current_state(0),
      I4 => current_state(1),
      O => m00_axi_wdata(8)
    );
\m00_axi_wdata[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000900"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(4),
      I3 => current_state(3),
      I4 => current_state(2),
      O => m00_axi_wdata(9)
    );
\m00_axi_wdata[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000024"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(4),
      I4 => current_state(3),
      O => m00_axi_wdata(11)
    );
\m00_axi_wdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00044000"
    )
        port map (
      I0 => current_state(4),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(0),
      O => m00_axi_wdata(1)
    );
\m00_axi_wstrb[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0210214E"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(4),
      I2 => current_state(0),
      I3 => current_state(3),
      I4 => current_state(2),
      O => m00_axi_wstrb(0)
    );
m00_axi_wvalid_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00420294"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(3),
      I3 => current_state(4),
      I4 => current_state(2),
      O => m00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sim_mp_test_Maxpool_Tester_0_0_Maxpool_Tester_v1_0 is
  port (
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_awsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bready : out STD_LOGIC;
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_wready : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    init_calib_complete : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sim_mp_test_Maxpool_Tester_0_0_Maxpool_Tester_v1_0 : entity is "Maxpool_Tester_v1_0";
end sim_mp_test_Maxpool_Tester_0_0_Maxpool_Tester_v1_0;

architecture STRUCTURE of sim_mp_test_Maxpool_Tester_0_0_Maxpool_Tester_v1_0 is
begin
Max_Pool_Tester_v1_0_M00_AXI_inst: entity work.sim_mp_test_Maxpool_Tester_0_0_Max_Pool_Tester_v1_0_M00_AXI
     port map (
      init_calib_complete => init_calib_complete,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_awaddr(3 downto 0) => m00_axi_awaddr(3 downto 0),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awsize(0) => m00_axi_awsize(0),
      m00_axi_bready => m00_axi_bready,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_wdata(11 downto 0) => m00_axi_wdata(11 downto 0),
      m00_axi_wready => m00_axi_wready,
      m00_axi_wstrb(0) => m00_axi_wstrb(0),
      m00_axi_wvalid => m00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sim_mp_test_Maxpool_Tester_0_0 is
  port (
    irq : in STD_LOGIC;
    init_calib_complete : in STD_LOGIC;
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
    m00_axi_error : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of sim_mp_test_Maxpool_Tester_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of sim_mp_test_Maxpool_Tester_0_0 : entity is "sim_mp_test_Maxpool_Tester_0_0,Maxpool_Tester_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of sim_mp_test_Maxpool_Tester_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of sim_mp_test_Maxpool_Tester_0_0 : entity is "Maxpool_Tester_v1_0,Vivado 2016.4";
end sim_mp_test_Maxpool_Tester_0_0;

architecture STRUCTURE of sim_mp_test_Maxpool_Tester_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axi_awaddr\ : STD_LOGIC_VECTOR ( 21 downto 2 );
  signal \^m00_axi_awsize\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^m00_axi_wdata\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \^m00_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  m00_axi_araddr(31) <= \<const0>\;
  m00_axi_araddr(30) <= \<const0>\;
  m00_axi_araddr(29) <= \<const0>\;
  m00_axi_araddr(28) <= \<const0>\;
  m00_axi_araddr(27) <= \<const0>\;
  m00_axi_araddr(26) <= \<const0>\;
  m00_axi_araddr(25) <= \<const0>\;
  m00_axi_araddr(24) <= \<const0>\;
  m00_axi_araddr(23) <= \<const0>\;
  m00_axi_araddr(22) <= \<const0>\;
  m00_axi_araddr(21) <= \<const0>\;
  m00_axi_araddr(20) <= \<const0>\;
  m00_axi_araddr(19) <= \<const0>\;
  m00_axi_araddr(18) <= \<const0>\;
  m00_axi_araddr(17) <= \<const0>\;
  m00_axi_araddr(16) <= \<const0>\;
  m00_axi_araddr(15) <= \<const0>\;
  m00_axi_araddr(14) <= \<const0>\;
  m00_axi_araddr(13) <= \<const0>\;
  m00_axi_araddr(12) <= \<const0>\;
  m00_axi_araddr(11) <= \<const0>\;
  m00_axi_araddr(10) <= \<const0>\;
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
  m00_axi_arlen(7) <= \<const0>\;
  m00_axi_arlen(6) <= \<const0>\;
  m00_axi_arlen(5) <= \<const0>\;
  m00_axi_arlen(4) <= \<const0>\;
  m00_axi_arlen(3) <= \<const0>\;
  m00_axi_arlen(2) <= \<const0>\;
  m00_axi_arlen(1) <= \<const0>\;
  m00_axi_arlen(0) <= \<const0>\;
  m00_axi_arlock <= \<const0>\;
  m00_axi_arprot(2) <= \<const0>\;
  m00_axi_arprot(1) <= \<const0>\;
  m00_axi_arprot(0) <= \<const0>\;
  m00_axi_arqos(3) <= \<const0>\;
  m00_axi_arqos(2) <= \<const0>\;
  m00_axi_arqos(1) <= \<const0>\;
  m00_axi_arqos(0) <= \<const0>\;
  m00_axi_arsize(2) <= \<const0>\;
  m00_axi_arsize(1) <= \<const0>\;
  m00_axi_arsize(0) <= \<const1>\;
  m00_axi_aruser(0) <= \<const1>\;
  m00_axi_arvalid <= \<const0>\;
  m00_axi_awaddr(31) <= \<const0>\;
  m00_axi_awaddr(30) <= \^m00_axi_awaddr\(21);
  m00_axi_awaddr(29) <= \<const0>\;
  m00_axi_awaddr(28) <= \<const0>\;
  m00_axi_awaddr(27) <= \<const0>\;
  m00_axi_awaddr(26) <= \^m00_axi_awaddr\(21);
  m00_axi_awaddr(25) <= \<const0>\;
  m00_axi_awaddr(24) <= \<const0>\;
  m00_axi_awaddr(23) <= \^m00_axi_awaddr\(21);
  m00_axi_awaddr(22) <= \<const0>\;
  m00_axi_awaddr(21) <= \^m00_axi_awaddr\(21);
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
  m00_axi_awaddr(4 downto 2) <= \^m00_axi_awaddr\(4 downto 2);
  m00_axi_awaddr(1) <= \<const0>\;
  m00_axi_awaddr(0) <= \<const0>\;
  m00_axi_awburst(1) <= \<const0>\;
  m00_axi_awburst(0) <= \<const1>\;
  m00_axi_awcache(3) <= \<const0>\;
  m00_axi_awcache(2) <= \<const0>\;
  m00_axi_awcache(1) <= \<const1>\;
  m00_axi_awcache(0) <= \<const0>\;
  m00_axi_awid(0) <= \<const0>\;
  m00_axi_awlen(7) <= \<const0>\;
  m00_axi_awlen(6) <= \<const0>\;
  m00_axi_awlen(5) <= \<const0>\;
  m00_axi_awlen(4) <= \<const0>\;
  m00_axi_awlen(3) <= \<const0>\;
  m00_axi_awlen(2) <= \<const0>\;
  m00_axi_awlen(1) <= \<const0>\;
  m00_axi_awlen(0) <= \<const0>\;
  m00_axi_awlock <= \<const0>\;
  m00_axi_awprot(2) <= \<const0>\;
  m00_axi_awprot(1) <= \<const0>\;
  m00_axi_awprot(0) <= \<const0>\;
  m00_axi_awqos(3) <= \<const0>\;
  m00_axi_awqos(2) <= \<const0>\;
  m00_axi_awqos(1) <= \<const0>\;
  m00_axi_awqos(0) <= \<const0>\;
  m00_axi_awsize(2) <= \<const0>\;
  m00_axi_awsize(1) <= \^m00_axi_awsize\(1);
  m00_axi_awsize(0) <= \<const0>\;
  m00_axi_awuser(0) <= \<const1>\;
  m00_axi_awvalid <= \^m00_axi_awsize\(1);
  m00_axi_rready <= \<const0>\;
  m00_axi_wdata(31) <= \^m00_axi_wdata\(8);
  m00_axi_wdata(30) <= \<const0>\;
  m00_axi_wdata(29 downto 27) <= \^m00_axi_wdata\(29 downto 27);
  m00_axi_wdata(26) <= \^m00_axi_wdata\(29);
  m00_axi_wdata(25) <= \^m00_axi_wdata\(25);
  m00_axi_wdata(24) <= \^m00_axi_wdata\(25);
  m00_axi_wdata(23) <= \<const0>\;
  m00_axi_wdata(22) <= \<const0>\;
  m00_axi_wdata(21) <= \^m00_axi_wdata\(29);
  m00_axi_wdata(20 downto 17) <= \^m00_axi_wdata\(20 downto 17);
  m00_axi_wdata(16) <= \^m00_axi_wdata\(25);
  m00_axi_wdata(15) <= \^m00_axi_wdata\(8);
  m00_axi_wdata(14) <= \^m00_axi_wdata\(14);
  m00_axi_wdata(13) <= \<const0>\;
  m00_axi_wdata(12) <= \^m00_axi_wdata\(8);
  m00_axi_wdata(11) <= \^m00_axi_wdata\(14);
  m00_axi_wdata(10) <= \<const0>\;
  m00_axi_wdata(9 downto 8) <= \^m00_axi_wdata\(9 downto 8);
  m00_axi_wdata(7) <= \<const0>\;
  m00_axi_wdata(6) <= \<const0>\;
  m00_axi_wdata(5) <= \<const0>\;
  m00_axi_wdata(4) <= \<const0>\;
  m00_axi_wdata(3) <= \^m00_axi_wdata\(28);
  m00_axi_wdata(2) <= \<const0>\;
  m00_axi_wdata(1) <= \<const0>\;
  m00_axi_wdata(0) <= \^m00_axi_wdata\(0);
  m00_axi_wlast <= \<const0>\;
  m00_axi_wstrb(3) <= \^m00_axi_wstrb\(3);
  m00_axi_wstrb(2) <= \^m00_axi_wstrb\(3);
  m00_axi_wstrb(1) <= \^m00_axi_wstrb\(3);
  m00_axi_wstrb(0) <= \^m00_axi_wstrb\(3);
  m00_axi_wuser(0) <= \<const0>\;
  m00_axi_error <= 'Z';
  m00_axi_txn_done <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.sim_mp_test_Maxpool_Tester_0_0_Maxpool_Tester_v1_0
     port map (
      init_calib_complete => init_calib_complete,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_awaddr(3) => \^m00_axi_awaddr\(21),
      m00_axi_awaddr(2 downto 0) => \^m00_axi_awaddr\(4 downto 2),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awsize(0) => \^m00_axi_awsize\(1),
      m00_axi_bready => m00_axi_bready,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_wdata(11) => \^m00_axi_wdata\(8),
      m00_axi_wdata(10 downto 8) => \^m00_axi_wdata\(29 downto 27),
      m00_axi_wdata(7) => \^m00_axi_wdata\(25),
      m00_axi_wdata(6 downto 3) => \^m00_axi_wdata\(20 downto 17),
      m00_axi_wdata(2) => \^m00_axi_wdata\(14),
      m00_axi_wdata(1) => \^m00_axi_wdata\(9),
      m00_axi_wdata(0) => \^m00_axi_wdata\(0),
      m00_axi_wready => m00_axi_wready,
      m00_axi_wstrb(0) => \^m00_axi_wstrb\(3),
      m00_axi_wvalid => m00_axi_wvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
