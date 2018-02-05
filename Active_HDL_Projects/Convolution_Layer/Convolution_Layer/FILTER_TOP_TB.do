onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /filter_top_tb/clk
add wave -noupdate /filter_top_tb/reset_n
add wave -noupdate /filter_top_tb/reset
add wave -noupdate /filter_top_tb/inbuff_din
add wave -noupdate /filter_top_tb/inbuff_wr_en
add wave -noupdate /filter_top_tb/inbuff_empty
add wave -noupdate /filter_top_tb/inbuff_almost_empty
add wave -noupdate /filter_top_tb/inbuff_prog_empty
add wave -noupdate /filter_top_tb/inbuff_valid
add wave -noupdate /filter_top_tb/inbuff_dout
add wave -noupdate /filter_top_tb/inbuff_prog_full_thresh
add wave -noupdate /filter_top_tb/inbuff_full
add wave -noupdate /filter_top_tb/inbuff_almost_full
add wave -noupdate /filter_top_tb/inbuff_prog_full
add wave -noupdate /filter_top_tb/en
add wave -noupdate /filter_top_tb/start
add wave -noupdate /filter_top_tb/normalizer_ready
add wave -noupdate /filter_top_tb/input_volume_channels
add wave -noupdate /filter_top_tb/input_volume_size
add wave -noupdate /filter_top_tb/number_of_filters
add wave -noupdate /filter_top_tb/pad
add wave -noupdate /filter_top_tb/stride
add wave -noupdate /filter_top_tb/weight_filter_channels
add wave -noupdate /filter_top_tb/weight_filter_size
add wave -noupdate /filter_top_tb/conv_data_valid
add wave -noupdate /filter_top_tb/inbuff_rd_en
add wave -noupdate /filter_top_tb/conv_volume_out
add wave -noupdate /filter_top_tb/inbuff_prog_empty_thresh
add wave -noupdate /filter_top_tb/close_flag
add wave -noupdate /filter_top_tb/data_read
add wave -noupdate /filter_top_tb/input_mem_addr
add wave -noupdate /filter_top_tb/weight_addr_counter
add wave -noupdate /filter_top_tb/image_data
add wave -noupdate /filter_top_tb/loop_counter
add wave -noupdate /filter_top_tb/weight_channel
add wave -noupdate /filter_top_tb/input_channel
add wave -noupdate /filter_top_tb/input_addr_counter
add wave -noupdate /filter_top_tb/CLK_PERIOD
add wave -noupdate /filter_top_tb/DATA_WIDTH
add wave -noupdate /filter_top_tb/filename
add wave -noupdate -expand -group BRAM /filter_top_tb/memory/clka
add wave -noupdate -expand -group BRAM /filter_top_tb/memory/wea
add wave -noupdate -expand -group BRAM /filter_top_tb/memory/addra
add wave -noupdate -expand -group BRAM /filter_top_tb/memory/dina
add wave -noupdate -expand -group BRAM /filter_top_tb/memory/douta
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/rst
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/wr_clk
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/rd_clk
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/din
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/wr_en
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/rd_en
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/prog_empty_thresh
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/prog_full_thresh
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/dout
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/full
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/almost_full
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/empty
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/almost_empty
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/valid
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/prog_full
add wave -noupdate -expand -group INPUT_FIFO /filter_top_tb/input_fifo/prog_empty
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/g_data_width
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/g_dsps_used
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/g_num_11_filters
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/g_num_7_filters
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/g_num_3_filters
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_reset_n
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_enable
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_start
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_inbuff_valid
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_inbuff_dout
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_inbuff_rd_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_inbuff_empty
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_inbuff_almost_empty
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_inbuff_prog_empty
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_inbuff_prog_empty_thresh
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_input_volume_size
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_input_volume_channels
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_weight_filter_size
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_weight_filter_channels
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_number_of_filters
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_stride
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_pad
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_get_volume_row
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_get_weight_row
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_filter_kernal_loaded
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_loaded_rows_processed
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_volume_fifo_full
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_volume_fifo_prog_full
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_weight_fifo_full
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_weight_fifo_almost_full
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_weight_fifo_prog_full
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_weight_data
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_stop_stack_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_volume_prev_data_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_volume_recycled_data_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_volume_data
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_volume_new_data_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_volume_fifo_wr_en
add wave -noupdate -expand -group ROW_CONTROLLER -radix unsigned /filter_top_tb/uut/ROW_CONTROLLER/volume_column_counter
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_clk
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_volume_fifo_prog_full_thresh
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_weight_fifo_wr_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_weight_fifo_prog_full_thresh
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_convolution_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_weights_new_data_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_weights_recycled_data_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_weights_prev_data_wr_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_weights_prev_data_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_recycled_data
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_recycled_data_wr_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_prev_data
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_prev_data_wr_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_all_channels_processed
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_data_return
add wave -noupdate -expand -group ROW_CONTROLLER -expand /filter_top_tb/uut/ROW_CONTROLLER/i_data_return_wr_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_channel_counter
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/weight_channel_counter
add wave -noupdate -expand -group ROW_CONTROLLER -radix unsigned /filter_top_tb/uut/ROW_CONTROLLER/volume_row_counter
add wave -noupdate -expand -group ROW_CONTROLLER -expand /filter_top_tb/uut/ROW_CONTROLLER/i_snake_fill_complete
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_row
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/stride_counter
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/current_state
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/next_state
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/inbuff_rd_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/iteration_calc
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/iterations_required
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/weights_prev_data_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/weights_prev_data_wr_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/all_channels_processed
add wave -noupdate -expand -group ROW_CONTROLLER -expand /filter_top_tb/uut/ROW_CONTROLLER/prev_data_wr_en
add wave -noupdate -expand -group ROW_CONTROLLER -expand /filter_top_tb/uut/ROW_CONTROLLER/prev_data
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/recycled_data_wr_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/recycled_data
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_data
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/weight_data
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/input_volume_row_counter
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/more_dsps_needed
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/dsp_counter
add wave -noupdate -expand -group ROW_CONTROLLER -radix decimal /filter_top_tb/uut/ROW_CONTROLLER/channels_allowed
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/filter_row_counter
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/filter_column_counter
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/filter_counter
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_fifo_wr_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_fifo_prog_full_thresh
add wave -noupdate -expand -group ROW_CONTROLLER -radix unsigned /filter_top_tb/uut/ROW_CONTROLLER/padded_volume_row_size
add wave -noupdate -expand -group ROW_CONTROLLER -radix unsigned /filter_top_tb/uut/ROW_CONTROLLER/padded_volume_column_size
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_rows_processed
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_new_data_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_prev_data_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_recycled_data_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/weights_new_data_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/weight_fifo_wr_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/weights_recycled_data_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/stop_stack_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/element_counter
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/pad_counter
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/channels_processed
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/convolution_en
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/pad_8bit
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/pad_10bit
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/input_volume_size_10bit
add wave -noupdate -expand -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/g_weight_width
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/data
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_FIFO/din
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_FIFO/full
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/i_filter_data
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/i_num_filters
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/o_recycle_filter_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/o_recycle_filter_data
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/o_weights_mult
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/o_filters_loaded
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/o_filters_processed
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/i_prog_full
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/i_weight_filter_size
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/i_volume_row_size
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/i_clear_weights
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/o_reset_weight_fifo_n
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/filter_element_counter
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/row_element_counter
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER -expand /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/filter_row_shift_reg
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/recycle_filter_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/recycle_filter_data
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/weights_mult
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/filters_loaded
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/filters_processed
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/reset_weight_fifo_n
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/filter_number
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_clk
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_enable
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/o_data
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_full
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/wr_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/data
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_MUX/get_volume_row
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/rst
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/wr_clk
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/rd_clk
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/din
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/dout
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/full
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/empty
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/valid
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/i_number_of_filters
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/i_filters_loaded
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/i_volume_data
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/o_data_return
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/o_data_return_wr_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/o_data_mult
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/o_rows_complete
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/i_next_fifo_full
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/i_stop_stack_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/i_row_size
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/data_return
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/data_return_wr_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER -expand /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/data_mult
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/rows_complete
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/element_counter
add wave -noupdate -expand -group CU0 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/VOLUME_ROW_ROUTER/filter_counter
add wave -noupdate -expand -group CU0 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(0)/MULTIPLIER/a
add wave -noupdate -expand -group CU0 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(0)/MULTIPLIER/b
add wave -noupdate -expand -group CU0 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(0)/MULTIPLIER/clk
add wave -noupdate -expand -group CU0 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(0)/MULTIPLIER/result
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/data
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_FIFO/din
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_FIFO/full
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU1 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/i_filter_data
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/i_num_filters
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/o_recycle_filter_en
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/o_recycle_filter_data
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/o_weights_mult
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/o_filters_loaded
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/o_filters_processed
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/i_prog_full
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/i_weight_filter_size
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/i_volume_row_size
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/i_clear_weights
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/o_reset_weight_fifo_n
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/filter_element_counter
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/row_element_counter
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/filter_row_shift_reg
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/recycle_filter_en
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/recycle_filter_data
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/weights_mult
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/filters_loaded
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/filters_processed
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/reset_weight_fifo_n
add wave -noupdate -expand -group CU1 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHTS_ROW_ROUTER/filter_number
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_clk
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_enable
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/o_data
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_full
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/wr_en
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/data
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_MUX/get_volume_row
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/rst
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/wr_clk
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/rd_clk
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/din
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/dout
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/full
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/empty
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/valid
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU1 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/i_number_of_filters
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/i_filters_loaded
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/i_volume_data
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/o_data_return
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/o_data_return_wr_en
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/o_data_mult
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/o_rows_complete
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/i_next_fifo_full
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/i_stop_stack_en
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/i_row_size
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/o_snake_fill_complete
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/o_sending
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/o_conv_complete
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/data_array
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/sending
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/column_counter
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/conv_complete
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/snake_fill_complete
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/data_return
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/data_return_wr_en
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/data_mult
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/rows_complete
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/element_counter
add wave -noupdate -expand -group CU1 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(1)/VOLUME_ROW_ROUTER/filter_counter
add wave -noupdate -expand -group CU1 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(1)/MULTIPLIER/a
add wave -noupdate -expand -group CU1 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(1)/MULTIPLIER/b
add wave -noupdate -expand -group CU1 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(1)/MULTIPLIER/clk
add wave -noupdate -expand -group CU1 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(1)/MULTIPLIER/result
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -expand -group CU2 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/data
add wave -noupdate -expand -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -expand -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/din
add wave -noupdate -expand -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -expand -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/full
add wave -noupdate -expand -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -expand -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -expand -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/i_filter_data
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/i_num_filters
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/o_recycle_filter_en
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/o_recycle_filter_data
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/o_weights_mult
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/o_filters_loaded
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/o_filters_processed
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/i_prog_full
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/i_weight_filter_size
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/i_volume_row_size
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/i_clear_weights
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/o_reset_weight_fifo_n
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/filter_element_counter
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/row_element_counter
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER -expand /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/filter_row_shift_reg
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/recycle_filter_en
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/recycle_filter_data
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/weights_mult
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/filters_loaded
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/filters_processed
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/reset_weight_fifo_n
add wave -noupdate -expand -group CU2 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHTS_ROW_ROUTER/filter_number
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_clk
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_enable
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/o_data
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_full
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/wr_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/data
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_MUX/get_volume_row
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/rst
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/wr_clk
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/rd_clk
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/din
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/dout
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/full
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/empty
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/valid
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_number_of_filters
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_filter_size
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_stride
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_volume_data
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/o_data_return
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/o_data_return_wr_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/o_data_mult
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/o_rows_complete
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/o_sending
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_next_fifo_full
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_stop_stack_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_filters_loaded
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_row_size
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/i_padded_volume_size
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/o_snake_fill_complete
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/snake_fill_complete
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/o_conv_complete
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/sending
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/conv_complete
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/data_return
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/data_return_wr_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/element_counter
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/column_counter
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/data_mult
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER -expand /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/data_array
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/rows_complete
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU2 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(2)/VOLUME_ROW_ROUTER/filter_counter
add wave -noupdate -expand -group CU2 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(2)/MULTIPLIER/a
add wave -noupdate -expand -group CU2 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(2)/MULTIPLIER/b
add wave -noupdate -expand -group CU2 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(2)/MULTIPLIER/clk
add wave -noupdate -expand -group CU2 -expand -group MULTIPLIER -radix hexadecimal /filter_top_tb/uut/CHANNEL_UNIT(2)/MULTIPLIER/result
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/data
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/din
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/full
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/i_filter_data
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/i_num_filters
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/o_recycle_filter_en
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/o_recycle_filter_data
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/o_weights_mult
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/o_filters_loaded
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/o_filters_processed
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/i_prog_full
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/i_weight_filter_size
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/i_volume_row_size
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/i_clear_weights
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/o_reset_weight_fifo_n
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/filter_element_counter
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/row_element_counter
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/filter_row_shift_reg
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/recycle_filter_en
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/recycle_filter_data
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/weights_mult
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/filters_loaded
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/filters_processed
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/reset_weight_fifo_n
add wave -noupdate -expand -group CU3 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHTS_ROW_ROUTER/filter_number
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_clk
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_enable
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/o_data
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_full
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/wr_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/data
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_MUX1 /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_MUX/get_volume_row
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/rst
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/wr_clk
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/rd_clk
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/din
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/dout
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/full
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/empty
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/valid
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/i_number_of_filters
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/i_filters_loaded
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/i_volume_data
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/o_data_return
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/o_data_return_wr_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/o_data_mult
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/o_rows_complete
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/i_next_fifo_full
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/i_stop_stack_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/i_row_size
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/data_return
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/data_return_wr_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/data_mult
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/rows_complete
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/element_counter
add wave -noupdate -expand -group CU3 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(3)/VOLUME_ROW_ROUTER/filter_counter
add wave -noupdate -expand -group CU3 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(3)/MULTIPLIER/a
add wave -noupdate -expand -group CU3 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(3)/MULTIPLIER/b
add wave -noupdate -expand -group CU3 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(3)/MULTIPLIER/clk
add wave -noupdate -expand -group CU3 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(3)/MULTIPLIER/result
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/data
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/din
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/full
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/i_filter_data
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/i_num_filters
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/o_recycle_filter_en
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/o_recycle_filter_data
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/o_weights_mult
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/o_filters_loaded
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/o_filters_processed
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/i_prog_full
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/i_weight_filter_size
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/i_volume_row_size
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/i_clear_weights
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/o_reset_weight_fifo_n
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/filter_element_counter
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/row_element_counter
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/filter_row_shift_reg
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/recycle_filter_en
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/recycle_filter_data
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/weights_mult
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/filters_loaded
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/filters_processed
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/reset_weight_fifo_n
add wave -noupdate -expand -group CU4 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHTS_ROW_ROUTER/filter_number
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_clk
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_enable
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/o_data
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_full
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/wr_en
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/data
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_MUX/get_volume_row
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/rst
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/wr_clk
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/rd_clk
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/din
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/dout
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/full
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/empty
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/valid
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU4 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/i_number_of_filters
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/i_filters_loaded
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/i_volume_data
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/o_data_return
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/o_data_return_wr_en
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/o_data_mult
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/o_rows_complete
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/i_next_fifo_full
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/i_stop_stack_en
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/i_row_size
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/data_return
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/data_return_wr_en
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/data_mult
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/rows_complete
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/element_counter
add wave -noupdate -expand -group CU4 -group VOLUMR_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(4)/VOLUME_ROW_ROUTER/filter_counter
add wave -noupdate -expand -group CU4 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(4)/MULTIPLIER/a
add wave -noupdate -expand -group CU4 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(4)/MULTIPLIER/b
add wave -noupdate -expand -group CU4 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(4)/MULTIPLIER/clk
add wave -noupdate -expand -group CU4 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(4)/MULTIPLIER/result
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/data
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/din
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/full
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/i_filter_data
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/i_num_filters
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/o_recycle_filter_en
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/o_recycle_filter_data
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/o_weights_mult
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/o_filters_loaded
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/o_filters_processed
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/i_prog_full
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/i_weight_filter_size
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/i_volume_row_size
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/i_clear_weights
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/o_reset_weight_fifo_n
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/filter_element_counter
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/row_element_counter
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/filter_row_shift_reg
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/recycle_filter_en
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/recycle_filter_data
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/weights_mult
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/filters_loaded
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/filters_processed
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/reset_weight_fifo_n
add wave -noupdate -expand -group CU5 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHTS_ROW_ROUTER/filter_number
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_clk
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_enable
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/o_data
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_full
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/wr_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/data
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_MUX/get_volume_row
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/rst
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/wr_clk
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/rd_clk
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/din
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/dout
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/full
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/empty
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/valid
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/i_number_of_filters
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/i_filters_loaded
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/i_volume_data
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/o_data_return
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/o_data_return_wr_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/o_data_mult
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/o_rows_complete
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/i_next_fifo_full
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/i_stop_stack_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/i_row_size
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/data_return
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/data_return_wr_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/data_mult
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/rows_complete
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/element_counter
add wave -noupdate -expand -group CU5 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(5)/VOLUME_ROW_ROUTER/filter_counter
add wave -noupdate -expand -group CU5 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(5)/MULTIPLIER/a
add wave -noupdate -expand -group CU5 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(5)/MULTIPLIER/b
add wave -noupdate -expand -group CU5 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(5)/MULTIPLIER/clk
add wave -noupdate -expand -group CU5 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(5)/MULTIPLIER/result
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/data
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/din
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/full
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/i_filter_data
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/i_num_filters
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/o_recycle_filter_en
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/o_recycle_filter_data
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/o_weights_mult
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/o_filters_loaded
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/o_filters_processed
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/i_prog_full
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/i_weight_filter_size
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/i_volume_row_size
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/i_clear_weights
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/o_reset_weight_fifo_n
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/filter_element_counter
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/row_element_counter
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/filter_row_shift_reg
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/recycle_filter_en
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/recycle_filter_data
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/weights_mult
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/filters_loaded
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/filters_processed
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/reset_weight_fifo_n
add wave -noupdate -expand -group CU6 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHTS_ROW_ROUTER/filter_number
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_clk
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_enable
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/o_data
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_full
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/wr_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/data
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_MUX/get_volume_row
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/rst
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/wr_clk
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/rd_clk
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/din
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/dout
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/full
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/empty
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/valid
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/i_number_of_filters
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/i_filters_loaded
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/i_volume_data
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/o_data_return
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/o_data_return_wr_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/o_data_mult
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/o_rows_complete
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/i_next_fifo_full
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/i_stop_stack_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/i_row_size
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/data_return
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/data_return_wr_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/data_mult
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/rows_complete
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/element_counter
add wave -noupdate -expand -group CU6 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(6)/VOLUME_ROW_ROUTER/filter_counter
add wave -noupdate -expand -group CU6 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(6)/MULTIPLIER/a
add wave -noupdate -expand -group CU6 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(6)/MULTIPLIER/b
add wave -noupdate -expand -group CU6 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(6)/MULTIPLIER/clk
add wave -noupdate -expand -group CU6 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(6)/MULTIPLIER/result
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/data
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/din
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/full
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/i_filter_data
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/i_num_filters
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/o_recycle_filter_en
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/o_recycle_filter_data
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/o_weights_mult
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/o_filters_loaded
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/o_filters_processed
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/i_prog_full
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/i_weight_filter_size
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/i_volume_row_size
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/i_clear_weights
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/o_reset_weight_fifo_n
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/filter_element_counter
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/row_element_counter
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/filter_row_shift_reg
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/recycle_filter_en
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/recycle_filter_data
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/weights_mult
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/filters_loaded
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/filters_processed
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/reset_weight_fifo_n
add wave -noupdate -expand -group CU7 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHTS_ROW_ROUTER/filter_number
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_clk
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_enable
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/o_data
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_full
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/wr_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/data
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_MUX/get_volume_row
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/rst
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/wr_clk
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/rd_clk
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/din
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/dout
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/full
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/empty
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/valid
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/i_number_of_filters
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/i_filters_loaded
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/i_volume_data
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/o_data_return
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/o_data_return_wr_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/o_data_mult
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/o_rows_complete
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/i_next_fifo_full
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/i_stop_stack_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/i_row_size
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/data_return
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/data_return_wr_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/data_mult
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/rows_complete
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/element_counter
add wave -noupdate -expand -group CU7 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(7)/VOLUME_ROW_ROUTER/filter_counter
add wave -noupdate -expand -group CU7 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(7)/MULTIPLIER/a
add wave -noupdate -expand -group CU7 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(7)/MULTIPLIER/b
add wave -noupdate -expand -group CU7 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(7)/MULTIPLIER/clk
add wave -noupdate -expand -group CU7 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(7)/MULTIPLIER/result
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/data
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/din
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/full
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/i_filter_data
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/i_num_filters
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/o_recycle_filter_en
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/o_recycle_filter_data
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/o_weights_mult
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/o_filters_loaded
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/o_filters_processed
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/i_prog_full
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/i_weight_filter_size
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/i_volume_row_size
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/i_clear_weights
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/o_reset_weight_fifo_n
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/filter_element_counter
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/row_element_counter
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER -expand /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/filter_row_shift_reg
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/recycle_filter_en
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/recycle_filter_data
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/weights_mult
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/filters_loaded
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/filters_processed
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/reset_weight_fifo_n
add wave -noupdate -expand -group CU8 -expand -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHTS_ROW_ROUTER/filter_number
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_clk
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_enable
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/o_data
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_full
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/wr_en
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/data
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_MUX/get_volume_row
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/rst
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/wr_clk
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/rd_clk
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/din
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/dout
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/full
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/empty
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/valid
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU8 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/i_number_of_filters
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/i_filters_loaded
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/i_volume_data
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/o_data_return
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/o_data_return_wr_en
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/o_data_mult
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/o_rows_complete
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/i_next_fifo_full
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/i_stop_stack_en
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/i_row_size
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/data_return
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/data_return_wr_en
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/data_mult
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/rows_complete
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/element_counter
add wave -noupdate -expand -group CU8 -expand -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(8)/VOLUME_ROW_ROUTER/filter_counter
add wave -noupdate -expand -group CU8 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(8)/MULTIPLIER/a
add wave -noupdate -expand -group CU8 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(8)/MULTIPLIER/b
add wave -noupdate -expand -group CU8 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(8)/MULTIPLIER/clk
add wave -noupdate -expand -group CU8 -expand -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(8)/MULTIPLIER/result
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/data
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/din
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/full
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/i_filter_data
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/i_num_filters
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/o_recycle_filter_en
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/o_recycle_filter_data
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/o_weights_mult
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/o_filters_loaded
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/o_filters_processed
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/i_prog_full
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/i_weight_filter_size
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/i_volume_row_size
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/i_clear_weights
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/o_reset_weight_fifo_n
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/filter_element_counter
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/row_element_counter
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/filter_row_shift_reg
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/recycle_filter_en
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/recycle_filter_data
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/weights_mult
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/filters_loaded
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/filters_processed
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/reset_weight_fifo_n
add wave -noupdate -expand -group CU9 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHTS_ROW_ROUTER/filter_number
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_clk
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_enable
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/o_data
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_full
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/wr_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/data
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_MUX/get_volume_row
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/rst
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/wr_clk
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/rd_clk
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/din
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/dout
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/full
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/empty
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/valid
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/i_number_of_filters
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/i_filters_loaded
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/i_volume_data
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/o_data_return
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/o_data_return_wr_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/o_data_mult
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/o_rows_complete
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/i_next_fifo_full
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/i_stop_stack_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/i_row_size
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/data_return
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/data_return_wr_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/data_mult
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/rows_complete
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/element_counter
add wave -noupdate -expand -group CU9 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(9)/VOLUME_ROW_ROUTER/filter_counter
add wave -noupdate -expand -group CU9 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(9)/MULTIPLIER/a
add wave -noupdate -expand -group CU9 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(9)/MULTIPLIER/b
add wave -noupdate -expand -group CU9 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(9)/MULTIPLIER/clk
add wave -noupdate -expand -group CU9 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(9)/MULTIPLIER/result
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/data
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/din
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/full
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/i_filter_data
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/i_num_filters
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/o_recycle_filter_en
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/o_recycle_filter_data
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/o_weights_mult
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/o_filters_loaded
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/o_filters_processed
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/i_prog_full
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/i_weight_filter_size
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/i_volume_row_size
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/i_clear_weights
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/o_reset_weight_fifo_n
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/filter_element_counter
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/row_element_counter
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/filter_row_shift_reg
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/recycle_filter_en
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/recycle_filter_data
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/weights_mult
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/filters_loaded
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/filters_processed
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/reset_weight_fifo_n
add wave -noupdate -expand -group CU10 -group WEIGHTS_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHTS_ROW_ROUTER/filter_number
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_clk
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_enable
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/o_data
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_full
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/wr_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/data
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_MUX/get_volume_row
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/rst
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/wr_clk
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/rd_clk
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/din
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/wr_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/rd_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/prog_empty_thresh
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/prog_full_thresh
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/dout
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/full
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/almost_full
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/empty
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/almost_empty
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/valid
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/prog_full
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_FIFO/prog_empty
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/i_clk
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/i_reset_n
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/i_enable
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/i_number_of_filters
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/i_filters_loaded
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/i_volume_data
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/o_data_return
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/o_data_return_wr_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/o_data_mult
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/o_data_valid
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/o_rows_complete
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/i_fifo_data_valid
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/o_rd_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/i_empty
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/i_almost_empty
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/i_prog_empty
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/o_prog_empty_thresh
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/i_next_fifo_full
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/i_stop_stack_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/i_convolution_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/i_row_size
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/current_state
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/next_state
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/data_return
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/data_return_wr_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/data_mult
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/rows_complete
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/element_counter
add wave -noupdate -expand -group CU10 -group VOLUME_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(10)/VOLUME_ROW_ROUTER/filter_counter
add wave -noupdate -expand -group CU10 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(10)/MULTIPLIER/a
add wave -noupdate -expand -group CU10 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(10)/MULTIPLIER/b
add wave -noupdate -expand -group CU10 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(10)/MULTIPLIER/clk
add wave -noupdate -expand -group CU10 -group MULTIPLIER /filter_top_tb/uut/CHANNEL_UNIT(10)/MULTIPLIER/result
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/i_clk
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/i_reset_n
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/i_enable
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/i_products_array
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/i_products_array_valid
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/i_filter_size
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/o_acc_valid
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/o_acc_data
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/acc_data
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/acc_valid
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/g_data_width
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/g_product_width
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/g_accumulator_width
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/g_dsps_used
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/g_layer_1_adders
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/g_layer_2_adders
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/g_layer_3_adders
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/g_layer_4_adders
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/g_layer_5_adders
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/g_layer_6_adders
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/g_layer_7_adders
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/g_num_adder_layers
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/g_adder_delay
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/o_acc_ready
add wave -noupdate -expand -group DSP_ACCUMULATOR -expand /filter_top_tb/uut/DSP_ACCUMULATOR/dsp_sums
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/filter_element_counter
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/kernel_sum_reg
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/kernel_sum_valid
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/kernel_sum_result
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/kernel_value
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/current_state
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/next_state
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/layer_6_result_DEBUG
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/acc_complete
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/adder_delay_counter
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/delay_shift_register
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/acc_ready
add wave -noupdate -expand -group DSP_ACCUMULATOR -expand /filter_top_tb/uut/DSP_ACCUMULATOR/layer_1_result
add wave -noupdate -expand -group DSP_ACCUMULATOR -expand /filter_top_tb/uut/DSP_ACCUMULATOR/layer_2_result
add wave -noupdate -expand -group DSP_ACCUMULATOR -expand /filter_top_tb/uut/DSP_ACCUMULATOR/layer_3_result
add wave -noupdate -expand -group DSP_ACCUMULATOR -expand /filter_top_tb/uut/DSP_ACCUMULATOR/layer_4_result
add wave -noupdate -expand -group DSP_ACCUMULATOR -expand /filter_top_tb/uut/DSP_ACCUMULATOR/layer_5_result
add wave -noupdate -expand -group DSP_ACCUMULATOR -expand /filter_top_tb/uut/DSP_ACCUMULATOR/layer_6_result
add wave -noupdate -expand -group DSP_ACCUMULATOR -expand /filter_top_tb/uut/DSP_ACCUMULATOR/layer_7_result
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/Adder_result
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/delay_counter
add wave -noupdate -expand -group DSP_ACCUMULATOR /filter_top_tb/uut/DSP_ACCUMULATOR/layer_5_result_DEBUG
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/i_clk
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/i_reset_n
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/i_acc_data_valid
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/i_acc_data
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/i_recycled_acc_data_en
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/i_recycled_acc_data
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/o_acc_filter_data
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/o_data_valid
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/i_full
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/i_almost_full
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/i_prog_full
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/o_prog_full_thresh
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/i_num_filters
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/i_num_iterations
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/g_data_width
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/g_adder_delay
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/i_send_done
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/i_output_volume_size
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/o_filter_accumulator_ready
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/o_send
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/o_recycle_en
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/volume_pixel_counter
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/recycled_data_multiplicand
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/dsp_acc_data
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/send_flag
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/filter_accumulator_ready
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/adder_delay_counter
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/accumulated_data
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/acc_filter_data
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/data_valid
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/filter_iterations
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/recycle_en
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/current_state
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/next_state
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/hold_flag
add wave -noupdate -expand -group FILTER_ACCUMULATOR /filter_top_tb/uut/FILTER_ACCUMULATOR_UNIT/filter_counter
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/rst
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/wr_clk
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/rd_clk
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/din
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/wr_en
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/rd_en
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/prog_empty_thresh
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/prog_full_thresh
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/dout
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/full
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/almost_full
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/empty
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/almost_empty
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/valid
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/prog_full
add wave -noupdate -group ACCUMULATOR_FIFO /filter_top_tb/uut/ACCUMULATOR_FIFO/prog_empty
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/g_data_width
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/i_clk
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/i_reset_n
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/i_acc_filter_data
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/i_data_valid
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/i_empty
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/i_almost_empty
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/i_prog_empty
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/i_prog_full
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/i_send
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/i_normalizer_ready
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/i_recycle_en
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/o_recycled_acc_data
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/o_recycled_acc_data_en
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/o_rd_en
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/o_prog_emtpy_thresh
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/o_conv_volume_out
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/o_conv_data_valid
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/o_send_done
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/current_state
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/next_state
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/recycled_acc_data
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/recycled_acc_data_en
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/rd_en
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/prog_emtpy_thresh
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/conv_volume_out
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/conv_data_valid
add wave -noupdate -expand -group ACCUMULATOR_RELAY /filter_top_tb/uut/ACCUMULATOR_RELAY_UNIT/hold_clear
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {25886 ns} 0} {{Cursor 2} {144812 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 362
configure wave -valuecolwidth 205
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {23791 ns} {27546 ns}
