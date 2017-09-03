-------------------------------------------------------------------------------
--
-- Title       : ov5642_controller
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\ov5642_controller.vhd
-- Generated   : Wed Apr 26 18:50:55 2017
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
--{entity {ov5642_controller} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all; 

entity ov5642_controller is	   
	port(	  
		i_axi_master_clk		: in std_logic; 
		i_axi_slave_clk  			: in std_logic; 
		i_reset_n 					: in std_logic; 
		
		-- FROM OV5642 Interface 
		i_outbuff_valid				: in std_logic; 
		i_outbuff_dout				: in std_logic_vector(11 downto 0); 
		i_outbuff_empty 			: in std_logic; 
		i_outbuff_almost_empty 		: in std_logic; 
		i_outbuff_prog_empty		: in std_logic;
		i_outbuff_full	 			: in std_logic; 
		i_outbuff_almost_full		: in std_logic; 
		i_outbuff_prog_full			: in std_logic;  
		
		
		-- TO OV5642 Interface 
		o_read_en				    : out std_logic; 
		o_start_capture				: out std_logic;  
		o_prog_empty_threshold		: out std_logic_vector(10 downto 0); 
		o_prog_full_threshold		: out std_logic_vector(10 downto 0); 	   
		o_i2c_sensor_data			: out std_logic_vector(31 downto 0); 	
		o_config_bram_addr			: out std_logic_vector(31 downto 0);   
		o_valid_bram_instr  		: out std_logic_vector(31 downto 0); 
		
		-- FROM OV5642 Interface
		i_capture_busy				: in std_logic;    
		i_i2c_busy					: in std_logic;
		
	    -- FROM AXI SLAVE IF 
	    i_start_reg                : in std_logic_vector(31 downto 0); 
	    i_status_reg               : in std_logic_vector(31 downto 0); 
	    i_image_data_addr_reg      : in std_logic_vector(31 downto 0); 
		i_diag_reg_0			   : in std_logic_vector(31 downto 0);
		i_diag_reg_1			   : in std_logic_vector(31 downto 0);
		i_diag_reg_2			   : in std_logic_vector(31 downto 0);
		i_diag_reg_3			   : in std_logic_vector(31 downto 0);	  
		i_i2c_sensor_data_reg      : in std_logic_vector(31 downto 0); 	
		i_config_bram_addr_reg	   : in std_logic_vector(31 downto 0); 
		i_valid_bram_instr_reg	   : in std_logic_vector(31 downto 0); 
		
		--FROM AXI MASTER
		i_slv_reg_rden			   : in std_logic; 
		i_slv_reg_wren			   : in std_logic_vector(31 downto 0); 
		i_write_next			   : in std_logic; 
		i_burst_write_active	   : in std_logic; 	  
		i_wready				   : in std_logic; 	
		i_write_done			   : in std_logic; 
		
		
	    -- TO AXI SLAVE IF 
	    o_start_reg                : out std_logic_vector(31 downto 0); 
	    o_status_reg               : out std_logic_vector(31 downto 0); 
	    o_image_data_addr_reg      : out std_logic_vector(31 downto 0);    
		o_diag_reg_0			   : out std_logic_vector(31 downto 0);
		o_diag_reg_1			   : out std_logic_vector(31 downto 0);
		o_diag_reg_2			   : out std_logic_vector(31 downto 0);
		o_diag_reg_3			   : out std_logic_vector(31 downto 0);
		o_i2c_sensor_data_reg	   : out std_logic_vector(31 downto 0); 
		o_config_bram_addr_reg	   : out std_logic_vector(31 downto 0);  
		o_valid_bram_instr_reg		: out std_logic_vector(31 downto 0); 
	    
	    -- DIAGNOSTIC SIGNALS 
		i_diag_image_enable 		: in std_logic; 
		i_diag_debug_state  		: in std_logic_vector(2 downto 0); 
		i_diag_FRAME_DONE 			: in std_logic; 
		i_diag_pclk_counter			: in std_logic_vector(7 downto 0); 
		i_diag_X_POS				: in std_logic_vector(11 downto 0); 
		i_diag_Y_POS				: in std_logic_vector(11 downto 0); 
		i_diag_PIXEL_NUMBER			: in std_logic_vector(31 downto 0);
		i_diag_config_bypass		: in std_logic; 
		i_diag_sensor_config_done   : in std_logic; 
		i_diag_outbuff_full			: in std_logic; 
		i_diag_outbuff_almost_full	: in std_logic; 
		i_diag_outbuff_prog_full	: in std_logic; 
		i_diag_outbuff_valid		: in std_logic; 
		i_diag_outbuff_empty 		: in std_logic; 
		i_diag_outbuff_almost_empty : in std_logic; 
		i_diag_outbuff_prog_empty	: in std_logic;   
		
		i_diag_capture_state_debug	: in std_logic_vector(3 downto 0); 
		i_diag_siod_state_debug		: in std_logic_vector(4 downto 0); 
		i_diag_sioc_state_debug	    : in std_logic_vector(2 downto 0); 
		
		--TO AXI MASTER
		o_DATA_TO_WRITE				: out std_logic_vector(15 downto 0); 
		o_INIT_AXI_TXN				: out std_logic; 
		o_outbuff_prog_empty		: out std_logic; 
		o_outbuff_empty				: out std_logic; 
		o_outbuff_almost_empty		: out std_logic; 
		o_outbuff_valid				: out std_logic

		
		); 
end ov5642_controller;

--}} End of automatically maintained section

architecture arch of ov5642_controller is


  
  signal start_reg                : std_logic_vector(31 downto 0); 
  signal status_reg               : std_logic_vector(31 downto 0); 
  signal image_data_addr_reg      : std_logic_vector(31 downto 0);    
  signal diag_reg_0				  : std_logic_vector(31 downto 0);   
  signal diag_reg_1				  : std_logic_vector(31 downto 0);
  signal diag_reg_2				  : std_logic_vector(31 downto 0);
  signal diag_reg_3				  : std_logic_vector(31 downto 0);	
  signal i2c_sensor_data_reg      : std_logic_vector(31 downto 0); 	
  signal config_bram_addr_reg	  : std_logic_vector(31 downto 0); 
  signal valid_bram_instr_reg	  : std_logic_vector(31 downto 0); 
  signal start_capture			  : std_logic; 
  
  signal read_en 				  : std_logic; 
  signal DATA_TO_WRITE 			  : std_logic_vector(15 downto 0); 
  signal INIT_AXI_TXN 			  : std_logic; 
  
  signal row_pixel_counter		  : integer;  
  signal start_fill_flag		  : std_logic; 
  
  
begin
  
  -- unused floating signals
 
  o_start_reg     		<= start_reg; 
  o_status_reg          <= status_reg;  
  o_image_data_addr_reg <= image_data_addr_reg;    
  o_diag_reg_0			<= diag_reg_0;  	
  o_diag_reg_1			<= diag_reg_1;  	
  o_diag_reg_2			<= diag_reg_2;  	
  o_diag_reg_3			<= diag_reg_3;  
  o_i2c_sensor_data_reg <= i2c_sensor_data_reg; 	
  o_config_bram_addr_reg <= config_bram_addr_reg; 
  o_valid_bram_instr_reg <= valid_bram_instr_reg; 
  o_start_capture		<= start_capture;  
  
  o_read_en <= read_en; 
  o_DATA_TO_WRITE <= DATA_TO_WRITE; 
  o_INIT_AXI_TXN <= INIT_AXI_TXN; 
  
  
  o_i2c_sensor_data			<= i2c_sensor_data_reg;	
  o_config_bram_addr		<= config_bram_addr_reg;   
  o_valid_bram_instr  		<= valid_bram_instr_reg; 
  o_prog_empty_threshold 	<= "01010000000";
  o_prog_full_threshold		<= "11110000000"; 
  o_outbuff_empty 			<= i_outbuff_empty;   
  o_outbuff_prog_empty 		<= i_outbuff_prog_empty;
  o_outbuff_almost_empty	<= i_outbuff_almost_empty;
  o_outbuff_valid			<= i_outbuff_valid; 
  
  register_control: process(i_axi_slave_clk, i_reset_n) 
    begin 
      if(i_reset_n = '0') then 

        start_reg                 <= (others => '0'); 
        status_reg                <= (others => '0'); 
   		start_reg                 <= (others => '0');  
  		status_reg                <= (others => '0'); 
  		image_data_addr_reg       <= (others => '0');    
  		diag_reg_0				  <= (others => '0');    
  		diag_reg_1				  <= (others => '0'); 
  		diag_reg_2				  <= (others => '0'); 
  		diag_reg_3				  <= (others => '0'); 

        start_capture                 <= '0'; 
		
		i2c_sensor_data_reg <= (others => '0'); 
        config_bram_addr_reg <= (others => '0'); 
        valid_bram_instr_reg <= (others => '0'); 

      elsif(rising_edge(i_axi_slave_clk)) then 
        
        start_reg                 <= start_reg; 
        status_reg                <= status_reg; 
   		start_reg                 <= start_reg;  
  		status_reg                <= status_reg; 
  		image_data_addr_reg       <= image_data_addr_reg;    
  		diag_reg_0				  <= diag_reg_0;    
  		diag_reg_1				  <= diag_reg_1; 
  		diag_reg_2				  <= diag_reg_2; 
  		diag_reg_3				  <= diag_reg_3; 

        start_capture             <= start_capture;    
		
        i2c_sensor_data_reg 		<= i2c_sensor_data_reg; 	
        config_bram_addr_reg 		<= config_bram_addr_reg; 
        valid_bram_instr_reg 		<= valid_bram_instr_reg; 

        

        if(i_slv_reg_wren(0) = '1') then 
          start_reg <= i_start_reg;
        else
           
          if (start_reg(0) = '1') then 
            start_capture <= '1'; 
            start_reg <= (others => '0'); 
          else
            start_reg <= start_reg;
            start_capture <= start_capture; 
          end if; 
          
        end if; 
        
        if(i_slv_reg_wren(1) = '1') then 
          status_reg <= i_status_reg; 
        else 
          status_reg(20) <= i_diag_FRAME_DONE;   
          status_reg(16) <= i_diag_image_enable; 
		  status_reg(12) <= i_diag_config_bypass; 
		  status_reg(8) <= i_diag_sensor_config_done; 
		  status_reg(4) <= i_i2c_busy;  
		  status_reg(0) <= i_capture_busy; 

        end if; 
      
        if(i_slv_reg_wren(2) = '1') then 
          image_data_addr_reg <= i_image_data_addr_reg; 
        else 
          image_data_addr_reg <= image_data_addr_reg; 
        end if; 
        
        if(i_slv_reg_wren(3) = '1') then 
          diag_reg_0 <= i_diag_reg_0; 
        else 
          diag_reg_0 <= i_diag_PIXEL_NUMBER; 
        end if; 
        
        if(i_slv_reg_wren(4) = '1') then 
          diag_reg_1 <= i_diag_reg_1; 
        else 
          diag_reg_1 <= diag_reg_1; 
		  diag_reg_1(27 downto 16) <= i_diag_X_POS; 
		  diag_reg_1(11 downto 0) <= i_diag_Y_POS; 
		  
        end if; 
        
        if(i_slv_reg_wren(5) = '1') then 
          diag_reg_2 <= i_diag_reg_2; 
        else										  
		  diag_reg_2(26 downto 24) <= i_diag_sioc_state_debug; 
		  diag_reg_2(20 downto 16) <= i_diag_siod_state_debug; 
		  diag_reg_2(15 downto 12) <= i_diag_capture_state_debug; 
          diag_reg_2(10 downto 8) <= i_diag_debug_state; 	
		  diag_reg_2(7 downto 0) <= i_diag_pclk_counter; 
        end if; 
        
        if (i_slv_reg_wren(6) = '1') then 
          diag_reg_3 <= i_diag_reg_3; 
        else 
          diag_reg_3(24) <= i_outbuff_valid;	
		  diag_reg_3(20) <= i_outbuff_prog_full; 
		  diag_reg_3(16) <= i_outbuff_prog_empty; 
		  diag_reg_3(12) <= i_outbuff_almost_full;
		  diag_reg_3(8) <= i_outbuff_full; 
		  diag_reg_3(4) <= i_outbuff_almost_empty; 
		  diag_reg_3(0) <= i_outbuff_empty; 
		  
        end if;  
		
        if(i_slv_reg_wren(7) = '1') then 
         i2c_sensor_data_reg <= i_i2c_sensor_data_reg; 
        else 
         i2c_sensor_data_reg <= i2c_sensor_data_reg; 
        end if; 
		
        if(i_slv_reg_wren(8) = '1') then 
         config_bram_addr_reg <= i_config_bram_addr_reg; 
        else 
         config_bram_addr_reg <= config_bram_addr_reg; 
		 config_bram_addr_reg(16) <= '0'; 
        end if; 
		 
		
        if(i_slv_reg_wren(9) = '1') then 
         valid_bram_instr_reg <= i_valid_bram_instr_reg; 
        else 
         valid_bram_instr_reg <= valid_bram_instr_reg; 
        end if;  
		
		
      end if; 
    end process;  
	
	
	fifo: process(i_outbuff_prog_empty,i_outbuff_valid,i_outbuff_dout, i_write_next, i_wready) 
	begin	 
		
		read_en <= '0'; 
		DATA_TO_WRITE <= (others => '0'); 
		--INIT_AXI_TXN <= '0'; 
		

		if(i_wready = '1') then 
			read_en <= '1'; 
		else 
			read_en <= '0'; 
		end if; 
		
			
		if(i_outbuff_valid = '1') then 	
			DATA_TO_WRITE <= "0000" & i_outbuff_dout; 
			--INIT_AXI_TXN	<= '1'; 
		else
			DATA_TO_WRITE <= (others => '0'); 		  	  
			--INIT_AXI_TXN 	<= '0'; 
		end if; 

		
	end process;   
	
	initiate_axi_transaction: process(i_axi_master_clk, i_reset_n) 
	begin 
		
		if(i_reset_n = '0') then 
			row_pixel_counter <= 0; 
			INIT_AXI_TXN <= '0'; 
			start_fill_flag <= '0'; 
			
		elsif(rising_edge(i_axi_master_clk)) then
			
			row_pixel_counter <= row_pixel_counter;   
			INIT_AXI_TXN <= '0'; 
			start_fill_flag <= start_fill_flag; 
			
			if(i_outbuff_prog_empty = '0' and row_pixel_counter = 0 and start_fill_flag = '0') then 
                INIT_AXI_TXN <= '1'; 	   
				start_fill_flag <= '1';  
			elsif (i_write_done = '1') then 
				INIT_AXI_TXN <= '1'; 
            end if; 
			
--			if(i_burst_write_active = '0' and start_fill_flag = '1') then 
--				INIT_AXI_TXN <= '1'; 
--			end if; 	  
			
			if(i_outbuff_valid = '1') then 	
				
				if(row_pixel_counter < 640) then	
					row_pixel_counter <= row_pixel_counter + 1; 
				else 
					row_pixel_counter <= 0; 
				end if; 
			end if;  
		end if; 
		
	end process; 
		
				
					
	
    

		   
      
  
end architecture arch;

