
vmap xilinxcorelib C:/xilinx_modelsimPE_10.4a

do compile.do 
#do elaborate.do

#vsim -t 1ps -lib xil_defaultlib DDR3_sim_test_opt

#vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L blk_mem_gen_v8_3_5 -L axi_bram_ctrl_v4_0_10 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_10 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_11 -L fifo_generator_v13_1_3 -L axi_data_fifo_v2_1_10 -L axi_crossbar_v2_1_12 -L axi_protocol_converter_v2_1_11 -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.DDR3_sim_test xil_defaultlib.glbl
vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L blk_mem_gen_v8_3_5 -L axi_bram_ctrl_v4_0_10 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_10 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_11 -L fifo_generator_v13_1_3 -L axi_data_fifo_v2_1_10 -L axi_crossbar_v2_1_12 -L axi_protocol_converter_v2_1_11 -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.DDR3_sim_test 


#vsim DDR3_sim_test
view -undock wave
transcript on

#do {../sim_conv_test_tb.do}
#do {../full_system_sim_wave.do}
#do {../max_pool_test_wave.do}
#do {no_sensor_full_system_test.udo}

#run -all
