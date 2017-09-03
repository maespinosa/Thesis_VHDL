-------------------------------------------------------------------------------
--
-- Title       : Convolution_Controller
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : C:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\Convolution_Controller.vhd
-- Generated   : Sat Aug 12 16:35:24 2017
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
--{entity {Convolution_Controller} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Convolution_Controller is  
	generic(  
	g_axi_bus_width : integer := 32; 
	g_relu_width : integer := 16; 
	g_data_width : integer := 16
	); 
	port(
	i_clk	: in std_logic; 
	i_reset_n : in std_logic; 	
	
	-- FROM AXI SLAVE INTERFACE 
	i_start_reg					: in std_logic_vector(g_axi_bus_width-1 downto 0); 
	i_clear_reg					: in std_logic_vector(g_axi_bus_width-1 downto 0); 
	i_status_reg 				: in std_logic_vector(g_axi_bus_width-1 downto 0);
	i_repeat_reg				: in std_logic_vector(g_axi_bus_width-1 downto 0);
	i_relu_control_reg			: in std_logic_vector(g_axi_bus_width-1 downto 0);
	i_conv_parameters_reg 		: in std_logic_vector(g_axi_bus_width-1 downto 0);	   
	i_input_data_addr_reg		: in std_logic_vector(g_axi_bus_width-1 downto 0);
	i_input_data_reg			: in std_logic_vector(g_axi_bus_width-1 downto 0);
	i_output_data_addr_reg	 	: in std_logic_vector(g_axi_bus_width-1 downto 0);
	i_output_data_reg			: in std_logic_vector(g_axi_bus_width-1 downto 0);
	i_filter_data_addr_reg		: in std_logic_vector(g_axi_bus_width-1 downto 0);
	i_filter_data_reg			: in std_logic_vector(g_axi_bus_width-1 downto 0);	   
	i_filter_control_reg		: in std_logic_vector(g_axi_bus_width-1 downto 0); 
	
	-- TO AXI SLAVE INTERFACE 
	o_start_reg					: out std_logic_vector(g_axi_bus_width-1 downto 0); 
	o_clear_reg					: out std_logic_vector(g_axi_bus_width-1 downto 0); 
	o_status_reg 				: out std_logic_vector(g_axi_bus_width-1 downto 0);
	o_repeat_reg				: out std_logic_vector(g_axi_bus_width-1 downto 0);
	o_relu_control_reg			: out std_logic_vector(g_axi_bus_width-1 downto 0);
	o_conv_parameters_reg 		: out std_logic_vector(g_axi_bus_width-1 downto 0);	   
	o_input_data_addr_reg		: out std_logic_vector(g_axi_bus_width-1 downto 0);
	o_input_data_reg			: out std_logic_vector(g_axi_bus_width-1 downto 0);
	o_output_data_addr_reg	 	: out std_logic_vector(g_axi_bus_width-1 downto 0);
	o_output_data_reg			: out std_logic_vector(g_axi_bus_width-1 downto 0);
	o_filter_data_addr_reg		: out std_logic_vector(g_axi_bus_width-1 downto 0);
	o_filter_data_reg			: out std_logic_vector(g_axi_bus_width-1 downto 0); 
	o_filter_control_reg		: out std_logic_vector(g_axi_bus_width-1 downto 0); 
	
	
	--FROM LOGIC
	i_inbuff_full				: in std_logic; 
	i_inbuff_almost_full		: in std_logic; 
	i_inbuff_prog_full			: in std_logic;    
	
	i_conv_relu_output			: in std_logic_vector(g_relu_width-1 downto 0); 
	i_outbuff_valid				: in std_logic; 
	i_outbuff_empty				: in std_logic; 
	i_outbuff_almost_empty		: in std_logic; 
	i_outbuff_prog_empty		: in std_logic; 
	
	
	
	--TO LOGIC 
	o_image_data				: out std_logic_vector(g_data_width-1 downto 0); 
	o_inbuff_wr_en				: out std_logic; 
	o_inbuff_prog_full_thresh	: out std_logic_vector(9 downto 0);  
	
	o_outbuff_rd_en	  			: out std_logic; 
	o_outbuff_prog_empty_thresh : out std_logic_vector(9 downto 0)
	); 
	
end Convolution_Controller;

--}} End of automatically maintained section

architecture arch of Convolution_Controller is
begin

	 -- enter your statements here --

end arch;
