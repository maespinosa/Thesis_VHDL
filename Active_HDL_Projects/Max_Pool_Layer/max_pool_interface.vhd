
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library Max_Pool_Layer; 
use Max_Pool_Layer.cnn_types.all;


entity max_pool_interface is
generic (
       -- name : type := value
       g_data_width : integer := 16;
       g_axi_data_width	: integer := 32; 
       g_axi_addr_width : integer := 32
  );
  port(
       i_clk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;


       --FROM LOGIC
       i_outbuff_dout           : in std_logic_vector(g_data_width-1 downto 0); 
       i_outbuff_empty          : in std_logic; 
       i_outbuff_almost_empty   : in std_logic; 
       i_outbuff_full           : in std_logic; 
       i_outbuff_almost_full    : in std_logic; 
       i_outbuff_valid	        : in std_logic; 
	   i_volume_processed       : in std_logic; 
	   i_inbuff_empty           : in std_logic; 
	   i_inbuff_almost_empty    : in std_logic; 
	   i_inbuff_full	        : in std_logic; 
	   i_inbuff_almost_full     : in std_logic;
	   i_busy                   : in std_logic; 

	   --TO LOGIC 
	   o_outbuff_rd_en          : out std_logic; 
	   o_inbuff_din             : out std_logic_vector(g_data_width-1 downto 0); 
	   o_inbuff_wr_en           : out std_logic; 
       o_input_volume_size      : out STD_LOGIC_VECTOR(7 downto 0);
       o_output_volume_size     : out STD_LOGIC_VECTOR(7 downto 0);
	   o_pool_kernel_size 	    : out std_logic_vector(3 downto 0); 
       o_stride                 : out STD_LOGIC_VECTOR(3 downto 0); 

       --FROM AXI SLAVE
       i_control_reg            : in std_logic_vector(g_axi_data_width-1 downto 0); 
       i_status_reg             : in std_logic_vector(g_axi_data_width-1 downto 0); 
       i_input_data_addr_reg    : in std_logic_vector(g_axi_data_width-1 downto 0);
       i_output_data_addr_reg   : in std_logic_vector(g_axi_data_width-1 downto 0); 
       i_input_params_reg       : in std_logic_vector(g_axi_data_width-1 downto 0); 
       i_output_params_reg      : in std_logic_vector(g_axi_data_width-1 downto 0); 
       i_kernel_params_reg      : in std_logic_vector(g_axi_data_width-1 downto 0); 

       i_slv_reg_rden			: in std_logic; 
       i_slv_reg_wren			: in std_logic_vector(g_axi_data_width-1 downto 0); 

       --TO AXI SLAVE
       o_control_reg            : out std_logic_vector(g_axi_data_width-1 downto 0); 
       o_status_reg             : out std_logic_vector(g_axi_data_width-1 downto 0); 
       o_input_data_addr_reg    : out std_logic_vector(g_axi_data_width-1 downto 0);
       o_output_data_addr_reg   : out std_logic_vector(g_axi_data_width-1 downto 0); 
       o_input_params_reg       : out std_logic_vector(g_axi_data_width-1 downto 0); 
       o_output_params_reg      : out std_logic_vector(g_axi_data_width-1 downto 0); 
       o_kernel_params_reg      : out std_logic_vector(g_axi_data_width-1 downto 0); 



       

       --FROM AXI MASTER
       i_WRITE_NEXT            : in std_logic; 
       i_WREADY                : in std_logic;
       i_WDONE                 : in std_logic; 
       i_burst_write_active    : in std_logic; 
       i_DATA_READ             : in std_logic_vector(15 downto 0);
       i_READ_NEXT             : in std_logic; 
       i_RDONE                 : in std_logic; 
       i_RVALID                : in std_logic; 
       i_burst_read_active     : in std_logic; 

       --TO AXI MASTER 
       o_read_address		   : out std_logic_vector(g_axi_addr_width-1 downto 0); 
       o_read_length		   : out std_logic_vector(7 downto 0); 
       o_rready				   : out std_logic; 

       o_DATA_TO_WRITE         : out std_logic_vector(15 downto 0); 
       o_outbuff_empty         : out std_logic;
       o_outbuff_almost_empty  : out std_logic;
       o_outbuff_valid         : out std_logic;  
       o_inbuff_full   		   : out std_logic; 
       o_inbuff_almost_full    : out std_logic

  );
end max_pool_interface;


architecture arch of max_pool_interface is

signal outbuff_rd_en          : std_logic; 
signal inbuff_din             : std_logic_vector(g_data_width-1 downto 0); 
signal inbuff_wr_en           : std_logic; 
signal input_volume_size      : STD_LOGIC_VECTOR(7 downto 0);
signal input_volume_channels  : std_logic_vector(15 downto 0); 
signal output_volume_size     : STD_LOGIC_VECTOR(7 downto 0);
signal output_volume_channels : std_logic_vector(15 downto 0); 
signal pool_kernel_size 	  : std_logic_vector(3 downto 0); 
signal stride                 : STD_LOGIC_VECTOR(3 downto 0); 

signal input_data_addr_reg    : std_logic_vector(g_axi_data_width-1 downto 0); 
signal output_data_addr_reg    : std_logic_vector(g_axi_data_width-1 downto 0); 

signal read_address_counter	  : std_logic_vector(g_axi_data_width-1 downto 0); 
signal read_length            : std_logic_vector(7 downto 0); 


begin 

o_outbuff_rd_en          <= outbuff_rd_en; 
o_inbuff_din             <= inbuff_din; 
o_inbuff_wr_en           <= inbuff_wr_en; 
o_input_volume_size      <= input_volume_size; 
o_output_volume_size     <= output_volume_size; 
o_pool_kernel_size 	     <= pool_kernel_size; 
o_stride                 <= stride; 

o_control_reg            <= i_control_reg;


o_status_reg(0)          <= i_busy; 
o_status_reg(3 downto 1) <= (others => '0'); 
o_status_reg(4)			 <= i_volume_processed; 
o_status_reg(7 downto 5) <= (others => '0'); 
o_status_reg(8) 		 <= i_outbuff_empty; 
o_status_reg(9)          <= i_outbuff_almost_empty; 
o_status_reg(11 downto 10) <= (others => '0'); 
o_status_reg(12) 	     <= i_outbuff_full; 
o_status_reg(13) 		 <= i_outbuff_almost_full; 
o_status_reg(15 downto 14) <= (others => '0'); 
o_status_reg(16)         <= i_inbuff_empty; 
o_status_reg(17) 	     <= i_inbuff_almost_empty; 
o_status_reg(19 downto 18) <= (others => '0'); 
o_status_reg(20)         <= i_inbuff_full; 
o_status_reg(21)         <= i_inbuff_almost_full; 
o_status_reg(31 downto 22) <= (others => '0'); 


o_input_data_addr_reg    <= input_data_addr_reg; 
o_output_data_addr_reg   <= output_data_addr_reg;

o_input_params_reg       <= i_input_params_reg;
o_output_params_reg      <= i_output_params_reg;
o_kernel_params_reg      <= i_kernel_params_reg;

input_volume_size        <= i_input_params_reg(31 downto 24); 
output_volume_size       <= i_output_params_reg(31 downto 24); 
pool_kernel_size 	     <= i_kernel_params_reg(31 downto 24);  
stride  				 <= i_kernel_params_reg(15 downto 8); 
input_volume_channels	 <= i_input_params_reg(15 downto 0); 
output_volume_channels   <= i_output_params_reg(15 downto 0); 

o_read_address <= read_address_counter; 
o_read_length <= read_length; 
o_rready <= rready; 


latch_commands : process(i_clk, i_reset_n) then 
begin 
	if (i_reset_n = '0') then 

		input_data_addr_reg <= (others => '0'); 
		output_data_addr_reg <= (others => '0'); 

	elsif(rising_edge(i_clk)) then

		if(i_slv_reg_wren(2) = '1' ) then 
			input_data_addr_reg <= i_input_data_addr_reg; 
		else 
			input_data_addr_reg <= input_data_addr_reg; 
		end if; 


		if(i_slv_reg_wren(3) = '1') then 
			output_data_addr_reg <= i_output_data_addr_reg; 
		else 
			output_data_addr_reg <= output_data_addr_reg; 
		end if; 

    end if; 
end process; 


state_transition: process(i_clk, i_reset_n) is 
begin 
	if(i_reset_n = '0') then 
		current_state <= IDLE; 
	else 
		current_state <= next_state; 
	end if; 
end process; 

next_state_comb: process(all) is 
begin 
	case current_state is 

	when READ_FIRST_ROWS => 

	when READ_


end process; 




read_process: process(i_clk_i_reset_n) is 
begin 
	if(i_reset_n = '0') then 
		read_address_counter <= (others => '0'); 
		read_length <= (others => '0'); 


	elsif(rising_edge(i_clk)) then 
		read_address_counter <= read_address_counter; 
		read_length <= read_length; 


		if(i_inbuff_full = '0') then 
			rready <= '1'; 
			if(i_READ_NEXT = '1') then 


       i_READ_NEXT             : in std_logic; 
       i_RREADY                : in std_logic; 
       i_RDONE                 : in std_logic; 
       i_RVALID 
	end if; 

end process; 



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

  