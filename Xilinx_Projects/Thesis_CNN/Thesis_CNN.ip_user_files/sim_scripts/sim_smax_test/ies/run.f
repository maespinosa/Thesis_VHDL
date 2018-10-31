-makelib ies/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
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
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/sim_smax_test/ip/sim_smax_test_clk_wiz_0/sim_smax_test_clk_wiz_0_clk_wiz.v" \
  "../../../bd/sim_smax_test/ip/sim_smax_test_clk_wiz_0/sim_smax_test_clk_wiz_0.v" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_10 \
  "../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/sim_smax_test/ip/sim_smax_test_rst_clk_wiz_100M_0/sim/sim_smax_test_rst_clk_wiz_100M_0.vhd" \
  "../../../bd/sim_smax_test/hdl/sim_smax_test.vhd" \
-endlib
-makelib ies/generic_baseblocks_v2_1_0 \
  "../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/axi_data_fifo_v2_1_10 \
  "../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_infrastructure_v1_1_0 \
  "../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/axi_register_slice_v2_1_11 \
  "../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_protocol_converter_v2_1_11 \
  "../../../../Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/sim_smax_test/ip/sim_smax_test_auto_pc_0/sim/sim_smax_test_auto_pc_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib
