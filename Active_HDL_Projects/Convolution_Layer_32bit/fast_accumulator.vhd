-------------------------------------------------------------------------------
--
-- Title       : accumulator
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\accumulator.vhd
-- Generated   : Sat Sep  2 22:35:03 2017
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
--{entity {accumulator} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;  
use ieee.numeric_std.all;  
use ieee.std_logic_misc.all;

--library Convolution_Layer; 
--use Convolution_Layer.types_pkg.all;

library xil_defaultlib; 
use xil_defaultlib.types_pkg.all; 

entity fast_accumulator is
	generic( 
	g_data_width  : integer := 32; 
	g_product_width : integer := 32; 
	g_accumulator_width	: integer := 32; 
	g_dsps_used	: integer := 200; 
	g_layer_1_adders : integer := 16; --100; 
	g_layer_2_adders : integer := 8; --50; 
	g_layer_3_adders : integer := 4; --25; 
	g_layer_4_adders : integer := 2; --12; 
	g_layer_5_adders : integer := 1;--6; 
	g_layer_6_adders : integer := 1;--3; 
	g_layer_7_adders : integer := 2;
	g_num_adder_layers : integer := 6; 
	g_adder_delay		: integer := 11--8
	); 
	port(
	i_clk 					: in std_logic; 
	i_reset_n 				: in std_logic; 
	i_enable				: in std_logic; 
	
	i_products_array		: in array_type_varx32bit(g_dsps_used-1 downto 0); 
	i_products_array_valid 	: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_filter_size			: in std_logic_vector(3 downto 0); 	
	i_filter_acc_ready		: in std_logic; 
	i_num_filters			: in std_logic_vector(15 downto 0); 
	i_output_volume_size	: in std_logic_vector(7 downto 0); 
	i_channels_allowed		: in std_logic_vector(7 downto 0); 
	i_ch_al_filt			: in std_logic_vector(15 downto 0); 
	o_acc_valid				: out std_logic; 
	o_acc_data				: out std_logic_vector(g_data_width-1 downto 0); 
	o_acc_ready 			: out std_logic; 
	
	i_acc_fifo_empty		: in std_logic; 
	i_acc_fifo_almost_empty : in std_logic; 
	i_acc_fifo_full			: in std_logic; 
	i_acc_fifo_almost_full	: in std_logic
	--i_acc_fifo_prog_full	: in std_logic; 
	--o_acc_fifo_prog_full_thresh : out std_logic_vector(12 downto 0)
	
	); 
end fast_accumulator;

--}} End of automatically maintained section

architecture arch of fast_accumulator is	 
--type array_type_varx32bit is array(integer range <>) of std_logic_vector(31 downto 0); 

signal kernel_sum_reg : std_logic_vector(g_data_width-1 downto 0); 	 
signal kernel_sum_result : std_logic_vector(g_data_width-1 downto 0); 
signal kernel_element_counter : unsigned(15 downto 0); 

signal kernel_values : array_type_varx32bit(10 downto 0); 


signal layer_1_result : array_type_varx32bit(g_layer_1_adders-1 downto 0); 
signal layer_2_result : array_type_varx32bit(g_layer_2_adders-1 downto 0); 
signal layer_3_result : array_type_varx32bit(g_layer_3_adders-1 downto 0); 
signal layer_4_result : array_type_varx32bit(g_layer_4_adders-1 downto 0); 
signal layer_5_result : array_type_varx32bit(g_layer_5_adders-1 downto 0); 
signal layer_6_result : array_type_varx32bit(g_layer_6_adders-1 downto 0); 
signal layer_7_result : array_type_varx32bit(g_layer_7_adders-1 downto 0);


signal layer_1_reg_array : array_type_varx32bit(g_layer_1_adders-1 downto 0); 
signal layer_2_reg_array : array_type_varx32bit(g_layer_2_adders-1 downto 0); 
signal layer_3_reg_array : array_type_varx32bit(g_layer_3_adders-1 downto 0); 
signal layer_4_reg_array : array_type_varx32bit(g_layer_4_adders-1 downto 0); 


signal kernel_layer_1_reg_array : array_type_varx32bit(6-1 downto 0); 
signal kernel_layer_2_reg_array : array_type_varx32bit(3-1 downto 0); 
signal kernel_layer_3_reg : std_logic_vector(g_data_width-1 downto 0); 

--signal layer_6_multiplicands : array_type_varx32bit(10 downto 0); 	
signal layer_6_multiplicands : array_type_varx32bit((((g_num_adder_layers-1)*g_adder_delay)+(g_num_adder_layers-1))-1 downto 0);  
signal layer_6_mult_input : std_logic_vector(g_data_width-1 downto 0); 

signal layer_5_reg			: std_logic_vector(g_data_width-1 downto 0); 
signal layer_6_reg			: std_logic_vector(g_data_width-1 downto 0); 
signal layer_5_result_DEBUG : std_logic_vector(g_data_width-1 downto 0); 	
signal layer_6_result_DEBUG : std_logic_vector(g_data_width-1 downto 0); 

signal delay_shift_register : std_logic_vector(((g_num_adder_layers*g_adder_delay)+g_num_adder_layers)-1 downto 0);
signal kernel_delay_shift_register : std_logic_vector(((4*g_adder_delay)+3)-1 downto 0); 
type accumulator_state is (IDLE, RUN, QUE, EMPTY_QUE); 
signal current_state 		: accumulator_state; 
signal next_state			: accumulator_state;   

signal acc_ready : std_logic; 
signal acc_complete : std_logic; 
signal acc_valid : std_logic; 
signal acc_data : std_logic_vector(g_data_width-1 downto 0); 
signal column_counter : unsigned(31 downto 0); 
signal filter_counter : unsigned(31 downto 0); 


signal kernel_layer_1_result : array_type_varx32bit(6-1 downto 0); 
signal kernel_layer_2_result : array_type_varx32bit(3-1 downto 0); 
signal kernel_layer_3_result : std_logic_vector(g_data_width-1 downto 0); 

signal kernel_flag : std_logic; 

signal kernal_addend_shift_register : array_type_varx32bit(10 downto 0); 

signal que_acc_data             : std_logic_vector(g_data_width-1 downto 0); 
signal que_acc_valid 		    : std_logic; 

signal que_fifo_din 			: std_logic_vector(g_data_width-1 downto 0);  
signal que_fifo_wr_en 			: std_logic;  
signal que_fifo_rd_en 			: std_logic;  
signal que_fifo_dout 			: std_logic_vector(g_data_width-1 downto 0);  
signal que_fifo_full 			: std_logic;  
signal que_fifo_almost_full 	: std_logic; 
signal que_fifo_empty 			: std_logic;  
signal que_fifo_almost_empty 	: std_logic;  
signal que_fifo_valid 			: std_logic; 

signal channels_allowed_counter : unsigned(31 downto 0); 
signal filter_size_counter		: unsigned(31 downto 0); 

signal reset_n : std_logic; 

signal mask : std_logic_vector(g_dsps_used-1 downto 0); 
signal final_mask : std_logic_vector(g_dsps_used-1 downto 0); 

signal shift_in : std_logic; 
signal shift_in_temp : std_logic; 
signal channels_filt_counter : unsigned(15 downto 0); 

component FP_ADDER_8E_24F IS
  PORT (
    a : IN STD_LOGIC_VECTOR(g_data_width-1 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(g_data_width-1 DOWNTO 0);
    clk : IN STD_LOGIC;
    result : OUT STD_LOGIC_VECTOR(g_data_width-1 DOWNTO 0)
  );
END component;


component que_fifo IS
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
END component;


begin
	
	Adder_layer_1: for i in g_layer_1_adders-1 downto 0 generate 	--100
	begin 
		Layer_1_Adder: FP_ADDER_8E_24F	
		port map(
			a => i_products_array(i*2), 
			b => i_products_array(i*2 + 1), 
			clk => i_clk, 
			result => layer_1_result(i)	   
		);
	end generate; 
	
	Adder_layer_2: for i in g_layer_2_adders-1 downto 0 generate --50
	begin 
		Layer_2_Adder: FP_ADDER_8E_24F	
		port map(
			a => layer_1_reg_array(i*2),
			b => layer_1_reg_array(i*2 + 1),  
			clk => i_clk, 
			result => layer_2_result(i)	 
		);
	end generate; 
	
	Adder_layer_3: for i in g_layer_3_adders-1 downto 0 generate --25
	begin 
		Layer_3_Adder: FP_ADDER_8E_24F	
		port map(
			a => layer_2_reg_array(i*2),
			b => layer_2_reg_array(i*2 + 1), 
			clk => i_clk, 
			result => layer_3_result(i)		   
		);
	end generate; 
	
	Adder_layer_4: for i in g_layer_4_adders-1 downto 0 generate --12
	begin 
		Layer_4_Adder: FP_ADDER_8E_24F	
		port map(
			a => layer_3_reg_array(i*2),
			b => layer_3_reg_array(i*2 + 1), 
			clk => i_clk, 
			result => layer_4_result(i)		--6
		);
	end generate;  
	
	Adder_layer_5_DEBUG: FP_ADDER_8E_24F	
	port map(
		a => layer_4_reg_array(0),
		b => layer_4_reg_array(1), 
		clk => i_clk, 
		result => layer_5_result_DEBUG
	);	  
	
	Adder_layer_6_DEBUG: FP_ADDER_8E_24F	
	port map(
		a => layer_5_reg,
		b => layer_6_multiplicands((((g_num_adder_layers-1)*g_adder_delay)+(g_num_adder_layers-1))-1), --layer_6_mult_input, --i_products_array(g_dsps_used-1), 
		clk => i_clk, 
		result => layer_6_result_DEBUG
	);
	
	
	
	
	Kernel_size_Adder_layer_1: for i in 5-1 downto 0 generate 
	begin 
		Kernel_Layer_1_Adder: FP_ADDER_8E_24F	
		port map(
			a => kernel_values(i*2),
			b => kernel_values(i*2 + 1), 
			clk => i_clk, 
			result => kernel_layer_1_result(i)		--6
		);
	end generate;  
	
	kernel_layer_1_result(5) <= kernal_addend_shift_register(10); -- kernel_values(10); 
	
	Kernel_size_Adder_layer_2: for i in 3-1 downto 0 generate 
	begin 
		Kernel_Layer_2_Adder: FP_ADDER_8E_24F	
		port map(
			a => kernel_layer_1_reg_array(i*2),
			b => kernel_layer_1_reg_array(i*2 + 1), 
			clk => i_clk, 
			result => kernel_layer_2_result(i)		--6
		);
	end generate;  
	
	

	Kernel_size_Adder_layer_3: FP_ADDER_8E_24F	
	port map(
		a => kernel_layer_2_reg_array(0),
		b => kernel_layer_2_reg_array(1), 
		clk => i_clk, 
		result => kernel_layer_3_result		--6
	);

	
	
	Kernel_sum: FP_ADDER_8E_24F	
	port map(
		a => kernel_layer_3_reg,
		b => kernel_layer_2_reg_array(2),
		clk => i_clk, 
		result => kernel_sum_result
	);

	
	-- Kernel_sum: FP_ADDER_8E_24F	
	-- port map(
		-- a => layer_6_reg,
		-- b => kernel_reg,
		-- clk => i_clk, 
		-- result => kernel_sum_result
	-- );

	buffer_que_hold: que_fifo
	  PORT MAP(
		rst     		=> reset_n, 
		wr_clk  		=> i_clk, 
		rd_clk  		=> i_clk, 
		din     		=> que_fifo_din, 
		wr_en   		=> que_fifo_wr_en, 
		rd_en   		=> que_fifo_rd_en, 
		dout    		=> que_fifo_dout, 
		full    		=> que_fifo_full, 
		almost_full 	=> que_fifo_almost_full, 
		empty			=> que_fifo_empty, 
		almost_empty 	=> que_fifo_almost_empty, 
		valid 			=> que_fifo_valid
	  );

	
	--o_acc_valid <= kernel_delay_shift_register(((4*g_adder_delay))-1);--kernel_sum_valid; --delay_shift_register((g_num_adder_layers*g_adder_delay)-1); 
	--o_acc_data	<= kernel_sum_result; --layer_6_result_DEBUG; --Adder_result; 
	
	o_acc_valid <= acc_valid when current_state = RUN else --kernel_delay_shift_register(((4*g_adder_delay))-1) when current_state = RUN else 
				   que_acc_valid when current_state = EMPTY_QUE else 
				   '0'; 
	o_acc_data <= acc_data; 
	o_acc_ready <= acc_ready; 
	--o_acc_fifo_prog_full_thresh <= "0000000111111"; 
	
	reset_n <= not(i_reset_n); 
				   
	acc_data	<= kernel_sum_result when (current_state = RUN or current_state = QUE) and unsigned(i_filter_size) = 11 else
				   kernel_layer_3_result when (current_state = RUN or current_state = QUE) and unsigned(i_filter_size) = 7 else
				   kernel_layer_3_result when (current_state = RUN or current_state = QUE) and unsigned(i_filter_size) = 6 else
				   kernel_layer_3_result when (current_state = RUN or current_state = QUE) and unsigned(i_filter_size) = 5 else
				   kernel_layer_2_result(0) when (current_state = RUN or current_state = QUE) and unsigned(i_filter_size) = 3 else
				   que_acc_data when current_state = EMPTY_QUE else 
				   (others => '0'); 

	acc_valid <= kernel_delay_shift_register(((4*g_adder_delay)+3)-1) when unsigned(i_filter_size) = 11 else 
			   kernel_delay_shift_register(((3*g_adder_delay)+2)-1) when unsigned(i_filter_size) = 7 else 
			   kernel_delay_shift_register(((3*g_adder_delay)+2)-1) when unsigned(i_filter_size) = 6 else 
			   kernel_delay_shift_register(((3*g_adder_delay)+2)-1) when unsigned(i_filter_size) = 5 else 
			   kernel_delay_shift_register(((2*g_adder_delay)+1)-1) when unsigned(i_filter_size) = 3 else
			   '0'; 
	
	
	adder_registers: process(i_clk, i_reset_n) is 
	begin 
		if(i_reset_n = '0') then 
			layer_1_reg_array 			<= (others => (others => '0')); 
			layer_2_reg_array 			<= (others => (others => '0')); 
			layer_3_reg_array 			<= (others => (others => '0')); 
			layer_4_reg_array 			<= (others => (others => '0')); 
			layer_5_reg		  			<= (others => '0'); 
			layer_6_reg		  			<= (others => '0'); 
			kernel_layer_1_reg_array 	<= (others => (others => '0')); 
			kernel_layer_2_reg_array 	<= (others => (others => '0')); 
			kernel_layer_3_reg 			<= (others => '0'); 
			kernel_sum_reg 				<= (others => '0'); 
			layer_6_multiplicands 		<= (others => (others => '0')); 
			
		elsif(rising_edge(i_clk)) then 
			layer_1_reg_array  			<= layer_1_result;  
			layer_2_reg_array  			<= layer_2_result; 
			layer_3_reg_array  			<= layer_3_result; 
			layer_4_reg_array  			<= layer_4_result;  
			layer_5_reg		   			<= layer_5_result_DEBUG;  
			layer_6_reg		   			<= layer_6_result_DEBUG;  
			kernel_layer_1_reg_array 	<= kernel_layer_1_result; 
			kernel_layer_2_reg_array 	<= kernel_layer_2_result; 
			kernel_layer_3_reg 			<= kernel_layer_3_result; 
			kernel_sum_reg 				<= kernel_sum_result; 
			layer_6_multiplicands 		<= layer_6_multiplicands((((g_num_adder_layers-1)*g_adder_delay)+(g_num_adder_layers-1))-2 downto 0) & i_products_array(g_dsps_used-1);  
		
		end if; 
	end process; 
	
	
	shift_valid: process(i_clk, i_reset_n) is 
	begin 
		if(i_reset_n = '0') then 
			delay_shift_register <= (others =>'0');	
			--kernel_delay_shift_register <= (others => '0'); 
			kernal_addend_shift_register <= (others => (others => '0')); 
			
		elsif(rising_edge(i_clk)) then 
			--delay_shift_register <=  delay_shift_register(((g_num_adder_layers*g_adder_delay)+g_num_adder_layers)-2 downto 0) & shift_in; --and_reduce(i_products_array_valid(to_integer(unsigned(i_ch_al_filt))-1 DOWNTO 0)); 
			delay_shift_register <=  delay_shift_register(((g_num_adder_layers*g_adder_delay)+g_num_adder_layers)-2 downto 0) & and_reduce(i_products_array_valid); 
			
			--delay_shift_register <=  delay_shift_register(((g_num_adder_layers*g_adder_delay)+g_num_adder_layers)-2 downto 0) & and_reduce(final_mask); 
		
			kernal_addend_shift_register <= kernal_addend_shift_register(9 downto 0) & kernel_values(10); 
		end if; 

	end process; 
	
	
	
	state_transitions:process(i_clk,i_reset_n)is 
	begin 
		if(i_reset_n = '0') then
			current_state <= IDLE; 
		elsif(rising_edge(i_clk))then
			current_state <= next_state; 
		end if; 
	end process; 

	
	
	next_state_comb : process(current_state, shift_in, i_ch_al_filt, mask,final_mask, i_products_array_valid,i_channels_allowed,i_filter_size,que_fifo_empty,i_acc_fifo_full,delay_shift_register,kernel_element_counter,column_counter,i_output_volume_size,filter_counter,i_num_filters,acc_data,acc_valid,i_acc_fifo_almost_empty) is 
	begin 						 
		
		acc_ready 		<= '0';
		que_fifo_rd_en 	<= '0'; 
		que_fifo_din 	<= (others => '0'); 
		que_fifo_wr_en 	<= '0'; 
		mask 			<= (others => '1'); 
		--final_mask 		<= (others => '0'); 
		
		--mask(to_integer(unsigned(i_channels_allowed)*unsigned(i_filter_size))-1 downto 0) <= (others => '0'); 
				
		--final_mask <= mask or i_products_array_valid; 
		
		case current_state is 
			
			when IDLE =>

				acc_ready <= '1'; 
				if(and_reduce(i_products_array_valid) = '1' and i_acc_fifo_full = '0' and i_enable = '1') then 
				--if(shift_in = '1' and i_acc_fifo_full = '0' and i_enable = '1') then 
				--if(and_reduce(final_mask) = '1' and i_acc_fifo_full = '0') then 
					next_state <= RUN; 
				else 
					next_state <= IDLE; 
				end if; 
				
			when RUN => 
				acc_ready <= '1';
				next_state <= RUN; 
				if(i_acc_fifo_full = '0') then 
					if(delay_shift_register(((g_num_adder_layers*g_adder_delay)+g_num_adder_layers)-1)= '1') then 
						if(kernel_element_counter < unsigned(i_filter_size)) then 
						--if(kernel_element_counter < 11) then 
							next_state <= RUN; 
						else 
							next_state <= RUN; 
							if(column_counter < unsigned(i_output_volume_size)) then 
								next_state <= RUN; 
							else 
								if(filter_counter < unsigned(i_num_filters)) then 
									next_state <= RUN; 
								else 
									next_state <= IDLE; 
								end if; 
							end if; 
						end if; 
					end if; 
				else 
					next_state <= QUE; 
				end if; 
				
			
			
			when QUE => 
				acc_ready <= '0'; 
				
				que_fifo_din <= acc_data; 
				que_fifo_wr_en <= acc_valid; --kernel_delay_shift_register(((4*g_adder_delay))-1);	
				
				if(i_acc_fifo_full = '1') then 
					next_state <= QUE; 
				elsif(i_acc_fifo_full = '0' and i_acc_fifo_almost_empty = '0') then 
					next_state <= QUE; 
				elsif(i_acc_fifo_full = '0' and i_acc_fifo_almost_empty = '1') then 
					next_state <= EMPTY_QUE; 
				else
					next_state <= QUE; 
				end if; 

			when EMPTY_QUE => 
				acc_ready <= '0'; 

				
				if(i_acc_fifo_full = '1') then 
					next_state <= QUE; 
					que_fifo_rd_en <= '0';
				elsif(que_fifo_empty = '1') then 
					next_state <= RUN; 
					que_fifo_rd_en <= '0';
				elsif(que_fifo_empty = '0') then 
					next_state <= EMPTY_QUE; 
					que_fifo_rd_en <= '1';
				end if; 
				

			when others => 
				next_state <= IDLE;   
		end case; 
		
	end process;  
	
	sequential_logic : process(i_clk, i_reset_n) is 
	begin 
		if(i_reset_n = '0') then

			kernel_element_counter  	<= (others => '0'); 
			--kernel_reg				<= (others => '0'); 
			column_counter				<= (others => '0'); 
			filter_counter				<= (others => '0'); 
			kernel_values 				<= (others => (others => '0')); 
			kernel_delay_shift_register <= (others => '0'); 
			kernel_flag 				<= '0'; 
			que_acc_data 				<= (others => '0'); 
			que_acc_valid 				<= '0'; 
			--acc_valid <= '0'; 
			channels_allowed_counter	<= (others => '0'); 
			filter_size_counter			<= (others => '0'); 
			shift_in <= '0'; 
			shift_in_temp <= '0'; 
			channels_filt_counter		<= (others => '0'); 
		elsif(rising_edge(i_clk))then 

			kernel_element_counter  	<= kernel_element_counter; 
			--kernel_reg				<= kernel_reg; 
			column_counter				<= column_counter; 
			filter_counter				<= filter_counter; 
			kernel_values 				<= kernel_values; 
			kernel_delay_shift_register <= kernel_delay_shift_register; 
			kernel_flag 				<= kernel_flag; 
			que_acc_data 				<= que_acc_data; 
			que_acc_valid 				<= que_acc_valid; 
			--acc_valid <= acc_valid; 
			channels_allowed_counter	<= channels_allowed_counter; 
			filter_size_counter			<= filter_size_counter; 
			
			

			
			
			case current_state is 
				when IDLE => 
					acc_complete <= '0'; 
					kernel_element_counter  <= (others => '0'); 
					--kernel_reg				<= (others => '0'); 
					column_counter			<= (others => '0'); 
					filter_counter			<= (others => '0'); 
					kernel_values 			<= (others => (others => '0')); 
					kernel_delay_shift_register <= (others => '0'); 
					--shift_in <=and_reduce(i_products_array_valid(to_integer(unsigned(i_ch_al_filt))-1 DOWNTO 0)); 
					
					
					-- if(channels_filt_counter = 0) then 
						-- channels_filt_counter <= channels_filt_counter + 1; 
						-- shift_in_temp <= i_products_array_valid(0); 
					-- elsif(channels_filt_counter < unsigned(i_ch_al_filt) and channels_filt_counter > 0) then 
						-- channels_filt_counter <= channels_filt_counter + 1; 
						-- shift_in_temp <= i_products_array_valid(to_integer(channels_filt_counter)) and shift_in_temp; 
					-- else 
						-- channels_filt_counter <= channels_filt_counter; 
						-- shift_in <= shift_in_temp; 
					-- end if;
					
					if(channels_allowed_counter < unsigned(i_channels_allowed)) then 
						channels_allowed_counter <= channels_allowed_counter + 1; 
					else 
						channels_allowed_counter <= channels_allowed_counter; 
					end if; 
					
					
					if(filter_size_counter < unsigned(i_filter_size)) then 
						filter_size_counter <= filter_size_counter + 1; 
					else 
						filter_size_counter <= filter_size_counter; 
					end if; 
					
				when RUN => 
				
					--acc_valid <= kernel_delay_shift_register(((4*g_adder_delay))-1); 
				
					if(delay_shift_register(((g_num_adder_layers*g_adder_delay)+g_num_adder_layers)-1)= '1') then 
						if(kernel_element_counter < unsigned(i_filter_size)) then 
						--if(kernel_element_counter < 11) then 
							kernel_element_counter <= kernel_element_counter + 1; 
							--kernel_reg <= kernel_sum_result; 
							kernel_values(to_integer(kernel_element_counter)) <= layer_6_reg; 
							
						else 
							kernel_element_counter <= (others => '0'); 
							--kernel_reg <= (others => '0'); 
							kernel_values <= kernel_values; 
							--kernel_delay_shift_register <=  kernel_delay_shift_register(((4*g_adder_delay))-2 downto 0) & '1'; 
							
							if(column_counter < unsigned(i_output_volume_size)) then 
								column_counter <= column_counter + 1; 
							else 
								column_counter <= (others => '0'); 
								
								if(filter_counter < unsigned(i_num_filters)) then 
									filter_counter <= filter_counter + 1; 
								else 
									filter_counter <= (others => '0'); 
									acc_complete <= '1'; 
								end if; 
								
							end if; 
						end if; 
					end if; 
					
					
					if(kernel_element_counter < unsigned(i_filter_size) or kernel_flag = '1') then 
					--if(kernel_element_counter < 11 or kernel_flag = '1') then 
						kernel_delay_shift_register <=  kernel_delay_shift_register(((4*g_adder_delay)+3)-2 downto 0) & '0'; 
						kernel_flag <= '0'; 
					else 
						kernel_delay_shift_register <=  kernel_delay_shift_register(((4*g_adder_delay)+3)-2 downto 0) & '1'; 
						kernel_flag <= '1';
						kernel_element_counter <= (others => '0'); 						
						
					end if; 
					
					
				when QUE => 
				
				     
					if(delay_shift_register(((g_num_adder_layers*g_adder_delay)+g_num_adder_layers)-1)= '1') then 
						if(kernel_element_counter < unsigned(i_filter_size)) then 
						--if(kernel_element_counter < 11) then 
							kernel_element_counter <= kernel_element_counter + 1; 
							--kernel_reg <= kernel_sum_result; 
							kernel_values(to_integer(kernel_element_counter)) <= layer_6_reg; 
							
						else 
							kernel_element_counter <= (others => '0'); 
							--kernel_reg <= (others => '0'); 
							kernel_values <= kernel_values; 
							--kernel_delay_shift_register <=  kernel_delay_shift_register(((4*g_adder_delay))-2 downto 0) & '1'; 
							
							if(column_counter < unsigned(i_output_volume_size)) then 
								column_counter <= column_counter + 1; 
							else 
								column_counter <= (others => '0'); 
								
								if(filter_counter < unsigned(i_num_filters)) then 
									filter_counter <= filter_counter + 1; 
								else 
									filter_counter <= (others => '0'); 
									acc_complete <= '1'; 
								end if; 
								
							end if; 
						end if; 
					end if; 
					
					
					if(kernel_element_counter < unsigned(i_filter_size) or kernel_flag = '1') then 
					--if(kernel_element_counter < 11 or kernel_flag = '1') then 
						kernel_delay_shift_register <=  kernel_delay_shift_register(((4*g_adder_delay)+3)-2 downto 0) & '0'; 
						kernel_flag <= '0'; 
					else 
						kernel_delay_shift_register <=  kernel_delay_shift_register(((4*g_adder_delay)+3)-2 downto 0) & '1'; 
						kernel_flag <= '1';
						kernel_element_counter <= (others => '0'); 						
						
					end if; 
				
				when EMPTY_QUE => 

					if(i_acc_fifo_full = '1') then 
						que_acc_data <= (others => '0'); 
						que_acc_valid <= '0'; 
						--acc_valid <= '0'; 
					elsif(que_fifo_empty = '1') then 
						que_acc_data <= (others => '0'); 
						que_acc_valid <= '0'; 
						--acc_valid <= '0'; 
					elsif(que_fifo_empty = '0') then 
						que_acc_data <= que_fifo_dout; 
						que_acc_valid <= '1'; 
						--acc_valid <= '1'; 
					end if; 
					

				when others => 
					null;

					
			end case; 

		end if; 

	end process; 
	
	
	
	

end arch;
