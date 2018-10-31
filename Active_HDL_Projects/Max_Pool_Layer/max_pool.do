vmap xilinxcorelib C:/Xilinx/14.7/ISE_DS/ISE/vhdl/questasim/10.4c/nt64/xilinxcorelib
vmap unisim C:/Xilinx/14.7/ISE_DS/ISE/vhdl/questasim/10.4c/nt64/unisim
#cd c:/Users/J30933/Downloads/Thesis_VHDL-Conv_Forward_Pass/Active_HDL_Projects/Max_Pool_Layer
vlib Max_Pool_Layer
vcom -2008 -work Max_Pool_Layer cnn_types.vhd
vcom -2008 -work Max_Pool_Layer input_bram.vhd
vcom -2008 -work Max_Pool_Layer max_pool_input_fifo.vhd
vcom -2008 -work Max_Pool_Layer sort_unit.vhd
vcom -2008 -work Max_Pool_Layer bubble_sorter.vhd
vcom -2008 -work Max_Pool_Layer pool_row_controller.vhd
vcom -2008 -work Max_Pool_Layer max_pool_unit.vhd
vcom -2008 -work Max_Pool_Layer max_pool_unit_tb.vhd
vsim Max_Pool_Layer.max_pool_unit_tb
view -undock wave
transcript on
