-------------------------------------------------------------------------------
--
-- Title       : multiplier_controller
-- Design      : Multiplier_Bank
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : C:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Multiplier_bank\Multiplier_Bank\src\multiplier_controller.vhd
-- Generated   : Mon Jul 10 22:47:37 2017
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
--{entity {multiplier_controller} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;  
use IEEE.numeric_std.all; 

library multiplier_bank; 
use multiplier_bank.multiplier_types.all;

entity multiplier_controller is	
	port(
		i_axi_master_clk		: in std_logic; 
		i_axi_slave_clk  			: in std_logic; 
		i_reset_n 					: in std_logic; 
	
	
	    -- FROM AXI SLAVE IF 
		i_control_reg			   : in std_logic_vector(31 downto 0); 
	    i_status_reg               : in std_logic_vector(31 downto 0);
		i_dsp_id_reg			   : in std_logic_vector(31 downto 0); 
		i_multiplicand_a_reg	   : in std_logic_vector(31 downto 0); 
		i_multiplicand_b_reg	   : in std_logic_vector(31 downto 0); 	
		i_destination_addr_reg	   : in std_logic_vector(31 downto 0); 

		
	    -- TO AXI SLAVE IF 
		o_control_reg			   : out std_logic_vector(31 downto 0); 
	    o_status_reg               : out std_logic_vector(31 downto 0);
		o_dsp_id_reg		       : out std_logic_vector(31 downto 0); 
		o_multiplicand_a_reg	   : out std_logic_vector(31 downto 0); 
		o_multiplicand_b_reg	   : out std_logic_vector(31 downto 0);
		o_destination_addr_reg	   : out std_logic_vector(31 downto 0);    
		
		o_inbuff_prog_full 			: out std_logic; 
        o_inbuff_full   			: out std_logic; 
        o_inbuff_almost_full 		: out std_logic; 

	
		--FROM AXI MASTER
		i_slv_reg_rden			   : in std_logic; 
		i_slv_reg_wren			   : in std_logic_vector(31 downto 0);	
        

			
		--TO AXI MASTER
		o_DATA_TO_WRITE				: out std_logic_vector(15 downto 0); 
		o_INIT_AXI_TXN				: out std_logic; 
		
		o_outbuff_prog_empty		: out std_logic; 
		o_outbuff_empty				: out std_logic; 
		o_outbuff_almost_empty		: out std_logic; 
		o_outbuff_valid				: out std_logic; 
		
		o_destination_addr			: out std_logic_vector(31 downto 0);  
		o_outbuff_data				: out std_logic_vector(31 downto 0); 
        


		-- TO Multiplier Interface 
		--o_read_en				    : out std_logic; 
		o_bank_en					: out std_logic;  

		
		-- FROM Multiplier Interface 
		i_mult_fifo_full    		: in std_logic; 
		i_mult_fifo_almost_full		: in std_logic;
		i_mult_prog_full			: in std_logic;
		i_product_data				: in std_logic_vector(31 downto 0); 
		i_prod_fifo_empty			: in std_logic; 
		i_prod_fifo_almost_empty	: in std_logic; 
		i_prod_fifo_prog_empty		: in std_logic; 	
		i_product_valid				: in std_logic; 
		
		

		-- TO Multiplier Interface
		o_multiplicand_data_valid	: out std_logic; 
		o_multiplicand_data			: out std_logic_vector(15 downto 0); 
		o_mult_prog_full_thresh		: out std_logic_vector(9 downto 0); 
		o_prod_prog_empty_thresh	: out std_logic_vector(9 downto 0); 
		o_product_en	 			: out std_logic
		
			
--		i_product : in array_type_240x32bit; 
--		
--		o_multiplicand_a : out array_type_240x16bit; 
--		o_multiplicand_b : out array_type_240x16bit; 
		
		
		
	); 
	
end multiplier_controller;

--}} End of automatically maintained section

architecture arch of multiplier_controller is
 
  signal control_reg		   : std_logic_vector(31 downto 0); 
  signal status_reg            : std_logic_vector(31 downto 0); 
  signal dsp_id_reg			   : std_logic_vector(31 downto 0); 
  signal multiplicand_a_reg    : std_logic_vector(31 downto 0); 
  signal multiplicand_b_reg	   : std_logic_vector(31 downto 0); 	 
  signal product_reg	       : std_logic_vector(31 downto 0); 
  signal bank_en			   : std_logic; 	   
  signal dsp_layer_num		   : std_logic_vector(7 downto 0); 
  signal dsp_id				   : std_logic_vector(7 downto 0); 	 
  signal destination_addr_reg  : std_logic_vector(31 downto 0);   
  
  
  --type dsp_array_type is array (239 downto 0) of std_logic_vector(7 downto 0);
  --signal dsp_array : dsp_array_type; 
  
		
begin 
	
	o_inbuff_full			<= i_mult_fifo_full; 
	o_inbuff_almost_full	<= i_mult_fifo_almost_full; 
	o_inbuff_prog_full		<= i_mult_fifo_prog_full
	
	o_outbuff_valid 		<= i_product_valid; 
	o_destination_addr		<= destination_addr_reg; 
	o_outbuff_data			<= i_product_data; 
	o_outbuff_empty			<= i_prod_fifo_empty; 
	o_outbuff_almost_empty	<= i_prod_fifo_almost_empty; 
	o_outubff_prog_empty	<= i_prod_fifo_prog_empty; 	   
	
  register_control: process(i_axi_slave_clk, i_reset_n) 
    begin 
      if(i_reset_n = '0') then 

        control_reg                 <= (others => '0'); 
        status_reg                	<= (others => '0'); 
  		dsp_id_reg			      	<= (others => '0'); 
		multiplicand_a_reg		  	<= (others => '0'); 
		multiplicand_b_reg		  	<= (others => '0'); 
		product_reg				  	<= (others => '0'); 
        bank_en                 	<= '0'; 
		dsp_layer_num 				<= (others => '0');  
		dsp_id 					 	<= (others => '0'); 
		
		
      elsif(rising_edge(i_axi_slave_clk)) then 
        
        control_reg                 <= control_reg; 
        status_reg                	<= status_reg; 
  		dsp_id_reg			      	<= dsp_id_reg; 
		multiplicand_a_reg		  	<= multiplicand_a_reg; 
		multiplicand_b_reg		  	<= multiplicand_b_reg;  
		product_reg				  	<= product_reg;  
        bank_en            			<= bank_en;    
		dsp_layer_num 				<= dsp_layer_num; 
		dsp_id						<= dsp_id; 

        
		-- CONTROL REGISTER
        if(i_slv_reg_wren(0) = '1') then 
		  control_reg <= i_control_reg; 
		  bank_en <= i_control_reg(0); 
        else
           
          if (control_reg(0) = '1') then 
            bank_en <= '1'; 
            control_reg <= (others => '0'); 
          else
            control_reg <= control_reg;
            bank_en <= bank_en; 
          end if; 
          
        end if; 
        
		--STATUS REGISTER
        if(i_slv_reg_wren(1) = '1') then 
          status_reg <= i_status_reg; 
        else  
		  
		  --status_reg(4) <= i_dsps_assigned;  
		  status_reg(0) <= bank_en; 

        end if; 
      	
		
		--DSP ID REGISTER
        if(i_slv_reg_wren(2) = '1') then 
          dsp_id_reg 		<= i_dsp_id_reg; 
		  dsp_layer_num 	<= i_dsp_id_reg(15 downto 8); 
		  dsp_id 			<= i_dsp_id_reg(7 downto 0); 
        else 
          dsp_id_reg 		<= dsp_id_reg;   
		  dsp_layer_num 	<= dsp_layer_num; 	 
		  --dsps_used			<= dsps_used; 
		  
		  dsp_id 			<= dsp_id; 	
		  
		  --dsp_array(to_integer(unsigned(dsp_id))) <= dsp_layer_num; 
		 
		  
        end if; 
        
		-- MULTIPLICAND A REGISTER 
        if(i_slv_reg_wren(3) = '1') then 
          multiplicand_a_reg <= i_multiplicand_a_reg; 
        else 
          multiplicand_a_reg <= multiplicand_a_reg; 
        end if; 
        
		-- MULTIPLICAND B REGISTER
        if(i_slv_reg_wren(4) = '1') then 
          multiplicand_b_reg <= i_multiplicand_b_reg; 
        else 
          multiplicand_b_reg <= multiplicand_b_reg; 
        end if; 									
		
		
        -- Destination Address Register 
        if(i_slv_reg_wren(5) = '1') then 
          destination_addr_reg <= i_destination_addr_reg; 
        else										  
		  destination_addr_reg <= destination_addr_reg; 
        end if; 
		
      end if; 
    end process;  

end arch;
