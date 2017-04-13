vlib work
vmap src work
vmap work work

# Compile Components
vcom -2002 -work work  ../masters_thesis_lib/src/hwrite_file.vhd
vcom -2002 -work work  ../masters_thesis_lib/src/read_file.vhd
vcom -2002 -work work  ../masters_thesis_lib/src/OV5642_IF_TOP.vhd
vcom -2002 -work work  ../masters_thesis_lib/src/matlab_compare.vhd
vcom -2002 -work work  ../masters_thesis_lib/compile/OV5642_IF_TEST.vhd

#TOP LEVEL TESTBENCH------------------------------
vcom -2002 -work work  ../masters_thesis_lib/src/OV5642_IF_TEST_tb.vhd

    
vsim -t ns ov5642_if_top_tb

--do wave.do
--run 20ms



