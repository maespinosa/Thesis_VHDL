cd C:/Thesis_Nexys_Video_2016_4

puts "Configuring Convolution Unit Layer 7" 
mwr 0x44a00008 0x8D000100
mwr 0x44a0000C 0x94000100
mwr 0x44a00010 0x90000000
mwr 0x44a00014 0x01011000
mwr 0x44a00018 0x01011000
mwr 0x44a0001C 0x11001000
mwr 0x44a00020 0x10002000
mwr 0x44a00024 0x03030200
mwr 0x44a00028 0x03030200
mwr 0x44a0002C 0x03030200
mwr 0x44a00030 0x9C002150
mwr 0x44a00034 0x00000FFF
mwr 0x44a00038 0x00000020
mwr 0x44a0003C 0x00001000
mwr 0x44a00040 0x00000001
mwr 0x44a00044 0x00000001
mwr 0x44a00048 0x00000001
mwr 0x44a0004C 0x00000020
mwr 0x44a00050 0x01000020
mwr 0x44a00000 0x00022000
puts "Convolution Unit Layer 7 Configured" 	