-------------------------------------------------------------------------------
--
-- Title       : vga_if_ip
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\compile\vga_if_ip.vhd
-- Generated   : Sat May 27 00:53:16 2017
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\vga_if_ip.bde
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


entity vga_if_ip is
  port(
       i_VGA_CLK : in STD_LOGIC;
       i_axi_master_clk : in STD_LOGIC;
       i_axi_slave_clk : in STD_LOGIC;
       i_burst_read_active : in STD_LOGIC;
       i_rdone : in STD_LOGIC;
       i_read_next : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_rready : in STD_LOGIC;
       i_rvalid : in STD_LOGIC;
       i_slv_reg_rden : in STD_LOGIC;
       i_start_display : in STD_LOGIC;
       i_DATA_TO_READ : in STD_LOGIC_VECTOR(15 downto 0);
       i_fifo_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_image_data_addr_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_pixel_counters : in STD_LOGIC_VECTOR(31 downto 0);
       i_slv_reg_wren : in STD_LOGIC_VECTOR(31 downto 0);
       i_start_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_status_reg : in STD_LOGIC_VECTOR(31 downto 0);
       o_INIT_AXI_TXN : out STD_LOGIC;
       o_hsync : out STD_LOGIC;
       o_inbuff_almost_full : out STD_LOGIC;
       o_inbuff_full : out STD_LOGIC;
       o_inbuff_prog_full : out STD_LOGIC;
       o_vsync : out STD_LOGIC;
       pixel_valid_out : out STD_LOGIC;
       read_en_out : out STD_LOGIC;
       o_fifo_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_image_data_addr_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_pixel_counters : out STD_LOGIC_VECTOR(31 downto 0);
       o_start_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_status_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_vga_data : out STD_LOGIC_VECTOR(11 downto 0);
       vga_data_out : out STD_LOGIC_VECTOR(11 downto 0)
  );
end vga_if_ip;

architecture arch of vga_if_ip is

---- Component declarations -----

component cross_clk_vga
  port (
       i_clk1 : in STD_LOGIC;
       i_clk2 : in STD_LOGIC;
       i_inbuff_almost_empty : in STD_LOGIC;
       i_inbuff_empty : in STD_LOGIC;
       i_inbuff_prog_empty : in STD_LOGIC;
       i_inbuff_valid : in STD_LOGIC;
       i_pixel_x : in STD_LOGIC_VECTOR(9 downto 0);
       i_pixel_y : in STD_LOGIC_VECTOR(9 downto 0);
       i_prog_empty_threshold : in STD_LOGIC_VECTOR(10 downto 0);
       i_reset_n : in STD_LOGIC;
       i_start_display : in STD_LOGIC;
       i_video_on : in STD_LOGIC;
       o_inbuff_almost_empty : out STD_LOGIC;
       o_inbuff_empty : out STD_LOGIC;
       o_inbuff_prog_empty : out STD_LOGIC;
       o_inbuff_valid : out STD_LOGIC;
       o_pixel_x : out STD_LOGIC_VECTOR(9 downto 0);
       o_pixel_y : out STD_LOGIC_VECTOR(9 downto 0);
       o_prog_empty_threshold : out STD_LOGIC_VECTOR(10 downto 0);
       o_start_display : out STD_LOGIC;
       o_video_on : out STD_LOGIC
  );
end component;
component VGA_FIFO
  port (
       din : in STD_LOGIC_VECTOR(11 downto 0);
       prog_empty_thresh : in STD_LOGIC_VECTOR(10 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(10 downto 0);
       rd_clk : in STD_LOGIC;
       rd_en : in STD_LOGIC;
       rst : in STD_LOGIC;
       wr_clk : in STD_LOGIC;
       wr_en : in STD_LOGIC;
       almost_empty : out STD_LOGIC;
       almost_full : out STD_LOGIC;
       dout : out STD_LOGIC_VECTOR(11 downto 0);
       empty : out STD_LOGIC;
       full : out STD_LOGIC;
       prog_empty : out STD_LOGIC;
       prog_full : out STD_LOGIC;
       valid : out STD_LOGIC
  );
end component;
component vga_controller
  port (
       i_DATA_TO_READ : in STD_LOGIC_VECTOR(15 downto 0);
       i_axi_master_clk : in STD_LOGIC;
       i_axi_slave_clk : in STD_LOGIC;
       i_burst_read_active : in STD_LOGIC;
       i_fifo_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_image_data_addr_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_inbuff_almost_empty : in STD_LOGIC;
       i_inbuff_almost_full : in STD_LOGIC;
       i_inbuff_empty : in STD_LOGIC;
       i_inbuff_full : in STD_LOGIC;
       i_inbuff_prog_empty : in STD_LOGIC;
       i_inbuff_prog_full : in STD_LOGIC;
       i_inbuff_valid : in STD_LOGIC;
       i_pixel_counters : in STD_LOGIC_VECTOR(31 downto 0);
       i_pixel_x : in STD_LOGIC_VECTOR(9 downto 0);
       i_pixel_y : in STD_LOGIC_VECTOR(9 downto 0);
       i_rdone : in STD_LOGIC;
       i_read_next : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_rready : in STD_LOGIC;
       i_rvalid : in STD_LOGIC;
       i_slv_reg_rden : in STD_LOGIC;
       i_slv_reg_wren : in STD_LOGIC_VECTOR(31 downto 0);
       i_start_display : in STD_LOGIC;
       i_start_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_status_reg : in STD_LOGIC_VECTOR(31 downto 0);
       i_video_on : in STD_LOGIC;
       o_INIT_AXI_TXN : out STD_LOGIC;
       o_fifo_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_image_data : out STD_LOGIC_VECTOR(11 downto 0);
       o_image_data_addr_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_inbuff_almost_full : out STD_LOGIC;
       o_inbuff_full : out STD_LOGIC;
       o_inbuff_prog_full : out STD_LOGIC;
       o_pixel_counters : out STD_LOGIC_VECTOR(31 downto 0);
       o_prog_empty_threshold : out STD_LOGIC_VECTOR(10 downto 0);
       o_prog_full_threshold : out STD_LOGIC_VECTOR(10 downto 0);
       o_start_display : out STD_LOGIC;
       o_start_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_status_reg : out STD_LOGIC_VECTOR(31 downto 0);
       o_write_en : out STD_LOGIC
  );
end component;
component vga_sync
  port (
       i_almost_empty : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_empty : in STD_LOGIC;
       i_prog_empty : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_start_display : in STD_LOGIC;
       i_valid : in STD_LOGIC;
       i_vga_data : in STD_LOGIC_VECTOR(11 downto 0);
       o_hsync : out STD_LOGIC;
       o_pixel_x : out STD_LOGIC_VECTOR(9 downto 0);
       o_pixel_y : out STD_LOGIC_VECTOR(9 downto 0);
       o_vga_data : out STD_LOGIC_VECTOR(11 downto 0);
       o_video_on : out STD_LOGIC;
       o_vsync : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal NET1254 : STD_LOGIC;
signal NET1274 : STD_LOGIC;
signal NET1278 : STD_LOGIC;
signal NET1303 : STD_LOGIC;
signal NET1312 : STD_LOGIC;
signal NET1323 : STD_LOGIC;
signal NET1327 : STD_LOGIC;
signal NET133 : STD_LOGIC;
signal NET1339 : STD_LOGIC;
signal NET137 : STD_LOGIC;
signal NET1393 : STD_LOGIC;
signal NET141 : STD_LOGIC;
signal NET145 : STD_LOGIC;
signal NET182 : STD_LOGIC;
signal NET78 : STD_LOGIC;
signal read_en : STD_LOGIC;
signal valid : STD_LOGIC;
signal BUS1006 : STD_LOGIC_VECTOR(10 downto 0);
signal BUS1258 : STD_LOGIC_VECTOR(9 downto 0);
signal BUS1262 : STD_LOGIC_VECTOR(9 downto 0);
signal BUS1266 : STD_LOGIC_VECTOR(9 downto 0);
signal BUS1270 : STD_LOGIC_VECTOR(9 downto 0);
signal BUS129 : STD_LOGIC_VECTOR(11 downto 0);
signal BUS1397 : STD_LOGIC_VECTOR(10 downto 0);
signal BUS1401 : STD_LOGIC_VECTOR(10 downto 0);
signal vga_data : STD_LOGIC_VECTOR(11 downto 0);

begin

---- User Signal Assignments ----
vga_data_out <= vga_data; 
pixel_valid_out <= valid; 
read_en_out <= read_en; 


----  Component instantiations  ----

NET78 <= not(i_reset_n);

VGA_CNTLR : vga_controller
  port map(
       i_DATA_TO_READ => i_DATA_TO_READ,
       i_axi_master_clk => i_axi_master_clk,
       i_axi_slave_clk => i_axi_slave_clk,
       i_burst_read_active => i_burst_read_active,
       i_fifo_reg => i_fifo_reg,
       i_image_data_addr_reg => i_image_data_addr_reg,
       i_inbuff_almost_empty => NET1339,
       i_inbuff_almost_full => NET141,
       i_inbuff_empty => NET1327,
       i_inbuff_full => NET137,
       i_inbuff_prog_empty => NET1393,
       i_inbuff_prog_full => NET145,
       i_inbuff_valid => NET1323,
       i_pixel_counters => i_pixel_counters,
       i_pixel_x => BUS1266,
       i_pixel_y => BUS1270,
       i_rdone => i_rdone,
       i_read_next => i_read_next,
       i_reset_n => i_reset_n,
       i_rready => i_rready,
       i_rvalid => i_rvalid,
       i_slv_reg_rden => i_slv_reg_rden,
       i_slv_reg_wren => i_slv_reg_wren,
       i_start_display => i_start_display,
       i_start_reg => i_start_reg,
       i_status_reg => i_status_reg,
       i_video_on => NET1278,
       o_INIT_AXI_TXN => o_INIT_AXI_TXN,
       o_fifo_reg => o_fifo_reg,
       o_image_data => BUS129,
       o_image_data_addr_reg => o_image_data_addr_reg,
       o_inbuff_almost_full => o_inbuff_almost_full,
       o_inbuff_full => o_inbuff_full,
       o_inbuff_prog_full => o_inbuff_prog_full,
       o_pixel_counters => o_pixel_counters,
       o_prog_empty_threshold => BUS1397,
       o_prog_full_threshold => BUS1006,
       o_start_display => NET1274,
       o_start_reg => o_start_reg,
       o_status_reg => o_status_reg,
       o_write_en => NET133
  );

VGA_CROSS_CLK : cross_clk_vga
  port map(
       i_clk1 => i_axi_slave_clk,
       i_clk2 => i_VGA_clk,
       i_inbuff_almost_empty => NET1312,
       i_inbuff_empty => NET1303,
       i_inbuff_prog_empty => NET182,
       i_inbuff_valid => valid,
       i_pixel_x => BUS1262,
       i_pixel_y => BUS1258,
       i_prog_empty_threshold => BUS1397,
       i_reset_n => i_reset_n,
       i_start_display => NET1274,
       i_video_on => read_en,
       o_inbuff_almost_empty => NET1339,
       o_inbuff_empty => NET1327,
       o_inbuff_prog_empty => NET1393,
       o_inbuff_valid => NET1323,
       o_pixel_x => BUS1266,
       o_pixel_y => BUS1270,
       o_prog_empty_threshold => BUS1401,
       o_start_display => NET1254,
       o_video_on => NET1278
  );

VGA_IF : vga_sync
  port map(
       i_almost_empty => NET1312,
       i_clk => i_VGA_clk,
       i_empty => NET1303,
       i_prog_empty => NET182,
       i_reset_n => i_reset_n,
       i_start_display => NET1254,
       i_valid => valid,
       i_vga_data => vga_data,
       o_hsync => o_hsync,
       o_pixel_x => BUS1262,
       o_pixel_y => BUS1258,
       o_vga_data => o_vga_data,
       o_video_on => read_en,
       o_vsync => o_vsync
  );

VGA_IMAGE_FIFO : VGA_FIFO
  port map(
       almost_empty => NET1312,
       almost_full => NET141,
       din => BUS129,
       dout => vga_data,
       empty => NET1303,
       full => NET137,
       prog_empty => NET182,
       prog_empty_thresh => BUS1401,
       prog_full => NET145,
       prog_full_thresh => BUS1006,
       rd_clk => i_VGA_clk,
       rd_en => read_en,
       rst => NET78,
       valid => valid,
       wr_clk => i_axi_master_clk,
       wr_en => NET133
  );


end arch;
