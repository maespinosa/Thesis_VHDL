-------------------------------------------------------------------------------
--
-- Title       : FIFO_NETWORK
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\compile\FIFO_NETWORK.vhd
-- Generated   : Sun Apr  9 20:08:42 2017
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\FIFO_NETWORK.bde
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


entity FIFO_NETWORK is
  generic(
       data_width : INTEGER := 10
  );
  port(
       i_clk : in STD_LOGIC;
       i_data_valid : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_read_en : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       DI : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
       o_network_primed : out STD_LOGIC;
       o_wready : out STD_LOGIC;
       o_DO0 : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
       o_DO1 : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
       o_DO2 : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0)
  );
end FIFO_NETWORK;

architecture behavioral of FIFO_NETWORK is

---- Component declarations -----

component FIFO_DUALCLOCK_MACRO
  generic(
       ALMOST_FULL_OFFSET : BIT_VECTOR := X"0080";
       ALMOST_EMPTY_OFFSET : BIT_VECTOR := X"0080";
       DATA_WIDTH : INTEGER := 4;
       DEVICE : STRING := "VIRTEX5";
       FIFO_SIZE : STRING := "18Kb";
       FIRST_WORD_FALL_THROUGH : BOOLEAN := FALSE;
       INIT : BIT_VECTOR := X"000000000000000000";
       SRVAL : BIT_VECTOR := X"000000000000000000";
       SIM_MODE : STRING := "SAFE"
  );
  port (
       DI : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
       RDCLK : in STD_LOGIC;
       RDEN : in STD_LOGIC;
       RST : in STD_LOGIC;
       WRCLK : in STD_LOGIC;
       WREN : in STD_LOGIC;
       ALMOSTEMPTY : out STD_LOGIC;
       ALMOSTFULL : out STD_LOGIC;
       DO : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
       EMPTY : out STD_LOGIC;
       FULL : out STD_LOGIC;
       RDCOUNT : out STD_LOGIC_VECTOR(7 downto 0);
       RDERR : out STD_LOGIC;
       WRCOUNT : out STD_LOGIC_VECTOR(7 downto 0);
       WRERR : out STD_LOGIC
  );
end component;
component Network_Controller
  port (
       fifo0_almost_full : in STD_LOGIC;
       fifo1_almost_full : in STD_LOGIC;
       fifo2_almost_full : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_read_en : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       fifo1_en : out STD_LOGIC;
       fifo2_en : out STD_LOGIC;
       fifo3_en : out STD_LOGIC;
       o_network_primed : out STD_LOGIC;
       o_wready : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal ALMOSTFULL : STD_LOGIC;
signal ALMOSTFULL1 : STD_LOGIC;
signal ALMOSTFULL2 : STD_LOGIC;
signal NET1633 : STD_LOGIC;
signal NET1671 : STD_LOGIC;
signal NET1687 : STD_LOGIC;
signal RST : STD_LOGIC;
signal WRCLK : STD_LOGIC;
signal DO : STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
signal DO0 : STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
signal DO1 : STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);

begin

----  Component instantiations  ----

FIFO0 : FIFO_DUALCLOCK_MACRO
  generic map(
       ALMOST_FULL_OFFSET => X"0010",
       ALMOST_EMPTY_OFFSET => X"0010",
       DATA_WIDTH => 10,
       DEVICE => "7SERIES",
       FIFO_SIZE => "36Kb",
       FIRST_WORD_FALL_THROUGH => FALSE
  )
  port map(
       ALMOSTFULL => ALMOSTFULL,
       DI => DI(DATA_WIDTH-1 downto 0),
       DO => DO0(DATA_WIDTH-1 downto 0),
       RDCLK => WRCLK,
       RDEN => NET1633,
       RST => RST,
       WRCLK => WRCLK,
       WREN => i_data_valid
  );

FIFO1 : FIFO_DUALCLOCK_MACRO
  generic map(
       ALMOST_FULL_OFFSET => X"0010",
       ALMOST_EMPTY_OFFSET => X"0010",
       DATA_WIDTH => 10,
       DEVICE => "7SERIES",
       FIFO_SIZE => "36Kb",
       FIRST_WORD_FALL_THROUGH => FALSE
  )
  port map(
       ALMOSTFULL => ALMOSTFULL1,
       DI => DO0(DATA_WIDTH-1 downto 0),
       DO => DO1(DATA_WIDTH-1 downto 0),
       RDCLK => WRCLK,
       RDEN => NET1671,
       RST => RST,
       WRCLK => WRCLK,
       WREN => NET1633
  );

FIFO2 : FIFO_DUALCLOCK_MACRO
  generic map(
       ALMOST_FULL_OFFSET => X"0010",
       ALMOST_EMPTY_OFFSET => X"0010",
       DATA_WIDTH => 10,
       DEVICE => "7SERIES",
       FIFO_SIZE => "36Kb",
       FIRST_WORD_FALL_THROUGH => FALSE
  )
  port map(
       ALMOSTFULL => ALMOSTFULL2,
       DI => DO1(DATA_WIDTH-1 downto 0),
       DO => DO(DATA_WIDTH-1 downto 0),
       RDCLK => WRCLK,
       RDEN => NET1687,
       RST => RST,
       WRCLK => WRCLK,
       WREN => NET1671
  );

U1 : Network_Controller
  port map(
       fifo0_almost_full => ALMOSTFULL,
       fifo1_almost_full => ALMOSTFULL1,
       fifo1_en => NET1633,
       fifo2_almost_full => ALMOSTFULL2,
       fifo2_en => NET1671,
       fifo3_en => NET1687,
       i_clk => WRCLK,
       i_enable => i_enable,
       i_read_en => i_read_en,
       i_reset_n => RST,
       o_network_primed => o_network_primed,
       o_wready => o_wready
  );


---- Terminal assignment ----

    -- Inputs terminals
	WRCLK <= i_clk;
	RST <= i_reset_n;

    -- Output\buffer terminals
	o_DO0 <= DO0( DATA_WIDTH-1 downto 0 );
	o_DO1 <= DO1( DATA_WIDTH-1 downto 0 );
	o_DO2 <= DO( DATA_WIDTH-1 downto 0 );


end behavioral;
