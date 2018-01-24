-------------------------------------------------------------------------------
--
-- Title       : volume_mux
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\volume_mux.vhd
-- Generated   : Sat Sep 16 18:40:52 2017
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
--{entity {volume_mux} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity volume_mux is	
	port(
	i_clk 					: in std_logic; 
	i_reset_n 				: in std_logic;  
	i_enable				: in std_logic;

	i_recycled_data			: in std_logic_vector(15 downto 0); 
	i_recycled_data_wr_en	: in std_logic; 
	i_new_data 				: in std_logic_vector(15 downto 0); 
	i_prev_data				: in std_logic_vector(15 downto 0); 
	i_prev_data_wr_en		: in std_logic; 

	o_data 					: out std_logic_vector(15 downto 0);   
	i_new_data_en			: in std_logic;  
	i_prev_data_en			: in std_logic; 
	i_recycled_data_en		: in std_logic; 

	o_wr_en					: out std_logic;
	i_full					: in std_logic; 
	i_almost_full			: in std_logic; 
	i_prog_full				: in std_logic; 
	o_prog_full_thresh		: out std_logic_vector(9 downto 0); 
	
	o_get_volume_row		: out std_logic; 
	
	i_fifo_we				: in std_logic; 
	o_fifo_full				: out std_logic; 
	o_fifo_almost_full		: out std_logic; 
	o_fifo_prog_full		: out std_logic;  
	i_fifo_prog_full_thresh : in std_logic_vector(9 downto 0)
	); 
end volume_mux;

--}} End of automatically maintained section

architecture arch of volume_mux is


signal wr_en 	: std_logic; 
signal data		: std_logic_vector(15 downto 0); 
signal get_volume_row : std_logic; 


begin 
	
	o_data 				<= data; 
	o_wr_en				<= wr_en; 
	o_prog_full_thresh 	<= i_fifo_prog_full_thresh; 
	o_fifo_full			<= i_full; 
	o_fifo_almost_full 	<= i_almost_full; 
	o_fifo_prog_full 	<= i_prog_full;    
	o_get_volume_row 	<= get_volume_row; 
	
	
	muxing: process(all) is 
	begin  
		
		get_volume_row <= '0'; 	 
		data <= (others => '0'); 
		
	
		if(i_new_data_en = '1' and i_prev_data_en = '0' and i_recycled_data_en = '0') then   
			wr_en <= i_fifo_we; 
			data <= i_new_data;    
			get_volume_row <= '1'; 
		elsif(i_new_data_en = '0' and (i_prev_data_en = '1' or i_prev_data_wr_en = '1') and i_recycled_data_en = '0') then   
			wr_en <=  i_prev_data_wr_en; 
			data <= i_prev_data; 
		elsif(i_new_data_en = '0' and i_prev_data_en = '0' and i_recycled_data_en = '1') then 
			wr_en <= i_recycled_data_wr_en;
			data <= i_recycled_data; 
		else 
			data <= (others => '0'); 
			wr_en <= '0';  
			get_volume_row <= '1'; 
		end if; 
		
	end process; 

end arch;
