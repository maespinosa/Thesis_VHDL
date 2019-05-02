
source clear_layer1.tcl
source conv_config.tcl
source load_conv_input.tcl

mwr 0x44a00000 0x00021001

puts "Running Convolution Layer"