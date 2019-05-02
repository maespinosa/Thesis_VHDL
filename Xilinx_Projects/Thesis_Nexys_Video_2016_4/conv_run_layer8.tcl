
source clear_layer8.tcl
source conv_config_layer8.tcl
source load_conv_input_layer8.tcl

mwr 0x44a00000 0x00022001

puts "Running Convolution Layer"