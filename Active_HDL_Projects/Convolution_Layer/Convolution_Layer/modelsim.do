vmap -modelsim_quiet xilinxcorelib C:/Xilinx/14.6/ISE_DS/ISE/vhdl/mti_pe/10.4a/nt64/xilinxcorelib
vmap -modelsim_quiet unisim C:/Xilinx/14.6/ISE_DS/ISE/vhdl/mti_pe/10.4a/nt64/unisim
cd c:/Sourcetree_Local/Thesis_VHDL/Active_HDL_Projects/Convolution_Layer/Convolution_Layer
vlib Convolution_Layer
vcom -2008 -work Convolution_Layer ./src/types_pkg.vhd
vlib modelsim
vcom -2008 -work modelsim ./src/Convolution_Controller.vhd
vcom -2008 -work modelsim ./compile/input_fifo_network.vhd
vcom -2008 -work modelsim ./src/conv_input_buffer.vhd
vcom -2008 -work modelsim ./src/conv_output_buffer.vhd
vcom -2008 -work modelsim ./src/input_fifo_network.vhd
vcom -2008 -work modelsim ./src/conv_multiplier.vhd
vcom -2008 -work modelsim ./compile/output_fifo_network.vhd
vcom -2008 -work modelsim ./src/input_network_colors.vhd
vcom -2008 -work modelsim ./compile/multiplier_bank.vhd
vcom -2008 -work modelsim ./src/accumulator.vhd
vcom -2008 -work modelsim ./src/filter_weight_controller.vhd
vcom -2008 -work modelsim ./compile/input_fifo_network_7.vhd
vcom -2008 -work modelsim ./compile/input_fifo_network_11.vhd
vcom -2008 -work modelsim ./compile/input_fifo_network_3.vhd
vcom -2008 -work modelsim ./src/types_pkg.vhd
vcom -2008 -work modelsim ./src/input_fifo_net_controller.vhd
vcom -2008 -work modelsim ./src/volume_mux.vhd
vcom -2008 -work modelsim ./src/volume_router.vhd
vcom -2008 -work modelsim ./src/weight_mux.vhd
vcom -2008 -work modelsim ./src/weights_router.vhd
vcom -2008 -work modelsim ./src/weight_fifo.vhd
vcom -2008 -work modelsim ./src/filter_accumulator.vhd
vcom -2008 -work modelsim ./src/filter_accumulator_fifo.vhd
vcom -2008 -work modelsim ./src/accumulator_relay.vhd
vcom -2008 -work modelsim ./compile/division_by_mutiplication.vhd
vcom -2008 -work modelsim ./src/divider_multiplier.vhd
vcom -2008 -work modelsim ./src/divider_subract_shift.vhd
vcom -2008 -work modelsim ./src/divider_fp.vhd
vcom -2008 -work modelsim ./src/conv_fp_multiplier.vhd
vcom -2008 -work modelsim ./src/square_root_fp.vhd
vcom -2008 -work modelsim ./src/norm_router.vhd
vcom -2008 -work modelsim ./src/relu_unit.vhd
vcom -2008 -work modelsim ./compile/normalizer.vhd
vcom -2008 -work modelsim ./compile/filter_top.vhd
vcom -2008 -work modelsim ./compile/convolution_layer_top.vhd
vcom -2008 -work modelsim ./src/exponential_function.vhd
vcom -2008 -work modelsim ./src/exponential_multiplier.vhd
vcom -2008 -work modelsim ./src/Testbench_BRAM.vhd
vcom -2008 -work modelsim ./src/Input_BRAM.vhd
vcom -2008 -work modelsim ./src/filter_top_tb.vhd
vsim modelsim.filter_top_tb
view -undock wave
transcript on
