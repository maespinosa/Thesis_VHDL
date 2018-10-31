onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB /max_pool_unit_tb/clk
add wave -noupdate -expand -group TB /max_pool_unit_tb/reset_n
add wave -noupdate -expand -group TB /max_pool_unit_tb/inbuff_din
add wave -noupdate -expand -group TB /max_pool_unit_tb/inbuff_wr_en
add wave -noupdate -expand -group TB /max_pool_unit_tb/inbuff_almost_full
add wave -noupdate -expand -group TB -radix unsigned /max_pool_unit_tb/input_volume_size
add wave -noupdate -expand -group TB /max_pool_unit_tb/stride
add wave -noupdate -expand -group TB /max_pool_unit_tb/input_mem_addr
add wave -noupdate -expand -group TB /max_pool_unit_tb/image_data
add wave -noupdate -expand -group TB /max_pool_unit_tb/loop_counter
add wave -noupdate -expand -group TB /max_pool_unit_tb/input_addr_counter
add wave -noupdate -expand -group TB /max_pool_unit_tb/output_volume_size
add wave -noupdate -expand -group TB /max_pool_unit_tb/pool_kernel_size
add wave -noupdate -expand -group TB /max_pool_unit_tb/CLK_PERIOD
add wave -noupdate -expand -group TB -expand -group INPUT_BRAM /max_pool_unit_tb/input_memory/clka
add wave -noupdate -expand -group TB -expand -group INPUT_BRAM /max_pool_unit_tb/input_memory/wea
add wave -noupdate -expand -group TB -expand -group INPUT_BRAM /max_pool_unit_tb/input_memory/addra
add wave -noupdate -expand -group TB -expand -group INPUT_BRAM /max_pool_unit_tb/input_memory/dina
add wave -noupdate -expand -group TB -expand -group INPUT_BRAM /max_pool_unit_tb/input_memory/douta
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/i_clk
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/i_reset_n
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/i_inbuff_din
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/i_inbuff_wr_en
add wave -noupdate -expand -group TB -expand -group UUT -radix unsigned /max_pool_unit_tb/uut/i_input_volume_size
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/i_output_volume_size
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/i_pool_kernel_size
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/i_stride
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/o_inbuff_full
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/o_inbuff_almost_full
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/inbuff_rd_en
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/inbuff_dout
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/inbuff_empty
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/inbuff_almost_empty
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/inbuff_valid
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR0_din
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR0_wr_en
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR0_empty
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR0_almost_empty
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR0_full
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR0_almost_full
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR0_dout
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR0_valid
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR0_rd_en
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR1_din
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR1_wr_en
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR1_empty
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR1_almost_empty
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR1_full
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR1_almost_full
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR1_dout
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR1_valid
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR1_rd_en
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR2_din
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR2_wr_en
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR2_empty
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR2_almost_empty
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR2_full
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR2_almost_full
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR2_dout
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR2_valid
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/PR2_rd_en
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/sorter_data_in
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/sorter_data_out
add wave -noupdate -expand -group TB -expand -group UUT /max_pool_unit_tb/uut/reset
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_0_UNIT /max_pool_unit_tb/uut/pool_row_0_unit/din
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_0_UNIT /max_pool_unit_tb/uut/pool_row_0_unit/dout
add wave -noupdate -expand -group TB -expand -group UUT -expand -group INPUT_BUFFER /max_pool_unit_tb/uut/input_buffer/rst
add wave -noupdate -expand -group TB -expand -group UUT -expand -group INPUT_BUFFER /max_pool_unit_tb/uut/input_buffer/wr_clk
add wave -noupdate -expand -group TB -expand -group UUT -expand -group INPUT_BUFFER /max_pool_unit_tb/uut/input_buffer/rd_clk
add wave -noupdate -expand -group TB -expand -group UUT -expand -group INPUT_BUFFER /max_pool_unit_tb/uut/input_buffer/din
add wave -noupdate -expand -group TB -expand -group UUT -expand -group INPUT_BUFFER /max_pool_unit_tb/uut/input_buffer/wr_en
add wave -noupdate -expand -group TB -expand -group UUT -expand -group INPUT_BUFFER /max_pool_unit_tb/uut/input_buffer/rd_en
add wave -noupdate -expand -group TB -expand -group UUT -expand -group INPUT_BUFFER /max_pool_unit_tb/uut/input_buffer/dout
add wave -noupdate -expand -group TB -expand -group UUT -expand -group INPUT_BUFFER /max_pool_unit_tb/uut/input_buffer/full
add wave -noupdate -expand -group TB -expand -group UUT -expand -group INPUT_BUFFER /max_pool_unit_tb/uut/input_buffer/almost_full
add wave -noupdate -expand -group TB -expand -group UUT -expand -group INPUT_BUFFER /max_pool_unit_tb/uut/input_buffer/empty
add wave -noupdate -expand -group TB -expand -group UUT -expand -group INPUT_BUFFER /max_pool_unit_tb/uut/input_buffer/almost_empty
add wave -noupdate -expand -group TB -expand -group UUT -expand -group INPUT_BUFFER /max_pool_unit_tb/uut/input_buffer/valid
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER -radix unsigned /max_pool_unit_tb/uut/pool_row_ctlr_unit/i_input_volume_size
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/i_output_volume_size
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/i_pool_kernel_size
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/i_stride
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/i_inbuff_dout
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/inbuff_rd_en
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER -expand /max_pool_unit_tb/uut/pool_row_ctlr_unit/kernel_data
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/i_PR0_dout
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/o_PR0_din
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/i_PR1_dout
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/o_PR1_din
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/i_PR2_dout
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/o_PR2_din
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/o_sorter_data
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER -radix unsigned /max_pool_unit_tb/uut/pool_row_ctlr_unit/pixel_counter
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/current_state
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/next_state
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER -radix unsigned /max_pool_unit_tb/uut/pool_row_ctlr_unit/output_rows_generated
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/PR0_din
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/PR1_din
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/PR2_din
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/PR0_wr_en
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/PR0_rd_en
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/PR1_wr_en
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/PR1_rd_en
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/PR2_wr_en
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/PR2_rd_en
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/g_data_width
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/row_counter
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/sorter_data_valid
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/third_row_activate
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/volume_processed
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER -radix unsigned /max_pool_unit_tb/uut/pool_row_ctlr_unit/volume_rows_processed
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/column_counter
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER -expand /max_pool_unit_tb/uut/pool_row_ctlr_unit/sorter_data
add wave -noupdate -expand -group TB -expand -group UUT -expand -group POOL_ROW_CONTROLLER /max_pool_unit_tb/uut/pool_row_ctlr_unit/stride_counter
add wave -noupdate -expand -group TB -expand -group UUT -expand -group BUBBLE_SORTER_UNIT -expand /max_pool_unit_tb/uut/bubble_sorter_unit/i_data
add wave -noupdate -expand -group TB -expand -group UUT -expand -group BUBBLE_SORTER_UNIT /max_pool_unit_tb/uut/bubble_sorter_unit/delay_shift_reg
add wave -noupdate -expand -group TB -expand -group UUT -expand -group BUBBLE_SORTER_UNIT -expand /max_pool_unit_tb/uut/bubble_sorter_unit/o_sorted_data
add wave -noupdate -expand -group TB -expand -group UUT -expand -group BUBBLE_SORTER_UNIT -expand /max_pool_unit_tb/uut/bubble_sorter_unit/data_reg
add wave -noupdate -expand -group TB -expand -group UUT -expand -group BUBBLE_SORTER_UNIT /max_pool_unit_tb/uut/bubble_sorter_unit/q
add wave -noupdate -expand -group TB -expand -group UUT -expand -group BUBBLE_SORTER_UNIT /max_pool_unit_tb/uut/bubble_sorter_unit/current_state
add wave -noupdate -expand -group TB -expand -group UUT -expand -group BUBBLE_SORTER_UNIT /max_pool_unit_tb/uut/bubble_sorter_unit/next_state
add wave -noupdate -expand -group OUTPUT_BUFFER /max_pool_unit_tb/uut/output_buffer/rst
add wave -noupdate -expand -group OUTPUT_BUFFER /max_pool_unit_tb/uut/output_buffer/wr_clk
add wave -noupdate -expand -group OUTPUT_BUFFER /max_pool_unit_tb/uut/output_buffer/rd_clk
add wave -noupdate -expand -group OUTPUT_BUFFER /max_pool_unit_tb/uut/output_buffer/din
add wave -noupdate -expand -group OUTPUT_BUFFER /max_pool_unit_tb/uut/output_buffer/wr_en
add wave -noupdate -expand -group OUTPUT_BUFFER /max_pool_unit_tb/uut/output_buffer/rd_en
add wave -noupdate -expand -group OUTPUT_BUFFER /max_pool_unit_tb/uut/output_buffer/dout
add wave -noupdate -expand -group OUTPUT_BUFFER /max_pool_unit_tb/uut/output_buffer/full
add wave -noupdate -expand -group OUTPUT_BUFFER /max_pool_unit_tb/uut/output_buffer/almost_full
add wave -noupdate -expand -group OUTPUT_BUFFER /max_pool_unit_tb/uut/output_buffer/empty
add wave -noupdate -expand -group OUTPUT_BUFFER /max_pool_unit_tb/uut/output_buffer/almost_empty
add wave -noupdate -expand -group OUTPUT_BUFFER /max_pool_unit_tb/uut/output_buffer/valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {611595 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 446
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
WaveRestoreZoom {0 ns} {1082765 ns}
