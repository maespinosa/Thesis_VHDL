library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;	
use std.textio.all;
use ieee.std_logic_textio.all;

library Max_Pool_Layer; 
use Max_Pool_Layer.cnn_types.all;

entity max_pool_unit_tb is
end max_pool_unit_tb;

--}} End of automatically maintained section

architecture testbench of max_pool_unit_tb is
	
-- component declaration for the unit under test (uut)
component max_pool_unit is
  generic(
       -- name : type := value
       g_data_width : integer := 16
  );
  port(
       i_clk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
	   i_inbuff_din : in std_logic_vector(15 downto 0); 
	   i_inbuff_wr_en : in std_logic; 
       i_input_volume_size : in STD_LOGIC_VECTOR(7 downto 0);
       i_output_volume_size : in STD_LOGIC_VECTOR(7 downto 0);
	   i_pool_kernel_size 	: in std_logic_vector(3 downto 0); 
       i_stride : in STD_LOGIC_VECTOR(3 downto 0); 
	   o_inbuff_full : out std_logic; 
	   o_inbuff_almost_full : out std_logic; 
	   
	   i_outbuff_rd_en : in std_logic; 
       o_outbuff_dout : out std_logic_vector(15 downto 0); 
       o_outbuff_empty : out std_logic; 
       o_outbuff_almost_empty : out std_logic; 
       o_outbuff_valid	: out std_logic; 
	   
	   o_channel_complete : out std_logic 

  );
end component;


component input_bram IS
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END component;


signal clk : std_logic := '0';
signal reset_n : std_logic := '0'; 
signal reset: std_logic := '1'; 

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

signal outbuff_rd_en			: std_logic; 
signal outbuff_dout 			: std_logic_vector(15 downto 0); 
signal outbuff_empty 			: std_logic; 
signal outbuff_almost_empty 	: std_logic; 
signal outbuff_valid			: std_logic; 


signal input_volume_size		: std_logic_vector(7 downto 0); 
signal stride 					: std_logic_vector(3 downto 0); 
signal mem_addr : std_logic_vector(15 downto 0);  
signal dout : std_logic_vector(15 downto 0);   
signal input_mem_addr : std_logic_vector(18 downto 0);  
signal image_data	: std_logic_vector(15 downto 0);  
signal loop_counter : integer := 0; 
signal input_addr_counter : integer := 0;  
signal output_volume_size : std_logic_vector(7 downto 0); 
signal pool_kernel_size 	: std_logic_vector(3 downto 0); 
signal channel_complete	: std_logic; 

begin 
	
  reset <= not(reset_n); 

  uut: max_pool_unit 
  generic map(
       -- name : type := value
       g_data_width => 16
  )
  port map(
       i_clk 					=> clk, 
       i_reset_n 				=> reset_n, 
	   i_inbuff_din 			=> inbuff_din, 
	   i_inbuff_wr_en 			=> inbuff_wr_en, 
       i_input_volume_size 		=> input_volume_size, 
       i_output_volume_size		=> output_volume_size, 
       i_stride 				=> stride, 
	   i_pool_kernel_size		=> pool_kernel_size, 
	   o_inbuff_full			=> inbuff_full,
	   o_inbuff_almost_full		=> inbuff_almost_full, 
	   
	   i_outbuff_rd_en 			=> outbuff_rd_en, 
       o_outbuff_dout 			=> outbuff_dout, 
       o_outbuff_empty 			=> outbuff_empty, 
       o_outbuff_almost_empty   => outbuff_almost_empty, 
       o_outbuff_valid			=> outbuff_valid, 
	   o_channel_complete		=> channel_complete
  );

 
  input_memory : input_bram
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
	  inbuff_wr_en				<= '0'; 
	  input_volume_size			<= (others => '0'); 
	  output_volume_size		<= (others => '0'); 
	  --outbuff_rd_en				<= '0'; 
	  
	  
	  mem_addr 					<= (others => '0'); 	
	  input_mem_addr 			<= (others => '0');
	  loop_counter				<= 0; 

 
	  input_volume_size 		<= std_logic_vector(to_unsigned(55,8)); 
	  stride 					<= std_logic_vector(to_unsigned(2,4));   
	  output_volume_size		<= std_logic_vector(to_unsigned(27,8)); 
	  pool_kernel_size			<= std_logic_vector(to_unsigned(3,4));
	  input_addr_counter 		<= 0; 
	    
	  
	  wait until rising_edge(clk); 
	  
	  reset_n <= '0'; 

	  wait for CLK_PERIOD*10;	
	  
	  reset_n <= '1'; 
	  
	  input_volume_size 		<= std_logic_vector(to_unsigned(55,8)); 
	  stride 					<= std_logic_vector(to_unsigned(2,4));   
	  output_volume_size		<= std_logic_vector(to_unsigned(27,8)); 
	  pool_kernel_size			<= std_logic_vector(to_unsigned(3,4));
	  
	  wait for CLK_PERIOD*10;	 
	    
	  loop_counter <= 0; 
	  
	  for i in 0 to 96-1 loop   	 

		  wait until rising_edge(clk); 
		  --input_addr_counter <= (55*55*(i)); 
		  loop_counter <= 0;
		  inbuff_wr_en <= '0';
		  for j in 0 to 55-1 loop
			wait until rising_edge(clk);
			--input_addr_counter <= (55*j*((55*i)+1)); 
			inbuff_wr_en <= '0';
		
			while loop_counter < 55-1 loop --while (loop_counter < (55*55)-1) loop
		      wait until rising_edge(clk);
			  inbuff_wr_en <= '0';
			   
			  if(inbuff_full = '0') then 
				  
				  input_mem_addr <= std_logic_vector(to_unsigned(input_addr_counter,19) + loop_counter);
				  
				  wait until rising_edge(clk); 
				  inbuff_wr_en <= '0'; 
				  --input_addr_counter <= input_addr_counter + 1;	 
				  
				  wait until rising_edge(clk);   
				  inbuff_wr_en <= '1'; 	
				  inbuff_din <= image_data;
				  
				  loop_counter <= loop_counter + 1; 	  
				  
			   else 
				wait until rising_edge(clk); 
			   end if;

			   
			end loop; 
			--wait until rising_edge(clk);
			
			loop_counter <= 0; 
		    input_addr_counter <= (55*(j+1)+55*55*i); 
		    --inbuff_din <= (others => '0');
			   
		   end loop; 
		   wait until rising_edge(clk);		   
		   input_addr_counter <= (55*55*(i+1)); 
		   inbuff_din <= (others => '0');
		   loop_counter <= 0; 		
		   inbuff_wr_en <= '0'; 
			 
	  end loop; 
	  
	  wait until rising_edge(clk);
	  
	  inbuff_wr_en <= '0'; 	
	  inbuff_din <= (others => '0');
	  
	  while(inbuff_wr_en = '0')	 loop
	  end loop; 

      wait;
  end process; 

  
    
  
  save_process: process(clk,reset_n)
    variable WLINE     : line;
	file max_pool_file : text open write_mode is "maxpool_output_sim.txt"; 
     
  begin
	
	if(rising_edge(clk)) then
		if(outbuff_empty = '0' and outbuff_valid = '1' and channel_complete = '0') then
			outbuff_rd_en <= '1'; 
			
			hwrite(WLINE, outbuff_dout);
			writeline(max_pool_file, WLINE);
			 
		elsif(channel_complete = '1') then 
			file_close(max_pool_file); 
		end if; 
			
	end if; 
	
  end process;
  


end testbench;