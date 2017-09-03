-------------------------------------------------------------------------------
--
-- Title       : input_fifo_net_controller
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\input_fifo_net_controller.vhd
-- Generated   : Tue Aug 15 22:46:45 2017
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
--{entity {input_fifo_net_controller} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity input_fifo_net_controller is	   
	port(
	i_clk 				: in std_logic; 
	i_reset_n 			: in std_logic; 	

    i_inbuff_valid				: in std_logic; 
	i_inbuff_dout				: in std_logic_vector(15 downto 0);  
	o_inbuff_rd_en				: out std_logic; 
	i_inbuff_empty				: in std_logic; 
	i_inbuff_almost_empty		: in std_logic; 

	i_inbuff_prog_empty			: in std_logic; 
	o_inbuff_prog_empty_thresh 	: out std_logic_vector(9 downto 0); 
	
	
	o_wr_en				: out std_logic_vector(10 downto 0); 
	i_full				: in std_logic_vector(10 downto 0); 
	i_almost_full 		: in std_logic_vector(10 downto 0); 
	i_prog_full			: in std_logic_vector(10 downto 0);	  
	o_prog_full_thresh	: out std_logic_vector(9 downto 0);
	
	i_valid				: in std_logic_vector(10 downto 0);	 
	o_rd_en				: out std_logic_vector(10 downto 0);
	i_empty				: in std_logic_vector(10 downto 0);
	i_almost_empty		: in std_logic_vector(10 downto 0);
	i_prog_empty		: in std_logic_vector(10 downto 0);
	o_prog_empty_thresh : out std_logic_vector(9 downto 0); 
	
	w0	 				: out std_logic_vector(15 downto 0); 
	w1	 				: out std_logic_vector(15 downto 0); 
	w2	 				: out std_logic_vector(15 downto 0); 
	w3	 				: out std_logic_vector(15 downto 0); 
	w4	 				: out std_logic_vector(15 downto 0); 
	w5	 				: out std_logic_vector(15 downto 0); 
	w6	 				: out std_logic_vector(15 downto 0); 
	w7	 				: out std_logic_vector(15 downto 0); 
	w8	 				: out std_logic_vector(15 downto 0); 
	w9	 				: out std_logic_vector(15 downto 0); 
	w10	 				: out std_logic_vector(15 downto 0)
	
	); 	
end input_fifo_net_controller;

--}} End of automatically maintained section

architecture arch of input_fifo_net_controller is
begin

	 -- enter your statements here --

end arch;
