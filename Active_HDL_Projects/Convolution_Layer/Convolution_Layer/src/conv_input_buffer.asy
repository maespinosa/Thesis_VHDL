Version 4
SymbolType BLOCK
TEXT 32 32 LEFT 4 conv_input_buffer
RECTANGLE Normal 32 32 800 4064
LINE Normal 0 112 32 112
PIN 0 112 LEFT 36
PINATTR PinName rst
PINATTR Polarity IN
LINE Normal 0 208 32 208
PIN 0 208 LEFT 36
PINATTR PinName wr_clk
PINATTR Polarity IN
LINE Wide 0 240 32 240
PIN 0 240 LEFT 36
PINATTR PinName din[15:0]
PINATTR Polarity IN
LINE Normal 0 272 32 272
PIN 0 272 LEFT 36
PINATTR PinName wr_en
PINATTR Polarity IN
LINE Wide 0 304 32 304
PIN 0 304 LEFT 36
PINATTR PinName prog_full_thresh[9:0]
PINATTR Polarity IN
LINE Normal 0 464 32 464
PIN 0 464 LEFT 36
PINATTR PinName full
PINATTR Polarity OUT
LINE Normal 0 496 32 496
PIN 0 496 LEFT 36
PINATTR PinName almost_full
PINATTR Polarity OUT
LINE Normal 0 528 32 528
PIN 0 528 LEFT 36
PINATTR PinName prog_full
PINATTR Polarity OUT
LINE Normal 832 240 800 240
PIN 832 240 RIGHT 36
PINATTR PinName rd_clk
PINATTR Polarity IN
LINE Wide 832 272 800 272
PIN 832 272 RIGHT 36
PINATTR PinName dout[15:0]
PINATTR Polarity OUT
LINE Normal 832 304 800 304
PIN 832 304 RIGHT 36
PINATTR PinName rd_en
PINATTR Polarity IN
LINE Wide 832 336 800 336
PIN 832 336 RIGHT 36
PINATTR PinName prog_empty_thresh[9:0]
PINATTR Polarity IN
LINE Normal 832 496 800 496
PIN 832 496 RIGHT 36
PINATTR PinName empty
PINATTR Polarity OUT
LINE Normal 832 528 800 528
PIN 832 528 RIGHT 36
PINATTR PinName almost_empty
PINATTR Polarity OUT
LINE Normal 832 560 800 560
PIN 832 560 RIGHT 36
PINATTR PinName prog_empty
PINATTR Polarity OUT
LINE Normal 832 592 800 592
PIN 832 592 RIGHT 36
PINATTR PinName valid
PINATTR Polarity OUT

