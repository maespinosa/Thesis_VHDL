onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+sim_conv_test -L xil_defaultlib -L xpm -L fifo_generator_v13_1_3 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_10 -L generic_baseblocks_v2_1_0 -L axi_data_fifo_v2_1_10 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_11 -L axi_protocol_converter_v2_1_11 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sim_conv_test xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {sim_conv_test.udo}

run -all

endsim

quit -force
