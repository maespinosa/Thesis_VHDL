vmap -modelsim_quiet xilinxcorelib C:/Xilinx/14.6/ISE_DS/ISE/vhdl/mti_pe/10.4a/nt64/xilinxcorelib
vmap -modelsim_quiet unisim C:/Xilinx/14.6/ISE_DS/ISE/vhdl/mti_pe/10.4a/nt64/unisim
cd c:/Sourcetree_Local/Thesis_VHDL/Active_HDL_Projects/OV5642_IF_LIB/ov5642_if_lib
vlib modelsim
vcom -2008 -work modelsim ./src/hwrite_file.vhd
vcom -2008 -work modelsim ./src/matlab_compare.vhd
vcom -2008 -work modelsim ./src/image_capture_control.vhd
vcom -2008 -work modelsim ./src/ov5462_sccb_cntrl.vhd
vcom -2008 -work modelsim ./src/ov5642_if_test_tb.vhd
vcom -2008 -work modelsim ./src/read_file.vhd
vcom -2008 -work modelsim ./src/FIFO_DUALCLOCK_MACRO.vhd
vcom -2008 -work modelsim ./src/i2c_master.vhd
vcom -2008 -work modelsim ./src/Network_Controller.vhd
vcom -2008 -work modelsim ./src/bayer_demosaic.vhd
vcom -2008 -work modelsim ./compile/fifo_network.vhd
vcom -2008 -work modelsim ./compile/color_test.vhd
vcom -2008 -work modelsim ./src/BRAM_SDP_MACRO.vhd
vcom -2008 -work modelsim ./compile/arducam_if.vhd
vcom -2008 -work modelsim ./compile/sensor_to_monitor_node.vhd
vcom -2008 -work modelsim ./src/clk_wiz_v3_6.vhd
vcom -2008 -work modelsim ./src/system_reset_manager.vhd
vcom -2008 -work modelsim ./src/sim_clk_generator.vhd
vcom -2008 -work modelsim ./compile/ov5642_if_test.vhd
vsim modelsim.ov5642_if_test
view -undock wave
transcript on
