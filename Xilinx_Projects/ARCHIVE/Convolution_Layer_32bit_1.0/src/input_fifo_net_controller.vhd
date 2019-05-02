-------------------------------------------------------------------------------
--
-- Title       : input_fifo_net_controller
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\input_fifo_net_controller.vhd
-- Generated   : Tue Aug 15 22:46:45 2017
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
--{entity {input_fifo_net_controller} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;	
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

--library Convolution_Layer; 
--use Convolution_Layer.types_pkg.all;

library xil_defaultlib; 
use xil_defaultlib.types_pkg.all;


entity input_fifo_net_controller is	   
	generic(
	g_weight_width 					: integer := 32; 
	g_data_width 					: integer := 32; 
	g_dsps_used						: integer := 200;
	g_num_11_filters				: integer := 18;
    g_num_5_filters 				: integer := 40; 
	g_num_7_filters					: integer := 28; 
	g_num_3_filters					: integer := 66
	); 
	port(
	i_clk 							: in std_logic; 
	i_reset_n 						: in std_logic; 
	i_enable						: in std_logic;	 
	i_start							: in std_logic; 
	
	--FROM INPUT BUFFER
    i_inbuff_valid					: in std_logic; 
	i_inbuff_dout					: in std_logic_vector(g_data_width-1 downto 0);  
	o_inbuff_rd_en					: out std_logic; 
	i_inbuff_empty					: in std_logic; 
	i_inbuff_almost_empty			: in std_logic; 

	--FROM AXI INTERFACE
	i_input_volume_size				: in std_logic_vector(7 downto 0); 
	i_input_volume_channels			: in std_logic_vector(11 downto 0); 
	i_weight_filter_size			: in std_logic_vector(3 downto 0); 
	i_weight_filter_channels		: in std_logic_vector(15 downto 0); 
	i_number_of_filters				: in std_logic_vector(15 downto 0);
	--i_weight_filter_bytes			: in std_logic_vector(31 downto 0); 
	i_stride						: in std_logic_vector(3 downto 0); 
	i_pad					    	: in std_logic_vector(3 downto 0); 	
	
	
	--FROM LOGIC 
	i_get_volume_row				: in std_logic_vector(g_dsps_used-1 downto 0);
	i_get_weight_row				: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_filter_kernal_loaded			: in std_logic_vector(g_dsps_used-1 downto 0);	
	i_loaded_rows_processed			: in std_logic_vector(g_dsps_used-1 downto 0);
	
	i_volume_fifo_full				: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_volume_fifo_almost_full		: in std_logic_vector(g_dsps_used-1 downto 0); 
	
	i_weight_fifo_full				: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_weight_fifo_almost_full		: in std_logic_vector(g_dsps_used-1 downto 0); 
	
	i_data_return 					: in array_type_varx32bit(g_dsps_used-1 downto 0); 
	i_data_return_wr_en				: in std_logic_vector(g_dsps_used-1 downto 0); 
	
	i_filter_data_return			: in array_type_varx32bit(g_dsps_used-1 downto 0); 
	i_filter_data_return_wr_en		: in std_logic_vector(g_dsps_used-1 downto 0); 
	
	i_snake_fill_complete			: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_empty_data_complete			: in std_logic_vector(g_dsps_used-1 downto 0); 
	
	i_affine_select					: in std_logic; 
	i_channels_in_set				: in std_logic_vector(7 downto 0); 
	i_filters_in_set				: in std_logic_vector(15 downto 0);
	i_weight_router_ready			: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_volume_router_ready			: in std_logic_vector(g_dsps_used-1 downto 0); 
	
	i_accumulator_complete			: in std_logic; 
	i_volume_complete				: in std_logic; 
	i_iteration_complete			: in std_logic; 
	
	--TO LOGIC
	o_volume_data					: out array_type_varx32bit(g_dsps_used-1 downto 0); 
	o_weight_data					: out array_type_varx32bit(g_dsps_used-1 downto 0); 
	o_volume_new_data_en			: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_stop_stack_en					: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_volume_prev_data_en			: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_volume_recycled_data_en 		: out std_logic_vector(g_dsps_used-1 downto 0); 
	
	o_volume_fifo_wr_en				: out std_logic_vector(g_dsps_used-1 downto 0); 	
	o_weight_fifo_wr_en				: out std_logic_vector(g_dsps_used-1 downto 0); 
	
	o_convolution_en				: out std_logic; 
	o_affine_en						: out std_logic; 
	o_layer_ready					: out std_logic; 
	
	o_weights_new_data_en			: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_weights_recycled_data_en		: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_weights_prev_data_wr_en		: out std_logic_vector(g_dsps_used-1 downto 0);  
	o_weights_prev_data_en	   		: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_all_channels_processed		: out std_logic; 
	
	o_recycled_data 				: out array_type_varx32bit(g_dsps_used-1 downto 0); 
	o_recycled_data_wr_en			: out std_logic_vector(g_dsps_used-1 downto 0); 
	
	o_recycled_filter_data 		    : out array_type_varx32bit(g_dsps_used-1 downto 0); 
	o_recycled_filter_data_wr_en	: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_prev_data						: out array_type_varx32bit(g_dsps_used-1 downto 0); 
	o_prev_data_wr_en				: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_volume_empty_data_en 			: out std_logic_vector(g_dsps_used-1 downto 0); 
	
	o_padded_volume_size			: out std_logic_vector(7 downto 0); 
	o_num_iterations 				: out std_logic_vector(7 downto 0); 
	o_calc_params					: out std_logic; 
	
	o_operation_complete			: out std_logic; 
	o_volume_processed				: out std_logic; 
	o_iteration_complete			: out std_logic; 
	o_weights_loaded                : out std_logic; 
	o_more_dsps                     : out std_logic; 
	o_channels_allowed              : out std_logic_vector(7 downto 0);
	o_dsps_used						: out std_logic_vector(7 downto 0); 
	o_iterations_required			: out std_logic_vector(7 downto 0); 
	o_row_complete					: out std_logic; 
	
	o_fifo_clear					: out std_logic; 
	o_clear_weights					: out std_logic; 
	o_filter_iterations_required    : out std_logic_vector(15 downto 0); 
	o_filters_in_set				: out std_logic_vector(15 downto 0); 
	o_accumulator_en				: out std_logic; 
	o_disable_channel_n				: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_fsm_state						: out std_logic_vector(4 downto 0)

	); 	
end input_fifo_net_controller;


architecture arch of input_fifo_net_controller is	  


type dsps_11x11 is array (g_num_11_filters-1 downto 0) of integer range 0 to 219;
--constant base_volume_fifo_11x11 : dsps_11x11 := (0,11,22,33,44,55,66,77,88,99,110,121,132,143,154,165,176,187);	  

type state_type is 
	(	
		IDLE, 
		WAIT_ONE_PAD, 
		WAIT_ONE_CONV, 
		IS_NET_READY, 
		AFFINE_CALC_PARAMETERS,
		CALC_PARAMETERS, 
		FETCH_AND_LOAD_WEIGHTS, 
		PAD_VOLUME_TOP, 
		PAD_VOLUME_LEFT, 
		FETCH_VOLUME, 
		PAD_VOLUME_RIGHT, 
		PAD_VOLUME_BOTTOM, 
		CONVOLUTION,
		PVL_SINGLE,
		FV_SINGLE, 
		PVR_SINGLE, 
		SNAKE_FILL,
		DWELL,
		PAD_SINGLE, 
		EMPTY_TOP_ROW, 
		WAIT_ONE_SINGLE, 
		WAIT_ONE_PRE_PVR_SINGLE, 
		CLEAR_FIFOS, 
		AFFINE_FETCH_VOLUME,
		WAIT_ONE_AFFINE_VOL, 
		AFFINE_GET_WEIGHT_SET, 
		WAIT_ONE_AFFINE_WEIGHT, 
		FULLY_CONNECTED, 
		EMPTY_WEIGHTS, 
		EMPTY_VOL_WEIGHTS
	); 
signal current_state 				: state_type; 
signal next_state 					: state_type;  

signal inbuff_rd_en 				: std_logic;
--type array_type_varx32bit is array(integer range <>) of std_logic_vector(15 downto 0); 
signal volume_data 					: array_type_varx32bit(g_dsps_used-1 downto 0); 
signal weight_data 					: array_type_varx32bit(g_dsps_used-1 downto 0); 

signal input_volume_row_counter 	: unsigned(15 downto 0); 
signal volume_channel_counter		: unsigned(15 downto 0); 
signal weight_channel_counter		: unsigned(15 downto 0); 
signal more_dsps_needed				: std_logic; 
signal channels_allowed 			: unsigned(15 downto 0);
signal filter_row_counter 			: unsigned(15 downto 0);
signal filter_column_counter 		: unsigned(15 downto 0);
signal filter_counter				: unsigned(15 downto 0);
		 
signal volume_row_counter 			: unsigned(15 downto 0);
signal volume_column_counter 		: unsigned(15 downto 0);
signal volume_index_counter				: unsigned(15 downto 0); 
signal weight_index_counter 		: unsigned(15 downto 0); 
signal volume_fifo_wr_en			: std_logic_vector(g_dsps_used-1 downto 0);
signal padded_volume_row_size 		: unsigned(15 downto 0);
signal padded_volume_column_size 	: unsigned(15 downto 0);

signal volume_rows_processed 		: unsigned(15 downto 0); 
signal volume_new_data_en			: std_logic_vector(g_dsps_used-1 downto 0);	 
signal volume_prev_data_en			: std_logic_vector(g_dsps_used-1 downto 0);  
signal volume_recycled_data_en		: std_logic_vector(g_dsps_used-1 downto 0);
signal weights_new_data_en			: std_logic_vector(g_dsps_used-1 downto 0);
signal weights_recycled_data_en		: std_logic_vector(g_dsps_used-1 downto 0);
signal weight_fifo_wr_en			: std_logic_vector(g_dsps_used-1 downto 0); 
signal stop_stack_en				: std_logic_vector(g_dsps_used-1 downto 0); 
signal element_counter				: unsigned(15 downto 0); 
signal pad_counter					: unsigned(3 downto 0);

signal channels_processed			: unsigned(15 downto 0); 
signal convolution_en				: std_logic; 
signal pad_8bit						: std_logic_vector(7 downto 0);	
signal pad_10bit					: std_logic_vector(9 downto 0); 
signal pad_16bit					: std_logic_vector(15 downto 0); 
signal input_volume_size_10bit 		: std_logic_vector(9 downto 0);   

signal weights_prev_data_en	   		: std_logic_vector(g_dsps_used-1 downto 0); 
signal weights_prev_data_wr_en	   	: std_logic_vector(g_dsps_used-1 downto 0);    

signal all_channels_processed		: std_logic; 

signal prev_data_wr_en 				: std_logic_vector(g_dsps_used-1 downto 0);  
signal prev_data 					: array_type_varx32bit(g_dsps_used-1 downto 0);  
signal recycled_data_wr_en 			: std_logic_vector(g_dsps_used-1 downto 0);  
signal recycled_data 				: array_type_varx32bit(g_dsps_used-1 downto 0); 

signal recycled_filter_data_wr_en 	: std_logic_vector(g_dsps_used-1 downto 0); 
signal recycled_filter_data 		: array_type_varx32bit(g_dsps_used-1 downto 0); 

signal volume_empty_data_en		    : std_logic_vector(g_dsps_used-1 downto 0); 	

signal volume_row					: unsigned(15 downto 0);	  

signal iteration_calc				: unsigned(15 downto 0); 
signal iterations_required			: unsigned(15 downto 0);   
signal iteration_counter			: unsigned(15 downto 0);
signal filter_iteration_counter     : unsigned(15 downto 0); 
signal channel_iteration_counter  	: unsigned(15 downto 0);  
signal stride_counter				: unsigned(3 downto 0);  
signal pad_row_counter	  			: unsigned(3 downto 0); 

signal operation_complete			: std_logic; 
signal volume_processed				: std_logic; 
signal iteration_complete           : std_logic; 
signal filter_iteration_complete	: std_logic; 
signal channel_iteration_complete	: std_logic; 
signal weights_loaded               : std_logic; 

signal row_complete 				: std_logic; 
signal fifo_clear_counter 			: unsigned(7 downto 0); 
signal fifo_clear					: std_logic; 

signal affine_en 					: std_logic; 

signal channel_iteration_calc		: unsigned(15 downto 0); 
signal channel_iterations_required	: unsigned(15 downto 0); 
			
signal filter_iteration_calc		: unsigned(15 downto 0); 
signal filter_iterations_required	: unsigned(15 downto 0); 
signal clear_weights				: std_logic; 

signal layer_ready					: std_logic; 

signal channel_mask					: std_logic_vector(g_dsps_used-1 downto 0); 
signal loaded_rows_processed_mask   : std_logic_vector(g_dsps_used-1 downto 0); 
signal empty_data_complete_mask		: std_logic_vector(g_dsps_used-1 downto 0); 
signal volume_router_ready_mask		: std_logic_vector(g_dsps_used-1 downto 0); 
signal weight_router_ready_mask 	: std_logic_vector(g_dsps_used-1 downto 0); 

signal weight_filter_size 			: std_logic_vector(15 downto 0); 
signal input_volume_size			: std_logic_vector(15 downto 0);  
signal input_volume_channels		: std_logic_vector(15 downto 0); 
signal weight_filter_channels		: std_logic_vector(15 downto 0); 
signal number_of_filters			: std_logic_vector(15 downto 0);
signal channels_in_set				: std_logic_vector(7 downto 0); 
signal accumulator_en				: std_logic; 
signal stride_index 				: unsigned(15 downto 0); 

signal calc_params					: std_logic; 

signal empty_data_complete			: std_logic_vector(g_dsps_used-1 downto 0); 
signal disable_channel_n				: std_logic_vector(g_dsps_used-1 downto 0); 
signal fsm_state					: std_logic_vector(4 downto 0); 


begin


	--Controller Order of Operations   
	--0. Wait for start signal to go high before starting operation 																(IDLE) 
	--1. Wait until all "get" signals are high which indicates that the previous convolution has been completed 					(IS_NET_READY)
	--2. Once all "get" signals are high, then determine the number of channels required to process the entire volume  				(CALC_PARAMETERS)
			-- Also determine the number of rows necessary to complete the entire volume. 
	--3. Determine if the # of channels are greater than 200 dsps(1 dsps/channel), if so then determine the number of repeats	 	(CALC_PARAMETERS)
	--4. Begin fetching the weight filter data stack for that layer. Load weight data to the appropriate weight mux   				(FETCH_WEIGHTS)
	--5. Once all the weight filters have been loaded, begin fetching the volume data for that layer. 								(FETCH_VOLUME)
	--6. Once all weights and volume data for that channel set are loaded indicate a busy high in order to prevent any further data (CONVOLUTION)
		--transfer from the input buffer 
	--7. Wait for Convolution to complete on that channel set on those rows of volume data. 	   									(CONVOLUTION)
	--8. Once convolution has completed for the current rows, begin fetching volume data for the next rows in the volume.  			(FETCH_VOLUME)
	--9. Wait for Convolution to complete for that channel set and on the new rows of volume data. 								  	(CONVOLUTION)
	--10 Once convolution has completed for all rows in the volume for that channel set, repeat steps 1-9 for any remaining channels(FETCH_WEIGHTS)
		--in the input volume. 																				   						(FETCH_VOLUME)
	--11. Once the convolution for the entire input volume has been complete indicate convolution done. 							(CONVOLUTION) 

	o_inbuff_rd_en 					<= inbuff_rd_en;  
	o_volume_data 					<= volume_data; 
	o_weight_data 					<= weight_data; 
	o_volume_new_data_en			<= volume_new_data_en;
	o_volume_prev_data_en			<= volume_prev_data_en; 
	o_volume_recycled_data_en		<= volume_recycled_data_en; 
	o_weights_new_data_en			<= weights_new_data_en; 
	o_weights_recycled_data_en		<= weights_recycled_data_en; 
	
	o_stop_stack_en					<= stop_stack_en; 
	
	o_volume_fifo_wr_en			 	<= volume_fifo_wr_en; 
	o_convolution_en 				<= convolution_en; 	   
	
	o_weight_fifo_wr_en 			<= weight_fifo_wr_en; 	
	
	o_weights_prev_data_en 			<= weights_prev_data_en; 
	o_weights_prev_data_wr_en 		<= weights_prev_data_wr_en; 

	o_prev_data_wr_en 				<= prev_data_wr_en; 
	o_prev_data 					<= prev_data; 
			
	o_recycled_data_wr_en 			<= recycled_data_wr_en; 
	o_recycled_data 				<= recycled_data; 
	
	o_recycled_filter_data_wr_en 	<= recycled_filter_data_wr_en; 
	o_recycled_filter_data 			<= recycled_filter_data; 
	
	o_volume_empty_data_en					<= volume_empty_data_en; 
	
	pad_8bit 						<= "0000" & i_pad;    
	pad_10bit 						<= "000000" & i_pad; 
	pad_16bit						<= "000000000000" & i_pad; 
	input_volume_size_10bit 		<= "00" & i_input_volume_size; 
	
	o_all_channels_processed 		<= all_channels_processed; 	  
	o_padded_volume_size			<= std_logic_vector(padded_volume_column_size(7 downto 0));   
	o_num_iterations				<= std_logic_vector(iterations_required(7 downto 0)); 
	
	o_operation_complete			<= operation_complete; 
	o_volume_processed				<= volume_processed; 
	o_weights_loaded                <= weights_loaded; 
	o_iteration_complete            <= iteration_complete; 
	o_more_dsps                     <= more_dsps_needed; 
	o_channels_allowed              <= std_logic_vector(channels_allowed(7 downto 0)); 
	o_dsps_used                     <= std_logic_vector(to_unsigned(g_dsps_used,8)); 
	
	o_iterations_required 			<= std_logic_vector(iterations_required(7 downto 0)); 
	o_row_complete 					<= row_complete;

	o_fifo_clear					<= fifo_clear; 
	o_affine_en 					<= affine_en; 
	o_clear_weights 				<= clear_weights; 
	
	o_filter_iterations_required    <= std_logic_vector(filter_iterations_required); 
	o_filters_in_set			    <= i_filters_in_set; 
	
	o_layer_ready					<= layer_ready; 
	o_accumulator_en				<= accumulator_en;
	o_calc_params					<= calc_params; 
	
	o_disable_channel_n				<= disable_channel_n; 

	o_fsm_state					<= fsm_state;
						
	
	state_transitions: process(i_clk,i_reset_n) is 
	begin  
		if(i_reset_n = '0') then 
			current_state <= IDLE; 
		elsif(rising_edge(i_clk)) then 
			current_state <= next_state; 
		end if; 
	end process; 	
	
	
	
 	next_state_combinational: process(current_state, i_volume_complete, i_iteration_complete, volume_index_counter, weight_index_counter, weight_filter_channels,number_of_filters,input_volume_channels,input_volume_size,weight_filter_size,i_start, i_affine_select,i_enable,i_get_volume_row, i_get_weight_row, channel_iteration_calc,iteration_calc, filter_iteration_calc,i_input_volume_channels,i_inbuff_valid, i_inbuff_empty, filter_column_counter, i_weight_filter_size, filter_row_counter, more_dsps_needed, weight_channel_counter, i_weight_filter_channels, filter_counter, i_number_of_filters, pad_8bit, pad_16bit, channels_allowed, i_volume_fifo_almost_full, volume_channel_counter, volume_row_counter, padded_volume_column_size,i_loaded_rows_processed, volume_rows_processed, i_input_volume_size, pad_row_counter,stride_counter, i_stride,empty_data_complete,i_empty_data_complete,channel_mask,i_volume_router_ready,i_weight_router_ready,volume_column_counter,loaded_rows_processed_mask,iteration_counter,iterations_required,i_data_return_wr_en,fifo_clear_counter,i_filters_in_set,filter_iteration_counter,filter_iterations_required,channel_iteration_counter,channel_iterations_required,weight_router_ready_mask,volume_router_ready_mask,empty_data_complete_mask) is 
	--next_state_combinational: process(all) is
	begin  
		inbuff_rd_en <= '0';   
		volume_new_data_en 			<= (others => '0'); 
		volume_prev_data_en 		<= (others => '0'); 
		volume_recycled_data_en 	<= (others => '0'); 
		weights_recycled_data_en 	<= (others => '0'); 	
		weights_new_data_en			<= (others => '0');  
		weights_prev_data_en 		<= (others => '0'); 
	    weights_prev_data_wr_en 	<= (others => '0');   
		stop_stack_en 				<= (others => '0'); 	
		convolution_en 				<= '0'; 
		affine_en 					<= '0'; 
		all_channels_processed 		<= '0'; 
		operation_complete			<= '0'; 
		volume_processed			<= '0'; 
		volume_empty_data_en		<= (others => '0'); 
		row_complete 				<= '0'; 
		iteration_complete 			<= '0'; 
		filter_iteration_complete	<= '0'; 
		channel_iteration_complete	<= '0'; 	
		fifo_clear 					<= '0'; 
		clear_weights 				<= '0'; 
		layer_ready					<= '0'; 
		calc_params 				<= '0'; 
		
		channel_mask <= (others => '1'); 
		channel_mask(to_integer(channels_allowed)-1 downto 0) <= (others => '0'); 

		loaded_rows_processed_mask <= channel_mask or i_loaded_rows_processed; 
		empty_data_complete_mask <= channel_mask or i_empty_data_complete; 
		volume_router_ready_mask <= channel_mask or i_volume_router_ready; 
		weight_router_ready_mask <= channel_mask or i_weight_router_ready; 
		
		fsm_state					<= "00000"; 
		
		case current_state is 
			when IDLE => 
				fsm_state	<= "00000";
				volume_new_data_en <= (others => '1');  
				weights_new_data_en <= (others => '1');
				stop_stack_en 				<= (others => '1'); 
				
				if(i_start = '1' and i_enable = '1' and i_affine_select = '0') then 
					next_state <= IS_NET_READY;
				elsif(i_start = '1' and i_enable = '1' and i_affine_select = '1') then 
					next_state <= AFFINE_CALC_PARAMETERS; 
				else 
					next_state <= IDLE; 
				end if; 

			when IS_NET_READY =>
				fsm_state	<= "00001";			
				volume_new_data_en <= (others => '1'); 
				weights_new_data_en <= (others => '1'); 
				stop_stack_en 				<= (others => '1'); 
				if(and_reduce(i_get_volume_row) = '1' and and_reduce(i_get_weight_row) = '1') then 
					next_state <= CALC_PARAMETERS; 
				else
					next_state <= IS_NET_READY; 
				end if; 
			
			when CALC_PARAMETERS => 
				fsm_state	<= "00010";
				volume_new_data_en 	<= (others => '1'); 
				weights_new_data_en <= (others => '1');  
				stop_stack_en 		<= (others => '1'); 
				calc_params 			<= '1'; 
				
				if(iteration_calc < unsigned(input_volume_channels)) then 
					next_state <= CALC_PARAMETERS;
				else 	  
					next_state <= FETCH_AND_LOAD_WEIGHTS;
				end if; 
				
			when AFFINE_CALC_PARAMETERS => 
				fsm_state	<= "00011";
				volume_new_data_en 	<= (others => '1'); 
				weights_new_data_en <= (others => '1');  
				stop_stack_en 		<= (others => '1'); 
				calc_params 		<= '1'; 
				
				if(channel_iteration_calc < unsigned(input_volume_channels) or filter_iteration_calc < unsigned(number_of_filters)) then 
					next_state <= AFFINE_CALC_PARAMETERS; 
				else 
					next_state <= AFFINE_FETCH_VOLUME; 
				end if; 
				
				
			when FETCH_AND_LOAD_WEIGHTS => 
				fsm_state	<= "00100";
				layer_ready <= '1'; 
				volume_new_data_en <= (others => '1'); 
				weights_new_data_en <= (others => '1');  
				stop_stack_en 				<= (others => '1'); 		
				next_state <= FETCH_AND_LOAD_WEIGHTS; 
				inbuff_rd_en <= '0'; 
				
				if(i_inbuff_valid = '1' and i_inbuff_empty = '0') then 	
					
					if(filter_column_counter = unsigned(weight_filter_size)-1 and filter_row_counter = unsigned(weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and (weight_channel_counter < unsigned(weight_filter_channels)-1 or filter_counter < unsigned(number_of_filters)-1)) then  
							inbuff_rd_en <= '1'; 
							next_state <= FETCH_AND_LOAD_WEIGHTS; 
						elsif(more_dsps_needed = '0' and weight_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
							inbuff_rd_en <= '0'; 
							if(unsigned(pad_8bit) = 0) then 
								next_state <= FETCH_VOLUME; 
								inbuff_rd_en <= '1'; 
							else 
								next_state <= PAD_VOLUME_TOP; 
							end if; 
						elsif(more_dsps_needed = '1' and (weight_channel_counter < channels_allowed-1 or filter_counter < unsigned(number_of_filters)-1)) then 
							inbuff_rd_en <= '1'; 
							next_state <= FETCH_AND_LOAD_WEIGHTS; 
						elsif(more_dsps_needed = '1' and weight_channel_counter >= channels_allowed-1) then 
							inbuff_rd_en <= '0'; 
							if(unsigned(pad_8bit) = 0) then 
								next_state <= FETCH_VOLUME; 
								inbuff_rd_en <= '1'; 
							else 
								next_state <= PAD_VOLUME_TOP; 
							end if; 
						else
							inbuff_rd_en <= '0';	 
							next_state <= FETCH_AND_LOAD_WEIGHTS; 
						end if;

						
					else 
						inbuff_rd_en <= '1';   
						next_state <= FETCH_AND_LOAD_WEIGHTS; 
					end if;		 
					
					
				end if; 
					
			
			when PAD_VOLUME_TOP => 
				fsm_state	<= "00101";
				next_state 					<= PAD_VOLUME_TOP;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en 			<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '1');  
				 
				
				if(i_inbuff_valid = '1' and i_inbuff_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 
						 
					
					if(volume_column_counter = unsigned(padded_volume_column_size)-1 and volume_row_counter >= unsigned(pad_16bit)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
							next_state <= PAD_VOLUME_TOP; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
							next_state <= PAD_VOLUME_LEFT; 
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
							next_state <= PAD_VOLUME_TOP; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
							next_state <= PAD_VOLUME_LEFT; 
						else
							next_state <= PAD_VOLUME_TOP; 
						end if;
					else 
						next_state <= PAD_VOLUME_TOP; 
					end if;		 
					
					
				end if; 
				
				
			when PAD_VOLUME_LEFT => 	
				fsm_state	<= "00110";
				next_state 					<= PAD_VOLUME_LEFT;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en 			<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '1');  
				 
				
				if(i_inbuff_valid = '1' and i_inbuff_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 
					 
					
					if(volume_column_counter = unsigned(pad_16bit)-1 and volume_row_counter = unsigned(weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
							next_state <= PAD_VOLUME_LEFT; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
							inbuff_rd_en <= '1'; 
							next_state <= FETCH_VOLUME; 
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
							next_state <= PAD_VOLUME_LEFT; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
							inbuff_rd_en <= '1'; 
							next_state <= FETCH_VOLUME; 
						else 
							next_state <= PAD_VOLUME_LEFT; 
						end if;				
					else  
						next_state <= PAD_VOLUME_LEFT; 
					end if;		 
					
					
				end if; 
			
			
			
			when FETCH_VOLUME => 
				fsm_state	<= "00111";
				next_state 					<= FETCH_VOLUME;  
				inbuff_rd_en 				<= '0'; 
				
				volume_new_data_en 			<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '1');  
				 
				
				if(i_inbuff_valid = '1' and i_inbuff_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 
					 
					
					if(volume_column_counter = unsigned(i_input_volume_size)-1 and volume_row_counter = unsigned(weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
							inbuff_rd_en <= '1'; 
							next_state <= FETCH_VOLUME; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
							inbuff_rd_en <= '0'; 
							if(unsigned(pad_8bit) = 0) then 
								next_state <= WAIT_ONE_PAD; 
							else 
								next_state <= PAD_VOLUME_RIGHT; 
							end if; 
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
							inbuff_rd_en <= '1'; 
							next_state <= FETCH_VOLUME; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
							inbuff_rd_en <= '0'; 
							if(unsigned(pad_8bit) = 0) then 
								next_state <= WAIT_ONE_PAD; 
							else 
								next_state <= PAD_VOLUME_RIGHT; 
							end if; 
						else
							inbuff_rd_en <= '0';	 
							next_state <= FETCH_VOLUME; 
						end if;

						
					else 
						inbuff_rd_en <= '1';   
						next_state <= FETCH_VOLUME; 
					end if;		 
					
					
				end if; 
		
				
			when PAD_VOLUME_RIGHT => 
				fsm_state	<= "01000";
				next_state 					<= PAD_VOLUME_RIGHT;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en 			<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '1');  
				 
				
				if(i_inbuff_valid = '1' and i_inbuff_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 
					 
					
					if(volume_column_counter = unsigned(pad_16bit)-1 and volume_row_counter = unsigned(weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
							next_state <= PAD_VOLUME_RIGHT; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
							next_state <= WAIT_ONE_PAD; 
							weights_new_data_en 		<= (others => '0'); 
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
							next_state <= PAD_VOLUME_RIGHT; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
							next_state <= WAIT_ONE_PAD; 
							weights_new_data_en 		<= (others => '0'); 
						else 
							next_state <= PAD_VOLUME_RIGHT; 
						end if;
					else  
						next_state <= PAD_VOLUME_RIGHT; 
					end if;		 
					
					
				end if;  
				
			when WAIT_ONE_PAD => 
				fsm_state	<= "01001";
				next_state 					<= CONVOLUTION;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en 			<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '1');  
				
			when CONVOLUTION =>
				fsm_state	<= "01010";
				next_state <= CONVOLUTION;
				convolution_en <= '1'; 
				volume_new_data_en 			<= (others => '0');	
				volume_prev_data_en 		<= (others => '0');	
				volume_recycled_data_en 	<= (others => '1');	
				stop_stack_en 				<= (others => '1');	
				weights_new_data_en 		<= (others => '0');
				weights_recycled_data_en 	<= (others => '1'); 
				inbuff_rd_en 				<= '1'; 
			
			
				if(and_reduce(loaded_rows_processed_mask) = '1') then
					operation_complete <= '1'; 
					row_complete <= '1'; 
					if(volume_rows_processed < unsigned(input_volume_size) and unsigned(pad_8bit) = 0) then 
						next_state <= FV_SINGLE; 
					elsif(volume_rows_processed < unsigned(input_volume_size) and unsigned(pad_8bit) > 0) then 
						next_state <= PVL_SINGLE; 
					
					elsif(volume_rows_processed = unsigned(input_volume_size) and unsigned(pad_8bit) = 0) then 
						next_state <= CLEAR_FIFOS; 
						if(more_dsps_needed = '0') then 
							volume_processed <= '1';
							iteration_complete <= '0'; 
						else 
							if(iteration_counter < iterations_required) then 
								volume_processed <= '0'; 
								iteration_complete <= '1'; 
							else 
								volume_processed <= '1'; 
								iteration_complete <= '1'; 
							end if; 
						end if; 
					elsif(volume_rows_processed = unsigned(input_volume_size) and unsigned(pad_8bit) > 0) then 
						if(pad_row_counter < unsigned(pad_8bit)) then 
							next_state <= PAD_SINGLE; 
							volume_processed <= '0'; 
							iteration_complete <= '0'; 
						else 
							next_state <= CLEAR_FIFOS; 
							if(more_dsps_needed = '0') then 
								volume_processed <= '1'; 
								iteration_complete <= '0'; 
							else 
								if(iteration_counter < iterations_required) then 
									volume_processed <= '0'; 
									iteration_complete <= '1'; 
								else 
									volume_processed <= '1'; 
									iteration_complete <= '1'; 
								end if; 
							end if; 
						end if; 
					end if; 
					
				else 
					next_state <= CONVOLUTION;
					row_complete <= '0'; 
				end if;  
				
			when WAIT_ONE_CONV => 
				fsm_state	<= "01011";
				next_state 					<= WAIT_ONE_CONV;  
				convolution_en <= '1'; 
				volume_new_data_en 			<= (others => '0');	
				volume_prev_data_en 		<= (others => '0');	
				volume_recycled_data_en 	<= (others => '1');	
				stop_stack_en 				<= (others => '1');	
				weights_new_data_en 		<= (others => '0');
				weights_recycled_data_en 	<= (others => '1'); 
				
			when PVL_SINGLE =>
				fsm_state	<= "01100";
				next_state 					<= PVL_SINGLE;  
				inbuff_rd_en 				<= '0'; 
				convolution_en <= '0'; 
				
				volume_new_data_en<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0'); 
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '0');  
				 
				
				if(i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 

					if(volume_column_counter >= unsigned(pad_16bit)-1 and volume_row_counter >= unsigned(weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
							next_state <= PVL_SINGLE; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
							--inbuff_rd_en <= '1'; 
							next_state <= FV_SINGLE; 
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
							next_state <= PVL_SINGLE; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
							--inbuff_rd_en <= '1'; 
							next_state <= FV_SINGLE; 
						else
							next_state <= PVL_SINGLE; 
						end if;
					else 
						next_state <= PVL_SINGLE; 
					end if;		 
					
					
				end if; 
			
			
			when FV_SINGLE =>  
				fsm_state	<= "01101";
				next_state 					<= FV_SINGLE;  
				inbuff_rd_en 				<= '0'; 
				
				volume_new_data_en<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0'); 
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '0');  
				
				if(i_inbuff_valid = '1' and i_inbuff_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 
					
					--inbuff_rd_en <= '1';  
					
					if(volume_column_counter = unsigned(input_volume_size)-1 and volume_row_counter = unsigned(weight_filter_size)-1) then 				
						--inbuff_rd_en <= '0'; 
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
							inbuff_rd_en <= '1'; 
							next_state <= FV_SINGLE; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
							--inbuff_rd_en <= '0';
							inbuff_rd_en <= '1'; 							
							next_state <= PVR_SINGLE; 
							
							if(unsigned(pad_8bit) = 0) then 
								next_state <= WAIT_ONE_SINGLE; 
							elsif(unsigned(pad_8bit) > 0) then 
								next_state <= WAIT_ONE_PRE_PVR_SINGLE; --PVR_SINGLE; 
							end if;
							
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
							inbuff_rd_en <= '1'; 
							next_state <= FV_SINGLE; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
							--inbuff_rd_en <= '0'; 
							inbuff_rd_en <= '1'; 
							next_state <= PVR_SINGLE; 
							
							if(unsigned(pad_8bit) = 0) then 
								next_state <= WAIT_ONE_SINGLE; 
							elsif(unsigned(pad_8bit) > 0) then 
								next_state <= WAIT_ONE_PRE_PVR_SINGLE; --PVR_SINGLE; 
							end if;

						else
							inbuff_rd_en <= '0';	 
							next_state <= FV_SINGLE; 
						end if;

						
					else 
						inbuff_rd_en <= '1';   
						next_state <= FV_SINGLE; 
					end if;		 
					
				
				end if; 
				
			when WAIT_ONE_PRE_PVR_SINGLE =>
				fsm_state	<= "01110";
				inbuff_rd_en 				<= '0'; 
				
				volume_new_data_en<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0'); 
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '0');  
				
				next_state <= PVR_SINGLE; 

			
			when PVR_SINGLE =>
				fsm_state	<= "01111";
				volume_new_data_en<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0'); 
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '0');  
				next_state 					<= PVR_SINGLE; 
				
				if(i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 
					 
					
					if(volume_column_counter = unsigned(pad_16bit)-1 and volume_row_counter = unsigned(weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
							next_state <= PVR_SINGLE; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
							weights_new_data_en 		<= (others => '0'); 	
									
							if(stride_counter < unsigned(i_stride)-1) then 
								next_state <= PVL_SINGLE; 
							else 
								next_state <= WAIT_ONE_SINGLE; 
							end if; 
							
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
							next_state <= PVR_SINGLE; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
							weights_new_data_en 		<= (others => '0'); 
							
							if(stride_counter < unsigned(i_stride)-1) then 
								next_state <= PVL_SINGLE; 
							else 
								next_state <= WAIT_ONE_SINGLE; 
							end if; 
							
						else
							next_state <= PVR_SINGLE; 
						end if;

						
					else 
						next_state <= PVR_SINGLE; 
					end if;		 
					
					
				end if; 
				
			when WAIT_ONE_SINGLE => 
				fsm_state	<= "10000";
				next_state <= SNAKE_FILL; 
				volume_new_data_en<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0'); 
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '0');  
				
				inbuff_rd_en 				<= '0';
				
				
				
			when SNAKE_FILL =>
				fsm_state	<= "10001";			
				next_state 					<= SNAKE_FILL;  
				inbuff_rd_en 				<= '0'; 

				volume_new_data_en 			<= (others => '0'); 
				volume_prev_data_en(to_integer(volume_index_counter)) <= '1';  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en				<= (others => '1'); 
				stop_stack_en(to_integer(volume_index_counter+1)) <='0'; 	 
				weights_new_data_en 		<= (others => '0');  
				 
				
				if(i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0' and i_data_return_wr_en(to_integer(volume_index_counter+1))='1') then  	 

					if(volume_column_counter = unsigned(padded_volume_column_size)-1) then 
						if (volume_row_counter > 0) then 
							next_state <= SNAKE_FILL; 
						else 
							if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then    
								next_state <= SNAKE_FILL; 	
							elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then   					
								next_state <= EMPTY_TOP_ROW;
							elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
								next_state <= SNAKE_FILL; 
							elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
								next_state <= EMPTY_TOP_ROW; 
							else	 
								next_state <= SNAKE_FILL; 
							end if;	
						end if; 
					else 
						next_state <= SNAKE_FILL; 
					end if;		 
				end if; 
				
			when EMPTY_TOP_ROW => 
				fsm_state	<= "10010";
				next_state 					<= EMPTY_TOP_ROW;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en 			<= (others => '0'); 
				volume_prev_data_en			<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en				<= (others => '1'); 
				weights_new_data_en 		<= (others => '0'); 
				volume_empty_data_en		<= (others => '0'); 
				operation_complete <= '0'; 
					
				
				volume_empty_data_en(to_integer(volume_index_counter)) <= '1'; 
				
				if(more_dsps_needed = '0' and empty_data_complete(to_integer(volume_index_counter)) = '1' and volume_channel_counter < unsigned(weight_filter_channels)-1) then 
					next_state <= EMPTY_TOP_ROW; 
				elsif(more_dsps_needed = '0' and empty_data_complete(to_integer(volume_index_counter)) = '1' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 
					if(unsigned(pad_8bit)= 0 and stride_counter < unsigned(i_stride)) then
						next_state <= FV_SINGLE; 
						operation_complete <= '1'; 
					elsif(unsigned(pad_8bit)= 0 and stride_counter >= unsigned(i_stride)) then 
						next_state <= CONVOLUTION; 
						operation_complete <= '1'; 
					elsif(unsigned(pad_8bit) > 0 and stride_counter < unsigned(i_stride)) then
						next_state <= PVL_SINGLE; 
						operation_complete <= '1'; 
					elsif(unsigned(pad_8bit) > 0 and stride_counter >= unsigned(i_stride)) then 
						next_state <= CONVOLUTION; 
						operation_complete <= '1'; 
					end if; 
				elsif(more_dsps_needed = '1' and empty_data_complete(to_integer(volume_index_counter)) = '1' and volume_channel_counter < channels_allowed-1) then 
					next_state <= EMPTY_TOP_ROW; 
				elsif(more_dsps_needed = '1' and empty_data_complete(to_integer(volume_index_counter)) = '1' and volume_channel_counter >= channels_allowed-1) then 
					if(unsigned(pad_8bit)= 0 and stride_counter < unsigned(i_stride)) then
						next_state <= FV_SINGLE; 
						operation_complete <= '1'; 
					elsif(unsigned(pad_8bit)= 0 and stride_counter >= unsigned(i_stride)) then 
						next_state <= CONVOLUTION; 
						operation_complete <= '1'; 
					elsif(unsigned(pad_8bit) > 0 and stride_counter < unsigned(i_stride)) then
						next_state <= PVL_SINGLE; 
						operation_complete <= '1'; 
					elsif(unsigned(pad_8bit) > 0 and stride_counter >= unsigned(i_stride)) then 
						next_state <= CONVOLUTION; 
						operation_complete <= '1'; 
					end if;
				
				
				else 
					next_state <= EMPTY_TOP_ROW; 
					operation_complete <= '0'; 
				end if; 
					

				
			when PAD_SINGLE => 
				fsm_state	<= "10011";
				next_state 					<= PAD_SINGLE;  
				volume_new_data_en<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0'); 
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '0');  
				
				if(i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 
					 
					if(volume_column_counter = unsigned(padded_volume_column_size)-1 and volume_row_counter = unsigned(weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
							next_state <= PAD_SINGLE; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
							if(stride_counter < unsigned(i_stride)-1) then 
								next_state <= PAD_SINGLE;
							else 
								next_state <= SNAKE_FILL; 
							end if; 
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
							next_state <= PAD_SINGLE; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
							if(stride_counter < unsigned(i_stride)-1) then 
								next_state <= PAD_SINGLE;  
							else 
								next_state <= SNAKE_FILL; 
							end if; 
						else
							next_state <= PAD_SINGLE; 
						end if;
					else 
						next_state <= PAD_SINGLE; 
					end if;		 
				end if; 
			
			when CLEAR_FIFOS => 
				fsm_state	<= "10100";
				fifo_clear <= '0'; 
				volume_new_data_en <= (others => '1');  
				weights_new_data_en <= (others => '1');
				stop_stack_en 				<= (others => '1'); 
				if(fifo_clear_counter < 10 and (i_volume_complete = '0' and i_iteration_complete = '0')) then 
					next_state <= CLEAR_FIFOS; 
					fifo_clear <= '1';
				elsif(fifo_clear_counter >= 10 and (i_volume_complete = '0' and i_iteration_complete = '0')) then 
					next_state <= CLEAR_FIFOS; 
					fifo_clear <= '1';
				else 
					next_state <= IDLE; 
				end if; 
				
				
			when DWELL => 
				fsm_state	<= "10101";
				next_state <= DWELL; 
				
				
			when AFFINE_FETCH_VOLUME =>
				fsm_state	<= "10110";
				layer_ready <= '1'; 
				next_state 					<= AFFINE_FETCH_VOLUME;  
				inbuff_rd_en 				<= '0'; 
				
				volume_new_data_en 			<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '1');  
				volume_empty_data_en <= (others => '0');
				 
				
				if(i_inbuff_valid = '1' and i_inbuff_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 
					 
					if(volume_column_counter = unsigned(input_volume_size) and volume_row_counter = unsigned(weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
							--inbuff_rd_en <= '1'; 
							next_state <= AFFINE_FETCH_VOLUME; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
							inbuff_rd_en <= '0'; 
							next_state <= WAIT_ONE_AFFINE_VOL; 

						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
							--inbuff_rd_en <= '1'; 
							next_state <= AFFINE_FETCH_VOLUME; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
							inbuff_rd_en <= '0'; 
							next_state <= WAIT_ONE_AFFINE_VOL; 
						else
							inbuff_rd_en <= '0';	 
							next_state <= AFFINE_FETCH_VOLUME; 
						end if;

						
					elsif(volume_column_counter = unsigned(input_volume_size) and volume_row_counter < unsigned(weight_filter_size)-1) then 
						inbuff_rd_en <= '0'; 
						next_state <= AFFINE_FETCH_VOLUME; 
					else
						inbuff_rd_en <= '1';   
						next_state <= AFFINE_FETCH_VOLUME; 
					end if;		 
					
					
				end if; 
				
			when WAIT_ONE_AFFINE_VOL => 
				fsm_state	<= "10111";
				next_state 					<= AFFINE_GET_WEIGHT_SET;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en 			<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '1');  
				
				
			when AFFINE_GET_WEIGHT_SET => 
				volume_new_data_en <= (others => '1'); 
				weights_new_data_en <= (others => '1');  
				stop_stack_en 				<= (others => '1'); 		
				next_state <= AFFINE_GET_WEIGHT_SET; 
				inbuff_rd_en <= '0'; 
				
				if(i_inbuff_valid = '1' and i_inbuff_empty = '0') then 	
					
					if(filter_column_counter = unsigned(weight_filter_size)-1 and filter_row_counter = unsigned(weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and (weight_channel_counter < unsigned(weight_filter_channels)-1 or filter_counter < unsigned(i_filters_in_set)-1)) then  
							inbuff_rd_en <= '1'; 
							next_state <= AFFINE_GET_WEIGHT_SET; 
						elsif(more_dsps_needed = '0' and weight_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
							inbuff_rd_en <= '0'; 
							next_state <= WAIT_ONE_AFFINE_WEIGHT; 
							--operation_complete <= '1';
						elsif(more_dsps_needed = '1' and (weight_channel_counter < channels_allowed-1 or filter_counter < unsigned(i_filters_in_set)-1)) then 
							inbuff_rd_en <= '1'; 
							next_state <= AFFINE_GET_WEIGHT_SET; 
						elsif(more_dsps_needed = '1' and weight_channel_counter >= channels_allowed-1) then 
							inbuff_rd_en <= '0'; 
							next_state <= WAIT_ONE_AFFINE_WEIGHT; 
							--operation_complete <= '1';
						else
							inbuff_rd_en <= '0';	 
							next_state <= AFFINE_GET_WEIGHT_SET; 
						end if;

						
					else 
						inbuff_rd_en <= '1';   
						next_state <= AFFINE_GET_WEIGHT_SET; 
					end if;		 
					
					
				end if; 
				
				
			when WAIT_ONE_AFFINE_WEIGHT =>
				fsm_state	<= "11000";		
				next_state 					<= FULLY_CONNECTED;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en 			<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '1');  
				
				
				
			when FULLY_CONNECTED =>
				fsm_state	<= "11001";
				next_state 					<= FULLY_CONNECTED; 
				convolution_en 				<= '0'; 
				affine_en 					<= '1'; 
				volume_new_data_en 			<= (others => '0');	
				volume_prev_data_en 		<= (others => '0');	
				volume_recycled_data_en 	<= (others => '1');	
				stop_stack_en 				<= (others => '1');	
				weights_new_data_en 		<= (others => '0');
				weights_recycled_data_en 	<= (others => '1'); 
				inbuff_rd_en 				<= '1'; 
				
				if(and_reduce(loaded_rows_processed_mask) = '1') then
					--operation_complete <= '1'; 
					
					if(filter_iteration_counter < filter_iterations_required-1) then 
						next_state <= EMPTY_WEIGHTS; 
						filter_iteration_complete <= '1';
					else 
						filter_iteration_complete <= '1';
						row_complete <= '1'; 
						channel_iteration_complete <= '0'; 
						next_state <= EMPTY_VOL_WEIGHTS; 

						if(channel_iteration_counter < channel_iterations_required) then 
							next_state <= EMPTY_VOL_WEIGHTS; 
							channel_iteration_complete <= '1'; 
						else 
							next_state <= IDLE; 
							channel_iteration_complete <= '1'; 
							volume_processed <= '1'; 
						end if; 
						
					end if; 
				else 
					next_state <= FULLY_CONNECTED; 
					--operation_complete <= '1'; 
					filter_iteration_complete <= '1';
				end if; 		
			
			when EMPTY_WEIGHTS => 
				fsm_state	<= "11010";
				next_state 					<= EMPTY_WEIGHTS;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en 			<= (others => '0'); 
				volume_prev_data_en			<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en				<= (others => '1'); 
				weights_new_data_en 		<= (others => '0'); 
				volume_empty_data_en		<= (others => '0'); 
				operation_complete 			<= '0'; 
								
				if(fifo_clear_counter < 10 and and_reduce(weight_router_ready_mask) = '1' and and_reduce(volume_router_ready_mask) = '1') then 
					next_state 				<= EMPTY_WEIGHTS; 
					operation_complete 		<= '0';	
					clear_weights			<= '1';	
				elsif(fifo_clear_counter < 10 and and_reduce(weight_router_ready_mask) = '0' and and_reduce(volume_router_ready_mask) = '0') then 
					next_state 				<= EMPTY_WEIGHTS; 
					operation_complete 		<= '0'; 
					clear_weights 			<= '0'; 
				elsif(fifo_clear_counter >= 10 and and_reduce(weight_router_ready_mask) = '1' and and_reduce(volume_router_ready_mask) = '1') then 
					next_state 				<= AFFINE_GET_WEIGHT_SET; 
					operation_complete 		<= '1';	
					clear_weights			<= '0';	
				else 
					next_state 				<= EMPTY_WEIGHTS; 
					operation_complete 		<= '0'; 
					clear_weights 			<= '1';
				end if; 
					

			when EMPTY_VOL_WEIGHTS => 
				fsm_state	<= "11011";
				next_state 					<= EMPTY_VOL_WEIGHTS;  
				inbuff_rd_en 				<= '0'; 
			
				volume_new_data_en 			<= (others => '0'); 
				volume_prev_data_en			<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en				<= (others => '1'); 
				weights_new_data_en 		<= (others => '0'); 
				operation_complete 			<= '0'; 
				
				if(and_reduce(weight_router_ready_mask) = '1' and and_reduce(volume_router_ready_mask) = '1') then 

					volume_empty_data_en <= (others => '1');
				
					if(fifo_clear_counter < 10 or and_reduce(empty_data_complete_mask) = '0') then 
						next_state 			<= EMPTY_VOL_WEIGHTS; 
						operation_complete 	<= '0'; 
						clear_weights 		<= '1';
					elsif(fifo_clear_counter >= 10 and and_reduce(empty_data_complete_mask) = '1') then 
						next_state 			<= IDLE; --AFFINE_FETCH_VOLUME; 
						operation_complete 	<= '1'; 
						clear_weights 		<= '0';
					else 
						next_state 			<= EMPTY_VOL_WEIGHTS; 
						operation_complete 	<= '0'; 
						clear_weights 		<= '1';
					end if; 
				else 
					next_state 				<= EMPTY_VOL_WEIGHTS; 
					volume_empty_data_en 	<= (others => '0');
					operation_complete 		<= '0'; 
					clear_weights 			<= '0';
				end if; 
				
				
				
			when others => 
				fsm_state	<= "11100";
				next_state <= IDLE; 
			
			
		end case; 

	end process; 
	
	sequential_logic: process(i_clk,i_reset_n) is 
	begin  
		if(i_reset_n = '0') then
			more_dsps_needed 			<= '0'; 
			weight_data					<= (others => (others => '0'));  
			volume_data 				<= (others => (others => '0'));  
			volume_channel_counter 		<= (others => '0');
			weight_channel_counter		<= (others => '0'); 
			filter_row_counter 			<= (others => '0'); 
			filter_column_counter 		<= (others => '0'); 
			padded_volume_row_size 		<= (others => '0'); 
			padded_volume_column_size 	<= (others => '0');    
			input_volume_row_counter	<= (others => '0'); 
			filter_counter				<= (others => '0'); 
			volume_rows_processed		<= (others => '0');    
			element_counter				<= (others => '0'); 
			pad_counter					<= (others => '0');  
			channels_processed			<= (others => '0');    
			
			weight_fifo_wr_en 			<= (others => '0'); 
			volume_fifo_wr_en 			<= (others => '0'); 
			
			prev_data_wr_en 			<= (others => '0'); 
			prev_data 					<= (others => (others => '0')); 
			
			recycled_data_wr_en 		<= (others => '0'); 
			recycled_data 				<= (others => (others => '0'));

			recycled_filter_data_wr_en 		<= (others => '0'); 
			recycled_filter_data 				<= (others => (others => '0'));		
			
			volume_row_counter			<= (others => '0'); 
			volume_column_counter		<= (others => '0'); 	
			volume_row					<= (others => '0');   
			iteration_calc				<= (others => '0'); 
			iterations_required			<= (others => '0');    
			stride_counter				<= (others => '0'); 
			pad_row_counter	   			<= (others => '0');
			
			weights_loaded              <= '0'; 
			channels_allowed			<= (others => '0'); 
			iteration_counter			<= (others => '0');
			filter_iteration_counter	<= (others => '0'); 
			channel_iteration_counter	<= (others => '0'); 

			fifo_clear_counter	<= (others => '0'); 	

			channel_iteration_calc				<= (others => '0'); 
			channel_iterations_required			<= (others => '0'); 
			
			filter_iteration_calc				<= (others => '0'); 
			filter_iterations_required			<= (others => '0'); 
			
			weight_filter_size			 	<=  (others => '0'); 
			input_volume_size				<= (others => '0'); 
			input_volume_channels			<= (others => '0'); 
			weight_filter_channels			<= (others => '0'); 
			number_of_filters				<= (others => '0'); 

			volume_index_counter			<= (others => '0'); 
			weight_index_counter 		 	<= (others => '0'); 
			accumulator_en 					<= '0';
			stride_index 					<= (others => '0'); 
			
			empty_data_complete 			<= (others => '0'); 
			disable_channel_n				<= (others => '0'); 
				
			
		elsif(rising_edge(i_clk)) then 

			empty_data_complete <= i_empty_data_complete; 
			
			case current_state is

				
				when IDLE =>   	
					weight_data					<= (others => (others => '0'));  
					volume_data 				<= (others => (others => '0'));  
					volume_channel_counter 		<= (others => '0');
					weight_channel_counter		<= (others => '0'); 
					filter_row_counter 			<= (others => '0'); 
					filter_column_counter 		<= (others => '0'); 
					padded_volume_row_size 		<= (others => '0'); 
					padded_volume_column_size 	<= (others => '0');    
					input_volume_row_counter	<= (others => '0'); 
					filter_counter				<= (others => '0'); 
					volume_rows_processed		<= (others => '0');    
					element_counter				<= (others => '0'); 
					pad_counter					<= (others => '0');  
					channels_processed			<= (others => '0');    
					weight_fifo_wr_en 			<= (others => '0'); 
					volume_fifo_wr_en 			<= (others => '0'); 
					prev_data_wr_en 			<= (others => '0'); 
					prev_data 					<= (others => (others => '0')); 
					recycled_data_wr_en 		<= (others => '0'); 
					recycled_data 				<= (others => (others => '0'));
					recycled_filter_data_wr_en 	<= (others => '0'); 
					recycled_filter_data 		<= (others => (others => '0'));		
					volume_row_counter			<= (others => '0'); 
					volume_column_counter		<= (others => '0'); 	
					volume_row					<= (others => '0');   
					stride_counter				<= (others => '0'); 
					pad_row_counter	   			<= (others => '0');
					weights_loaded              <= '0'; 
					fifo_clear_counter 			<= (others => '0'); 
					volume_index_counter				<= (others => '0'); 
					weight_index_counter		<= (others => '0'); 
					stride_index <= (others => '0'); 
					
					weight_filter_size(3 downto 0) <= i_weight_filter_size; 
					weight_filter_size(15 downto 4) <= (others => '0'); 
					
					input_volume_size(7 downto 0) <= i_input_volume_size; 
					input_volume_size(15 downto 8) <= (others => '0'); 
					
					input_volume_channels(11 downto 0) <= i_input_volume_channels; 
					input_volume_channels(15 downto 12) <= (others => '0'); 
					
					weight_filter_channels(15 downto 0) <= i_weight_filter_channels; 
					
					number_of_filters(15 downto 0) <= i_number_of_filters; 
					
					channels_in_set <= i_channels_in_set; 
					accumulator_en <= '0'; 
					
					if(unsigned(weight_filter_size) = 11 and i_affine_select = '0') then 	
						channels_allowed <= to_unsigned(g_num_11_filters,16); 
					elsif(unsigned(weight_filter_size) = 5 and i_affine_select = '0') then 	
						channels_allowed <= to_unsigned(g_num_5_filters,16); 
					elsif(unsigned(weight_filter_size) = 7 and i_affine_select = '0') then 	
						channels_allowed <= to_unsigned(g_num_7_filters,16); 
					elsif(unsigned(weight_filter_size) = 3 and i_affine_select = '0') then 	   
						channels_allowed <= to_unsigned(g_num_3_filters,16); 
					elsif(i_affine_select = '1') then 
						channels_allowed <= x"00" & unsigned(channels_in_set); 
					end if;  
					
					
					
					if(i_start = '0') then
						iteration_counter <= (others => '0'); 
						iterations_required <= (others => '0'); 
						more_dsps_needed <= '0'; 
						iteration_calc <= (others => '0'); 
						filter_iteration_counter	<= (others => '0'); 
						filter_iteration_calc				<= (others => '0'); 
						filter_iterations_required			<= (others => '0'); 
						channel_iteration_calc				<= (others => '0'); 
						channel_iterations_required			<= (others => '0'); 
					    channel_iteration_counter	<= (others => '0'); 
						disable_channel_n				<= (others => '0'); 
					end if; 
						
					

				when IS_NET_READY => 
				    null; 
					

				
				when CALC_PARAMETERS =>
					if(channels_allowed > unsigned(input_volume_channels)) then 
						more_dsps_needed <= '0'; 
					else  
						more_dsps_needed <= '1';  
					end if;  
					
					
					if(iteration_calc < unsigned(input_volume_channels)) then 
						iteration_calc <= iteration_calc + channels_allowed; 
						iterations_required <= iterations_required + 1; 
					else 	  
						iteration_calc <= iteration_calc; 
						iterations_required <= iterations_required; 
					end if; 
					
					
					padded_volume_row_size 		<= unsigned(input_volume_size) + unsigned(pad_16bit) + unsigned(pad_16bit); 
					padded_volume_column_size 	<= unsigned(input_volume_size) + unsigned(pad_16bit) + unsigned(pad_16bit); 
					
				when AFFINE_CALC_PARAMETERS =>
					if(channels_allowed > unsigned(input_volume_channels)) then 
						more_dsps_needed <= '0'; 
					else  
						more_dsps_needed <= '1';  
					end if;  
					
					if(channel_iteration_calc < unsigned(input_volume_channels) or filter_iteration_calc < unsigned(number_of_filters)) then 
						
						if(channel_iteration_calc < unsigned(input_volume_channels)) then 
							channel_iteration_calc <= channel_iteration_calc + channels_allowed; 
							channel_iterations_required <= channel_iterations_required + 1; 
							iterations_required <= channel_iterations_required + 1;
						else 	  
							channel_iteration_calc <= channel_iteration_calc; 
							channel_iterations_required <= channel_iterations_required; 
							iterations_required <= channel_iterations_required;
						end if; 
						
						if(filter_iteration_calc < unsigned(number_of_filters)) then 
							filter_iteration_calc <= filter_iteration_calc + unsigned(i_filters_in_set); 
							filter_iterations_required <= filter_iterations_required + 1; 
						else 	  
							filter_iteration_calc <= filter_iteration_calc; 
							filter_iterations_required <= filter_iterations_required; 
						end if; 
						
					
					end if; 
					
					padded_volume_column_size 	<= unsigned(input_volume_size); 

					
					
					
				
				when FETCH_AND_LOAD_WEIGHTS => 	 
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
					if(i_inbuff_valid = '1' and i_inbuff_empty = '0') then  

						weight_data(to_integer(weight_index_counter)) <= i_inbuff_dout; 	
						weight_fifo_wr_en(to_integer(weight_index_counter)) <= '1'; 
                        disable_channel_n(to_integer(weight_index_counter)) <= '1'; 						
						
						if(filter_column_counter < unsigned(weight_filter_size)-1) then 
							filter_column_counter <= filter_column_counter + 1; 
						else 
							filter_column_counter <= (others => '0'); 

							if(filter_row_counter < unsigned(weight_filter_size)-1) then
								filter_row_counter <= filter_row_counter + 1; 
								weight_index_counter <= weight_index_counter + 1; 
							else 
								filter_row_counter <= (others => '0'); 
								
								if(more_dsps_needed = '0' and weight_channel_counter < unsigned(weight_filter_channels)-1) then  
									weight_channel_counter <= weight_channel_counter + 1;
									weight_index_counter <= weight_index_counter + 1;
								elsif(more_dsps_needed = '0' and weight_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
									weight_channel_counter <= (others => '0');  
									filter_counter <= filter_counter + 1;
									weights_loaded <= '1';
									weight_index_counter <= (others => '0'); 
								elsif(more_dsps_needed = '1' and weight_channel_counter < channels_allowed-1) then 
									weight_channel_counter <= weight_channel_counter + 1; 
									weight_index_counter <= weight_index_counter + 1;
								elsif(more_dsps_needed = '1' and weight_channel_counter >= channels_allowed-1) then 
									weight_channel_counter <= (others => '0'); 
									filter_counter <= filter_counter + 1; 
									weights_loaded <= '1'; 
									weight_index_counter <= (others => '0');
								else
									weight_channel_counter <= (others => '0'); 
								end if; 

								
							end if;   
						end if; 

					end if; 
					
				when PAD_VOLUME_TOP =>	 
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
					if(i_inbuff_valid = '1' and i_inbuff_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 
					
						volume_data(to_integer(volume_index_counter)) <= (others => '0'); 	
						volume_fifo_wr_en(to_integer(volume_index_counter)) <= '1'; 
						
						if(volume_column_counter < unsigned(padded_volume_column_size)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
						else 
							volume_column_counter <= (others => '0'); 
							
							if(volume_row_counter < unsigned(pad_16bit)-1 and unsigned(pad_16bit) > 1) then
								volume_row_counter <= volume_row_counter + 1; 
								volume_index_counter <= volume_index_counter + 1; 
							elsif(volume_row_counter >= unsigned(pad_16bit)-1 and unsigned(pad_16bit) > 1) then						
								
								
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_row_counter <= (others => '0'); 
									volume_index_counter <= volume_index_counter + unsigned(weight_filter_size) - unsigned(pad_16bit) + 1; 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others =>'0');
									volume_row_counter <= volume_row_counter + 1; 	
									volume_row <= volume_row_counter + 1; 
									volume_index_counter <= volume_row_counter + 1; 
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_row_counter <= (others => '0');
									volume_index_counter <= volume_index_counter + unsigned(weight_filter_size) - unsigned(pad_16bit) + 1; 
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
									volume_channel_counter <= (others => '0'); 
									volume_row_counter <= volume_row_counter + 1;	
									volume_row <= volume_row_counter + 1; 
									volume_index_counter <= volume_row_counter + 1; 
								else
									volume_channel_counter <= volume_channel_counter; 
									volume_index_counter <= volume_index_counter; 
								end if; 
							elsif(unsigned(pad_16bit) = 1) then

								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_row_counter <= (others => '0'); 
									volume_index_counter <= volume_index_counter + unsigned(weight_filter_size) - unsigned(pad_16bit) + 1; 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others =>'0');
									volume_row_counter <= volume_row_counter + 1; 	
									volume_row <= volume_row_counter + 1;
									volume_index_counter <= volume_row_counter + 1;									
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_row_counter <= (others => '0');
									volume_index_counter <= volume_index_counter + unsigned(weight_filter_size) - unsigned(pad_16bit) + 1;  
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
									volume_channel_counter <= (others => '0'); 
									volume_row_counter <= volume_row_counter + 1;	
									volume_row <= volume_row_counter + 1; 
									volume_index_counter <= volume_row_counter + 1;	
								else
									volume_channel_counter <= volume_channel_counter; 
									volume_index_counter <= volume_index_counter; 
								end if; 
							
								
								
							end if;   
						end if; 

					end if; 
				
				when PAD_VOLUME_LEFT => 
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
					if(i_inbuff_valid = '1' and i_inbuff_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 
						
						volume_data(to_integer(volume_index_counter)) <= (others => '0'); 	
						volume_fifo_wr_en(to_integer(volume_index_counter)) <= '1'; 
						
						if(volume_column_counter < unsigned(pad_16bit)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
						else 
							volume_column_counter <= (others => '0'); 
							
							if(volume_row_counter < unsigned(weight_filter_size)-1) then
								volume_row_counter <= volume_row_counter + 1; 
								volume_index_counter <= volume_index_counter + 1; 
							else 
								volume_row_counter <= volume_row; 
								volume_index_counter <= volume_row;
								
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + unsigned(pad_16bit) + 1; 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others => '0'); 
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + unsigned(pad_16bit) + 1; 
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
									volume_channel_counter <= (others => '0'); 
								else
									volume_channel_counter <= volume_channel_counter; 
								end if; 
							end if;   
						end if; 
					end if; 
				
			
				when FETCH_VOLUME =>   
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
					if(i_inbuff_valid = '1' and i_inbuff_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 
						
						volume_data(to_integer(volume_index_counter)) <= i_inbuff_dout;
						volume_fifo_wr_en(to_integer(volume_index_counter)) <= '1'; 
						
						if(volume_column_counter < unsigned(input_volume_size)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
						else 
							volume_column_counter <= (others => '0'); 
							
							if(volume_row_counter < unsigned(weight_filter_size)-1) then
								volume_row_counter <= volume_row_counter + 1; 
								volume_index_counter <= volume_index_counter + 1; 
							else 
								volume_row_counter <= volume_row;	
								volume_index_counter <= volume_row; 
								
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + unsigned(pad_16bit) + 1; 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others => '0'); 
									volume_rows_processed <= unsigned(weight_filter_size) - unsigned(pad_16bit); 
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + unsigned(pad_16bit) + 1;  
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
									volume_channel_counter <= (others => '0'); 
									volume_rows_processed <= unsigned(weight_filter_size) - unsigned(pad_16bit); 
								else
									volume_channel_counter <= volume_channel_counter; 
								end if; 
							end if;   
						end if; 
					end if; 
				
					
				when PAD_VOLUME_RIGHT => 	  
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
					if(i_inbuff_valid = '1' and i_inbuff_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 
						
						volume_data(to_integer(volume_index_counter)) <= (others => '0'); 	
						volume_fifo_wr_en(to_integer(volume_index_counter)) <= '1'; 
						
						if(volume_column_counter < unsigned(pad_16bit)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
						else 
							volume_column_counter <= (others => '0'); 
							
							if(volume_row_counter < unsigned(weight_filter_size)-1) then
								volume_row_counter <= volume_row_counter + 1; 
								volume_index_counter <= volume_index_counter + 1; 
							else 
								volume_row_counter <= volume_row;	
								volume_index_counter <= volume_row; 

								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + unsigned(pad_16bit) + 1; 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others => '0'); 
									volume_rows_processed <= unsigned(weight_filter_size) - unsigned(pad_16bit); 
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + unsigned(pad_16bit) + 1; 
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
									volume_channel_counter <= (others => '0'); 
									volume_rows_processed <= unsigned(weight_filter_size) - unsigned(pad_16bit); 
								else
									volume_channel_counter <= volume_channel_counter; 
								end if; 
							end if;   
						end if; 

					end if; 

					
				when PAD_VOLUME_BOTTOM =>	
				
					if(volume_channel_counter < unsigned(input_volume_channels)) then 
					
						if(i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0' and element_counter <= padded_volume_row_size-1 and pad_counter < unsigned(i_pad)) then 
							volume_data(to_integer(volume_index_counter)) <= (others => '0');
							element_counter <= element_counter + 1; 
							if(element_counter = padded_volume_row_size-1) then 
								pad_counter <= pad_counter + 1; 
								volume_rows_processed <= volume_rows_processed + 1;
								element_counter <= (others => '0'); 
							else 
								pad_counter <= pad_counter;
								element_counter <= element_counter; 
							end if; 
						else 
							channels_processed <= channels_allowed + channels_processed; 
							
						end if;
						
						volume_channel_counter <= volume_channel_counter + 1;  
						volume_index_counter <= volume_index_counter + unsigned(weight_filter_size); 
						
					else 
						volume_channel_counter <= (others => '0'); 
						element_counter <= (others => '0'); 
						pad_counter <= (others => '0'); 
					end if;  
					
					
					
					
				when WAIT_ONE_PAD => 		 
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0');  	
						
				when CONVOLUTION =>
					accumulator_en <= '1'; 
					volume_fifo_wr_en <= (others => '0'); 	
					weight_fifo_wr_en <= (others => '0'); 
					recycled_data <= i_data_return; 
					recycled_data_wr_en <= i_data_return_wr_en;   
					recycled_filter_data <= i_filter_data_return; 
					recycled_filter_data_wr_en <= i_filter_data_return_wr_en; 
					prev_data_wr_en <= (others => '0'); 
					stride_counter <= (others => '0'); 
					
					
					volume_row_counter <= unsigned(weight_filter_size)-1;	
					volume_index_counter <= unsigned(weight_filter_size)-1; 
					if(and_reduce(loaded_rows_processed_mask) = '1') then
						if(volume_rows_processed = unsigned(input_volume_size) and unsigned(pad_8bit) = 0) then 
							if(more_dsps_needed = '1') then 
								if(iteration_counter < iterations_required) then 
									iteration_counter <= iteration_counter + 1; 
								else 
									iteration_counter <= iteration_counter; 
								end if; 
								
							end if; 
						elsif(volume_rows_processed = unsigned(input_volume_size) and unsigned(pad_8bit) > 0) then 
							if(pad_row_counter >= unsigned(pad_16bit)) then 
								if(more_dsps_needed = '1') then 
									if(iteration_counter < iterations_required) then 
										iteration_counter <= iteration_counter + 1; 
									else 
										iteration_counter <= iteration_counter; 
									end if; 
								end if; 
							end if; 
						end if; 
						
					else 
						iteration_counter <= iteration_counter; 
					end if;  
				
				when WAIT_ONE_CONV => 
					null; 

				
				when PVL_SINGLE =>
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
					if(i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  

						volume_data(to_integer(volume_index_counter)) <= (others => '0');
						volume_fifo_wr_en(to_integer(volume_index_counter)) <= '1'; 					
						
						if(volume_column_counter < unsigned(pad_16bit)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
						else 
							volume_column_counter <= (others => '0'); 							
							if(volume_row_counter < unsigned(weight_filter_size)-1) then
								--volume_row_counter <= volume_row_counter + 1; 
							else 
								
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + unsigned(weight_filter_size); 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others=>'0'); 
									volume_index_counter <= unsigned(weight_filter_size)-1; 
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + unsigned(weight_filter_size); 
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
									volume_channel_counter <= (others => '0'); 
									volume_index_counter <= unsigned(weight_filter_size)-1; 
								else
									volume_channel_counter <= volume_channel_counter; 
								end if; 

							end if;   
						end if; 

					end if; 
				
				when FV_SINGLE =>  
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
					stride_index <= unsigned(weight_filter_size); 
				
					if(i_inbuff_valid = '1' and i_inbuff_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  

						volume_data(to_integer(volume_index_counter)) <= i_inbuff_dout; 	
						volume_fifo_wr_en(to_integer(volume_index_counter)) <= '1'; 					
						
						if(volume_column_counter < unsigned(input_volume_size)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
						else 
							volume_column_counter <= (others => '0');  
					
							if(volume_row_counter < unsigned(weight_filter_size)-1) then
								--volume_row_counter <= volume_row_counter + 1; 
							else 							
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + unsigned(weight_filter_size); 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others => '0'); 
									volume_rows_processed <= volume_rows_processed + 1;
									
									if(unsigned(pad_8bit) = 0) then 
										stride_counter <= stride_counter + 1; 
										volume_row_counter 		<= unsigned(weight_filter_size)-2;
										volume_row				<= unsigned(weight_filter_size)-2;
										volume_index_counter 			<= unsigned(weight_filter_size)-2;
									else 
										stride_counter <= stride_counter; 
										volume_row_counter 		<= unsigned(weight_filter_size)-1;
										volume_row				<= unsigned(weight_filter_size)-1;
										volume_index_counter			<= unsigned(weight_filter_size)-1;
									end if; 

									
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + unsigned(weight_filter_size); 						
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
									volume_channel_counter <= (others => '0'); 
									volume_rows_processed <= volume_rows_processed + 1;
									
									if(unsigned(pad_8bit) = 0) then 
										stride_counter <= stride_counter + 1; 
										volume_row_counter 		<= unsigned(weight_filter_size)-2;
										volume_row				<= unsigned(weight_filter_size)-2;
										volume_index_counter 			<= unsigned(weight_filter_size)-2;
									else 
										stride_counter <= stride_counter; 
										volume_row_counter 		<= unsigned(weight_filter_size)-1;
										volume_row				<= unsigned(weight_filter_size)-1;
										volume_index_counter			<= unsigned(weight_filter_size)-1;
									end if; 

								else
									volume_channel_counter <= volume_channel_counter; 
								end if; 
								
								
							end if;   
						end if; 
	
					end if; 
				
				when PVR_SINGLE =>
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
					stride_index <= unsigned(weight_filter_size); 
				
					if(i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	

						volume_data(to_integer(volume_index_counter)) <= (others => '0');
						volume_fifo_wr_en(to_integer(volume_index_counter)) <= '1'; 					
						
						if(volume_column_counter < unsigned(pad_16bit)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
						else 
							volume_column_counter <= (others => '0'); 
							
							if(volume_row_counter < unsigned(weight_filter_size)-1) then
								--volume_row_counter <= volume_row_counter + 1; 
							else 
								
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + unsigned(weight_filter_size); 							
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
									volume_channel_counter 	<= (others => '0'); 
									
									if(stride_counter < unsigned(i_stride)-1) then 
										stride_counter <= stride_counter + 1; 
									elsif (unsigned(i_stride) = 1) then 
										stride_counter <= stride_counter + 1; 
									else 	
										stride_counter <= (others => '0'); 	
									end if; 
									
									volume_row_counter 		<= unsigned(weight_filter_size)-2;
									volume_row				<= unsigned(weight_filter_size)-2;
									volume_index_counter			<= unsigned(weight_filter_size)-2;
								
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + unsigned(weight_filter_size); 
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
									volume_channel_counter 	<= (others => '0'); 
									
									if(stride_counter < unsigned(i_stride)-1) then 
										stride_counter <= stride_counter + 1; 
									elsif (unsigned(i_stride) = 1) then 
										stride_counter <= stride_counter + 1; 
									else 	
										stride_counter <= (others => '0'); 	
									end if; 
									
									volume_row_counter 		<= unsigned(weight_filter_size)-2;
									volume_row				<= unsigned(weight_filter_size)-2;
									volume_index_counter			<= unsigned(weight_filter_size)-2;
									
								else
									volume_channel_counter 	<= volume_channel_counter; 
								end if; 
							
							end if;   
						end if; 

					end if; 
					
				when WAIT_ONE_PRE_PVR_SINGLE => 
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 	
				
				when WAIT_ONE_SINGLE => 
					null; 
					
				when SNAKE_FILL =>
				
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 	  
					prev_data_wr_en <= (others => '0');  
					
				
					if(i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0' and i_data_return_wr_en(to_integer(volume_index_counter+1)) = '1') then  

						prev_data(to_integer(volume_index_counter)) <= i_data_return(to_integer(volume_index_counter+1));
						prev_data_wr_en(to_integer(volume_index_counter)) <= i_data_return_wr_en(to_integer(volume_index_counter+1)); 					
						
						if(volume_column_counter < unsigned(padded_volume_column_size)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
						else 
							volume_column_counter <= (others => '0'); 
							
							if(volume_row_counter > 0) then
								volume_row_counter <= volume_row_counter - 1; 
								volume_index_counter <= volume_index_counter - 1; 
							else 
 
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
									volume_row_counter 		<= unsigned(weight_filter_size)-2;
									volume_row				<= unsigned(weight_filter_size)-2;
									volume_index_counter   <= stride_index + unsigned(weight_filter_size)-2;
									stride_index			<= stride_index + unsigned(weight_filter_size); 
									volume_channel_counter <= volume_channel_counter + 1; 	
									
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then   
								
									if(unsigned(pad_8bit)= 0 and stride_counter < unsigned(i_stride)) then
										volume_row_counter 		<= unsigned(weight_filter_size)-1;
										volume_row				<= unsigned(weight_filter_size)-1;
										volume_index_counter			<= (others =>'0');
										volume_channel_counter <= (others => '0');
									elsif(unsigned(pad_8bit)= 0 and stride_counter >= unsigned(i_stride)) then 
										volume_channel_counter <= (others => '0'); 	
										volume_row_counter 		<= (others => '0');
										volume_row				<= (others =>'0');  
										volume_index_counter			<= (others => '0'); 
									else 
										volume_channel_counter <= (others => '0'); 	
										volume_row_counter 		<= (others => '0');
										volume_row				<= (others =>'0'); 
										volume_index_counter			<= (others => '0'); 
									end if; 

								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
									volume_row_counter 		<= unsigned(weight_filter_size)-2;
									volume_row				<= unsigned(weight_filter_size)-2;
									volume_index_counter   <= stride_index + unsigned(weight_filter_size)-2;
									stride_index			<= stride_index + unsigned(weight_filter_size); 
									volume_channel_counter <= volume_channel_counter + 1; 	
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
									if(unsigned(pad_8bit)= 0 and stride_counter < unsigned(i_stride)) then
										volume_row_counter 		<= unsigned(weight_filter_size)-1;
										volume_row				<= unsigned(weight_filter_size)-1;
										volume_index_counter			<= (others =>'0');
										volume_channel_counter <= (others => '0');
									elsif(unsigned(pad_8bit)= 0 and stride_counter >= unsigned(i_stride)) then 
										volume_channel_counter <= (others => '0'); 
										volume_row_counter 		<= (others => '0');
										volume_row				<= (others =>'0');  
										volume_index_counter			<= (others => '0'); 
									else 
										volume_channel_counter <= (others => '0'); 	
										volume_row_counter 		<= (others => '0');
										volume_row				<= (others =>'0'); 
										volume_index_counter			<= (others => '0'); 
									end if; 
									
									
								else
									volume_channel_counter <= volume_channel_counter; 
								end if; 
							end if;   
						end if;
					end if; 
					
				when EMPTY_TOP_ROW => 
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 	  
					prev_data_wr_en <= (others => '0');  
					volume_row_counter <= unsigned(weight_filter_size)-1;
					
					if(more_dsps_needed = '0' and empty_data_complete(to_integer(volume_index_counter)) = '1' and volume_channel_counter < unsigned(weight_filter_channels)-1) then 
						volume_channel_counter <= volume_channel_counter + 1; 
						volume_index_counter <= volume_index_counter + unsigned(weight_filter_size); 
					elsif(more_dsps_needed = '0' and empty_data_complete(to_integer(volume_index_counter)) = '1' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 
						volume_channel_counter <= (others => '0'); 
						volume_index_counter <= unsigned(weight_filter_size)-1;
					elsif(more_dsps_needed = '1' and empty_data_complete(to_integer(volume_index_counter)) = '1' and volume_channel_counter < channels_allowed-1) then 
						volume_channel_counter <= volume_channel_counter + 1; 
						volume_index_counter <= volume_index_counter + unsigned(weight_filter_size); 
					elsif(more_dsps_needed = '1' and empty_data_complete(to_integer(volume_index_counter)) = '1' and volume_channel_counter >= channels_allowed-1) then 
						volume_channel_counter <= (others => '0'); 
						volume_index_counter <= unsigned(weight_filter_size)-1;
					end if; 
						

						
	  		   	when PAD_SINGLE =>

					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
					stride_index <= unsigned(weight_filter_size); 
				
					if(i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 
						
						volume_data(to_integer(volume_index_counter)) <= (others => '0');
						volume_fifo_wr_en(to_integer(volume_index_counter)) <= '1'; 
						
						if(volume_column_counter < unsigned(padded_volume_column_size)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
						else 
							volume_column_counter <= (others => '0'); 
							
							if(volume_row_counter < unsigned(weight_filter_size)-1) then
								--volume_row_counter <= volume_row_counter + 1; 
							else 
								
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + unsigned(weight_filter_size); 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others => '0'); 

									if(stride_counter < unsigned(i_stride)-1) then 
										stride_counter <= stride_counter + 1; 
										pad_row_counter <= pad_row_counter + 1;
									elsif(unsigned(i_stride) = 1) then 
										stride_counter <= stride_counter + 1; 
										pad_row_counter <= pad_row_counter + 1; 
									else 
										stride_counter <= (others => '0'); 	
										pad_row_counter <= pad_row_counter + 1;
									end if; 
									
									volume_row_counter 		<= unsigned(weight_filter_size)-2;
									volume_row				<= unsigned(weight_filter_size)-2;
									volume_index_counter			<= unsigned(weight_filter_size)-2;
									

								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + unsigned(weight_filter_size); 
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
									volume_channel_counter <= (others => '0'); 
									if(stride_counter < unsigned(i_stride)-1) then 
										stride_counter <= stride_counter + 1; 
										pad_row_counter <= pad_row_counter + 1;
									elsif(unsigned(i_stride) = 1) then 
										stride_counter <= stride_counter + 1; 
										pad_row_counter <= pad_row_counter + 1; 
									else 
										stride_counter <= (others => '0'); 	
										pad_row_counter <= pad_row_counter + 1;
									end if; 
									volume_row_counter 		<=  unsigned(weight_filter_size)-2;
									volume_row				<=  unsigned(weight_filter_size)-2;
									volume_index_counter			<=  unsigned(weight_filter_size)-2;
								else
									volume_channel_counter <= volume_channel_counter; 
								end if; 

							end if;   
						end if; 

					end if;  
					
					
				when CLEAR_FIFOS => 
					if(fifo_clear_counter < 10 and (i_volume_complete = '0' and i_iteration_complete = '0')) then 
						fifo_clear_counter <= fifo_clear_counter + 1;
					elsif(fifo_clear_counter >= 10 and (i_volume_complete = '0' and  i_iteration_complete = '0')) then 
						fifo_clear_counter <= fifo_clear_counter; 
					else 
						fifo_clear_counter <= (others => '0');  
					end if; 
					
					
				when DWELL => 
				
				
				when AFFINE_FETCH_VOLUME =>   
					fifo_clear_counter <= (others => '0'); 
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
					volume_rows_processed <= volume_rows_processed + unsigned(weight_filter_size)-1; 
					
				
					if(i_inbuff_valid = '1' and i_inbuff_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_index_counter)) = '0') then  	 					
						if(volume_column_counter < unsigned(input_volume_size)) then 
							volume_column_counter <= volume_column_counter + 1; 
							volume_data(to_integer(volume_index_counter)) <= i_inbuff_dout; 	
							volume_fifo_wr_en(to_integer(volume_index_counter)) <= '1'; 
							disable_channel_n(to_integer(volume_index_counter)) <= '1'; 	
						else 
							volume_column_counter <= (others => '0'); 
							volume_data(to_integer(volume_index_counter)) <= (others => '0');
							volume_fifo_wr_en(to_integer(volume_index_counter)) <= '0'; 
							
							if(volume_row_counter < unsigned(weight_filter_size)-1) then
								volume_row_counter <= volume_row_counter + 1; 
								volume_index_counter <= volume_index_counter + 1; 
							else 
								volume_row_counter <= volume_row;	
								volume_index_counter <= volume_row; 
								
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + 1; 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others => '0'); 
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed-1) then 
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_index_counter <= volume_index_counter + 1; 
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed-1) then 
									volume_channel_counter <= (others => '0'); 
								else
									volume_channel_counter <= volume_channel_counter; 
								end if; 
							end if;   
						end if; 
					end if; 
				
					
				when WAIT_ONE_AFFINE_VOL => 		 
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0');  	
				
				when AFFINE_GET_WEIGHT_SET => 	 
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
					fifo_clear_counter <= (others => '0'); 
				
					if(i_inbuff_valid = '1' and i_inbuff_empty = '0') then 

						weight_data(to_integer(weight_index_counter)) <= i_inbuff_dout; 	
						weight_fifo_wr_en(to_integer(weight_index_counter)) <= '1'; 					
						
						if(filter_column_counter < unsigned(weight_filter_size)-1) then 
							filter_column_counter <= filter_column_counter + 1; 
						else 
							filter_column_counter <= (others => '0'); 
							
							if(filter_row_counter < unsigned(weight_filter_size)-1) then
								filter_row_counter <= filter_row_counter + 1; 
								weight_index_counter <= weight_index_counter + 1; 
							else 
								filter_row_counter <= (others => '0'); 
								weight_index_counter <= (others => '0'); 						  
								
								if(more_dsps_needed = '0' and weight_channel_counter < unsigned(weight_filter_channels)-1) then  
									weight_channel_counter <= weight_channel_counter + 1; 
									weight_index_counter <= weight_index_counter + 1; 
								elsif(more_dsps_needed = '0' and weight_channel_counter >= unsigned(weight_filter_channels)-1) then 	 
									weight_channel_counter <= (others => '0');  
									filter_counter <= filter_counter + 1;
									weights_loaded <= '1'; 
								elsif(more_dsps_needed = '1' and weight_channel_counter < channels_allowed-1) then 
									weight_channel_counter <= weight_channel_counter + 1; 
									weight_index_counter <= weight_index_counter + 1; 							
								elsif(more_dsps_needed = '1' and weight_channel_counter >= channels_allowed-1) then 
									weight_channel_counter <= (others => '0'); 
									filter_counter <= filter_counter + 1; 
									weights_loaded <= '1'; 
								else
									weight_channel_counter <= (others => '0'); 
								end if; 

								
							end if;   
						end if; 

					end if; 
					
				when WAIT_ONE_AFFINE_WEIGHT => 	
					filter_counter <= (others => '0'); 
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0');  	
					
					
				when FULLY_CONNECTED =>
					accumulator_en 				<= '1'; 
					volume_fifo_wr_en 			<= (others => '0'); 	
					weight_fifo_wr_en 			<= (others => '0'); 
					recycled_data 				<= i_data_return; 
					recycled_data_wr_en 		<= i_data_return_wr_en;   
					recycled_filter_data 		<= i_filter_data_return; 
					recycled_filter_data_wr_en 	<= i_filter_data_return_wr_en; 
					prev_data_wr_en 			<= (others => '0'); 
	
					if(and_reduce(loaded_rows_processed_mask) = '1') then
						if(filter_iteration_counter < filter_iterations_required-1) then 
							filter_iteration_counter <= filter_iteration_counter + 1; 
						else 
							filter_iteration_counter <= (others => '0');
							if(channel_iteration_counter < channel_iterations_required) then 
								channel_iteration_counter <= channel_iteration_counter + 1; 
							else 
								channel_iteration_counter <= channel_iteration_counter; 
							end if; 
							
						end if; 
					else 
						filter_iteration_counter <= filter_iteration_counter; 
						channel_iteration_counter <= channel_iteration_counter; 
					end if; 

					
				when EMPTY_WEIGHTS => 
					weights_loaded <= '1';
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 	  
					prev_data_wr_en <= (others => '0');  
					
					if(fifo_clear_counter < 10 and and_reduce(weight_router_ready_mask) = '1' and and_reduce(volume_router_ready_mask) = '1') then	
						fifo_clear_counter <= fifo_clear_counter + 1; 
					elsif(fifo_clear_counter < 10 and and_reduce(weight_router_ready_mask) = '0' and and_reduce(volume_router_ready_mask) = '0') then 
						fifo_clear_counter <= fifo_clear_counter;  						
					else 
						fifo_clear_counter <= fifo_clear_counter; 
					end if; 
					

				when EMPTY_VOL_WEIGHTS => 
					weights_loaded <= '1';
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 	  
					prev_data_wr_en <= (others => '0'); 
					
					if(and_reduce(weight_router_ready_mask) = '1' and and_reduce(volume_router_ready_mask) = '1') then 
					
						if(fifo_clear_counter < 10 or and_reduce(empty_data_complete_mask) = '0') then 
							fifo_clear_counter <= fifo_clear_counter + 1; 
						else 
							fifo_clear_counter <= fifo_clear_counter; 
						end if; 
					else 
						fifo_clear_counter <= fifo_clear_counter; 
					end if; 

				
			end case; 
		end if; 
	end process; 
	
	
end arch;
