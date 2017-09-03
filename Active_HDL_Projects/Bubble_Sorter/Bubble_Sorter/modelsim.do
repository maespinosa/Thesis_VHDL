vmap -modelsim_quiet xilinxcorelib C:/Xilinx/14.6/ISE_DS/ISE/vhdl/mti_pe/10.4a/nt64/xilinxcorelib
vmap -modelsim_quiet unisim C:/Xilinx/14.6/ISE_DS/ISE/vhdl/mti_pe/10.4a/nt64/unisim
cd C:/Sourcetree_Local/Thesis_VHDL/Active_HDL_Projects/Bubble_Sorter/Bubble_Sorter
vlib Bubble_Sorter
vcom -2008 -work Bubble_Sorter ./src/cnn_types.vhd
vlib modelsim
vcom -2008 -work modelsim ./src/sort_unit.vhd
vcom -2008 -work modelsim ./src/bubble_sorter.vhd
vcom -2008 -work modelsim ./src/bubble_sorter_tb.vhd
vcom -2008 -work modelsim ./src/sort_unit_signed.vhd
vcom -2008 -work modelsim ./src/bubble_sorter_signed.vhd
vcom -2008 -work modelsim ./src/bubble_sorter_signed_tb.vhd
vsim modelsim.bubble_sorter_signed_tb
view -undock wave
transcript on
