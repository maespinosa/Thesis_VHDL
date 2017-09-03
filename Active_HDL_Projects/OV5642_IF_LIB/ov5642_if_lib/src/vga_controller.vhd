-------------------------------------------------------------------------------
--
-- Title       : vga_controller
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\vga_controller.vhd
-- Generated   : Sun Apr 30 18:50:06 2017
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
--{entity {vga_controller} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity vga_controller is   
	port(
		i_axi_slave_clk			: in std_logic; 
		i_axi_master_clk		: in std_logic;
		i_reset_n 				: in std_logic;  
		i_inbuff_full			: in std_logic; 
		i_inbuff_almost_full	: in std_logic; 
		i_inbuff_prog_full		: in std_logic;  
		
		--FROM LOGIC 
		i_pixel_x 				: in std_logic_vector(9 downto 0); 
		i_pixel_y				: in std_logic_vector(9 downto 0); 	
		i_video_on				: in std_logic; 
		
		i_inbuff_valid 			: in std_logic;
		i_inbuff_empty 			: in std_logic; 
		i_inbuff_almost_empty	: in std_logic; 
		i_inbuff_prog_empty		: in std_logic; 
		
		--TO LOGIC
		o_image_data 			: out std_logic_vector(11 downto 0); 
		o_write_en 				: out std_logic;   
		o_start_display			: out std_logic;
		o_prog_full_threshold	: out std_logic_vector(10 downto 0); 
		o_prog_empty_threshold	: out std_logic_vector(10 downto 0); 
		
		
		--FROM AXI SLAVE IF   
		i_start_reg 			: in std_logic_vector(31 downto 0); 
		i_status_reg			: in std_logic_vector(31 downto 0); 
		i_image_data_addr_reg 	: in std_logic_vector(31 downto 0);  
		i_pixel_counters		: in std_logic_vector(31 downto 0); 
		i_fifo_reg				: in std_logic_vector(31 downto 0); 
		
		i_slv_reg_rden			: in std_logic; 
		i_slv_reg_wren			: in std_logic_vector(31 downto 0); 
			
		--TO AXI SLAVE IF  
		o_start_reg 			: out std_logic_vector(31 downto 0); 
		o_status_reg			: out std_logic_vector(31 downto 0); 
		o_image_data_addr_reg 	: out std_logic_vector(31 downto 0); 
		o_pixel_counters		: out std_logic_vector(31 downto 0); 
		o_fifo_reg				: out std_logic_vector(31 downto 0); 
		
		--FROM AXI_MASTER_IF  
		i_rvalid			: in std_logic; 
		i_DATA_TO_READ		: in std_logic_vector(15 downto 0); 	
		i_read_next 		: in std_logic; 
		i_rready			: in std_logic; 
		i_rdone				: in std_logic; 
		i_burst_read_active : in std_logic;    
		i_start_display		: in std_logic; 
		 
		
		--TO AXI MASTER IF
		o_INIT_AXI_TXN			: out std_logic; 
		o_inbuff_prog_full		: out std_logic; 
		o_inbuff_full			: out std_logic; 
		o_inbuff_almost_full	: out std_logic
		
		
	); 
end vga_controller;

--}} End of automatically maintained section

architecture arch of vga_controller is

  
  signal start_reg                : std_logic_vector(31 downto 0); 
  signal status_reg               : std_logic_vector(31 downto 0); 
  signal image_data_addr_reg      : std_logic_vector(31 downto 0);    
  signal pixel_counters			  : std_logic_vector(31 downto 0); 
  signal fifo_reg				  : std_logic_vector(31 downto 0); 

  signal start_display			  : std_logic; 
--  
  signal write_en 				  : std_logic; 
  signal image_data 			  : std_logic_vector(11 downto 0); 
  signal INIT_AXI_TXN 			  : std_logic; 	
  
  signal start_fill_flag		  : std_logic; 	
  signal row_pixel_counter		  : integer; 
  
begin
  
  -- unused floating signals
 
  o_start_reg     		<= start_reg; 
  o_status_reg          <= status_reg;  
  o_image_data_addr_reg <= image_data_addr_reg;    
  o_pixel_counters		<= pixel_counters; 
  o_fifo_reg			<= fifo_reg; 
  o_start_display		<= start_display; 

  
  o_write_en <= write_en; 
  o_image_data <= image_data; 
  o_INIT_AXI_TXN <= INIT_AXI_TXN;  
  
  o_prog_empty_threshold	 	<= "01010000000"; 
  o_prog_full_threshold	 		<= "11110000000"; 	   
  
  o_inbuff_prog_full	<= i_inbuff_prog_full; 
  o_inbuff_full			<= i_inbuff_full; 
  o_inbuff_almost_full	<= i_inbuff_almost_full; 
  
                                            
  register_control: process(i_axi_slave_clk, i_reset_n) 
    begin 
      if(i_reset_n = '0') then 

        start_reg                 <= (others => '0'); 
        status_reg                <= (others => '0'); 
  		image_data_addr_reg       <= (others => '0');    
  		pixel_counters			  <= (others => '0'); 
		fifo_reg				  <= (others => '0'); 

        start_display             <= '0';  


      elsif(rising_edge(i_axi_slave_clk)) then 
        
        start_reg                 <= start_reg; 
        status_reg                <= status_reg; 
  		image_data_addr_reg       <= image_data_addr_reg;    
  		pixel_counters			  <= pixel_counters;  
		fifo_reg				  <= fifo_reg; 

        start_display             <= start_display;
        

        if(i_slv_reg_wren(0) = '1') then 
          start_reg <= i_start_reg;
        else
           
          if (start_reg(0) = '1') then 
            start_display <= '1'; 
            start_reg <= (others => '0'); 
          else
            start_reg <= start_reg;
            start_display <= start_display or i_start_display; 
          end if; 
          
        end if; 
		
		
        if(i_slv_reg_wren(1) = '1') then 
          status_reg <= i_status_reg; 
        else 

          status_reg(16) <= i_video_on; 
		  status_reg(8) <= start_display; 


        end if; 
      
        if(i_slv_reg_wren(2) = '1') then 
          image_data_addr_reg <= i_image_data_addr_reg; 
        else 
          image_data_addr_reg <= image_data_addr_reg; 
        end if; 
        
        if(i_slv_reg_wren(3) = '1') then 
          pixel_counters <= i_pixel_counters; 
        else 
          pixel_counters(25 downto 16) <= i_pixel_x;  
		  pixel_counters(9 downto 0) <= i_pixel_y; 
        end if; 
        
        if (i_slv_reg_wren(4) = '1') then 
          fifo_reg <= i_fifo_reg; 
        else 
          fifo_reg(24) <= i_inbuff_valid;	
		  fifo_reg(20) <= i_inbuff_prog_full; 
		  fifo_reg(16) <= i_inbuff_prog_empty; 
		  fifo_reg(12) <= i_inbuff_almost_full;
		  fifo_reg(8) <= i_inbuff_full; 
		  fifo_reg(4) <= i_inbuff_almost_empty; 
		  fifo_reg(0) <= i_inbuff_empty; 
		  
        end if; 
      end if; 
    end process;  
	
	
	fifo: process(i_read_next, i_DATA_TO_READ) 
	begin	 
		
		write_en <= '0'; 
		image_data <= (others => '0'); 
		 

		if(i_read_next = '1') then 
			write_en <= '1'; 
			image_data <= i_DATA_TO_READ(11 downto 0); 
		else 
			write_en <= '0';  
			image_data <= (others => '0'); 
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
			
			if(start_display = '1' and row_pixel_counter = 0 and start_fill_flag = '0') then 
                INIT_AXI_TXN <= '1'; 	   
				start_fill_flag <= '1';  
			elsif (i_rdone = '1') then 
				INIT_AXI_TXN <= '1'; 
            end if; 
			
--			if(i_burst_write_active = '0' and start_fill_flag = '1') then 
--				INIT_AXI_TXN <= '1'; 
--			end if; 	  
			
			if(i_read_next = '1') then 	
				
				if(row_pixel_counter < 639) then	
					row_pixel_counter <= row_pixel_counter + 1; 
				else 
					row_pixel_counter <= 0; 
				end if; 
			end if;  
		end if; 
		
	end process; 
      
  
end architecture arch;

