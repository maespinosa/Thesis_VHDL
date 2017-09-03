// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Sat Jul 01 06:14:01 2017
// Host        : Marks-M3800-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/Sourcetree_Local/Thesis_VHDL/Xilinx_Projects/ip_repo/Multiplier_Bank_1.0/src/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_10,{}" *) (* core_generation_info = "mult_gen_0,mult_gen_v12_0_10,{x_ipProduct=Vivado 2015.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=mult_gen,x_ipVersion=12.0,x_ipCoreRevision=10,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_VERBOSITY=0,C_MODEL_TYPE=0,C_OPTIMIZE_GOAL=1,C_XDEVICEFAMILY=artix7,C_HAS_CE=0,C_HAS_SCLR=0,C_LATENCY=3,C_A_WIDTH=16,C_A_TYPE=0,C_B_WIDTH=16,C_B_TYPE=0,C_OUT_HIGH=31,C_OUT_LOW=0,C_MULT_TYPE=1,C_CE_OVERRIDES_SCLR=0,C_CCM_IMP=0,C_B_VALUE=10000001,C_HAS_ZERO_DETECT=0,C_ROUND_OUTPUT=0,C_ROUND_PT=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "mult_gen_v12_0_10,Vivado 2015.4" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_10 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_10" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_10
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [31:0]P;
  wire [47:0]PCASC;
  wire SCLR;
  wire [1:0]ZERO_DETECT;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_10_viv i_mult
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(PCASC),
        .SCLR(SCLR),
        .ZERO_DETECT(ZERO_DETECT));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
VllxWgRrugvi2fu1Kh4iL+ZkJA5TtZ+LGWCqHHHE1lCRjHiMOz5M3L3abI/BjM/wR5F/V2K65Bhs
texqqBOYvA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
MBYsuh9EGjKBlxR/81kh3KOqi8FbrckSRPHKXnFdQ+xl0tmxawBysww69vxfgtxFNJiAbn7g4XTl
ZKY4IL7I/Xtd8hfbyrNLd91vyaOSjApJ4lvzulVzGXiQnK2HerB/fsbdlHNBia244t0PdPr6F9xO
hHL7LtyvIyJ5GOAsQME=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
ZB+/R4dft7sjBtbt9KO0IC7JOAWrN2QUGDgE3tSIfDrQl4/J/iMmI3GwLQ7XorjfXJUQLlhgiEPW
+ugw+Ogpzl70RHSRn9wgBx8DxM5Ks50Auo/f7WTgCjB3kGLNv6mQbSMau1NzNOYVnZl8Rh6tHtUB
bOgS2tSRNq6hoywBzhlOhNF+WAFeAqlCivZUu+PEkHo6E5Tjow/fdsFGqDgxNX7oeLWmPsDpsKJ3
QcctpNHijjAQG5KD1D89K79Bra/gcXsqEUhln1UXEOlRrwotkgtYjLlDPa9a2oR5jbm9OA3sioA3
hmA55rKietj5N1L9Vfefe1hITEgIAfywcKZrYQ==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
4G3TtWY+qMIHXmGANxyz04ejYEVMyDiVta/i/y1q0B2PiS/6o154uUJJtYZ6VwWcRLRFBS+KSUQS
1xM/H/dAMEXDwu6MoUZym3rNyVU2gMZDpStmQOJh5oqpOfWgd+pOZrno4Pu+I5fLHhcoKhrqt+Q2
EW8gZ8651ee7nTJiYJg=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC15_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
QMt+dKNUhNRuG/0VSi/RJghtOHEDAWuXQw6E5JDXlQ+PxklRNo5tNEiJcBcfgCuhCDCJzTxIDZpL
Zl2WXMeL7ut1Y4eRZ+DtqIV3uZkJsDlnZiNL2aV/OG/UVW7kjI0hreqRKfFgsfU5U+hz59Oe8dy/
F/kn0Lm3Jd3tuBZ/cUT+xg0TOmz94aVFbqONwZkaZwyCPsAn9HIeLYFAVy/VcPKduQSMJPBQ7PdH
w52z7LHHlPlI921JzVq774O0fZa3eT3VxX64elGzcrajGaZVnvYHnXYf72axtRbmk6RBrwG4/Wdm
fqtbdWjOojWTqRzPE4EY4JSbY+Rf1P4x2S8noQ==


`pragma protect key_keyowner = "ATRENTA", key_keyname= "ATR-SG-2015-RSA-3", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
S52hBEv73jPEAyMZcPN7R3PqCrzyV5A5nvi4Ta3EFdSf6V7h3OcWhpCvzJxlzMTuMZtXKveuy3Zq
W9cfkWUM11Wf+R5nPff+MWuKk5MueJZyp0EkRBwkDplwASqXoGcn/EZEI7q64lHjwiIUtpjtnml7
JKEMcCxna7gxNb9J2HLVpNoU5Tzc7ivVytTQ3/lZMzNHyYTf1AXOId2TJN2zNXVZI+CyJMx22gz6
BZhUfxy5+fezMv+cSMX2/VIk8lkzVKR0FmReScs4LG8lxvY227btFNDIZGwT3yDmdzGqMabsx6WW
nwWes9N7WA9TVKvqvODIAGKUZzAcKr0sfSeLJw==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
CAyKS5eCfoicSClj+YmgQbsoFcl7882aSVx4H6UjnnKGQuSGkwbrdD1zKgwRi2PIwM8siMnw6gQW
JQzUAF5qRI8sVzEWxNocqM7+i5BE2hhU1q1DRsEjNT35/Ablv4R4kEg7luCi0Wpk5vh4wNx03+uY
y7dginpfiO90C1Dj9oJwrhfRFXWZDYRvpmGYx7fE40J+OfgWjHfb/lfLyv3ZURHr6bCWFpiRdb0K
iJ/Vs6hItGAShFfQDgjkTGpP9eidwZZZJQvkDRDB5Eh+GhhXnk4dHtoCzid5x7quyODOy+LCGpNx
Pcyde+6yth+iuozJ0neIWOz/+PJBTtfWJfTFKA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
tUE+h/Ivh9r+oM3uVpk7N8oLhkO6poQsmzxeOIhNa+4qrzHE/fymSfimzXSQ8WIIHasQ8jmJrYNu
VaSxlj5+X8K5lZ9+GY1EiPLRxLe2RNPzZH4mv42MZ3Nr5hJFdF2VJacm39A+1k4DU5DMQOCEGwk5
1+B6gJaAKr2qAEU9bklPSJ+jKYfP/Z2ewbd01mDmTJDbPv/If3hiCZWYv0ZpB0SdoKaDQObl3pdn
GIs3UYHRU5MSL+9pkVaAZRuFjqhTGqm+ss8FxuQmz1kQelvp7KcQLGCCBH54jxUMD9bz79U7pFDN
7ZtRr6RlR0J7Zwp7idLCaGMkebf1esvATVTdYA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7200)
`pragma protect data_block
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
rHn93F7gZ1dmLFk0lERxq/r7
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
