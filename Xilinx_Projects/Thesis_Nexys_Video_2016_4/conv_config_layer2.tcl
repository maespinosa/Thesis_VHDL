cd C:/Thesis_Nexys_Video_2016_4



puts "Configuring Convolution Unit Layer 2" 
mwr 0x44a00008 0x80189300
mwr 0x44a0000C 0x80425A00
mwr 0x44a00010 0x801CD900
mwr 0x44a00014 0x1B1B0060
mwr 0x44a00018 0x1B1B0100
mwr 0x44a0001C 0x55000060
mwr 0x44a00020 0x01000612
mwr 0x44a00024 0x03030200
mwr 0x44a00028 0x03030200
mwr 0x44a0002C 0x03030200
mwr 0x44a00030 0x9C000200
mwr 0x44a00034 0x000000FF
mwr 0x44a00038 0x00000096
mwr 0x44a0003C 0x00000960
mwr 0x44a00040 0x000002D9
mwr 0x44a00044 0x00000051
mwr 0x44a00048 0x000002D9
mwr 0x44a0004C 0x00001B00
puts "Convolution Unit Layer 2 Configured" 	