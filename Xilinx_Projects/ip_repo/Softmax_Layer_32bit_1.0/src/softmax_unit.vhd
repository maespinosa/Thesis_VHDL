
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--library Softmax_Layer; 
--use Softmax_Layer.cnn_types.all;

entity softmax_unit is
  generic(
       -- name : type := value
       g_data_width : integer := 32
  );
  port(
    i_clk : in STD_LOGIC;
    i_reset_n : in STD_LOGIC;
	i_start : in std_logic; 
    i_num_elements : in std_logic_vector(15 downto 0); 
	   
	i_inbuff_din : in std_logic_vector(g_data_width-1 downto 0); 
	i_inbuff_wr_en : in std_logic; 
	i_data_loaded : in std_logic; 
	o_inbuff_full	: out std_logic; 
	o_inbuff_almost_full : out std_logic; 
    o_inbuff_empty : out std_logic; 
    o_inbuff_almost_empty : out std_logic; 
	   
	   
	i_outbuff_rd_en : in std_logic; 
    o_outbuff_dout : out std_logic_vector(g_data_width-1 downto 0); 
    o_outbuff_empty : out std_logic; 
    o_outbuff_almost_empty : out std_logic; 
    o_outbuff_full : out std_logic; 
    o_outbuff_almost_full : out std_logic; 
    o_outbuff_valid	: out std_logic; 

    o_expbuff_full : out std_logic; 
    o_expbuff_almost_full : out std_logic; 
    o_expbuff_empty : out std_logic; 
    o_expbuff_almost_empty : out std_logic; 
    o_expbuff_valid : out std_logic; 
	   
	o_softmax_complete : out std_logic; 
	o_busy             : out std_logic
  );
end softmax_unit;

architecture arch of softmax_unit is

---- Component declarations -----

component softmax_fifo_buffer IS
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    almost_full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;	
    almost_empty : OUT STD_LOGIC;
    valid : OUT STD_LOGIC
  );
end component;


component exponential_function is 
generic ( 
  g_mult_delay : integer := 8;
  g_adder_delay : integer := 8; 
  g_data_width : integer := 32
  ); 
port (
  i_clk : in std_logic; 
  i_reset_n : in std_logic; 
  i_data : in std_logic_vector(g_data_width-1 downto 0); 
  i_valid : in std_logic; 
  i_ready : in std_logic; 
  o_data : out std_logic_vector(g_data_width-1 downto 0); 
  o_valid : out std_logic; 
  o_ready : out std_logic; 
  o_exp_done : out std_logic;
  i_fifo_full : in std_logic; 
  i_fifo_almost_full : in std_logic
); 
end component; 

component softmax_adder_wrapper is
  generic(
       -- name : type := value
       g_data_width : integer := 32
  );
  port(
    i_clk : in STD_LOGIC;
    i_reset_n : in STD_LOGIC;
	
	i_exp_fifo_dout : in std_logic_vector(g_data_width-1 downto 0); 
	i_exp_fifo_valid : in std_logic; 
	i_exp_fifo_empty : in std_logic; 
	i_exp_fifo_almost_empty : in std_logic; 
	i_exp_complete : in std_logic; 
	i_division_complete  : in std_logic; 
	i_num_elements : in std_logic_vector(15 downto 0); 
	i_clear_all : in std_logic; 
	o_exp_rd_en : out std_logic; 
	o_summing_complete : out std_logic; 
	o_sum_result : out std_logic_vector(g_data_width-1 downto 0)
	   
  );
end component;

component softmax_divider_wrapper is
  generic(
       -- name : type := value
       g_data_width : integer := 32;
	   g_divider_delay : integer := 11
  );
  port(
    i_clk : in STD_LOGIC;
    i_reset_n : in STD_LOGIC;
	
	i_exp_fifo_dout : in std_logic_vector(g_data_width-1 downto 0); 
	i_exp_fifo_valid : in std_logic; 
	i_exp_fifo_empty : in std_logic; 
	i_exp_fifo_almost_empty : in std_logic; 
	i_summing_complete : in std_logic; 
	i_divisor : in std_logic_vector(g_data_width-1 downto 0); 
	i_clear_all : in std_logic; 
	i_num_elements : in std_logic_vector(15 downto 0); 
	
	o_exp_rd_en : out std_logic; 
	o_division_complete : out std_logic; 
	o_quotient_result : out std_logic_vector(g_data_width-1 downto 0); 
  o_quotient_result_valid : out std_logic
  );
end component;


component softmax_controller is
  generic(
       g_data_width : integer := 32
  );
  port(
      i_clk                 : in STD_LOGIC;
      i_reset_n             : in STD_LOGIC;
	  i_start				: in std_logic; 
      i_inbuff_dout         : in std_logic_vector(g_data_width-1 downto 0); 
      i_inbuff_valid        : in std_logic; 
      i_inbuff_empty        : in std_logic; 
      i_inbuff_almost_empty : in std_logic; 
      i_outbuff_full        : in std_logic; 
      i_outbuff_almost_full : in std_logic; 
      i_exp_ready           : in std_logic; 
      i_exp_done            : in std_logic;
	  i_data_loaded         : in std_logic; 
      o_inbuff_rd_en        : out std_logic; 
      o_exp_input           : out std_logic_vector(g_data_width-1 downto 0); 
      o_exp_input_valid     : out std_logic; 
      o_controller_ready    : out std_logic; 
	  o_exp_fifo_select 	: out std_logic; 
	  o_exp_complete		: out std_logic; 
    o_clear_all : out std_logic; 
	  i_summing_complete	: in std_logic; 
	  i_divsion_complete  	: in std_logic; 
	  i_quotient_result		: in std_logic_vector(g_data_width-1 downto 0); 
    i_quotient_result_valid : in std_logic; 
    i_num_elements         : in std_logic_vector(15 downto 0);
      o_outbuff_din         : out std_logic_vector(g_data_width-1 downto 0); 
      o_outbuff_wr_en       : out std_logic; 
      o_softmax_complete    : out std_logic
  );
end component;


signal inbuff_rd_en 		  : std_logic; 
signal inbuff_dout 			  : std_logic_vector(g_data_width-1 downto 0); 
signal inbuff_empty 		  : std_logic; 
signal inbuff_almost_empty 	  : std_logic; 
signal inbuff_valid 		  : std_logic; 

signal outbuff_din  		  : std_logic_vector(g_data_width-1 downto 0); 
signal outbuff_wr_en 		  : std_logic; 
signal outbuff_full			  : std_logic;  
signal outbuff_almost_full    : std_logic;  
signal outbuff_dout         : std_logic_vector(g_data_width-1 downto 0); 
signal outbuff_empty         : std_logic; 
signal outbuff_almost_empty  : std_logic; 
signal outbuff_valid        : std_logic; 

signal reset 				  : std_logic;

signal exp_ready              : std_logic; 
signal exp_done             : std_logic;
signal exp_input              : std_logic_vector(g_data_width-1 downto 0);  
signal exp_input_valid        : std_logic;  
signal controller_ready       : std_logic; 

signal exp_output             : std_logic_vector(g_data_width-1 downto 0); 
signal exp_output_valid	      : std_logic; 


signal exp_fifo_dout 	      : std_logic_vector(g_data_width-1 downto 0); 
signal exp_fifo_valid 	      : std_logic; 
signal exp_fifo_rd_en_adder   : std_logic; 
signal exp_fifo_rd_en_divider : std_logic; 
signal exp_fifo_rd_en    	  : std_logic; 
signal exp_fifo_full          : std_logic; 
signal exp_fifo_almost_full   : std_logic; 
signal exp_fifo_empty	      : std_logic; 
signal exp_fifo_almost_empty  : std_logic; 


signal exp_fifo_mux_select    : std_logic; 
signal exp_complete			  : std_logic; 
signal summing_complete		  : std_logic; 
signal sum_result           : std_logic_vector(g_data_width-1 downto 0); 
signal division_complete	  : std_logic; 
signal quotient_result		  : std_logic_vector(g_data_width-1 downto 0); 
signal quotient_result_valid : std_logic; 
signal exp_mux_data           : std_logic_vector(g_data_width-1 downto 0); 
signal exp_mux_wr_en          : std_logic; 
signal num_elements			  : std_logic_vector(15 downto 0); 
signal softmax_complete   : std_logic;  
signal clear_all  : std_logic; 

--signal exp_recycle_data   : std_logic_vector(g_data_width-1 downto 0); 
--signal exp_recycle_valid  : std_logic; 


begin 

reset <= not(i_reset_n); 

exp_mux_data <= exp_output when exp_fifo_mux_select = '0' else 
				exp_fifo_dout; 
				
exp_mux_wr_en <= exp_output_valid when exp_fifo_mux_select = '0' else 
				exp_fifo_rd_en; 
				
exp_fifo_rd_en <= '1' when exp_fifo_rd_en_adder = '1' or exp_fifo_rd_en_divider = '1' else 
						'0'; 

o_softmax_complete <= softmax_complete; 

o_inbuff_empty <= inbuff_empty; 
o_inbuff_almost_empty <= inbuff_almost_empty; 

o_outbuff_dout <= outbuff_dout; 
o_outbuff_empty <= outbuff_empty; 
o_outbuff_full <= outbuff_full; 
o_outbuff_almost_full <= outbuff_almost_full; 
o_outbuff_almost_empty <= outbuff_almost_empty; 
o_outbuff_valid <= outbuff_valid; 

o_expbuff_full <= exp_fifo_full; 
o_expbuff_almost_full <= exp_fifo_almost_full; 
o_expbuff_empty <= exp_fifo_empty; 
o_expbuff_almost_empty <= exp_fifo_almost_empty; 
o_expbuff_valid <= exp_fifo_valid; 

input_buffer: softmax_fifo_buffer
  PORT MAP (
    rst 		  => reset,
    wr_clk 		  => i_clk, 
    rd_clk 		  => i_clk,
    din 		  => i_inbuff_din, 
    wr_en 		  => i_inbuff_wr_en, 
    rd_en         => inbuff_rd_en, 
    dout          => inbuff_dout,
    full          => o_inbuff_full, 
    almost_full   => o_inbuff_almost_full, 
    empty         => inbuff_empty,
    almost_empty  => inbuff_almost_empty,
    valid 		  => inbuff_valid
  );


controller : softmax_controller 
  generic map(
       g_data_width => g_data_width
  )
  port map(
      i_clk                 => i_clk,
      i_reset_n             => i_reset_n, 
      i_start 				=> i_start, 
      i_inbuff_dout         => inbuff_dout,
      i_inbuff_valid        => inbuff_valid, 
      i_inbuff_empty        => inbuff_empty,  
      i_inbuff_almost_empty => inbuff_almost_empty,  

      i_outbuff_full        => outbuff_full, 
      i_outbuff_almost_full => outbuff_almost_full, 

      i_exp_ready           => exp_ready, 
      i_exp_done            => exp_done,
      o_inbuff_rd_en        => inbuff_rd_en, 
      o_exp_input           => exp_input,  
      o_exp_input_valid     => exp_input_valid, 
      o_controller_ready    => controller_ready, 
	  
	    o_exp_fifo_select 	=> exp_fifo_mux_select, 
	    o_exp_complete		=> exp_complete, 
      o_clear_all       => clear_all, 
	    
	    i_summing_complete	=> summing_complete, 
	    i_divsion_complete  	=> division_complete, 
	  
	    i_quotient_result		=> quotient_result,
      i_quotient_result_valid => quotient_result_valid, 
      i_num_elements => i_num_elements,
      o_outbuff_din     => outbuff_din, 
      o_outbuff_wr_en   => outbuff_wr_en, 
      o_softmax_complete => softmax_complete, 
	  i_data_loaded => i_data_loaded
  );




  exp_func:  exponential_function 
  generic map( 
    g_mult_delay  => 8,
    g_adder_delay => 8, 
    g_data_width => g_data_width
    )
  port map(
    i_clk              => i_clk, 
    i_reset_n          => i_reset_n,  
    i_data             => exp_input, 
    i_valid            => exp_input_valid, 
    i_ready            => controller_ready, 
    o_data             => exp_output,
    o_valid            => exp_output_valid, 
    o_ready            => exp_ready, 
    o_exp_done         => exp_done,
    i_fifo_full        => exp_fifo_full,
    i_fifo_almost_full => exp_fifo_almost_full
  ); 


 exp_buffer: softmax_fifo_buffer
  PORT MAP(
    rst         => reset,
    wr_clk        => i_clk, 
    rd_clk        => i_clk,
    din           => exp_mux_data,   --from inbuff controller or recycled
    wr_en         => exp_mux_wr_en,   --from inbuff controller or recycled
    rd_en         => exp_fifo_rd_en,   --to PR1 or sorter
    dout          => exp_fifo_dout,    --to PR1 or sorter
    full          => exp_fifo_full, 
    almost_full   => exp_fifo_almost_full, 
    empty         => exp_fifo_empty,
    almost_empty  => exp_fifo_almost_empty,
    valid         => exp_fifo_valid
  ); 
  
 adder : softmax_adder_wrapper 
  generic map(
       g_data_width => g_data_width
  )
  port map(
    i_clk   				=> i_clk, 
    i_reset_n 				=> i_reset_n, 
	i_exp_fifo_dout 		=> exp_fifo_dout, 
	i_exp_fifo_valid 		=> exp_fifo_valid, 
	i_exp_fifo_empty		=> exp_fifo_empty, 
	i_exp_fifo_almost_empty => exp_fifo_almost_empty, 
	i_exp_complete 			=> exp_complete,
  i_division_complete  => division_complete, 
  i_clear_all           => clear_all,
	i_num_elements 			=> i_num_elements, 
	o_exp_rd_en 			=> exp_fifo_rd_en_adder, 
	o_summing_complete  	=> summing_complete, 
	o_sum_result 			=> sum_result
  ); 


divider: softmax_divider_wrapper 
  generic map(
       g_data_width => g_data_width, 
	   g_divider_delay => 28
  )
  port map(
    i_clk						=> i_clk, 
    i_reset_n 					=> i_reset_n, 
	i_exp_fifo_dout 			=> exp_fifo_dout,
	i_exp_fifo_valid 			=> exp_fifo_valid, 
	i_exp_fifo_empty 			=> exp_fifo_empty, 
	i_exp_fifo_almost_empty     => exp_fifo_almost_empty,
	i_summing_complete          => summing_complete,
	i_divisor 					=> sum_result,
	i_num_elements 				=> i_num_elements,
  i_clear_all           => clear_all, 
	o_exp_rd_en 				=> exp_fifo_rd_en_divider,
	o_division_complete			=> division_complete,
	o_quotient_result 			=> quotient_result, 
  o_quotient_result_valid => quotient_result_valid
  );

  
  
 output_buffer: softmax_fifo_buffer
  PORT MAP (
    rst         => reset,
    wr_clk        => i_clk, 
    rd_clk        => i_clk,
    din 		  => outbuff_din, 	--from inbuff controller or recycled
    wr_en 		  => outbuff_wr_en, 	--from inbuff controller or recycled
    rd_en 		  => i_outbuff_rd_en, 	--to PR1 or sorter
    dout 		  => outbuff_dout,  	--to PR1 or sorter
    full 		  => outbuff_full, 
    almost_full   => outbuff_almost_full, 
    empty 		  => outbuff_empty,
    almost_empty  => outbuff_almost_empty,
    valid 		  => outbuff_valid
  ); 
  



  

end arch;
