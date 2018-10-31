
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--library Max_Pool_Layer; 
--use Max_Pool_Layer.cnn_types.all;

library work; 
use work.cnn_types.all;


entity max_pool_unit is
  generic(
       -- name : type := value
       g_data_width : integer := 32
  );
  port(
       i_clk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
	   i_start : in std_logic; 
       i_input_volume_size : in STD_LOGIC_VECTOR(7 downto 0);
       i_output_volume_size : in STD_LOGIC_VECTOR(7 downto 0);
	   i_pool_kernel_size 	: in std_logic_vector(3 downto 0); 
       i_stride : in STD_LOGIC_VECTOR(3 downto 0); 
	   i_outbuff_rd_en : in std_logic; 
	   i_inbuff_din : in std_logic_vector(g_data_width-1 downto 0); 
	   i_inbuff_wr_en : in std_logic; 
	   o_inbuff_empty  : out std_logic; 
	   o_inbuff_almost_empty : out std_logic; 
	   o_inbuff_full	: out std_logic; 
	   o_inbuff_almost_full : out std_logic; 
       o_outbuff_dout : out std_logic_vector(g_data_width-1 downto 0); 
       o_outbuff_empty : out std_logic; 
       o_outbuff_almost_empty : out std_logic; 
       o_outbuff_full   : out std_logic; 
       o_outbuff_almost_full : out std_logic; 
       o_outbuff_valid	: out std_logic; 
	   
	   o_channel_complete : out std_logic;
	   o_row_complete : out std_logic
	   --o_operation_complete : out std_logic
  
  );
end max_pool_unit;

architecture arch of max_pool_unit is

---- Component declarations -----

component max_pool_fifo IS
  PORT (
    rst 			: IN STD_LOGIC;
    wr_clk 			: IN STD_LOGIC;
    rd_clk 			: IN STD_LOGIC;
    din 			: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en 			: IN STD_LOGIC;
    rd_en 			: IN STD_LOGIC;
    dout 			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full 			: OUT STD_LOGIC;
    almost_full 	: OUT STD_LOGIC;
    empty 			: OUT STD_LOGIC;
    almost_empty 	: OUT STD_LOGIC;
    valid 			: OUT STD_LOGIC
  );
END component;

component row_fifo_32bit IS
  PORT (
    rst 			: IN STD_LOGIC;
    wr_clk 			: IN STD_LOGIC;
    rd_clk 			: IN STD_LOGIC;
    din 			: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en 			: IN STD_LOGIC;
    rd_en 			: IN STD_LOGIC;
    dout 			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full 			: OUT STD_LOGIC;
    almost_full 	: OUT STD_LOGIC;
    empty 			: OUT STD_LOGIC;
    almost_empty 	: OUT STD_LOGIC;
    valid 			: OUT STD_LOGIC
  );
END component;

-- component bubble_sorter is
	-- generic(
			-- g_sorter_delay_cc : integer := 18
			-- ); 
    -- Port ( 
		   -- i_clk            : in STD_LOGIC;
           -- i_reset_n        : in STD_LOGIC;
           -- i_data           : in array_type_9x16bit;
		   -- i_data_valid		: in std_logic;
           -- o_sorted_data    : out array_type_9x16bit; 
		   -- o_sorted_data_valid : out std_logic
           -- );
-- end component;


component heap_sorter is
	  generic(
		   g_data_width : integer := 32
	  ); 
    Port ( 
		   i_clk            : in STD_LOGIC;
           i_reset_n        : in STD_LOGIC;
           i_data           : in array_type_9x32bit;
		   i_data_valid		: in std_logic;
           o_sorted_data    : out array_type_9x32bit; 
		   o_sorted_data_valid : out std_logic; 
		   o_sorter_ready	: out std_logic 
           );
end component;


component pool_row_controller is
  generic(
       -- name : type := value
       g_data_width : integer := 32
  );
  port(
       i_clk 						: in STD_LOGIC;
       i_reset_n 				: in STD_LOGIC;
	   i_start 					: in std_logic; 
	   --Data Parameters
       i_input_volume_size 		: in STD_LOGIC_VECTOR(7 downto 0);
       i_output_volume_size 	: in STD_LOGIC_VECTOR(7 downto 0);
	   i_pool_kernel_size			: in std_logic_vector(3 downto 0); 
       i_stride 						: in STD_LOGIC_VECTOR(3 downto 0);
	   o_channel_complete		: out std_logic; 
	   --o_operation_complete     : out std_logic; 
	   o_row_complete			: out std_logic; 
	   
	   
	   --INPUT BUFFER SIGNALS
       i_inbuff_dout 				: in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_inbuff_almost_empty 	: in STD_LOGIC;
       i_inbuff_empty 			: in STD_LOGIC;
       i_inbuff_valid 				: in STD_LOGIC;
	   
	   --POOL ROW 0 SIGNALS 
	   i_PR0_dout 				: in std_logic_vector(g_data_width-1 downto 0); 
	   i_PR0_valid 				: in std_logic; 
	   i_PR0_full 					: in std_logic; 
	   i_PR0_almost_full 		: in std_logic; 
	   i_PR0_empty 				: in std_logic; 
	   i_PR0_almost_empty 		: in std_logic;  
	   
	   --POOL ROW 1 SIGNALS 
	   i_PR1_dout 				: in std_logic_vector(g_data_width-1 downto 0); 
	   i_PR1_valid 				: in std_logic;
	   i_PR1_full 					: in std_logic; 
	   i_PR1_almost_full 		: in std_logic;
	   i_PR1_empty 				: in std_logic; 
	   i_PR1_almost_empty 		: in std_logic;  
	   
	   --POOL ROW 2 SIGNALS 
	   i_PR2_dout 				: in std_logic_vector(g_data_width-1 downto 0); 
	   i_PR2_valid 				: in std_logic; 
	   i_PR2_full 					: in std_logic; 
	   i_PR2_almost_full 		: in std_logic;
	   i_PR2_empty 				: in std_logic; 
	   i_PR2_almost_empty 		: in std_logic;  
	   
	   --SIGNAL FROM SORTER 
	   i_sorter_ready  		: in std_logic; 
	   
	   --POOL ROW WRITE AND READ ENABLE SIGNALS
	   o_PR0_din					: out std_logic_vector(g_data_width-1 downto 0); 
	   o_PR0_wr_en 			: out std_logic; 
	   o_PR0_rd_en				: out std_logic; 
	   o_PR1_din					: out std_logic_vector(g_data_width-1 downto 0); 	   
	   o_PR1_wr_en 			: out std_logic; 
	   o_PR1_rd_en				: out std_logic; 
	   o_PR2_din					: out std_logic_vector(g_data_width-1 downto 0); 
	   o_PR2_wr_en 			: out std_logic; 
	   o_PR2_rd_en				: out std_logic; 
	   
	   --MUX CONTROL SIGNALS
	   o_recycle_en 				: out std_logic; 
	   o_prime_PR0_en 		: out std_logic; 
	   o_prime_PR1_en		: out std_logic; 
	   o_prime_PR2_en 		: out std_logic; 
	   
	   -- SIGNALS TO SORTER 
	   o_sorter_data				: out array_type_9x32bit; 
	   o_sorter_data_valid			: out std_logic; 
	   o_inbuff_rd_en				: out std_logic
  );
end component;



signal inbuff_rd_en 		: std_logic; 
signal inbuff_dout 			: std_logic_vector(g_data_width-1 downto 0); 
signal inbuff_empty 		: std_logic; 
signal inbuff_almost_empty 	: std_logic; 
signal inbuff_valid 		: std_logic; 

signal PR0_din				: std_logic_vector(g_data_width-1 downto 0); 
signal PR0_wr_en 			: std_logic; 
signal PR0_empty			: std_logic; 
signal PR0_almost_empty		: std_logic; 
signal PR0_full				: std_logic; 
signal PR0_almost_full		: std_logic; 
signal PR0_dout				: std_logic_vector(g_data_width-1 downto 0); 
signal PR0_valid			: std_logic;
signal PR0_rd_en			: std_logic; 

signal PR1_din				: std_logic_vector(g_data_width-1 downto 0); 
signal PR1_wr_en 			: std_logic; 
signal PR1_empty			: std_logic; 
signal PR1_almost_empty		: std_logic; 
signal PR1_full				: std_logic; 
signal PR1_almost_full		: std_logic; 
signal PR1_dout				: std_logic_vector(g_data_width-1 downto 0); 
signal PR1_valid			: std_logic;
signal PR1_rd_en			: std_logic;

signal PR2_din				: std_logic_vector(g_data_width-1 downto 0); 
signal PR2_wr_en 			: std_logic; 
signal PR2_empty			: std_logic; 
signal PR2_almost_empty		: std_logic; 
signal PR2_full				: std_logic; 
signal PR2_almost_full		: std_logic; 
signal PR2_dout				: std_logic_vector(g_data_width-1 downto 0); 
signal PR2_valid			: std_logic;
signal PR2_rd_en			: std_logic;
	   
signal recycle_en 			: std_logic; 
signal prime_PR0_en 		: std_logic; 
signal prime_PR1_en 		: std_logic;
signal prime_PR2_en			: std_logic; 

signal sorter_data_in		: array_type_9x32bit; 
signal sorter_data_out		: array_type_9x32bit;
signal sorter_data_valid	: std_logic; 
signal sorter_data_out_valid: std_logic; 
signal reset 				: std_logic;

signal sorter_data_out_valid_n : std_logic; 


signal outbuff_din  		: std_logic_vector(g_data_width-1 downto 0); 
signal outbuff_wr_en 				: std_logic; 
signal outbuff_full			: std_logic;  
signal outbuff_almost_full	: std_logic;  

signal sorter_ready			: std_logic; 




begin 

reset <= not(i_reset_n); 
sorter_data_out_valid_n <= not(sorter_data_out_valid_n);

o_inbuff_empty <= inbuff_empty; 
o_inbuff_almost_empty <= inbuff_almost_empty; 
o_outbuff_full <= outbuff_full; 
o_outbuff_almost_full <= outbuff_almost_full; 

input_buffer: max_pool_fifo
  PORT MAP (
    rst 			=> reset,
    wr_clk 			=> i_clk, 
    rd_clk 			=> i_clk,
    din 			=> i_inbuff_din, 
    wr_en 			=> i_inbuff_wr_en, 
    rd_en 			=> inbuff_rd_en, 
    dout 			=> inbuff_dout,
    full 			=> o_inbuff_full, 
    almost_full 	=> o_inbuff_almost_full, 
    empty 			=> inbuff_empty,
    almost_empty 	=> inbuff_almost_empty,
    valid 			=> inbuff_valid
  );
  
  
  -- PR2_din <= PR1_dout when prime_PR2_en = '1' and recycle_en = '0' else	
			 -- PR2_dout when prime_PR2_en = '0' and recycle_en = '1' else 
			 -- (others => '0'); 
			 

  pool_row_2_unit: row_fifo_32bit
  PORT MAP (
    rst 			=> reset,
    wr_clk 			=> i_clk, 
    rd_clk 			=> i_clk,
    din 			=> PR2_din, 	--from PR1 or recycled
    wr_en 			=> PR2_wr_en, 	--from PR1 or recycled
    rd_en 			=> PR2_rd_en, 	--to PR2 or sorter
    dout 			=> PR2_dout,  	--to PR2 or sorter
    full 			=> PR2_full, 
    almost_full 	=> PR2_almost_full, 
    empty 			=> PR2_empty,
    almost_empty 	=> PR2_almost_empty,
    valid 			=> PR2_valid
  );
  
  
  -- PR1_din <= PR0_dout when prime_PR1_en = '1' and recycle_en = '0' else	
			 -- PR1_dout when prime_PR1_en = '0' and recycle_en = '1' else 
			 
			 -- (others => '0'); 
			 
  
  pool_row_1_unit: row_fifo_32bit
  PORT MAP (
    rst 			=> reset,
    wr_clk 			=> i_clk, 
    rd_clk 			=> i_clk,
    din 			=> PR1_din, 	--from PR1 or recycled
    wr_en 			=> PR1_wr_en, 	--from PR1 or recycled
    rd_en 			=> PR1_rd_en, 	--to PR2 or sorter
    dout 			=> PR1_dout, 	--to PR2 or sorter 
    full 			=> PR1_full, 
    almost_full 	=> PR1_almost_full, 
    empty 			=> PR1_empty,
    almost_empty 	=> PR1_almost_empty,
    valid 			=> PR1_valid
  );
  
  
  -- PR0_din <= inbuff_dout when prime_PR0_en = '1' and recycle_en = '0' else 
			 -- PR0_dout   when prime_PR0_en = '0' and recycle_en = '1' else 
			 -- (others => '0'); 
 
  
  pool_row_0_unit: row_fifo_32bit
  PORT MAP (
    rst 			=> reset,
    wr_clk 			=> i_clk, 
    rd_clk 			=> i_clk,
    din 			=> PR0_din, 	--from inbuff controller or recycled
    wr_en 			=> PR0_wr_en, 	--from inbuff controller or recycled
    rd_en 			=> PR0_rd_en, 	--to PR1 or sorter
    dout 			=> PR0_dout,  	--to PR1 or sorter
    full 			=> PR0_full, 
    almost_full 	=> PR0_almost_full, 
    empty 			=> PR0_empty,
    almost_empty 	=> PR0_almost_empty,
    valid 			=> PR0_valid
  );

  
  
  pool_row_ctlr_unit : pool_row_controller
  generic map(

       g_data_width => g_data_width
  )
  port map(
       i_clk 					=> i_clk, 
       i_reset_n 				=> i_reset_n, 
	   i_start					=> i_start, 
	   --Data Parameters
       i_input_volume_size 		=> i_input_volume_size,
       i_output_volume_size 	=> i_output_volume_size,
	   i_pool_kernel_size		=> i_pool_kernel_size, 
       i_stride 				=> i_stride,
	   
	   --INPUT BUFFER SIGNALS
       i_inbuff_dout 			=> inbuff_dout,

       i_inbuff_almost_empty 	=> inbuff_almost_empty,
       i_inbuff_empty 			=> inbuff_empty,
       i_inbuff_valid 			=> inbuff_valid,
	   
	   --POOL ROW 0 SIGNALS 
	   i_PR0_dout 				=> PR0_dout,
	   i_PR0_valid 				=> PR0_valid, 
	   i_PR0_full 				=> PR0_full, 
	   i_PR0_almost_full 		=> PR0_almost_full, 
	   i_PR0_empty 				=> PR0_empty, 
	   i_PR0_almost_empty 		=> PR0_almost_empty, 
	   
	   --POOL ROW 1 SIGNALS 
	   i_PR1_dout 				=> PR1_dout, 
	   i_PR1_valid 				=> PR1_valid, 
	   i_PR1_full 				=> PR1_full, 
	   i_PR1_almost_full 		=> PR1_almost_full, 
	   i_PR1_empty 				=> PR1_empty, 
	   i_PR1_almost_empty 		=> PR1_almost_empty, 
	   
	   --POOL ROW 2 SIGNALS 
	   i_PR2_dout 				=> PR2_dout, 
	   i_PR2_valid 				=> PR2_valid, 
	   i_PR2_full 				=> PR2_full, 
	   i_PR2_almost_full 		=> PR2_almost_full, 
	   i_PR2_empty 				=> PR2_empty, 
	   i_PR2_almost_empty 		=> PR2_almost_empty, 
	   
	   --SIGNAL FROM SORTER 
	   i_sorter_ready 			=> sorter_ready, 
	   
	   --POOL ROW WRITE AND READ ENABLE SIGNALS
	   o_PR0_din				=> PR0_din, 
	   o_PR0_wr_en 			    => PR0_wr_en, 
	   o_PR0_rd_en				=> PR0_rd_en, 
	   o_PR1_din				=> PR1_din, 
	   o_PR1_wr_en 			    => PR1_wr_en, 
	   o_PR1_rd_en				=> PR1_rd_en, 
	   o_PR2_din				=> PR2_din, 
	   o_PR2_wr_en 			    => PR2_wr_en, 
	   o_PR2_rd_en				=> PR2_rd_en, 
	   
	   --MUX CONTROL SIGNALS
	   o_recycle_en 			=> recycle_en, 
	   o_prime_PR0_en 		    => prime_PR0_en, 
	   o_prime_PR1_en		    => prime_PR1_en, 
	   o_prime_PR2_en 		    => prime_PR2_en, 
	   
	   -- SIGNALS TO SORTER 
	   o_sorter_data			=> sorter_data_in, 
	   o_sorter_data_valid		=> sorter_data_valid, 
	   
	   o_inbuff_rd_en 			=> inbuff_rd_en, 
	   o_channel_complete		=> o_channel_complete,
	   o_row_complete			=> o_row_complete
	   --o_operation_complete		=> o_operation_complete 
  );
  
  
  
-- bubble_sorter_unit : bubble_sorter
	-- generic map(
			-- g_sorter_delay_cc => 10
			-- )
    -- Port Map ( 
		-- i_clk        	=> i_clk, 
		-- i_reset_n		=> i_reset_n, 
		-- i_data          => sorter_data_in,
		-- i_data_valid	=> sorter_data_valid, 
		-- o_sorted_data   => sorter_data_out, 
		-- o_sorted_data_valid	=> sorter_data_out_valid
    -- );
	
heap_sorter_unit : heap_sorter
	Generic Map (
		g_data_width => g_data_width
		)
    Port Map ( 
		i_clk        	=> i_clk, 
		i_reset_n		=> i_reset_n, 
		i_data          => sorter_data_in,
		i_data_valid	=> sorter_data_valid, 
		o_sorted_data   => sorter_data_out, 
		o_sorted_data_valid	=> sorter_data_out_valid, 
		o_sorter_ready 	=> sorter_ready
    );



 output_buffer: max_pool_fifo
  PORT MAP (
    rst 			=> reset,
    wr_clk 			=> i_clk, 
    rd_clk 			=> i_clk,
    din 			=> outbuff_din, 	--from inbuff controller or recycled
    wr_en 			=> outbuff_wr_en, 	--from inbuff controller or recycled
    rd_en 			=> i_outbuff_rd_en, 	--to PR1 or sorter
    dout 			=> o_outbuff_dout,  	--to PR1 or sorter
    full 			=> outbuff_full, 
    almost_full 	=> outbuff_almost_full, 
    empty 			=> o_outbuff_empty,
    almost_empty 	=> o_outbuff_almost_empty,
    valid 			=> o_outbuff_valid
  ); 
  
  
  write_fifo: process(i_clk, i_reset_n) is 
  begin 
  
	if(i_reset_n = '0') then 
		outbuff_din  <= (others => '0'); 
		outbuff_wr_en <= '0'; 
	elsif(rising_edge(i_clk)) then 
		if(outbuff_full = '0' and outbuff_almost_full = '0') then 
			outbuff_din <= sorter_data_out(0); 
			outbuff_wr_en <= sorter_data_out_valid;

				
		else 
			outbuff_din <= (others => '0'); 
			outbuff_wr_en <= '0'; 
		end if; 
	end if; 
	 
  end process; 
  
  

end arch;
