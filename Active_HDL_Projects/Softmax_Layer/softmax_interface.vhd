library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity softmax_interface is
  generic(
       -- name : type := value
       g_data_width : integer := 16
  );
  port(
    i_clk                     : in STD_LOGIC;
    i_reset_n                 : in STD_LOGIC;

    -- FROM LOGIC
	i_inbuff_full	          : in std_logic; 
	i_inbuff_almost_full      : in std_logic;  
    i_outbuff_dout            : in std_logic_vector(g_data_width-1 downto 0); 
    i_outbuff_empty           : in std_logic; 
    i_outbuff_almost_empty    : in std_logic; 
    i_outbuff_valid	          : in std_logic;    
	i_softmax_complete        : in std_logic;

	-- TO LOGIC
    o_num_elements            : out std_logic_vector(15 downto 0);   
	o_inbuff_din              : out std_logic_vector(g_data_width-1 downto 0); 
	o_inbuff_wr_en            : out std_logic; 
	o_outbuff_rd_en           : out std_logic;  

   --FROM AXI SLAVE
    i_control_reg            : in std_logic_vector(g_axi_data_width-1 downto 0); 
    i_status_reg             : in std_logic_vector(g_axi_data_width-1 downto 0); 
    i_input_data_addr_reg    : in std_logic_vector(g_axi_data_width-1 downto 0);
    i_output_data_addr_reg   : in std_logic_vector(g_axi_data_width-1 downto 0); 
    i_prediction_1_reg		 : in std_logic_vector(g_axi_data_width-1 downto 0); 
    i_prediction_2_reg		 : in std_logic_vector(g_axi_data_width-1 downto 0); 
    i_prediction_3_reg		 : in std_logic_vector(g_axi_data_width-1 downto 0); 
    i_prediction_4_reg		 : in std_logic_vector(g_axi_data_width-1 downto 0); 
    i_prediction_5_reg		 : in std_logic_vector(g_axi_data_width-1 downto 0); 

    i_slv_reg_rden			 : in std_logic; 
    i_slv_reg_wren			 : in std_logic_vector(g_axi_data_width-1 downto 0); 

   --TO AXI SLAVE
    o_control_reg            : out std_logic_vector(g_axi_data_width-1 downto 0); 
    o_status_reg             : out std_logic_vector(g_axi_data_width-1 downto 0); 
    o_input_data_addr_reg    : out std_logic_vector(g_axi_data_width-1 downto 0);
    o_output_data_addr_reg   : out std_logic_vector(g_axi_data_width-1 downto 0); 
    o_prediction_1_reg		 : out std_logic_vector(g_axi_data_width-1 downto 0); 
    o_prediction_2_reg		 : out std_logic_vector(g_axi_data_width-1 downto 0); 
    o_prediction_3_reg		 : out std_logic_vector(g_axi_data_width-1 downto 0); 
    o_prediction_4_reg		 : out std_logic_vector(g_axi_data_width-1 downto 0); 
    o_prediction_5_reg		 : out std_logic_vector(g_axi_data_width-1 downto 0); 

   --FROM AXI MASTER
    i_WRITE_NEXT            : in std_logic; 
    i_WREADY                : in std_logic;
    i_WDONE                 : in std_logic; 
    i_burst_write_active    : in std_logic; 
    i_DATA_READ             : in std_logic_vector(15 downto 0);
    i_READ_NEXT             : in std_logic; 
    i_RREADY                : in std_logic; 
    i_RDONE                 : in std_logic; 
    i_RVALID                : in std_logic; 
    i_burst_read_active     : in std_logic; 

   --TO AXI MASTER 
    o_DATA_TO_WRITE         : out std_logic_vector(15 downto 0); 
    o_outbuff_empty         : out std_logic;
    o_outbuff_almost_empty  : out std_logic;
    o_outbuff_valid         : out std_logic;  
    o_inbuff_full   		: out std_logic; 
    o_inbuff_almost_full    : out std_logic

  );
end softmax_interface;
