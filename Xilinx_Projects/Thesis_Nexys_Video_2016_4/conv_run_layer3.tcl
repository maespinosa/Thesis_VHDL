
source clear_layer3.tcl
source conv_config_layer3.tcl
source load_conv_input_layer3.tcl

mwr 0x44a00000 0x00021001

puts "Running Convolution Layer 3"