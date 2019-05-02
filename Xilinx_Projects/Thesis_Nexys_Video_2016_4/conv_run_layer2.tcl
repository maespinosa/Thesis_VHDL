
source clear_layer2.tcl
source conv_config_layer2.tcl
source load_conv_input_layer2.tcl

mwr 0x44a00000 0x00021001

puts "Running Convolution Layer 2"