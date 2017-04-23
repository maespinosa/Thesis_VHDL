onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group XCLK_GEN /ov5642_if_test/XCLK_GEN/o_clk
add wave -noupdate -group XCLK_GEN /ov5642_if_test/XCLK_GEN/o_reset_n
add wave -noupdate -group SYS_CLK_GEN /ov5642_if_test/SYS_CLK_GEN/o_clk
add wave -noupdate -group SYS_CLK_GEN /ov5642_if_test/SYS_CLK_GEN/o_reset_n
add wave -noupdate -group CLK_100MHz /ov5642_if_test/CLK_100MHz_GEN/o_clk
add wave -noupdate -group CLK_100MHz /ov5642_if_test/CLK_100MHz_GEN/o_reset_n
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/i_clk
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/i_reset_n
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/i_i2c_addr
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/i_i2c_data
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/i_i2c_rw
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/i_i2c_ena
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/o_config_done
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/o_busy
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/o_sioc
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/io_siod
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/siod_current_state
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/siod_next_state
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/sioc_current_state
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/sioc_next_state
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/busy
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/sioc
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/config_done
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/siod
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/ID
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/sub_address
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/data
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/siod_counter
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/sioc_counter
add wave -noupdate -group SCCB_CTRL /ov5642_if_test/SCCB_CONTROLLER/bit_counter
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/i_clk
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/i_reset_n
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/i_btn_config
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/i_i2c_busy
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/i_bram_data
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/o_bram_address
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/o_i2c_rw
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/o_i2c_ena
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/o_i2c_address
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/o_i2c_data
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/o_bram_we
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/o_config_done
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/bram_address
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/i2c_rw
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/i2c_ena
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/i2c_address
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/i2c_data
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/bram_we
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/config_done
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/address_counter
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/current_state
add wave -noupdate -group CAMERA_CONFIG /ov5642_if_test/CAMERA_CONFIG/next_state
add wave -noupdate -group CONFIG_BRAM /ov5642_if_test/CONFIG_BRAM/a
add wave -noupdate -group CONFIG_BRAM /ov5642_if_test/CONFIG_BRAM/d
add wave -noupdate -group CONFIG_BRAM /ov5642_if_test/CONFIG_BRAM/clk
add wave -noupdate -group CONFIG_BRAM /ov5642_if_test/CONFIG_BRAM/we
add wave -noupdate -group CONFIG_BRAM /ov5642_if_test/CONFIG_BRAM/spo
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/i_xclk
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/i_enable
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/i_reset_n
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/o_SDATA
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/o_VSYNC
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/o_HREF
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/o_PCLK
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/close_flag
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/counter
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/read_pulse
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/row_counter
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/column_counter
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/SDATA
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/VSYNC
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/HREF
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/PCLK
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/current_state
add wave -noupdate -group SCENE_SIMULATOR /ov5642_if_test/SCENE_SIMULATOR/next_state
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
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/data_width
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/i_not_almost_full
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/o_debug_state
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/frame_done
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/current_state
add wave -noupdate -expand -group IMAGE_CAPTURE_CONTROL /ov5642_if_test/IMAGE_CAPTURE_FSM/next_state
add wave -noupdate -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/sys_clk
add wave -noupdate -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/enable
add wave -noupdate -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/reset_n
add wave -noupdate -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/data_to_write
add wave -noupdate -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/pixel_valid
add wave -noupdate -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/match
add wave -noupdate -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/close_flag
add wave -noupdate -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/data_read
add wave -noupdate -group COMPARE_MATLAB /ov5642_if_test/COMPARE_MATLAB/int_data_to_write
add wave -noupdate -group WRITE_OUTPUT /ov5642_if_test/WRITE_OUTPUT/sys_clk
add wave -noupdate -group WRITE_OUTPUT /ov5642_if_test/WRITE_OUTPUT/enable
add wave -noupdate -group WRITE_OUTPUT /ov5642_if_test/WRITE_OUTPUT/reset_n
add wave -noupdate -group WRITE_OUTPUT /ov5642_if_test/WRITE_OUTPUT/stop_strobe
add wave -noupdate -group WRITE_OUTPUT /ov5642_if_test/WRITE_OUTPUT/data_to_write
add wave -noupdate -group WRITE_OUTPUT /ov5642_if_test/WRITE_OUTPUT/data_valid
add wave -noupdate -group WRITE_OUTPUT /ov5642_if_test/WRITE_OUTPUT/continue
add wave -noupdate -expand -group FIFO /ov5642_if_test/FIFO/rst
add wave -noupdate -expand -group FIFO /ov5642_if_test/FIFO/wr_clk
add wave -noupdate -expand -group FIFO /ov5642_if_test/FIFO/rd_clk
add wave -noupdate -expand -group FIFO /ov5642_if_test/FIFO/din
add wave -noupdate -expand -group FIFO /ov5642_if_test/FIFO/wr_en
add wave -noupdate -expand -group FIFO /ov5642_if_test/FIFO/rd_en
add wave -noupdate -expand -group FIFO /ov5642_if_test/FIFO/dout
add wave -noupdate -expand -group FIFO /ov5642_if_test/FIFO/full
add wave -noupdate -expand -group FIFO /ov5642_if_test/FIFO/almost_full
add wave -noupdate -expand -group FIFO /ov5642_if_test/FIFO/empty
add wave -noupdate -expand -group FIFO /ov5642_if_test/FIFO/almost_empty
add wave -noupdate -expand -group FIFO /ov5642_if_test/FIFO/valid
add wave -noupdate -expand -group FIFO /ov5642_if_test/FIFO/prog_full
add wave -noupdate -expand -group FIFO /ov5642_if_test/FIFO/prog_empty
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/i_clk
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/i_reset_n
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/i_vga_data
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/o_hsync
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/o_vsync
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/o_video_on
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/o_pixel_x
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/o_pixel_y
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/o_vga_data
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/mod2_reg
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/mod2_next
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/v_count
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/h_count
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/v_sync
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/h_sync
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/h_end
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/v_end
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/video_on
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/i_not_almost_empty
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/i_almost_full
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/current_state
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/next_state
add wave -noupdate -expand -group VGA /ov5642_if_test/VGA/vga_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3124 ns} 0}
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
WaveRestoreZoom {0 ns} {393375 ns}
