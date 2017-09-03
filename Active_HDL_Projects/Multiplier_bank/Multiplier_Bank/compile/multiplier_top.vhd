-------------------------------------------------------------------------------
--
-- Title       : multiplier_top
-- Design      : Multiplier_Bank
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : C:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Multiplier_bank\Multiplier_Bank\compile\multiplier_top.vhd
-- Generated   : Sun Jul 30 17:23:34 2017
-- From        : C:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Multiplier_bank\Multiplier_Bank\src\multiplier_top.bde
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


library multiplier_bank; 
use multiplier_bank.multiplier_types.all;


entity multiplier_top is
  generic(
       N : integer := 240
  );
  port(
       i_axi_master_clk : in STD_LOGIC;
       i_axi_slave_clk : in STD_LOGIC;
       i_burst_write_active : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_slv_reg_rden : in STD_LOGIC;
       i_wready : in STD_LOGIC;
       i_write_done : in STD_LOGIC;
       i_write_next : in STD_LOGIC;
       i_control_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_destination_addr_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_dsp_id_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_multiplicand_a_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_multiplicand_b_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_slv_reg_wren : in STD_LOGIC_VECTOR(31 downto 0);
       i_status_reg : in STD_LOGIC_VECTOR(31 downto 0);
       o_INIT_AXI_TXN : out STD_LOGIC;
       o_bank_en : out STD_LOGIC;
       o_outbuff_almost_empty : out STD_LOGIC;
       o_outbuff_empty : out STD_LOGIC;
       o_outbuff_prog_empty : out STD_LOGIC;
       o_outbuff_valid : out STD_LOGIC;
       o_DATA_TO_WRITE : out STD_LOGIC_VECTOR(15 downto 0);
       o_control_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_destination_addr_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_dsp_id_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_multiplicand_a_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_multiplicand_b_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_status_reg : out STD_LOGIC_VECTOR(31 downto 0)
  );
end multiplier_top;

architecture arch of multiplier_top is

---- Component declarations -----

component multiplier
  port (
       a : in STD_LOGIC_VECTOR(15 downto 0);
       b : in STD_LOGIC_VECTOR(15 downto 0);
       clk : in STD_LOGIC;
       p : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;
component multiplier_inbuff
  port (
       din : in STD_LOGIC_VECTOR(15 downto 0);
       prog_empty_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       rd_clk : in STD_LOGIC;
       rd_en : in STD_LOGIC;
       rst : in STD_LOGIC;
       wr_clk : in STD_LOGIC;
       wr_en : in STD_LOGIC;
       almost_empty : out STD_LOGIC;
       almost_full : out STD_LOGIC;
       dout : out STD_LOGIC_VECTOR(15 downto 0);
       empty : out STD_LOGIC;
       full : out STD_LOGIC;
       prog_empty : out STD_LOGIC;
       prog_full : out STD_LOGIC;
       valid : out STD_LOGIC
  );
end component;
component multiplier_outbuff
  port (
       din : in STD_LOGIC_VECTOR(31 downto 0);
       prog_empty_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       rd_clk : in STD_LOGIC;
       rd_en : in STD_LOGIC;
       rst : in STD_LOGIC;
       wr_clk : in STD_LOGIC;
       wr_en : in STD_LOGIC;
       almost_empty : out STD_LOGIC;
       almost_full : out STD_LOGIC;
       dout : out STD_LOGIC_VECTOR(31 downto 0);
       empty : out STD_LOGIC;
       full : out STD_LOGIC;
       prog_empty : out STD_LOGIC;
       prog_full : out STD_LOGIC;
       valid : out STD_LOGIC
  );
end component;
component multiplier_check_tag
  port (
       i_clk : in STD_LOGIC;
       i_mult_data : in STD_LOGIC_VECTOR(15 downto 0);
       i_mult_data_valid : in STD_LOGIC;
       i_mult_fifo_almost_empty : in STD_LOGIC;
       i_mult_fifo_empty : in STD_LOGIC;
       i_mult_fifo_prog_empty : in STD_LOGIC;
       i_prod_fifo_almost_full : in STD_LOGIC;
       i_prod_fifo_full : in STD_LOGIC;
       i_prod_fifo_prog_full : in STD_LOGIC;
       i_product : in array_type_240x32bit;
       i_reset_n : in STD_LOGIC;
       o_mult_prog_full_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_mult_read_en : out STD_LOGIC;
       o_multiplicand_a : out array_type_240x16bit;
       o_multiplicand_b : out array_type_240x16bit;
       o_prod_data : out STD_LOGIC_VECTOR(31 downto 0);
       o_prod_prog_full_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_prod_wr_en : out STD_LOGIC
  );
end component;
component multiplier_controller
  port (
       i_axi_master_clk : in STD_LOGIC;
       i_axi_slave_clk : in STD_LOGIC;
       i_burst_write_active : in STD_LOGIC;
       i_control_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_destination_addr_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_dsp_id_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_mult_fifo_almost_full : in STD_LOGIC;
       i_mult_fifo_full : in STD_LOGIC;
       i_mult_prog_full : in STD_LOGIC;
       i_multiplicand_a_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_multiplicand_b_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_prod_fifo_almost_empty : in STD_LOGIC;
       i_prod_fifo_empty : in STD_LOGIC;
       i_prod_fifo_prog_empty : in STD_LOGIC;
       i_product_data : in STD_LOGIC_VECTOR(31 downto 0);
       i_product_valid : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_slv_reg_rden : in STD_LOGIC;
       i_slv_reg_wren : in STD_LOGIC_VECTOR(31 downto 0);
       i_status_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_wready : in STD_LOGIC;
       i_write_done : in STD_LOGIC;
       i_write_next : in STD_LOGIC;
       o_DATA_TO_WRITE : out STD_LOGIC_VECTOR(15 downto 0);
       o_INIT_AXI_TXN : out STD_LOGIC;
       o_bank_en : out STD_LOGIC;
       o_control_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_destination_addr_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_dsp_id_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_mult_prog_full_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_multiplicand_a_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_multiplicand_b_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_multiplicand_data : out STD_LOGIC_VECTOR(15 downto 0);
       o_multiplicand_data_valid : out STD_LOGIC;
       o_outbuff_almost_empty : out STD_LOGIC;
       o_outbuff_empty : out STD_LOGIC;
       o_outbuff_prog_empty : out STD_LOGIC;
       o_outbuff_valid : out STD_LOGIC;
       o_prod_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_product_en : out STD_LOGIC;
       o_status_reg : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal multiplicand_a : array_type_240x16bit;
signal multiplicand_b : array_type_240x16bit;
signal NET1006 : STD_LOGIC;
signal NET1010 : STD_LOGIC;
signal NET1014 : STD_LOGIC;
signal NET1063 : STD_LOGIC;
signal NET1067 : STD_LOGIC;
signal NET1071 : STD_LOGIC;
signal NET1083 : STD_LOGIC;
signal NET1087 : STD_LOGIC;
signal NET1142 : STD_LOGIC;
signal NET1146 : STD_LOGIC;
signal NET1150 : STD_LOGIC;
signal NET1154 : STD_LOGIC;
signal NET1166 : STD_LOGIC;
signal NET1170 : STD_LOGIC;
signal NET1178 : STD_LOGIC;
signal NET1182 : STD_LOGIC;
signal NET1186 : STD_LOGIC;
signal NET78 : STD_LOGIC;
signal NET990 : STD_LOGIC;
signal product : array_type_240x32bit;
signal BUS1018 : STD_LOGIC_VECTOR(9 downto 0);
signal BUS1059 : STD_LOGIC_VECTOR(31 downto 0);
signal BUS1075 : STD_LOGIC_VECTOR(9 downto 0);
signal BUS1158 : STD_LOGIC_VECTOR(9 downto 0);
signal BUS1162 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS1174 : STD_LOGIC_VECTOR(31 downto 0);
signal BUS1190 : STD_LOGIC_VECTOR(9 downto 0);
signal BUS994 : STD_LOGIC_VECTOR(15 downto 0);

begin

---- User Signal Assignments ----
--type array_type_240x16bit is array (239 downto 0) of std_logic_vector(15 downto 0);
--type array_type_240x32bit is array (239 downto 0) of std_logic_vector(31 downto 0); 


----  Component instantiations  ----

U13 : multiplier_check_tag
  port map(
       i_clk => i_axi_slave_clk,
       i_mult_data => BUS1162,
       i_mult_data_valid => NET1166,
       i_mult_fifo_almost_empty => NET1150,
       i_mult_fifo_empty => NET1146,
       i_mult_fifo_prog_empty => NET1154,
       i_prod_fifo_almost_full => NET1182,
       i_prod_fifo_full => NET1178,
       i_prod_fifo_prog_full => NET1186,
       i_product => product,
       i_reset_n => i_reset_n,
       o_mult_prog_full_thresh => BUS1158,
       o_mult_read_en => NET1142,
       o_multiplicand_a => multiplicand_a,
       o_multiplicand_b => multiplicand_b,
       o_prod_data => BUS1174,
       o_prod_prog_full_thresh => BUS1190,
       o_prod_wr_en => NET1170
  );

bank_controller : multiplier_controller
  port map(
       i_axi_master_clk => i_axi_master_clk,
       i_axi_slave_clk => i_axi_slave_clk,
       i_burst_write_active => i_burst_write_active,
       i_control_reg => i_control_reg,
       i_destination_addr_reg => i_destination_addr_reg,
       i_dsp_id_reg => i_dsp_id_reg,
       i_mult_fifo_almost_full => NET1010,
       i_mult_fifo_full => NET1006,
       i_mult_prog_full => NET1014,
       i_multiplicand_a_reg => i_multiplicand_a_reg,
       i_multiplicand_b_reg => i_multiplicand_b_reg,
       i_prod_fifo_almost_empty => NET1067,
       i_prod_fifo_empty => NET1063,
       i_prod_fifo_prog_empty => NET1071,
       i_product_data => BUS1059,
       i_product_valid => NET1087,
       i_reset_n => i_reset_n,
       i_slv_reg_rden => i_slv_reg_rden,
       i_slv_reg_wren => i_slv_reg_wren,
       i_status_reg => i_status_reg,
       i_wready => i_wready,
       i_write_done => i_write_done,
       i_write_next => i_write_next,
       o_DATA_TO_WRITE => o_DATA_TO_WRITE,
       o_INIT_AXI_TXN => o_INIT_AXI_TXN,
       o_bank_en => o_bank_en,
       o_control_reg => o_control_reg,
       o_destination_addr_reg => o_destination_addr_reg,
       o_dsp_id_reg => o_dsp_id_reg,
       o_mult_prog_full_thresh => BUS1018,
       o_multiplicand_a_reg => o_multiplicand_a_reg,
       o_multiplicand_b_reg => o_multiplicand_b_reg,
       o_multiplicand_data => BUS994,
       o_multiplicand_data_valid => NET990,
       o_outbuff_almost_empty => o_outbuff_almost_empty,
       o_outbuff_empty => o_outbuff_empty,
       o_outbuff_prog_empty => o_outbuff_prog_empty,
       o_outbuff_valid => o_outbuff_valid,
       o_prod_prog_empty_thresh => BUS1075,
       o_product_en => NET1083,
       o_status_reg => o_status_reg
  );

multiplicand_fifo : multiplier_inbuff
  port map(
       almost_empty => NET1150,
       almost_full => NET1010,
       din => BUS994,
       dout => BUS1162,
       empty => NET1146,
       full => NET1006,
       prog_empty => NET1154,
       prog_empty_thresh => BUS1158,
       prog_full => NET1014,
       prog_full_thresh => BUS1018,
       rd_clk => i_axi_slave_clk,
       rd_en => NET1142,
       rst => i_reset_n,
       valid => NET1166,
       wr_clk => i_axi_slave_clk,
       wr_en => NET990
  );

product_fifo : multiplier_outbuff
  port map(
       almost_empty => NET1067,
       almost_full => NET1182,
       din => BUS1174,
       dout => BUS1059,
       empty => NET1063,
       full => NET1178,
       prog_empty => NET1071,
       prog_empty_thresh => BUS1075,
       prog_full => NET1186,
       prog_full_thresh => BUS1190,
       rd_clk => i_axi_slave_clk,
       rd_en => NET1083,
       rst => i_reset_n,
       valid => NET1087,
       wr_clk => i_axi_slave_clk,
       wr_en => NET1170
  );


----  Generate statements  ----

g0 : for i in N-1 downto 0 generate
begin
  U1 : multiplier
    port map(
         a => multiplicand_a(i),
         b => multiplicand_b(i),
         clk => i_axi_slave_clk,
         p => product(i)
    );
  
  
end generate g0;

end arch;
