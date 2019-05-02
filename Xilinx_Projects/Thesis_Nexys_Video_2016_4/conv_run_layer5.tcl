
source clear_layer5.tcl
source conv_config_layer5.tcl
source load_conv_input_layer5.tcl

mwr 0x44a00000 0x00021001

puts "Running Convolution Layer"