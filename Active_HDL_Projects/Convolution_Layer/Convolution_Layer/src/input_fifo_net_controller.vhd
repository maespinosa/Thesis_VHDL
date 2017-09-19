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

library convolution_layer; 
use convolution_layer.types_pkg.all;


entity input_fifo_net_controller is	   
	generic(
	g_weight_width : integer := 16; 
	g_data_width : integer := 16; 
	g_dsps_used	: integer := 200;
	g_num_11_filters: integer := 18; 
	g_num_7_filters: integer := 28; 
	g_num_3_filters: integer := 66
	); 
	port(
	i_clk 				: in std_logic; 
	i_reset_n 			: in std_logic; 
	i_enable			: in std_logic;	 
	i_start				: in std_logic; 
	
	--FROM INPUT BUFFER
    i_inbuff_valid				: in std_logic; 
	i_inbuff_dout				: in std_logic_vector(15 downto 0);  
	o_inbuff_rd_en				: out std_logic; 
	i_inbuff_empty				: in std_logic; 
	i_inbuff_almost_empty		: in std_logic; 

	i_inbuff_prog_empty			: in std_logic; 
	o_inbuff_prog_empty_thresh 	: out std_logic_vector(9 downto 0); 
	
	
	i_input_volume_size			: in std_logic_vector(7 downto 0); 
	i_input_volume_channels		: in std_logic_vector(11 downto 0); 
	i_weight_filter_size		: in std_logic_vector(3 downto 0); 
	i_weight_filter_channels	: in std_logic_vector(11 downto 0); 
	i_number_of_filters			: in std_logic_vector(11 downto 0);
	i_weight_filter_bytes		: in std_logic_vector(31 downto 0); 
	i_stride					: in std_logic_vector(3 downto 0); 
	i_pad					    : in std_logic_vector(3 downto 0); 
	
	o_volume_data				: out array_type_varx16bit(g_dsps_used-1 downto 0); 
	o_weight_data				: out array_type_varx16bit(g_dsps_used-1 downto 0); 
	
	i_get_volume_row			: in std_logic_vector(g_dsps_used-1 downto 0);
	i_get_weight_row			: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_filter_kernal_loaded		: in std_logic_vector(g_dsps_used-1 downto 0);
	o_new_data_select			: out std_logic_vector(g_dsps_used-1 downto 0); 
	
	o_volume_fifo_wr_en			: out std_logic_vector(g_dsps_used-1 downto 0); 
	i_volume_fifo_full			: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_voluem_fifo_almost_full	: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_volume_fifo_prog_full		: in std_logic_vector(g_dsps_used-1 downto 0); 
	o_volume_fifo_prog_full_thresh : out std_logic_vector(9 downto 0) 

	); 	
end input_fifo_net_controller;


architecture arch of input_fifo_net_controller is	  


type dsps_11x11 is array (g_num_11_filters-1 downto 0) of integer range 0 to 219;
constant base_volume_fifo_11x11 : dsps_11x11 := (0,11,22,33,44,55,66,77,88,99,110,121,132,143,154,165,176,187);	  

--type dsps_7x7 is array (g_num_11_filters-1 downto 0) of unsigned(7 downto 0);
--constant base_volume_fifo_11x11 : dsps_11x11 := (0,7,14,21,28,35,42,49,56,63,70,77,84,91,98,105,112,119,126,133,140,147,154);	  
--
--type dsps_3x3 is array (g_num_11_filters-1 downto 0) of unsigned(7 downto 0);
--constant base_volume_fifo_11x11 : dsps_11x11 := (0,11,22,33,44,55,66,77,88,99,110,121,132,143,154,165,176,187);	  

type state_type is (IDLE, IS_NET_READY, CALC_PARAMETERS, FETCH_WEIGHTS, FETCH_VOLUME, CONVOLUTION); 
signal current_state 				: state_type; 
signal next_state 					: state_type;  

signal inbuff_rd_en 				: std_logic;
signal volume_data 					: array_type_varx16bit(g_dsps_used-1 downto 0); 
signal weight_data 					: array_type_varx16bit(g_dsps_used-1 downto 0); 

signal input_volume_row_counter 	: unsigned(7 downto 0); 
signal channel_counter				: unsigned(11 downto 0); 
signal channels_remaining			: unsigned(11 downto 0); 	
signal more_dsps_needed				: std_logic; 
signal dsp_counter 					: unsigned(7 downto 0); 
signal channels_allowed 			: unsigned(7 downto 0);
signal filter_row_counter 			: unsigned(3 downto 0);  
signal filter_column_counter 		: unsigned(3 downto 0);  
signal filter_counter				: unsigned(11 downto 0); 
		 
signal volume_row_counter 			: unsigned(3 downto 0);  
signal volume_column_counter 		: unsigned(3 downto 0);  
signal volume_counter				: unsigned(11 downto 0); 

signal padded_volume_row_size 		: unsigned(7 downto 0); 
signal padded_volume_column_size 	: unsigned(7 downto 0);  

signal base_volume_fifo				: unsigned(7 downto 0); 







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
	o_inbuff_prog_empty_thresh  	<= inbuff_prog_empty_thresh; 
	o_new_data_select				<= new_data_select; 
	
	o_volume_fifo_wr_en			 	<= volume_fifo_wr_en; 
	o_volume_fifo_prog_full_thresh 	<= volume_fifo_prog_full_thresh; 
	
	
	
	
	state_transitions: process(i_clk,i_reset_n) is 
	begin  
		if(i_reset_n = '0') then 
			current_state <= IDLE; 
		elsif(rising_edge(i_clk)) then 
			current_state <= next_state; 
		end if; 
	end process; 	
	
	
	
 	next_state_combinational: process(i_weight_filter_size,i_start,i_enable,i_get_volume_row, i_get_weight_row, filter_counter, i_number_of_filters,i_inbuff_almost_empty,i_filter_kernal_loaded) is 
	begin  
		
		if(unsigned(i_weight_filter_size) = 11) then 	
			channels_allowed <= to_unsigned(g_num_11_filters,8); 
		elsif(unsigned(i_weight_filter_size) = 7) then
			channels_allowed <= to_unsigned(g_num_7_filters,8); 
		elsif(unsigned(i_weight_filter_size) = 3) then   
			channels_allowed <= to_unsigned(g_num_3_filters,8); 
		end if;  
		
		inbuff_rd_en <= '0';   
		volume_fifo_wr_en <= '0'; 
		
		case current_state is 
			when IDLE => 
				if(i_start = '1' and i_enable = '1') then 
					next_state <= IS_NET_READY; 
				else 
					next_state <= IDLE; 
				end if; 
			
			when IS_NET_READY => 
				if(and_reduce(i_get_volume_row) = '1' and and_reduce(i_get_weight_row) = '1') then 
					next_state <= CALC_PARAMETERS; 
				else
					next_state <= IS_NET_READY; 
				end if; 
			
			when CALC_PARAMETERS => 
				next_state <= FETCH_AND_LOAD_WEIGHTS; 
			
			when FETCH_AND_LOAD_WEIGHTS => 
			
				if(filter_counter < unsigned(i_number_of_filters)) then  
					next_state <= FETCH_WEIGHTS;
					if(i_inbuff_almost_empty = '0') then 	   
						inbuff_rd_en <= '1'; 
					else 
						inbuff_rd_en <= '0'; 
					end if;	  
				else 	 
					inbuff_rd_en <= '0'; 
					if(and_reduce(i_filter_kernal_loaded) = '1') then  
						next_state <= FETCH_VOLUME;   
					else 
						next_state <= FETCH_WEIGHTS; 
					end if; 
				end if; 
			
			when PAD_VOLUME_TOP => 
				if(channel_counter < unsigned(i_input_volume_channels)) then   
				
					new_data_select(to_integer(base_volume_fifo)) <= '1'; 
				
					if(i_volume_prog_full(to_integer(base_volume_fifo)) = '0' and element_counter <= padded_volume_row_size-1 and pad_counter < unsigned(i_pad)) then 
						volume_fifo_wr_en <= '1'; 
					end if;

				end if; 
			
			when FETCH_VOLUME =>  
			
				if(i_inbuff_almost_empty = '0' and i_volume_fifo_prog_full(channel_counter) = '0') then 	   
				
			
			when CONVOLUTION => 
			
		end case; 

	end process; 
	
	sequential_logic: process(i_clk,i_reset_n) is 
	begin  
		if(i_reset_n = '0') then
			more_dsps_needed 			<= '0'; 
			weight_data					<= (others => (others => '0'));  
			volume_data 				<= (others => (others => '0'));  
			dsp_counter 				<= (others => '0'); 
			channel_counter 			<= (others => '0');  
			filter_row_counter 			<= (others => '0'); 
			filter_column_counter 		<= (others => '0'); 
			padded_volume_row_size 		<= (others => '0'); 
			padded_volume_column_size 	<= (others => '0');    
			new_data_select				<= (others => '0');		
			base_volume_fifo 			<= (others => '0'); 
			
			
		elsif(rising_edge(i_clk)) then 
			more_dsps_needed 			<= more_dsps_needed; 
			weight_data 				<= weight_data;  
			volume_data 				<= volume_data; 
			dsp_counter 				<= dsp_counter; 
			channel_counter 			<= channel_counter; 
			filter_row_counter 			<= filter_row_counter; 
			filter_column_counter 		<= filter_column_counter; 
			padded_volume_row_size 		<= padded_volume_row_size; 
			padded_volume_column_size 	<= padded_volume_column_size; 
			new_data_select				<= new_data_select;   
			base_volume_fifo			<= base_volume_fifo; 
			
			case current_state is 
				when IDLE => 
				
				when IS_NET_READY => 
				
				when CALC_PARAMETERS =>
					if(channels_allowed > unsigned(i_input_volume_channels)) then 
						more_dsps_needed <= '0'; 
					else  
						more_dsps_needed <= '1'; 
					end if;  
					
					padded_volume_row_size 		<= unsigned(i_input_volume_size) + unsigned("0000" & i_pad) + unsigned("0000" & i_pad); 
					padded_volume_column_size 	<= unsigned(i_input_volume_size) + unsigned("0000" & i_pad) + unsigned("0000" & i_pad); 
					
					volume_fifo_prog_full_thresh <= unsigned(i_input_volume_size) + unsigned("0000" & i_pad) + unsigned("0000" & i_pad); 
					
				
				when FETCH_WEIGHTS => 
				
					if(i_inbuff_valid = '1') then

						if(more_dsps_needed = '1' and channel_counter >= channels_allowed) then 
							
							weight_data <= weight_data;
							
							if(channel_counter < unsigned(i_weight_filter_channels)) then 
								channel_counter <= channel_counter + 1;	
								filter_column_counter <= filter_column_counter; 
							elsif(channel_counter = unsigned(i_weight_filter_channels)) then 
								channel_counter <= (others => '0');	
								filter_column_counter <= filter_column_counter + 1; 
							end if; 
							 								  
						elsif(more_dsps_needed = '1' and channel_counter < channels_allowed) then 
							channel_counter <= channel_counter + 1;
							weight_data(to_integer(channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(filter_row_counter))) <= i_inbuff_dout; 
							filter_column_counter <= filter_column_counter; 
							
						elsif(more_dsps_needed = '0' and channel_counter < unsigned(i_weight_filter_channels)) then 
							channel_counter <= channel_counter + 1; 
							weight_data(to_integer(channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(filter_row_counter))) <= i_inbuff_dout; 	  
							filter_column_counter <= filter_column_counter; 	 
							
						elsif(more_dsps_needed = '0' and channel_counter = unsigned(i_weight_filter_channels)) then 
							channel_counter <= (others => '0'); 
							weight_data(to_integer(channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(filter_row_counter))) <= i_inbuff_dout; 
							filter_column_counter <= filter_column_counter + 1; 
							
						end if;
						
						
						if(filter_column_counter >= unsigned(i_weight_filter_size)-1) then 
							filter_column_counter <= (others => '0');
							if(filter_row_counter >= unsigned(i_weight_filter_size)-1) then 
								filter_row_counter <= (others => '0'); 
								filter_counter <= filter_counter + 1; 
							else 
								filter_row_counter <= filter_row_counter + 1;
							end if; 
						end if; 

					end if; 
					
				when PAD_VOLUME_TOP =>	
				
					if(channel_counter < unsigned(i_input_volume_channels)) then 
						new_data_select(to_integer(base_volume_fifo+channel_counter*unsigned(i_weight_filter_size))) <= '1'; 
					
						if(i_volume_prog_full(to_integer(base_volume_fifo+channel_counter*unsigned(i_weight_filter_size))) = '0' and element_counter <= padded_volume_row_size-1 and pad_counter < unsigned(i_pad)) then 
							volume_data(to_integer(base_volume_fifo+channel_counter*unsigned(i_weight_filter_size))) <= (others => '0'); 
							volume_fifo_wr_en <= '1'; 
							element_counter <= element_counter + 1; 
							if(element_counter = padded_volume_row_size-1) then 
								pad_counter <= pad_counter + 1; 
								element_counter <= (others => '0'); 
							else 
								pad_counter <= pad_counter;
								element_counter <= element_counter; 
							end if; 
							
						end if;
						
						channel_counter <= channel_counter + 1;    
					else 
						channel_counter <= (others => '0'); 
						element_counter <= (others => '0'); 
						pad_counter <= (others => '0'); 
					end if; 
						
					
				

				when FETCH_VOLUME => 
		

				if(i_volume_prog_full(to_integer(channel_counter*unsigned(i_weight_filter_size))) = '0') then	 
					
					volume_fifo_wr_en(to_integer(channel_counter*unsigned(i_weight_filter_size))) <= '1'; 	
					inbuff_rd_en <= '1'; 
					
					if(i_inbuff_valid = '1') then 	 
						if(more_dsps_needed = '1' and unsigned(channel_counter) = channels_allowed) then 
							volume_data <= volume_data;
							
							if(channel_counter < unsigned(i_input_volume_channels)) then 
								channel_counter <= channel_counter + 1;    
								volume_column_counter <= volume_column_counter; 
							elsif(channel_counter = unsigned(i_input_volume_counter)) then 
								channel_counter <= (others => '0'); 
								volumn_column_counter <= volume_column_counter + 1; 
							end if; 
							
						elsif(more_dsps_needed = '1' and unsigned(channel_counter ) < channels_allowed) then 
							channel_counter <= channel_counter + 1; 
							volume_data(to_integer(channel_counter*unsigned(i_weight_filter_size))) <= i_inbuff_dout; 	 
							volume_column_counter <= volume_column_counter + 1;
							
						elsif 
						
					
					
					
					

						if(more_dsps_needed = '1' and unsigned(channel_counter) >= channels_allowed) then 
							
							volume_data <= volume_data;
							
							if(channel_counter < unsigned(i_input_volume_channels)) then 
								channel_counter <= channel_counter + 1;	
								volume_column_counter <= volume_column_counter; 
							elsif(channel_counter = unsigned(i_input_volume_channels)) then 
								channel_counter <= (others => '0');	
								volume_column_counter <= volume_column_counter + 1; 
							end if; 
							 
						elsif(more_dsps_needed = '1' and unsigned(channel_counter) < channels_allowed) then 
							channel_counter <= channel_counter + 1;
							volume_data(to_integer(channel_counter*unsigned(i_input_volume_size) + unsigned(volume_row_counter))) <= i_inbuff_dout; 
							volume_column_counter <= volume_column_counter; 
							
						elsif(more_dsps_needed = '0' and channel_counter < unsigned(i_input_volume_channels)) then 
							channel_counter <= channel_counter + 1; 
							weight_data(to_integer(channel_counter*unsigned(i_input_volume_size) + unsigned(volume_row_counter))) <= i_inbuff_dout; 	  
							volume_column_counter <= volume_column_counter; 	 
							
						elsif(more_dsps_needed = '0' and channel_counter = unsigned(i_input_volume_channels)) then 
							channel_counter <= (others => '0'); 
							weight_data(to_integer(channel_counter*unsigned(i_input_volume_size) + unsigned(volume_row_counter))) <= i_inbuff_dout; 
							volume_column_counter <= volume_column_counter + 1; 
							
						end if;
						
						
						if(volume_column_counter >= unsigned(i_input_volume_size)-1) then 
							volume_column_counter <= (others => '0');
							if(volume_row_counter >= unsigned(i_input_volume_size)-1) then 
								volume_row_counter <= (others => '0'); 
								filter_counter <= filter_counter + 1; 
							else 
								volume_row_counter <= volume_row_counter + 1;
							end if; 
						end if; 
							
						
					end if; 
				
				
				
				when CONVOLUTION => 
				
			end case; 
		end if; 
	end process; 
end arch;
