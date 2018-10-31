vmap -modelsim_quiet xilinxcorelib C:/Xilinx/14.6/ISE_DS/ISE/vhdl/mti_pe/10.4a/nt64/xilinxcorelib
vmap -modelsim_quiet unisim C:/Xilinx/14.6/ISE_DS/ISE/vhdl/mti_pe/10.4a/nt64/unisim
cd c:/Sourcetree_Local/Thesis_VHDL/Active_HDL_Projects/Softmax_Layer
vlib Softmax_Layer
vcom -2008 -work Softmax_Layer ./softmax_adder_half_precision.vhd
vcom -2008 -work Softmax_Layer ./softmax_multiply_half_precision.vhd
vcom -2008 -work Softmax_Layer ./softmax_divider_half_precision.vhd
vcom -2008 -work Softmax_Layer ./softmax_divider_wrapper.vhd
vcom -2008 -work Softmax_Layer ./softmax_adder_wrapper.vhd
vcom -2008 -work Softmax_Layer ./softmax_fifo.vhd
vcom -2008 -work Softmax_Layer ./exponential_function.vhd
vcom -2008 -work Softmax_Layer ./softmax_controller.vhd
vcom -2008 -work Softmax_Layer ./softmax_unit.vhd
vcom -2008 -work Softmax_Layer ./scores_bram.vhd
vcom -2008 -work Softmax_Layer ./softmax_unit_tb.vhd
vsim Softmax_Layer.softmax_unit_tb
view -undock wave
transcript on
