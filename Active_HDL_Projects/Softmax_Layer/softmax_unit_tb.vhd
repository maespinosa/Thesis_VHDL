-------------------------------------------------------------------------------
--
-- Title       : filter_top_tb
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\filter_top_tb.vhd
-- Generated   : Thu Dec 28 14:37:47 2017
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {filter_top_tb} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;	
use std.textio.all;
use ieee.std_logic_textio.all;

--library convolution_layer; 
--use convolution_layer.types_pkg.all;

entity softmax_unit_tb is
end softmax_unit_tb;

--}} End of automatically maintained section

architecture arch of softmax_unit_tb is
	 
-- component declaration for the unit under test (uut)
component softmax_unit is
  generic(
       -- name : type := value
       g_data_width : integer := 16
  );
  port(
    i_clk : in STD_LOGIC;
    i_reset_n : in STD_LOGIC;
    i_num_elements : in std_logic_vector(15 downto 0); 
    i_inbuff_din : in std_logic_vector(g_data_width-1 downto 0); 
    i_inbuff_wr_en : in std_logic; 
    o_inbuff_full : out std_logic;  
    o_inbuff_almost_full : out std_logic; 
    i_outbuff_rd_en : in std_logic; 
    o_outbuff_dout : out std_logic_vector(g_data_width-1 downto 0); 
    o_outbuff_empty : out std_logic; 
    o_outbuff_almost_empty : out std_logic; 
    o_outbuff_valid : out std_logic; 
    o_softmax_complete : out std_logic
  );
end component;

component scores_bram IS
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END component;


signal clk : std_logic := '0';
signal reset_n : std_logic := '0'; 
signal reset: std_logic := '1'; 
--signal count : unsigned(3 downto 0);

constant CLK_PERIOD : time := 10 ns; 	
constant DATA_WIDTH : integer := 16; 

--signal memory_unit : array_type_varx16bit(40000-1 downto 0);   
signal inbuff_din           : std_logic_vector(15 downto 0); 
signal inbuff_wr_en         : std_logic; 
signal inbuff_full          : std_logic; 
signal inbuff_almost_full   : std_logic; 

signal outbuff_rd_en        : std_logic; 
signal outbuff_dout         : std_logic_vector(15 downto 0); 
signal outbuff_empty        : std_logic; 
signal outbuff_almost_empty : std_logic; 
signal outbuff_valid        : std_logic; 
signal softmax_complete     : std_logic; 

signal mem_addr             : std_logic_vector(3 downto 0); 
signal mem_data             : std_logic_vector(15 downto 0); 
signal mem_addr_counter     : integer; 
signal loop_counter         : integer; 
signal num_elements         : std_logic_vector(15 downto 0); 

begin 
	
  reset <= not(reset_n); 



uut: softmax_unit 
  generic map(
       -- name : type := value
       g_data_width => 16
  )
  port map(
    i_clk                   => clk,
    i_reset_n               => reset_n, 
    i_num_elements          => num_elements, 
    i_inbuff_din            => inbuff_din, 
    i_inbuff_wr_en          => inbuff_wr_en,  
    o_inbuff_full           => inbuff_full,   
    o_inbuff_almost_full    => inbuff_almost_full, 
    i_outbuff_rd_en         => outbuff_rd_en, 
    o_outbuff_dout          => outbuff_dout, 
    o_outbuff_empty         => outbuff_empty, 
    o_outbuff_almost_empty  => outbuff_almost_empty, 
    o_outbuff_valid         => outbuff_valid, 
    o_softmax_complete      => softmax_complete
  );

memory_unit: scores_bram 
  PORT MAP (
    clka   => clk, 
    wea    => (others => '0'), 
    addra  => mem_addr, 
    dina   => (others => '0'),
    douta  => mem_data
  );

  
   clk_process :process
   begin
        clk <= '0';
        wait for CLK_PERIOD/2;  --for half of clock period clk stays at '0'.
        clk <= '1';
        wait for CLK_PERIOD/2;  --for next half of clock period clk stays at '1'.
   end process;
    
   -- Stimulus process, Apply inputs here.
  stim_proc: process
  begin  
	  
	  reset_n <= '0'; 

	  wait for CLK_PERIOD*10;	
	  
	  reset_n <= '1'; 

    mem_addr <= (others => '0');  
    mem_addr_counter <= 0; 
    loop_counter <= 0; 
    inbuff_wr_en <= '0'; 
    outbuff_rd_en <= '0';
    num_elements <= std_logic_vector(to_unsigned(10,16)); 
	  
	  wait for CLK_PERIOD*10;	 

    wait until rising_edge(clk); 
    

    while (loop_counter < 10-1) loop

      if(inbuff_almost_full = '0') then 
      
        mem_addr <= std_logic_vector(to_unsigned(mem_addr_counter,4));
        
        wait until rising_edge(clk); 
        inbuff_wr_en <= '0'; 
        mem_addr_counter <= mem_addr_counter + 1;  
        
        wait until rising_edge(clk);   
        inbuff_wr_en <= '1';  
        inbuff_din <= mem_data;

        loop_counter <= loop_counter + 1;     

      end if; 
    end loop; 
    wait until rising_edge(clk); 
    loop_counter <= 0;
    inbuff_wr_en <= '0'; 


	  
	  while(reset_n = '1')	 loop
        wait until rising_edge(clk);


        if(outbuff_empty = '0') then 
            outbuff_rd_en <= '1'; 
        end if; 
	  end loop; 
	  
	 
	  
    wait;
  end process; 


end arch;
