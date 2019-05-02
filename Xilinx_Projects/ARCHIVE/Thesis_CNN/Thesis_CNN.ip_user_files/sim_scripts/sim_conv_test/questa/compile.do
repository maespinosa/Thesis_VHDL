vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/fifo_generator_v13_1_3
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_10
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_data_fifo_v2_1_10
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_11
vlib msim/axi_protocol_converter_v2_1_11

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap fifo_generator_v13_1_3 msim/fifo_generator_v13_1_3
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 msim/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_10 msim/axi_data_fifo_v2_1_10
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 msim/axi_register_slice_v2_1_11
vmap axi_protocol_converter_v2_1_11 msim/axi_protocol_converter_v2_1_11

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_1_3 -64 "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ip/sim_conv_test_Convolution_Layer_32bit_0_0/src/conv_input_buffer_32/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -64 -93 \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ip/sim_conv_test_Convolution_Layer_32bit_0_0/src/conv_input_buffer_32/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3 -64 "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ip/sim_conv_test_Convolution_Layer_32bit_0_0/src/conv_input_buffer_32/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" \
"../../../bd/sim_conv_test/ip/sim_conv_test_Convolution_Layer_32bit_0_0/src/conv_input_buffer_32/sim/conv_input_buffer_32.v" \
"../../../bd/sim_conv_test/ip/sim_conv_test_Convolution_Layer_32bit_0_0/src/conv_output_buffer_32/sim/conv_output_buffer_32.v" \
"../../../bd/sim_conv_test/ip/sim_conv_test_Convolution_Layer_32bit_0_0/src/bias_fifo_32/sim/bias_fifo_32.v" \
"../../../bd/sim_conv_test/ip/sim_conv_test_Convolution_Layer_32bit_0_0/src/weight_fifo_2/sim/weight_fifo_2.v" \
"../../../bd/sim_conv_test/ip/sim_conv_test_Convolution_Layer_32bit_0_0/src/volume_fifo_32/sim/volume_fifo_32.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sim_conv_test/ipshared/9737/src/types_pkg.vhd" \
"../../../bd/sim_conv_test/ipshared/9737/src/FP_ADDER_8E_24F.vhd" \
"../../../bd/sim_conv_test/ipshared/9737/src/volume_mux.vhd" \
"../../../bd/sim_conv_test/ipshared/9737/src/accumulator_relay.vhd" \
"../../../bd/sim_conv_test/ipshared/9737/src/conv_fp_multiplier_32.vhd" \
"../../../bd/sim_conv_test/ipshared/9737/src/input_fifo_net_controller.vhd" \
"../../../bd/sim_conv_test/ipshared/9737/src/fast_accumulator.vhd" \
"../../../bd/sim_conv_test/ipshared/9737/src/volume_router.vhd" \
"../../../bd/sim_conv_test/ipshared/9737/src/weights_router.vhd" \
"../../../bd/sim_conv_test/ipshared/9737/src/relu_unit.vhd" \
"../../../bd/sim_conv_test/ipshared/9737/src/fast_filter_top.vhd" \
"../../../bd/sim_conv_test/ipshared/9737/src/Convolution_Layer_v1_0_M00_AXI.vhd" \
"../../../bd/sim_conv_test/ipshared/9737/src/Convolution_Layer_v1_0_S00_AXI.vhd" \
"../../../bd/sim_conv_test/ipshared/9737/src/Convolution_Layer_Top.vhd" \
"../../../bd/sim_conv_test/ipshared/9737/hdl/Convolution_Layer_32bit_v1_0.vhd" \
"../../../bd/sim_conv_test/ip/sim_conv_test_Convolution_Layer_32bit_0_0/sim/sim_conv_test_Convolution_Layer_32bit_0_0.vhd" \
"../../../bd/sim_conv_test/ipshared/1b33/hdl/Convolution_Tester_v1_0_M00_AXI.vhd" \
"../../../bd/sim_conv_test/ipshared/1b33/hdl/Convolution_Tester_v1_0.vhd" \
"../../../bd/sim_conv_test/ip/sim_conv_test_Convolution_Tester_0_0/sim/sim_conv_test_Convolution_Tester_0_0.vhd" \
"../../../bd/sim_conv_test/ipshared/c744/hdl/Virtual_Memory_v1_0_S00_AXI.vhd" \
"../../../bd/sim_conv_test/ipshared/c744/hdl/Virtual_Memory_v1_0.vhd" \
"../../../bd/sim_conv_test/ip/sim_conv_test_Virtual_Memory_0_0/sim/sim_conv_test_Virtual_Memory_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" \
"../../../bd/sim_conv_test/ip/sim_conv_test_clk_wiz_0/sim_conv_test_clk_wiz_0_clk_wiz.v" \
"../../../bd/sim_conv_test/ip/sim_conv_test_clk_wiz_0/sim_conv_test_clk_wiz_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -64 -93 \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sim_conv_test/ip/sim_conv_test_rst_clk_wiz_100M_0/sim/sim_conv_test_rst_clk_wiz_100M_0.vhd" \
"../../../bd/sim_conv_test/hdl/sim_conv_test.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_10 -64 "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11 -64 "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_11 -64 "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_conv_test/ipshared/7e3a/hdl" \
"../../../bd/sim_conv_test/ip/sim_conv_test_auto_pc_0/sim/sim_conv_test_auto_pc_0.v" \

vlog -work xil_defaultlib "glbl.v"

