library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity OV5642_IF_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 7;

		-- Parameters of Axi Master Bus Interface M00_AXI
		C_M00_AXI_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_M00_AXI_BURST_LEN	: integer	:= 16;
		C_M00_AXI_ID_WIDTH	: integer	:= 1;
		C_M00_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M00_AXI_DATA_WIDTH	: integer	:= 32;
		C_M00_AXI_AWUSER_WIDTH	: integer	:= 0;
		C_M00_AXI_ARUSER_WIDTH	: integer	:= 0;
		C_M00_AXI_WUSER_WIDTH	: integer	:= 0;
		C_M00_AXI_RUSER_WIDTH	: integer	:= 0;
		C_M00_AXI_BUSER_WIDTH	: integer	:= 0;

		-- Parameters of Axi Slave Bus Interface S_AXI_INTR
		C_S_AXI_INTR_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_INTR_ADDR_WIDTH	: integer	:= 5;
		C_NUM_OF_INTR	: integer	:= 1;
		C_INTR_SENSITIVITY	: std_logic_vector	:= x"FFFFFFFF";
		C_INTR_ACTIVE_STATE	: std_logic_vector	:= x"FFFFFFFF";
		C_IRQ_SENSITIVITY	: integer	:= 1;
		C_IRQ_ACTIVE_STATE	: integer	:= 1
	);
	port (
		-- Users to add ports here
        i_HREF : in STD_LOGIC;
        i_PCLK : in STD_LOGIC;
        i_VSYNC : in STD_LOGIC;
        i_btn_config : in STD_LOGIC;
        i_axi_master_clk  : in STD_LOGIC; 
        i_axi_slave_clk   : in STD_LOGIC; 
        i_config_bypass : in STD_LOGIC;
        i_config_capture_clk : in STD_LOGIC; 
        i_reset_n : in STD_LOGIC;
        i_SDATA : in STD_LOGIC_VECTOR(9 downto 0);
        o_PWDN : out STD_LOGIC;
        o_SIOC : out STD_LOGIC;
        o_SIOD : inout STD_LOGIC; 
        o_write_done_irq: out std_logic; 
        o_debug_state : out std_logic_vector(2 downto 0); 
        o_i2c_busy : out std_logic; 
        
        o_sioc_state_debug : out STD_LOGIC_VECTOR(2 downto 0);
        o_siod_state_debug : out STD_LOGIC_VECTOR(4 downto 0);
        o_capture_state_debug : out STD_LOGIC_VECTOR(3 downto 0); 
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic;

		-- Ports of Axi Master Bus Interface M00_AXI
		m00_axi_init_axi_txn	: in std_logic;
		m00_axi_txn_done	: out std_logic;
		m00_axi_error	: out std_logic;
		m00_axi_aclk	: in std_logic;
		m00_axi_aresetn	: in std_logic;
		m00_axi_awid	: out std_logic_vector(C_M00_AXI_ID_WIDTH-1 downto 0);
		m00_axi_awaddr	: out std_logic_vector(C_M00_AXI_ADDR_WIDTH-1 downto 0);
		m00_axi_awlen	: out std_logic_vector(7 downto 0);
		m00_axi_awsize	: out std_logic_vector(2 downto 0);
		m00_axi_awburst	: out std_logic_vector(1 downto 0);
		m00_axi_awlock	: out std_logic;
		m00_axi_awcache	: out std_logic_vector(3 downto 0);
		m00_axi_awprot	: out std_logic_vector(2 downto 0);
		m00_axi_awqos	: out std_logic_vector(3 downto 0);
		m00_axi_awuser	: out std_logic_vector(C_M00_AXI_AWUSER_WIDTH-1 downto 0);
		m00_axi_awvalid	: out std_logic;
		m00_axi_awready	: in std_logic;
		m00_axi_wdata	: out std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0);
		m00_axi_wstrb	: out std_logic_vector(C_M00_AXI_DATA_WIDTH/8-1 downto 0);
		m00_axi_wlast	: out std_logic;
		m00_axi_wuser	: out std_logic_vector(C_M00_AXI_WUSER_WIDTH-1 downto 0);
		m00_axi_wvalid	: out std_logic;
		m00_axi_wready	: in std_logic;
		m00_axi_bid	: in std_logic_vector(C_M00_AXI_ID_WIDTH-1 downto 0);
		m00_axi_bresp	: in std_logic_vector(1 downto 0);
		m00_axi_buser	: in std_logic_vector(C_M00_AXI_BUSER_WIDTH-1 downto 0);
		m00_axi_bvalid	: in std_logic;
		m00_axi_bready	: out std_logic;
		m00_axi_arid	: out std_logic_vector(C_M00_AXI_ID_WIDTH-1 downto 0);
		m00_axi_araddr	: out std_logic_vector(C_M00_AXI_ADDR_WIDTH-1 downto 0);
		m00_axi_arlen	: out std_logic_vector(7 downto 0);
		m00_axi_arsize	: out std_logic_vector(2 downto 0);
		m00_axi_arburst	: out std_logic_vector(1 downto 0);
		m00_axi_arlock	: out std_logic;
		m00_axi_arcache	: out std_logic_vector(3 downto 0);
		m00_axi_arprot	: out std_logic_vector(2 downto 0);
		m00_axi_arqos	: out std_logic_vector(3 downto 0);
		m00_axi_aruser	: out std_logic_vector(C_M00_AXI_ARUSER_WIDTH-1 downto 0);
		m00_axi_arvalid	: out std_logic;
		m00_axi_arready	: in std_logic;
		m00_axi_rid	: in std_logic_vector(C_M00_AXI_ID_WIDTH-1 downto 0);
		m00_axi_rdata	: in std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0);
		m00_axi_rresp	: in std_logic_vector(1 downto 0);
		m00_axi_rlast	: in std_logic;
		m00_axi_ruser	: in std_logic_vector(C_M00_AXI_RUSER_WIDTH-1 downto 0);
		m00_axi_rvalid	: in std_logic;
		m00_axi_rready	: out std_logic;

		-- Ports of Axi Slave Bus Interface S_AXI_INTR
		s_axi_intr_aclk	: in std_logic;
		s_axi_intr_aresetn	: in std_logic;
		s_axi_intr_awaddr	: in std_logic_vector(C_S_AXI_INTR_ADDR_WIDTH-1 downto 0);
		s_axi_intr_awprot	: in std_logic_vector(2 downto 0);
		s_axi_intr_awvalid	: in std_logic;
		s_axi_intr_awready	: out std_logic;
		s_axi_intr_wdata	: in std_logic_vector(C_S_AXI_INTR_DATA_WIDTH-1 downto 0);
		s_axi_intr_wstrb	: in std_logic_vector((C_S_AXI_INTR_DATA_WIDTH/8)-1 downto 0);
		s_axi_intr_wvalid	: in std_logic;
		s_axi_intr_wready	: out std_logic;
		s_axi_intr_bresp	: out std_logic_vector(1 downto 0);
		s_axi_intr_bvalid	: out std_logic;
		s_axi_intr_bready	: in std_logic;
		s_axi_intr_araddr	: in std_logic_vector(C_S_AXI_INTR_ADDR_WIDTH-1 downto 0);
		s_axi_intr_arprot	: in std_logic_vector(2 downto 0);
		s_axi_intr_arvalid	: in std_logic;
		s_axi_intr_arready	: out std_logic;
		s_axi_intr_rdata	: out std_logic_vector(C_S_AXI_INTR_DATA_WIDTH-1 downto 0);
		s_axi_intr_rresp	: out std_logic_vector(1 downto 0);
		s_axi_intr_rvalid	: out std_logic;
		s_axi_intr_rready	: in std_logic;
		irq	: out std_logic
	);
end OV5642_IF_v1_0;

architecture arch_imp of OV5642_IF_v1_0 is
    signal int_i_diag_reg_0 : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal int_i_diag_reg_1 : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal int_i_diag_reg_2 : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal int_i_diag_reg_3 : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal int_i_image_data_addr_reg : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal int_i_start_reg : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal int_i_status_reg : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);

    signal int_o_diag_reg_0 : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal int_o_diag_reg_1 : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal int_o_diag_reg_2 : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal int_o_diag_reg_3 : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal int_o_image_data_addr_reg : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal int_o_start_reg : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal int_o_status_reg : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
    
    signal slv_reg_rden     : std_logic; 
    signal slv_reg_wren     : STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
    
    signal int_DATA_TO_WRITE : STD_LOGIC_VECTOR(15 downto 0); 
    signal int_INIT_AXI_TXN   : STD_LOGIC; 
    signal int_write_next   : std_logic; 
    signal int_outbuff_prog_empty : std_logic; 
    signal int_outbuff_empty    : std_logic; 
    signal int_burst_write_active : std_logic; 
    signal int_outbuff_almost_empty : std_logic; 
    signal int_outbuff_valid    : std_logic; 
    
    signal wready   : std_logic; 
    
    signal int_write_done   : std_logic; 
    

	-- component declaration
	component OV5642_IF_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 7
		);
		port (
		i_start_reg : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        i_status_reg : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        i_image_data_addr_reg : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        i_diag_reg_0 : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        i_diag_reg_1 : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        i_diag_reg_2 : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        i_diag_reg_3 : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        
        
        o_start_reg : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        o_status_reg : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        o_image_data_addr_reg : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        o_diag_reg_0 : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        o_diag_reg_1 : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        o_diag_reg_2 : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        o_diag_reg_3 : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        
        o_slv_reg_rden : out std_logic; 
        o_slv_reg_wren : out STD_LOGIC_VECTOR(C_S00_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component OV5642_IF_v1_0_S00_AXI;

	component OV5642_IF_v1_0_M00_AXI is
		generic (
		C_M_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_M_AXI_BURST_LEN	: integer	:= 16;
		C_M_AXI_ID_WIDTH	: integer	:= 1;
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		C_M_AXI_AWUSER_WIDTH	: integer	:= 0;
		C_M_AXI_ARUSER_WIDTH	: integer	:= 0;
		C_M_AXI_WUSER_WIDTH	: integer	:= 0;
		C_M_AXI_RUSER_WIDTH	: integer	:= 0;
		C_M_AXI_BUSER_WIDTH	: integer	:= 0
		);
		port (
		DATA_TO_WRITE : in std_logic_vector(15 downto 0); 
		O_WRITE_NEXT  : out std_logic; 
		O_WREADY        : out std_logic; 
		O_WDONE         : out std_logic;
		i_outbuff_prog_empty : in std_logic; 
		i_outbuff_empty   : in std_logic; 
		i_outbuff_almost_empty : in std_logic; 
		i_outbuff_valid   : in std_logic; 
		o_burst_write_active: out std_logic; 
		INIT_AXI_TXN	: in std_logic;
		TXN_DONE	: out std_logic;
		ERROR	: out std_logic;
		M_AXI_ACLK	: in std_logic;
		M_AXI_ARESETN	: in std_logic;
		M_AXI_AWID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_AWLEN	: out std_logic_vector(7 downto 0);
		M_AXI_AWSIZE	: out std_logic_vector(2 downto 0);
		M_AXI_AWBURST	: out std_logic_vector(1 downto 0);
		M_AXI_AWLOCK	: out std_logic;
		M_AXI_AWCACHE	: out std_logic_vector(3 downto 0);
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		M_AXI_AWQOS	: out std_logic_vector(3 downto 0);
		M_AXI_AWUSER	: out std_logic_vector(C_M_AXI_AWUSER_WIDTH-1 downto 0);
		M_AXI_AWVALID	: out std_logic;
		M_AXI_AWREADY	: in std_logic;
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		M_AXI_WLAST	: out std_logic;
		M_AXI_WUSER	: out std_logic_vector(C_M_AXI_WUSER_WIDTH-1 downto 0);
		M_AXI_WVALID	: out std_logic;
		M_AXI_WREADY	: in std_logic;
		M_AXI_BID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		M_AXI_BUSER	: in std_logic_vector(C_M_AXI_BUSER_WIDTH-1 downto 0);
		M_AXI_BVALID	: in std_logic;
		M_AXI_BREADY	: out std_logic;
		M_AXI_ARID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_ARLEN	: out std_logic_vector(7 downto 0);
		M_AXI_ARSIZE	: out std_logic_vector(2 downto 0);
		M_AXI_ARBURST	: out std_logic_vector(1 downto 0);
		M_AXI_ARLOCK	: out std_logic;
		M_AXI_ARCACHE	: out std_logic_vector(3 downto 0);
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		M_AXI_ARQOS	: out std_logic_vector(3 downto 0);
		M_AXI_ARUSER	: out std_logic_vector(C_M_AXI_ARUSER_WIDTH-1 downto 0);
		M_AXI_ARVALID	: out std_logic;
		M_AXI_ARREADY	: in std_logic;
		M_AXI_RID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		M_AXI_RLAST	: in std_logic;
		M_AXI_RUSER	: in std_logic_vector(C_M_AXI_RUSER_WIDTH-1 downto 0);
		M_AXI_RVALID	: in std_logic;
		M_AXI_RREADY	: out std_logic
		);
	end component OV5642_IF_v1_0_M00_AXI;

	component OV5642_IF_v1_0_S_AXI_INTR is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 5;
		C_NUM_OF_INTR	: integer	:= 1;
		C_INTR_SENSITIVITY	: std_logic_vector	:= x"FFFFFFFF";
		C_INTR_ACTIVE_STATE	: std_logic_vector	:= x"FFFFFFFF";
		C_IRQ_SENSITIVITY	: integer	:= 1;
		C_IRQ_ACTIVE_STATE	: integer	:= 1
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic;
		irq	: out std_logic
		);
	end component OV5642_IF_v1_0_S_AXI_INTR;


    component ov5642_if_ip is
      port(
           i_HREF : in STD_LOGIC;
           i_PCLK : in STD_LOGIC;
           i_VSYNC : in STD_LOGIC;
           i_btn_config : in STD_LOGIC;
           i_burst_write_active : in STD_LOGIC;
           i_axi_master_clk : in STD_LOGIC;
           i_axi_slave_clk : in STD_LOGIC;
           i_config_bypass : in STD_LOGIC;
           i_config_capture_clk : in STD_LOGIC;
           i_reset_n : in STD_LOGIC;
           i_SDATA : in STD_LOGIC_VECTOR(9 downto 0);
           i_diag_reg_0 : in STD_LOGIC_VECTOR(31 downto 0);
           i_diag_reg_1 : in STD_LOGIC_VECTOR(31 downto 0);
           i_diag_reg_2 : in STD_LOGIC_VECTOR(31 downto 0);
           i_diag_reg_3 : in STD_LOGIC_VECTOR(31 downto 0);
           i_image_data_addr_reg : in STD_LOGIC_VECTOR(31 downto 0);
           i_start_reg : in STD_LOGIC_VECTOR(31 downto 0);
           i_status_reg : in STD_LOGIC_VECTOR(31 downto 0);
		   i_slv_reg_rden : in std_logic; 
		   i_write_done : in std_logic; 
           i_write_next : in STD_LOGIC;
           i_slv_reg_wren : in STD_LOGIC_VECTOR(31 downto 0);   
           o_PWDN : out STD_LOGIC;
           o_SIOC : out STD_LOGIC;
           o_debug_state : out std_logic_vector(2 downto 0); 
           o_diag_reg_0 : out STD_LOGIC_VECTOR(31 downto 0);
           o_diag_reg_1 : out STD_LOGIC_VECTOR(31 downto 0);
           o_diag_reg_2 : out STD_LOGIC_VECTOR(31 downto 0);
           o_diag_reg_3 : out STD_LOGIC_VECTOR(31 downto 0);
           o_image_data_addr_reg : out STD_LOGIC_VECTOR(31 downto 0);
           o_i2c_busy   : out std_logic; 
           o_start_reg : out STD_LOGIC_VECTOR(31 downto 0);
           o_status_reg : out STD_LOGIC_VECTOR(31 downto 0);
           o_SIOD : inout STD_LOGIC; 
           o_DATA_TO_WRITE : out STD_LOGIC_VECTOR(15 downto 0); 
           o_INIT_AXI_TXN   : out STD_LOGIC; 
           o_outbuff_prog_empty : out STD_LOGIC; 
           o_outbuff_empty  : out std_logic; 
           o_outbuff_almost_empty : out std_logic; 
           o_outbuff_valid  : out std_logic; 
           i_wready : in std_logic; 
           o_sioc_state_debug : out STD_LOGIC_VECTOR(2 downto 0);
           o_siod_state_debug : out STD_LOGIC_VECTOR(4 downto 0);
           o_capture_state_debug : out STD_LOGIC_VECTOR(3 downto 0)
      );
    end component ov5642_if_ip;


begin

-- Instantiation of Axi Bus Interface S00_AXI
OV5642_IF_v1_0_S00_AXI_inst : OV5642_IF_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
	
	
		i_start_reg                 => int_o_start_reg,
        i_status_reg                => int_o_status_reg,
        i_image_data_addr_reg       => int_o_image_data_addr_reg,
        i_diag_reg_0                => int_o_diag_reg_0,
        i_diag_reg_1                => int_o_diag_reg_1,
        i_diag_reg_2                => int_o_diag_reg_2,
        i_diag_reg_3                => int_o_diag_reg_3,
    
        o_start_reg                 => int_i_start_reg,
        o_status_reg                => int_i_status_reg,
        o_image_data_addr_reg       => int_i_image_data_addr_reg,
        o_diag_reg_0                => int_i_diag_reg_0,
        o_diag_reg_1                => int_i_diag_reg_1,
        o_diag_reg_2                => int_i_diag_reg_2,
        o_diag_reg_3                => int_i_diag_reg_3,
        
		o_slv_reg_rden             => slv_reg_rden,
        o_slv_reg_wren             => slv_reg_wren,  
        

        
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

-- Instantiation of Axi Bus Interface M00_AXI
OV5642_IF_v1_0_M00_AXI_inst : OV5642_IF_v1_0_M00_AXI
	generic map (
		C_M_TARGET_SLAVE_BASE_ADDR	=> C_M00_AXI_TARGET_SLAVE_BASE_ADDR,
		C_M_AXI_BURST_LEN	=> C_M00_AXI_BURST_LEN,
		C_M_AXI_ID_WIDTH	=> C_M00_AXI_ID_WIDTH,
		C_M_AXI_ADDR_WIDTH	=> C_M00_AXI_ADDR_WIDTH,
		C_M_AXI_DATA_WIDTH	=> C_M00_AXI_DATA_WIDTH,
		C_M_AXI_AWUSER_WIDTH	=> C_M00_AXI_AWUSER_WIDTH,
		C_M_AXI_ARUSER_WIDTH	=> C_M00_AXI_ARUSER_WIDTH,
		C_M_AXI_WUSER_WIDTH	=> C_M00_AXI_WUSER_WIDTH,
		C_M_AXI_RUSER_WIDTH	=> C_M00_AXI_RUSER_WIDTH,
		C_M_AXI_BUSER_WIDTH	=> C_M00_AXI_BUSER_WIDTH
	)
	port map (
	    DATA_TO_WRITE => int_DATA_TO_WRITE, 
	    O_WRITE_NEXT   => int_write_next, 
	    O_WREADY   => wready, 
	    O_WDONE    => int_write_done, 
	    i_outbuff_prog_empty => int_outbuff_prog_empty, 
	    i_outbuff_empty => int_outbuff_empty, 
	    i_outbuff_almost_empty => int_outbuff_almost_empty, 
	    i_outbuff_valid => int_outbuff_valid, 
	    o_burst_write_active => int_burst_write_active, 
		INIT_AXI_TXN	=>int_INIT_AXI_TXN, -- m00_axi_init_axi_txn,
		TXN_DONE	=> m00_axi_txn_done,
		ERROR	=> m00_axi_error,
		M_AXI_ACLK	=> m00_axi_aclk,
		M_AXI_ARESETN	=> m00_axi_aresetn,
		M_AXI_AWID	=> m00_axi_awid,
		M_AXI_AWADDR	=> m00_axi_awaddr,
		M_AXI_AWLEN	=> m00_axi_awlen,
		M_AXI_AWSIZE	=> m00_axi_awsize,
		M_AXI_AWBURST	=> m00_axi_awburst,
		M_AXI_AWLOCK	=> m00_axi_awlock,
		M_AXI_AWCACHE	=> m00_axi_awcache,
		M_AXI_AWPROT	=> m00_axi_awprot,
		M_AXI_AWQOS	=> m00_axi_awqos,
		M_AXI_AWUSER	=> m00_axi_awuser,
		M_AXI_AWVALID	=> m00_axi_awvalid,
		M_AXI_AWREADY	=> m00_axi_awready,
		M_AXI_WDATA	=> m00_axi_wdata,
		M_AXI_WSTRB	=> m00_axi_wstrb,
		M_AXI_WLAST	=> m00_axi_wlast,
		M_AXI_WUSER	=> m00_axi_wuser,
		M_AXI_WVALID	=> m00_axi_wvalid,
		M_AXI_WREADY	=> m00_axi_wready,
		M_AXI_BID	=> m00_axi_bid,
		M_AXI_BRESP	=> m00_axi_bresp,
		M_AXI_BUSER	=> m00_axi_buser,
		M_AXI_BVALID	=> m00_axi_bvalid,
		M_AXI_BREADY	=> m00_axi_bready,
		M_AXI_ARID	=> m00_axi_arid,
		M_AXI_ARADDR	=> m00_axi_araddr,
		M_AXI_ARLEN	=> m00_axi_arlen,
		M_AXI_ARSIZE	=> m00_axi_arsize,
		M_AXI_ARBURST	=> m00_axi_arburst,
		M_AXI_ARLOCK	=> m00_axi_arlock,
		M_AXI_ARCACHE	=> m00_axi_arcache,
		M_AXI_ARPROT	=> m00_axi_arprot,
		M_AXI_ARQOS	=> m00_axi_arqos,
		M_AXI_ARUSER	=> m00_axi_aruser,
		M_AXI_ARVALID	=> m00_axi_arvalid,
		M_AXI_ARREADY	=> m00_axi_arready,
		M_AXI_RID	=> m00_axi_rid,
		M_AXI_RDATA	=> m00_axi_rdata,
		M_AXI_RRESP	=> m00_axi_rresp,
		M_AXI_RLAST	=> m00_axi_rlast,
		M_AXI_RUSER	=> m00_axi_ruser,
		M_AXI_RVALID	=> m00_axi_rvalid,
		M_AXI_RREADY	=> m00_axi_rready
	);

-- Instantiation of Axi Bus Interface S_AXI_INTR
OV5642_IF_v1_0_S_AXI_INTR_inst : OV5642_IF_v1_0_S_AXI_INTR
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S_AXI_INTR_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S_AXI_INTR_ADDR_WIDTH,
		C_NUM_OF_INTR	=> C_NUM_OF_INTR,
		C_INTR_SENSITIVITY	=> C_INTR_SENSITIVITY,
		C_INTR_ACTIVE_STATE	=> C_INTR_ACTIVE_STATE,
		C_IRQ_SENSITIVITY	=> C_IRQ_SENSITIVITY,
		C_IRQ_ACTIVE_STATE	=> C_IRQ_ACTIVE_STATE
	)
	port map (
		S_AXI_ACLK	=> s_axi_intr_aclk,
		S_AXI_ARESETN	=> s_axi_intr_aresetn,
		S_AXI_AWADDR	=> s_axi_intr_awaddr,
		S_AXI_AWPROT	=> s_axi_intr_awprot,
		S_AXI_AWVALID	=> s_axi_intr_awvalid,
		S_AXI_AWREADY	=> s_axi_intr_awready,
		S_AXI_WDATA	=> s_axi_intr_wdata,
		S_AXI_WSTRB	=> s_axi_intr_wstrb,
		S_AXI_WVALID	=> s_axi_intr_wvalid,
		S_AXI_WREADY	=> s_axi_intr_wready,
		S_AXI_BRESP	=> s_axi_intr_bresp,
		S_AXI_BVALID	=> s_axi_intr_bvalid,
		S_AXI_BREADY	=> s_axi_intr_bready,
		S_AXI_ARADDR	=> s_axi_intr_araddr,
		S_AXI_ARPROT	=> s_axi_intr_arprot,
		S_AXI_ARVALID	=> s_axi_intr_arvalid,
		S_AXI_ARREADY	=> s_axi_intr_arready,
		S_AXI_RDATA	=> s_axi_intr_rdata,
		S_AXI_RRESP	=> s_axi_intr_rresp,
		S_AXI_RVALID	=> s_axi_intr_rvalid,
		S_AXI_RREADY	=> s_axi_intr_rready,
		irq	=> irq
	);

	-- Add user logic here
	
	
OV5642_INTERFACE_inst: ov5642_if_ip 
      port map (
           i_HREF                   => i_HREF, 
           i_PCLK                   => i_PCLK, 
           i_VSYNC                  => i_VSYNC, 
           i_btn_config             => i_btn_config,
           i_burst_write_active     => int_burst_write_active, 
           i_axi_master_clk         => i_axi_master_clk, 
           i_axi_slave_clk          => i_axi_slave_clk, 
           i_config_bypass          => i_config_bypass, 
           i_config_capture_clk     => i_config_capture_clk, 
           i_reset_n                => i_reset_n, 
           i_SDATA                  => i_SDATA, 
           i_diag_reg_0             => int_i_diag_reg_0, 
           i_diag_reg_1             => int_i_diag_reg_1,  
           i_diag_reg_2             => int_i_diag_reg_2,  
           i_diag_reg_3             => int_i_diag_reg_3, 
           i_image_data_addr_reg    => int_i_image_data_addr_reg,  
           i_start_reg              => int_i_start_reg,  
           i_status_reg             => int_i_status_reg,  
           o_PWDN                   => o_PWDN, 
           o_SIOC                   => o_SIOC, 
           o_debug_state            => o_debug_state, 
           o_diag_reg_0             => int_o_diag_reg_0,  
           o_diag_reg_1             => int_o_diag_reg_1,  
           o_diag_reg_2             => int_o_diag_reg_2,  
           o_diag_reg_3             => int_o_diag_reg_3,  
           o_image_data_addr_reg    => int_o_image_data_addr_reg,  
           o_start_reg              => int_o_start_reg,  
           o_status_reg             => int_o_status_reg,  
           o_SIOD                   => o_SIOD, 
           i_slv_reg_rden           => slv_reg_rden, 
           i_slv_reg_wren           => slv_reg_wren, 
           o_DATA_TO_WRITE          => int_DATA_TO_WRITE, 
           o_INIT_AXI_TXN           => int_INIT_AXI_TXN, 
           i_write_next             => int_write_next, 
           o_outbuff_prog_empty     => int_outbuff_prog_empty, 
           o_outbuff_empty          => int_outbuff_empty, 
           o_outbuff_almost_empty   => int_outbuff_almost_empty, 
           o_outbuff_valid          => int_outbuff_valid, 
           i_wready                 => wready, 
           i_write_done             => int_write_done, 
           o_i2c_busy               => o_i2c_busy, 
           o_sioc_state_debug       => o_sioc_state_debug, 
           o_siod_state_debug       => o_siod_state_debug, 
           o_capture_state_debug    => o_capture_state_debug
       );

	
	o_write_done_irq    <= int_write_done;

	-- User logic ends

end arch_imp;
