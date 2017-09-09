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
use ieee.numeric_std.all; 

entity Convolution_Controller is  
	generic(  
	g_axi_bus_width : integer := 32; 
	g_relu_width : integer := 16; 
	g_data_width : integer := 16; 
	g_weight_width : integer := 16
	); 
	port(
	i_slave_clk	: in std_logic; 
	i_master_clk	: in std_logic; 
	i_ext_reset_n : in std_logic; 	
	
	-- FROM AXI SLAVE INTERFACE 
	i_we						: in std_logic_vector(19 downto 0); 
	i_control_reg				: in std_logic_vector(g_axi_bus_width-1 downto 0); 
	i_status_reg 				: in std_logic_vector(g_axi_bus_width-1 downto 0); 
	i_input_data_addr_reg		: in std_logic_vector(g_axi_bus_width-1 downto 0);
	i_output_data_addr_reg	 	: in std_logic_vector(g_axi_bus_width-1 downto 0);
	i_filter_weights_addr_reg	: in std_logic_vector(g_axi_bus_width-1 downto 0);
	i_filter_bytes_reg			: in std_logic_vector(g_axi_bus_width-1 downto 0); 
	i_input_image_params_reg	: in std_logic_vector(g_axi_bus_width-1 downto 0);	
	i_output_image_params_reg 	: in std_logic_vector(g_axi_bus_width-1 downto 0);	   
	i_conv_params_reg			: in std_logic_vector(g_axi_bus_width-1 downto 0);	 
	
	-- TO AXI SLAVE INTERFACE 
	o_control_reg				: out std_logic_vector(g_axi_bus_width-1 downto 0); 
	o_status_reg 				: out std_logic_vector(g_axi_bus_width-1 downto 0); 
	o_input_data_addr_reg		: out std_logic_vector(g_axi_bus_width-1 downto 0);
	o_output_data_addr_reg	 	: out std_logic_vector(g_axi_bus_width-1 downto 0);
	o_filter_weights_addr_reg	: out std_logic_vector(g_axi_bus_width-1 downto 0);	
	o_filter_bytes_reg			: out std_logic_vector(g_axi_bus_width-1 downto 0); 
	o_input_image_params_reg	: out std_logic_vector(g_axi_bus_width-1 downto 0);	
	o_output_image_params_reg 	: out std_logic_vector(g_axi_bus_width-1 downto 0);	   
	o_conv_params_reg			: out std_logic_vector(g_axi_bus_width-1 downto 0);	 
	
	
	--FROM LOGIC
	i_inbuff_full				: in std_logic; 
	i_inbuff_almost_full		: in std_logic; 
	i_inbuff_prog_full			: in std_logic;  

	i_inbuff_empty				: in std_logic; 
	i_inbuff_almost_empty		: in std_logic; 
	i_inbuff_prog_empty			: in std_logic; 
	
	i_conv_relu_output			: in std_logic_vector(g_relu_width-1 downto 0); 
	i_outbuff_valid				: in std_logic; 
	i_outbuff_empty				: in std_logic; 
	i_outbuff_almost_empty		: in std_logic; 
	i_outbuff_prog_empty		: in std_logic;   
	
	i_outbuff_full				: in std_logic; 
	i_outbuff_almost_full		: in std_logic; 
	i_outbuff_prog_full			: in std_logic; 

	--TO LOGIC 
	o_image_data				: out std_logic_vector(g_data_width-1 downto 0); 
	o_inbuff_wr_en				: out std_logic; 
	o_inbuff_prog_full_thresh	: out std_logic_vector(9 downto 0);  
	
	o_outbuff_rd_en	  			: out std_logic; 
	o_outbuff_prog_empty_thresh : out std_logic_vector(9 downto 0); 
	
	o_relu_en 					: out std_logic; 
	o_enable					: out std_logic; 	  
	o_start						: out std_logic; 
	
	o_input_image_height	  	: out std_logic_vector(15 downto 0); 
	o_input_image_width			: out std_logic_vector(15 downto 0);  
	o_output_image_height	  	: out std_logic_vector(15 downto 0); 
	o_output_image_width		: out std_logic_vector(15 downto 0); 
--	o_weight_filter_size		: out std_logic_vector(7 downto 0); 
	o_weight_filter_height		: out std_logic_vector(3 downto 0); 
	o_weight_filter_width		: out std_logic_vector(3 downto 0); 
	o_number_of_filters			: out std_logic_vector(7 downto 0); 
	
	o_stride					: out std_logic_vector(3 downto 0); 
	o_pad						: out std_logic_vector(3 downto 0); 
	o_filter_weights			: out std_logic_vector(g_weight_width-1 downto 0)
	); 
	
end Convolution_Controller;

--}} End of automatically maintained section

architecture arch of Convolution_Controller is
	signal clear 		: std_logic; 
	signal get_weights 	: std_logic;  
	signal weights_loaded: std_logic;  
	signal repeat_count	: std_logic_vector(7 downto 0);   
	signal layer_number	: std_logic_vector(7 downto 0);  
	signal start		: std_logic; 
begin  
	
	--BACK TO AXI SLAVE INTERFACE
	o_control_reg				<= i_control_reg; 

	o_status_reg(31 downto 24) 	<= repeat_count;    
	o_status_reg(23) 			<= '0'; 
	o_status_reg(22) 			<= i_inbuff_prog_full; 
	o_status_reg(21) 			<= i_inbuff_almost_full; 
	o_status_reg(20) 			<= i_inbuff_full; 
	o_status_reg(19) 			<= '0'; 
	o_status_reg(18) 			<= i_inbuff_prog_empty; 
	o_status_reg(17) 			<= i_inbuff_almost_empty; 
	o_status_reg(16) 			<= i_inbuff_empty; 	
	
	o_status_reg(15) 			<= '0'; 
	o_status_reg(14) 			<= i_inbuff_prog_full; 
	o_status_reg(13) 			<= i_inbuff_almost_full; 
	o_status_reg(12) 			<= i_inbuff_full; 
	o_status_reg(11) 			<= '0'; 
	o_status_reg(10) 			<= i_inbuff_prog_empty; 
	o_status_reg(9) 			<= i_inbuff_almost_empty; 
	o_status_reg(8) 			<= i_inbuff_empty; 		  
	
	o_status_reg(7 downto 5) 	<= (others => '0'); 
	o_status_reg(4) 			<= weights_loaded; 
	o_status_reg(3 downto 1) 	<= (others => '0'); 
	o_status_reg(0) 			<= i_control_reg(0); 
	
	o_input_data_addr_reg		<= i_input_data_addr_reg; 
	o_output_data_addr_reg	 	<= i_output_data_addr_reg; 	
	o_filter_weights_addr_reg	<= i_filter_weights_addr_reg; 
	o_input_image_params_reg	<= i_input_image_params_reg;
	o_output_image_params_reg 	<= i_output_image_params_reg; 
	o_conv_params_reg			<= i_conv_params_reg; 
	
	--TO LOGIC 
 	layer_number				<= i_control_reg(23 downto 16); 
	get_weights 				<= i_control_reg(4);  
	o_relu_en 					<= i_control_reg(3); 
	clear 						<= i_control_reg(2); 
	start						<= i_control_reg(1);
	o_enable 					<= i_control_reg(0);    
	
	o_input_image_height 		<= i_input_image_params_reg(31 downto 16);
	o_input_image_width 		<= i_input_image_params_reg(15 downto 0); 
	
	o_output_image_height 		<= i_output_image_params_reg(31 downto 16);
	o_output_image_width 		<= i_output_image_params_reg(15 downto 0); 	  
	
	--o_weight_filter_size		<= i_conv_params_reg(31 downto 24); 
	o_weight_filter_height		<= i_conv_params_reg(31 downto 28); 
	o_weight_filter_width		<= i_conv_params_reg(27 downto 24); 
	o_number_of_filters 		<= i_conv_params_reg(23 downto 16); 
	
	o_stride 					<= i_conv_params_reg(11 downto 8); 
	o_pad 						<= i_conv_params_reg(3 downto 0);
	
	
 	
	
	
							
	
	 -- enter your statements here --

end arch;
