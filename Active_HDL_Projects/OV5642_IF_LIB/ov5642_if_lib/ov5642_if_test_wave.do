onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group XCLK_GEN /ov5642_if_test/XCLK_GEN/o_clk
add wave -noupdate -expand -group XCLK_GEN /ov5642_if_test/XCLK_GEN/o_reset_n
add wave -noupdate -expand -group SYS_CLK_GEN /ov5642_if_test/SYS_CLK_GEN/o_clk
add wave -noupdate -expand -group SYS_CLK_GEN /ov5642_if_test/SYS_CLK_GEN/o_reset_n
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/i_xclk
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/i_enable
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/i_reset_n
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/o_SDATA
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/o_VSYNC
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/o_HREF
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/o_PCLK
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/close_flag
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/counter
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/read_pulse
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/row_counter
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/column_counter
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/SDATA
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/VSYNC
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/HREF
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/PCLK
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/current_state
add wave -noupdate -expand -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/next_state
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/i_clk
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/i_reset_n
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/i_SDATA
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/i_VSYNC
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/i_HREF
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/i_PCLK
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/i_EN
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/o_RST
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/o_PWDN
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/o_IMAGE_DATA
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/o_PIXEL_VALID
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/o_X_POS
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/o_Y_POS
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/o_PIXEL_NUMBER
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/IMAGE_DATA_INT
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/PIXEL_VALID_INT
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/PIXEL_NUMBER_INT
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/X_POS_INT
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/Y_POS_INT
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/execute_flag
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/RST_INT
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/PWDN_INT
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/current_state
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/next_state
add wave -noupdate -expand -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/sys_clk
add wave -noupdate -expand -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/enable
add wave -noupdate -expand -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/reset_n
add wave -noupdate -expand -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/data_to_write
add wave -noupdate -expand -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/pixel_valid
add wave -noupdate -expand -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/match
add wave -noupdate -expand -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/close_flag
add wave -noupdate -expand -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/data_read
add wave -noupdate -expand -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/int_data_to_write
add wave -noupdate -expand -group WRITE_OUTPUT /ov5642_if_test/WRITE_OUTPUT/sys_clk
add wave -noupdate -expand -group WRITE_OUTPUT /ov5642_if_test/WRITE_OUTPUT/enable
add wave -noupdate -expand -group WRITE_OUTPUT /ov5642_if_test/WRITE_OUTPUT/reset_n
add wave -noupdate -expand -group WRITE_OUTPUT /ov5642_if_test/WRITE_OUTPUT/stop_strobe
add wave -noupdate -expand -group WRITE_OUTPUT /ov5642_if_test/WRITE_OUTPUT/data_to_write
add wave -noupdate -expand -group WRITE_OUTPUT /ov5642_if_test/WRITE_OUTPUT/data_valid
add wave -noupdate -expand -group WRITE_OUTPUT /ov5642_if_test/WRITE_OUTPUT/continue
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {100 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 261
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
WaveRestoreZoom {0 ns} {630 ns}
