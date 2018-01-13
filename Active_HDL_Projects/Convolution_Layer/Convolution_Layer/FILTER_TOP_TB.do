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
add wave -noupdate /filter_top_tb/addr_counter
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
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_clk
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_reset_n
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_enable
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_start
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_inbuff_valid
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_inbuff_dout
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_inbuff_rd_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_inbuff_empty
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_inbuff_almost_empty
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_inbuff_prog_empty
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_inbuff_prog_empty_thresh
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_input_volume_size
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_input_volume_channels
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_weight_filter_size
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_weight_filter_channels
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_number_of_filters
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_stride
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_pad
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_get_volume_row
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_get_weight_row
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_filter_kernal_loaded
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_loaded_rows_processed
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_volume_fifo_full
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_voluem_fifo_almost_full
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_volume_fifo_prog_full
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_weight_fifo_full
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_weight_fifo_almost_full
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/i_weight_fifo_prog_full
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_volume_data
add wave -noupdate -group ROW_CONTROLLER -expand /filter_top_tb/uut/ROW_CONTROLLER/o_weight_data
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_volume_new_data_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_stop_stack_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_volume_prev_data_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_volume_recycled_data_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_volume_fifo_wr_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_volume_fifo_prog_full_thresh
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_weight_fifo_wr_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_weight_fifo_prog_full_thresh
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_convolution_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_weights_new_data_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_weights_recycled_data_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/o_all_channels_processed
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/current_state
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/next_state
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/inbuff_rd_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_data
add wave -noupdate -group ROW_CONTROLLER -expand /filter_top_tb/uut/ROW_CONTROLLER/weight_data
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/input_volume_row_counter
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/channel_counter
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/more_dsps_needed
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/dsp_counter
add wave -noupdate -group ROW_CONTROLLER -radix decimal /filter_top_tb/uut/ROW_CONTROLLER/channels_allowed
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/filter_row_counter
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/filter_column_counter
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/filter_counter
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_fifo_wr_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_fifo_prog_full_thresh
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/padded_volume_row_size
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/padded_volume_column_size
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_rows_processed
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_new_data_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_prev_data_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/volume_recycled_data_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/weights_new_data_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/weights_recycled_data_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/stop_stack_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/element_counter
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/pad_counter
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/channels_processed
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/convolution_en
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/pad_8bit
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/pad_10bit
add wave -noupdate -group ROW_CONTROLLER /filter_top_tb/uut/ROW_CONTROLLER/input_volume_size_10bit
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -expand -group CU0 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHT_ROW_MUX/data
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
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/filter_row_shift_reg
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/data_valid
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/recycle_filter_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/recycle_filter_data
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/weights_mult
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/filters_loaded
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/filters_processed
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/rd_en
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/reset_weight_fifo_n
add wave -noupdate -expand -group CU0 -group WEIGHT_ROW_ROUTER /filter_top_tb/uut/CHANNEL_UNIT(0)/WEIGHTS_ROW_ROUTER/filter_number
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -expand -group CU1 -expand -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(1)/WEIGHT_ROW_MUX/data
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
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -group CU2 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_MUX/data
add wave -noupdate -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/din
add wave -noupdate -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/full
add wave -noupdate -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -group CU2 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(2)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -group CU3 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_MUX/data
add wave -noupdate -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/din
add wave -noupdate -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/full
add wave -noupdate -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -group CU3 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(3)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -group CU4 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_MUX/data
add wave -noupdate -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/din
add wave -noupdate -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/full
add wave -noupdate -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -group CU4 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(4)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -group CU5 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_MUX/data
add wave -noupdate -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/din
add wave -noupdate -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/full
add wave -noupdate -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -group CU5 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(5)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -group CU6 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_MUX/data
add wave -noupdate -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/din
add wave -noupdate -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/full
add wave -noupdate -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -group CU6 -group WEIGHT_ROW_FIFOC6 /filter_top_tb/uut/CHANNEL_UNIT(6)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -group CU7 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_MUX/data
add wave -noupdate -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/din
add wave -noupdate -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/full
add wave -noupdate -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -group CU7 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(7)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -group CU8 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_MUX/data
add wave -noupdate -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/din
add wave -noupdate -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/full
add wave -noupdate -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -group CU8 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(8)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -group CU9 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_MUX/data
add wave -noupdate -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/din
add wave -noupdate -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/full
add wave -noupdate -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -group CU9 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(9)/WEIGHT_ROW_FIFO/prog_empty
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_clk
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_reset_n
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_enable
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_recycled_data
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_recycled_data_wr_en
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_new_data
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_prev_data
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_prev_data_wr_en
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/o_data
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_new_data_en
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_prev_data_en
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_recycled_data_en
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/o_wr_en
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_full
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_almost_full
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_prog_full
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/o_prog_full_thresh
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/o_get_volume_row
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_fifo_we
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/o_fifo_full
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/o_fifo_almost_full
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/o_fifo_prog_full
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/i_fifo_prog_full_thresh
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/wr_en
add wave -noupdate -group CU10 -group WEIGHT_ROW_MUX /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_MUX/data
add wave -noupdate -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/rst
add wave -noupdate -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/din
add wave -noupdate -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/wr_en
add wave -noupdate -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/rd_en
add wave -noupdate -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/prog_empty_thresh
add wave -noupdate -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/prog_full_thresh
add wave -noupdate -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/dout
add wave -noupdate -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/full
add wave -noupdate -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/almost_full
add wave -noupdate -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/empty
add wave -noupdate -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/almost_empty
add wave -noupdate -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/valid
add wave -noupdate -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/prog_full
add wave -noupdate -group CU10 -group WEIGHT_ROW_FIFO /filter_top_tb/uut/CHANNEL_UNIT(10)/WEIGHT_ROW_FIFO/prog_empty
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {215 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 280
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ns} {625 ns}
