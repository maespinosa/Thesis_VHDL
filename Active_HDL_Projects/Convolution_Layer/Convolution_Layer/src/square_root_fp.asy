Version 4
SymbolType BLOCK
TEXT 32 32 LEFT 4 square_root_fp
RECTANGLE Normal 32 32 672 800
LINE Normal 0 80 32 80
PIN 0 80 LEFT 36
PINATTR PinName s_axis_a_tvalid
PINATTR Polarity IN
LINE Normal 0 112 32 112
PIN 0 112 LEFT 36
PINATTR PinName s_axis_a_tready
PINATTR Polarity OUT
LINE Wide 0 144 32 144
PIN 0 144 LEFT 36
PINATTR PinName s_axis_a_tdata[15:0]
PINATTR Polarity IN
LINE Wide 0 176 32 176
PIN 0 176 LEFT 36
PINATTR PinName s_axis_a_tuser[0:0]
PINATTR Polarity IN
LINE Normal 0 656 32 656
PIN 0 656 LEFT 36
PINATTR PinName aclk
PINATTR Polarity IN
LINE Normal 0 688 32 688
PIN 0 688 LEFT 36
PINATTR PinName aclken
PINATTR Polarity IN
LINE Normal 0 720 32 720
PIN 0 720 LEFT 36
PINATTR PinName aresetn
PINATTR Polarity IN
LINE Normal 704 80 672 80
PIN 704 80 RIGHT 36
PINATTR PinName m_axis_result_tvalid
PINATTR Polarity OUT
LINE Normal 704 112 672 112
PIN 704 112 RIGHT 36
PINATTR PinName m_axis_result_tready
PINATTR Polarity IN
LINE Wide 704 144 672 144
PIN 704 144 RIGHT 36
PINATTR PinName m_axis_result_tdata[15:0]
PINATTR Polarity OUT
LINE Wide 704 176 672 176
PIN 704 176 RIGHT 36
PINATTR PinName m_axis_result_tuser[1:0]
PINATTR Polarity OUT

