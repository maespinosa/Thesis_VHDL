transcript on
vmap -modelsim_quiet xilinxcorelib C:/Xilinx/14.6/ISE_DS/ISE/vhdl/mti_pe/10.4a/nt64/xilinxcorelib
vmap -modelsim_quiet unisim C:/Xilinx/14.6/ISE_DS/ISE/vhdl/mti_pe/10.4a/nt64/unisim
view -undock wave
cd c:/Sourcetree_Local/Thesis_VHDL/Active_HDL_Projects/OV7670_IF_LIB/OV7670_IF_LIB/ov7670_if_lib
vlib modelsim
vcom -2008 -work modelsim ./src/address_Generator.vhd
vcom -2008 -work modelsim ./src/debounce.vhd
vcom -2008 -work modelsim ./src/xilinx_frame_buffer.vhd
vcom -2008 -work modelsim ./src/frame_buffer.vhd
vcom -2008 -work modelsim ./src/i2c_sender.vhd
vcom -2008 -work modelsim ./src/i3c2.vhd
vcom -2008 -work modelsim ./src/ov7670_capture.vhd
vcom -2008 -work modelsim ./src/ov7670_controller.vhd
vcom -2008 -work modelsim ./src/ov7670_registers.vhd
vcom -2008 -work modelsim ./src/RGB.vhd
vcom -2008 -work modelsim ./src/vga.vhd
vcom -2008 -work modelsim ./src/vga_pll.vhd
vcom -2008 -work modelsim ./src/vga_pll_zedboard.vhd
vcom -2008 -work modelsim ./src/top_level.vhd
vsim modelsim.top_level