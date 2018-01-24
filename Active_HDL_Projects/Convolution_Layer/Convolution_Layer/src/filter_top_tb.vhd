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

library convolution_layer; 
use convolution_layer.types_pkg.all;

entity filter_top_tb is
end filter_top_tb;

--}} End of automatically maintained section

architecture arch of filter_top_tb is
	 
	
	
	
-- component declaration for the unit under test (uut)
component filter_top is
  generic(										
       -- name : type := value
       g_data_width 		: integer := 16;
       g_weight_width 		: integer := 16;
       g_multiplier_width 	: integer := 16;
       g_product_width 		: integer := 16;
       g_conv_width 		: integer := 16;
       g_dsps_used 			: integer := 200
  );
  port(
       i_clk 						: in STD_LOGIC;
       i_enable 					: in STD_LOGIC;
       i_inbuff_almost_empty 		: in STD_LOGIC;
       i_inbuff_empty 				: in STD_LOGIC;
       i_inbuff_prog_empty 			: in STD_LOGIC;
       i_inbuff_valid 				: in STD_LOGIC;
       i_normalizer_ready 			: in STD_LOGIC;
       i_reset_n 					: in STD_LOGIC;
       i_start 						: in STD_LOGIC;
       i_inbuff_dout 				: in STD_LOGIC_VECTOR(15 downto 0);
       i_input_volume_channels 		: in STD_LOGIC_VECTOR(11 downto 0);
       i_input_volume_size 			: in STD_LOGIC_VECTOR(7 downto 0);
       i_number_of_filters 			: in STD_LOGIC_VECTOR(11 downto 0);
       i_pad 						: in STD_LOGIC_VECTOR(3 downto 0);
       i_stride 					: in STD_LOGIC_VECTOR(3 downto 0);
       --i_weight_filter_bytes 		: in STD_LOGIC_VECTOR(31 downto 0);
       i_weight_filter_channels 	: in STD_LOGIC_VECTOR(11 downto 0);
       i_weight_filter_size 		: in STD_LOGIC_VECTOR(3 downto 0);
       o_conv_data_valid 			: out STD_LOGIC;
       o_inbuff_rd_en 				: out STD_LOGIC;
       o_conv_volume_out 			: out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_inbuff_prog_empty_thresh 	: out STD_LOGIC_VECTOR(9 downto 0)
  );
end component;	


component conv_input_buffer is
  PORT (
    rst 				: IN STD_LOGIC;
    wr_clk 				: IN STD_LOGIC;
    rd_clk 				: IN STD_LOGIC;
    din 				: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    wr_en 				: IN STD_LOGIC;
    rd_en 				: IN STD_LOGIC;
    prog_empty_thresh 	: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    prog_full_thresh 	: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    dout 				: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    full 				: OUT STD_LOGIC;
    almost_full 		: OUT STD_LOGIC;
    empty 				: OUT STD_LOGIC;
    almost_empty 		: OUT STD_LOGIC;
    valid 				: OUT STD_LOGIC;
    prog_full 			: OUT STD_LOGIC;
    prog_empty 			: OUT STD_LOGIC
  );
end component; 

component Testbench_BRAM IS
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END component;

component Input_BRAM IS
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
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

signal inbuff_din : std_logic_vector(15 downto 0);
signal inbuff_wr_en : std_logic :='0';

signal inbuff_empty 			: std_logic; 
signal inbuff_almost_empty 		: std_logic; 
signal inbuff_prog_empty 		: std_logic; 
signal inbuff_valid 			: std_logic;
signal inbuff_dout 				: std_logic_vector(15 downto 0); 	  
signal inbuff_prog_full_thresh	: std_logic_vector(9 downto 0);
signal inbuff_full				: std_logic; 
signal inbuff_almost_full		: std_logic; 
signal inbuff_prog_full			: std_logic; 

signal en : std_logic := '0'; 	 
signal start : std_logic := '0'; 


signal normalizer_ready 		: std_logic; 
signal input_volume_channels 	: std_logic_vector(11 downto 0); 
signal input_volume_size		: std_logic_vector(7 downto 0); 
signal number_of_filters		: std_logic_vector(11 downto 0); 
signal pad 						: std_logic_vector(3 downto 0); 
signal stride 					: std_logic_vector(3 downto 0); 
--signal weight_filter_bytes		: std_logic_vector(31 downto 0); 
signal weight_filter_channels 	: std_logic_vector(11 downto 0); 
signal weight_filter_size 		: std_logic_vector(3 downto 0); 

signal conv_data_valid        	: std_logic; 
signal inbuff_rd_en           	: std_logic; 
signal conv_volume_out        	: STD_LOGIC_VECTOR(15 downto 0);
signal inbuff_prog_empty_thresh : STD_LOGIC_VECTOR(9 downto 0); 


constant filename :string := "W1.txt"; 
signal close_flag : std_logic; 
signal data_read : std_logic_vector(data_width-1 downto 0);   


--signal memory_unit : array_type_varx16bit(40000-1 downto 0);   
signal weight_addr_counter : integer := 0;    
signal mem_addr : std_logic_vector(15 downto 0);  
signal dout : std_logic_vector(15 downto 0);   

signal input_mem_addr : std_logic_vector(17 downto 0);  
signal image_data	: std_logic_vector(15 downto 0);  
signal loop_counter : integer := 0; 

signal weight_channel : integer := 0;  
signal input_channel : integer := 0; 
signal input_addr_counter : integer := 0;  
signal filter_number : integer := 0; 


begin 
	
  reset <= not(reset_n); 

  uut: filter_top 	
  generic map(										
       g_data_width 				=> DATA_WIDTH,
       g_weight_width 				=> DATA_WIDTH,
       g_multiplier_width 			=> DATA_WIDTH, 
       g_product_width 				=> DATA_WIDTH,
       g_conv_width 				=> DATA_WIDTH,
       g_dsps_used 					=> 33
  )
  port map(
       i_clk 						=> clk, 
       i_enable 					=> en, 
       i_inbuff_almost_empty 		=> inbuff_almost_empty, 
       i_inbuff_empty 				=> inbuff_empty, 
       i_inbuff_prog_empty 			=> inbuff_prog_empty, 
       i_inbuff_valid    			=> inbuff_valid,  
       i_normalizer_ready       	=> normalizer_ready, 
       i_reset_n                	=> reset_n, 
       i_start 						=> start,
       i_inbuff_dout            	=> inbuff_dout, 
       i_input_volume_channels  	=> input_volume_channels, 
       i_input_volume_size      	=> input_volume_size, 
       i_number_of_filters      	=> number_of_filters, 
       i_pad                    	=> pad,  
       i_stride                 	=> stride, 
       --i_weight_filter_bytes   	 	=> weight_filter_bytes,  
       i_weight_filter_channels 	=> weight_filter_channels, 
       i_weight_filter_size     	=> weight_filter_size, 
       o_conv_data_valid        	=> conv_data_valid, 
       o_inbuff_rd_en           	=> inbuff_rd_en, 
       o_conv_volume_out        	=> conv_volume_out, 
       o_inbuff_prog_empty_thresh 	=> inbuff_prog_empty_thresh
  );
  
  input_fifo : conv_input_buffer 
  port map (
    rst               	=> reset, 
    wr_clk            	=> clk, 
    rd_clk            	=> clk, 
    din					=> inbuff_din, 
    wr_en 				=> inbuff_wr_en,
    rd_en 				=> inbuff_rd_en, 
    prog_empty_thresh 	=> inbuff_prog_empty_thresh, 
    prog_full_thresh 	=> inbuff_prog_full_thresh, 
    dout 				=> inbuff_dout, 
    full 				=> inbuff_full, 
    almost_full 		=> inbuff_almost_full, 
    empty 				=> inbuff_empty, 
    almost_empty 	    => inbuff_almost_empty, 
    valid 				=> inbuff_valid, 
    prog_full 			=> inbuff_prog_full, 
    prog_empty 			=> inbuff_prog_empty
  );

  memory : Testbench_BRAM
  PORT MAP(
    clka 				=> clk,							
    wea  				=> (others =>'0'), 
    addra  				=> mem_addr, 
    dina       			=> x"0000",
    douta 				=> dout
  );
  
  input_memory : Input_BRAM
  PORT MAP(
    clka 				=> clk,							
    wea  				=> (others =>'0'), 
    addra  				=> input_mem_addr, 
    dina       			=> x"0000",
    douta 				=> image_data
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
	  inbuff_din 				<= (others => '0'); 
	  mem_addr 					<= (others => '0'); 	
	  input_mem_addr 			<= (others => '0');
	  weight_channel 			<= 0; 
	  input_channel 			<= 0; 
	  loop_counter				<= 0; 
	  filter_number 			<= 0; 
	  
--	  input_volume_size 		<= std_logic_vector(to_unsigned(227,8)); 
--	  input_volume_channels 	<= std_logic_vector(to_unsigned(3,12)); 
--	  weight_filter_size 		<= std_logic_vector(to_unsigned(11,4)); 
--	  weight_filter_channels 	<= std_logic_vector(to_unsigned(3,12)); 
--	  number_of_filters 		<= std_logic_vector(to_unsigned(96,12)); 
--	  stride 					<= std_logic_vector(to_unsigned(1,4)); 
--	  pad 						<= std_logic_vector(to_unsigned(1,4));  
	  input_volume_size 		<= std_logic_vector(to_unsigned(12,8)); 
	  input_volume_channels 	<= std_logic_vector(to_unsigned(3,12)); 
	  weight_filter_size 		<= std_logic_vector(to_unsigned(3,4)); 
	  weight_filter_channels 	<= std_logic_vector(to_unsigned(3,12)); 
	  number_of_filters 		<= std_logic_vector(to_unsigned(5,12)); 
	  stride 					<= std_logic_vector(to_unsigned(1,4)); 
	  pad 						<= std_logic_vector(to_unsigned(2,4));  
	    
	  inbuff_prog_full_thresh 	<= "1111100000"; 
	  
	  wait until rising_edge(clk); 
	  
	  reset_n <= '0'; 

	  wait for CLK_PERIOD*10;	
	  
	  reset_n <= '1'; 

	  en <= '1'; 	
	  start <= '1'; 
	  
	  input_volume_size 		<= std_logic_vector(to_unsigned(12,8)); 
	  input_volume_channels 	<= std_logic_vector(to_unsigned(3,12)); 
	  weight_filter_size 		<= std_logic_vector(to_unsigned(3,4)); 
	  weight_filter_channels 	<= std_logic_vector(to_unsigned(3,12)); 
	  number_of_filters 		<= std_logic_vector(to_unsigned(5,12)); 
	  stride 					<= std_logic_vector(to_unsigned(1,4)); 
	  pad 						<= std_logic_vector(to_unsigned(2,4));  
	  
	  inbuff_prog_full_thresh 	<= "1111100000"; 
	  
	  wait for CLK_PERIOD*10;	 
	  
	  
	  --while (inbuff_almost_full = '0') loop
	  for i in 0 to 5-1 loop
		  wait until rising_edge(clk); 
		  for j in 0 to 2 loop   	 
			  weight_channel <= j; 
			  filter_number <= i; 
			  
			  wait until rising_edge(clk); 
			  
			  loop_counter <= 0;
			  while (loop_counter <= 3*3) loop
		
				  if(inbuff_almost_full = '0') then 
				  
					  mem_addr <= std_logic_vector(to_unsigned(weight_addr_counter,16));
					  
					  wait until rising_edge(clk); 
					  inbuff_wr_en <= '0'; 
					  weight_addr_counter <= weight_addr_counter + 1;	 
					  
					  wait until rising_edge(clk);   
					  inbuff_wr_en <= '1'; 	
					  inbuff_din <= dout;
					  
					  if (loop_counter <= 3*3)	then 
					  	loop_counter <= loop_counter + 1; 	  
					  --else 
						--loop_counter <= loop_counter; 	  
						--weight_channel <= weight_channel + 1; 
					  end if;  											  
					  
				   end if; 
			   end loop; 
			   loop_counter <= 0;
		 end loop; 
			 
	  end loop;  
	  
	  loop_counter <= 0; 
	  
	  for i in 0 to 2 loop   	 
		  input_channel <= i; 

			  
		  wait until rising_edge(clk); 
		  
		  loop_counter <= 0;
		  
		  while (loop_counter <= 12*12) loop
	
			  if(inbuff_almost_full = '0') then 
			  
				  input_mem_addr <= std_logic_vector(to_unsigned(input_addr_counter,18));
				  
				  wait until rising_edge(clk); 
				  inbuff_wr_en <= '0'; 
				  input_addr_counter <= input_addr_counter + 1;	 
				  
				  wait until rising_edge(clk);   
				  inbuff_wr_en <= '1'; 	
				  inbuff_din <= image_data;
				  
				  if (loop_counter <= 12*12)	then 
				  	loop_counter <= loop_counter + 1; 	  
				  --else 
					--loop_counter <= 0; 	  

				  end if;  											  
				  
			   end if;
			   
		   end loop;  
		   
		   loop_counter <= 0; 

			
			 
	  end loop; 
	  
	  wait until rising_edge(clk);
	  
	  inbuff_wr_en <= '0'; 	
	  inbuff_din <= (others => '0');
	  
	  while(inbuff_wr_en = '0')	 loop
	  end loop; 
	  
	  
	  
	  
	  
	  
	  
	  
	  
        --wait for CLK_PERIOD*10; --wait for 10 clock cycles.
        --reset <='1';                    --then apply reset for 2 clock cycles.
        --wait for CLK_PERIOD*2;
        ---reset <='0';                    --then pull down reset for 20 clock cycles.
        --wait for CLK_PERIOD*20;
        --reset <= '1';               --then apply reset for one clock cycle.
        --wait for CLK_PERIOD;
        --reset <= '0';               --pull down reset and let the counter run.
      wait;
  end process; 
  
  
--  read_file: process(clk,reset_n)
--    file file_to_read: text; 
--    variable read_ptr: line; 
--    variable data_from_file : std_logic_vector(data_width-1 downto 0); 
--  begin 
--    if (reset_n = '0' or close_flag = '1') then 
--  
--      data_read <= (others => '0'); 
--      close_flag <= '0';
--      file_open(file_to_read, filename, read_mode);  
--	  addr_counter <= 0;
--
--    elsif (rising_edge(clk)) then 
--      
--      if(inbuff_prog_full = '0'and not(endfile(file_to_read))) then 
--
--        readline(file_to_read, read_ptr); 
--        
--        hread(read_ptr, data_from_file); 
--        data_read <= data_from_file(data_width-1 downto 0);	 
--		
--		--inbuff_wr_en <= '1'; 
--		--inbuff_din <= data_from_file(data_width-1 downto 0);
--		
--		memory_unit(addr_counter) <= data_from_file(data_width-1 downto 0);	 	
--		addr_counter <= addr_counter + 1; 
--        
--
--        
--      elsif (endfile(file_to_read)) then 
--        file_close(file_to_read); 
--        close_flag <= '1'; 
--      end if;  
--    end if; 
--  end process;   
  
  


end arch;
