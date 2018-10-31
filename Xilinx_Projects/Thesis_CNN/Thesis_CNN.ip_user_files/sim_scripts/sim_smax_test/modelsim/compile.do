vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_10
vlib msim/generic_baseblocks_v2_1_0
vlib msim/fifo_generator_v13_1_3
vlib msim/axi_data_fifo_v2_1_10
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_11
vlib msim/axi_protocol_converter_v2_1_11

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 msim/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_1_3 msim/fifo_generator_v13_1_3
vmap axi_data_fifo_v2_1_10 msim/axi_data_fifo_v2_1_10
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 msim/axi_register_slice_v2_1_11
vmap axi_protocol_converter_v2_1_11 msim/axi_protocol_converter_v2_1_11

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sim_smax_test/ipshared/4e0e/src/softmax_divider_32bit.vhd" \
"../../../bd/sim_smax_test/ipshared/4e0e/src/softmax_adder_32bit.vhd" \
"../../../bd/sim_smax_test/ipshared/4e0e/src/softmax_multiply_32bit.vhd" \
"../../../bd/sim_smax_test/ipshared/4e0e/src/softmax_adder_wrapper.vhd" \
"../../../bd/sim_smax_test/ipshared/4e0e/src/exponential_function.vhd" \
"../../../bd/sim_smax_test/ipshared/4e0e/src/softmax_controller.vhd" \
"../../../bd/sim_smax_test/ipshared/4e0e/src/softmax_divider_wrapper.vhd" \
"../../../bd/sim_smax_test/ipshared/4e0e/hdl/Softmax_Layer_32bit_v1_0_S00_AXI.vhd" \
"../../../bd/sim_smax_test/ipshared/4e0e/hdl/Softmax_Layer_32bit_v1_0_M00_AXI.vhd" \
"../../../bd/sim_smax_test/ipshared/4e0e/src/softmax_unit.vhd" \
"../../../bd/sim_smax_test/ipshared/4e0e/hdl/Softmax_Layer_32bit_v1_0.vhd" \
"../../../bd/sim_smax_test/ip/sim_smax_test_Softmax_Layer_32bit_0_0/sim/sim_smax_test_Softmax_Layer_32bit_0_0.vhd" \
"../../../bd/sim_smax_test/ipshared/1012/hdl/Softmax_Tester_v1_0_M00_AXI.vhd" \
"../../../bd/sim_smax_test/ipshared/1012/hdl/Softmax_Tester_v1_0.vhd" \
"../../../bd/sim_smax_test/ip/sim_smax_test_Softmax_Tester_0_0/sim/sim_smax_test_Softmax_Tester_0_0.vhd" \
"../../../bd/sim_smax_test/ipshared/c744/hdl/Virtual_Memory_v1_0_S00_AXI.vhd" \
"../../../bd/sim_smax_test/ipshared/c744/hdl/Virtual_Memory_v1_0.vhd" \
"../../../bd/sim_smax_test/ip/sim_smax_test_Virtual_Memory_0_0/sim/sim_smax_test_Virtual_Memory_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" \
"../../../bd/sim_smax_test/ip/sim_smax_test_clk_wiz_0/sim_smax_test_clk_wiz_0_clk_wiz.v" \
"../../../bd/sim_smax_test/ip/sim_smax_test_clk_wiz_0/sim_smax_test_clk_wiz_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -64 -93 \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sim_smax_test/ip/sim_smax_test_rst_clk_wiz_100M_0/sim/sim_smax_test_rst_clk_wiz_100M_0.vhd" \
"../../../bd/sim_smax_test/hdl/sim_smax_test.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -64 -93 \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_10 -64 -incr "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11 -64 -incr "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_11 -64 -incr "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" \
"../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/100a" "+incdir+../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl" \
"../../../bd/sim_smax_test/ip/sim_smax_test_auto_pc_0/sim/sim_smax_test_auto_pc_0.v" \

vlog -work xil_defaultlib "glbl.v"

