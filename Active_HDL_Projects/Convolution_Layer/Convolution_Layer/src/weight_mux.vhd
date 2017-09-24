-------------------------------------------------------------------------------
--
-- Title       : weight_mux
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\weight_mux.vhd
-- Generated   : Sat Sep 16 19:14:20 2017
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
--{entity {weight_mux} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all;

entity weight_mux is
	generic(
	g_mux_id	: integer := 0
	); 
	port(
	i_clk		: in std_logic; 
	i_reset_n	: in std_logic;    
	i_enable	: in std_logic; 
	
	i_recycled_filter 		: in std_logic_vector(15 downto 0); 
	i_new_filter_data		: in std_logic_vector(15 downto 0); 
	i_recycled_filter_wr_en 	: in std_logic; 
	--i_filter_size			: in std_logic_vector(3 downto 0); 	
	--i_num_filters			: in std_logic_vector(11 downto 0); 
	
	o_filter_data			: out std_logic_vector(15 downto 0); 
	o_current_filter_num	: out std_logic_vector(11 downto 0); 
	
	o_data_valid			: out std_logic; 
	i_full					: in std_logic; 
	i_almost_full			: in std_logic; 
	i_prog_full				: in std_logic; 
	o_prog_full_thresh		: out std_logic_vector(12 downto 0); 
	o_get_weight_row		: out std_logic; 
	
	i_fifo_wr_en 			: in std_logic; 
	o_fifo_full				: out std_logic; 
	o_fifo_almost_full		: out std_logic; 
	o_fifo_prog_full		: out std_logic; 
	i_fifo_prog_full_thresh	: in std_logic_vector(12 downto 0)
	); 
end weight_mux;

--}} End of automatically maintained section

architecture arch of weight_mux is
begin

--	o_data 				<= data; 
--	o_wr_en				<= wr_en; 
--	o_prog_full_thresh 	<= i_fifo_prog_full_thresh; 
--	o_fifo_full			<= i_full; 
--	o_fifo_almost_full 	<= i_almost_full; 
--	o_fifo_prog_full 	<= i_prog_full; 
--	
--	
--	muxing: process(i_new_data_en,i_prev_data_en,i_recycled_data_en,i_fifo_we,i_new_data,i_prev_data,i_recycled_data_wr_en,i_recycled_data) is 
--	begin  
--	
--		if(i_new_data_en = '1' and i_prev_data_en = '0' and i_recycled_data_en = '0') then   
--			wr_en <= i_fifo_we; 
--			data <= i_new_data;   
--		elsif(i_new_data_en = '0' and i_prev_data_en = '1' and i_recycled_data_en = '0') then   
--			wr_en <=  i_prev_data_wr_en; 
--			data <= i_prev_data; 
--		elsif(i_new_data_en = '0' and i_prev_data_en = '0' and i_recycled_data_en = '1') then 
--			wr_en <= i_recycled_data_wr_en;
--			data <= i_recycled_data; 
--		else 
--			data <= data; 
--			wr_en <= '0'; 
--		end if; 
--		
--	end process; 
--
end arch;
