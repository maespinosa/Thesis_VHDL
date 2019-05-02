
source clear_layer4.tcl
source conv_config_layer4.tcl
source load_conv_input_layer4.tcl

mwr 0x44a00000 0x00021001

puts "Running Convolution Layer 4"