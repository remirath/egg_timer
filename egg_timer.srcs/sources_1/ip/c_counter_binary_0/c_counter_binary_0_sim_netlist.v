// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Mon Mar 31 20:55:18 2025
// Host        : mc6030-33 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               w:/Desktop/egg_timer/egg_timer.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    CE,
    SCLR,
    LOAD,
    L,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 load_intf DATA" *) input LOAD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 l_intf DATA" *) input [11:0]L;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [11:0]Q;

  wire CE;
  wire CLK;
  wire [11:0]L;
  wire LOAD;
  wire [11:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "1" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "1" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "1" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "1" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "12" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_10
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [11:0]L;
  output THRESH0;
  output [11:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [11:0]L;
  wire LOAD;
  wire [11:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "1" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "1" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
EgsHeoOxdUxsX5gIKiaj0rabVidhYZrAC1ccO7uW1WWUY+5F26NMKfuRo2RbzpHAhKg6YWmehafX
vTPGaJRKHw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z34YzyhCkqWVBd+wfHLLkUW/H60lDZ7DBcaAzQK4qK/8LgoJdsH6DZ43BtKjfZhNz/T8CrFXpTq4
lXACmrJsvh8DNPmvB7LaQhnP9Q1UWB/2BUP3fAUHMA2d2pKOqEj3XF5pbikvIPiyQENN7Kn513bC
CvwAQIx2bzxkiYX1MZc=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SSMUY5NrZw2M/7w7U4gsSjNRmWfRCxfALTKD8+8C1h91c8RWo9X4x7A5m9YG0Pa491k6Lxf7I0eD
goajxjfLKNI+buWpvfZlHEcU7678iPGqz4g94c5n80sa3TKcwpV6f+p7C93Rto4JgUHSigA3gLBN
DzpD+6xOS6P2mkrRsQs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Tbb//X7l5IJljgHR/Q0swC7OpOr9LwQv6rxLgPXOMJNm5TebIkTTeQKZBlg96/x0gqqgFX19ZASr
qWxh3YL/aoYejZTUMHYF7ktggRgHydykFFfRo8xGrq33bJ1LOeuIQOZyZjZTB9zCoo8CMX8wCtcA
0ovBA4GCY5VFNLy/1whSrZs8R7CLSdrlxUJTTCXjF0f+Tf8OyjSS2VGyZfJbmSNnFJJuItoBbUO0
6qdcZfL3eQrA6y/AWPiFhGILWhBAvVGEahvuOHYDa8S1IUccHMOxQJtq0Y1UqRNB/qNmlHUKL/iH
IEr89vPUXnsfHTV4I+xFieSKz2LwzLXsAys4Yw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kfJNFYIhzZvlPwb4KI2aCH6Fx40tZkxF1Q5EfJSPdq2JohdV53Dn2x9HbgUIqvISu5UuFwT8R+oV
/B66+AOKivg+iSCvhh+HSv/oQNtgHeIG5xMgV8d3jXD9G4abV/g3jySuWrjXT9Z0IqvTQjqmKOR2
9nVDANRSJiSyM0Y275L4ylvrdjL8Yim0M/e9k+N+kNYfcQAzQYd/lfTmcdkn74/0qt030HQ2LxSy
A+NwqYXBuB4VkkCPvigd/s63XQNHxeHfRZs7q0iWos8Jgu9uI1zA6ZN4O4Cts2V9BF+SRqJdzrLy
1t5mzK/i0gmdsb8ds3y4b3AMet8PeT7w9sZc/A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MzDVqgEdc7DZdlm2cItrUQlry/9kVuVoApPpWX7zga11t+tLgAqain8Fhjl9Q1hFV6Rwv6WUUyOW
dL6uK1Pj4Tc0mqHyEMvAW2tHA/QcK0pphBofEd8Sd2oRBJ0l+XghTz/o5eIVzoxDF0h6fERIgAw6
PZK1iaI5d5osnKGqaJVhxQWf/M3XiOn9jCOGskyvtqNiiXNki/oAWPJNgm3Hb599C3ugMxNKGT5x
H76UXyZbcrmrFSkYz6XydewUEOb2eruDdZtf4QmJWyJ+WqAHgjSB7kcn3UfysW1iW59u7oxSpMgU
oLKWKFtXGSzN2+DVJ91qu7hIDmX5Q2X//JK4Cg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
WSvzIJZX5V+2a1AVs/W0nOglhFspbYHjyn8gxFdBbjZLl6pbzOguLwt1+MGew3jTWFfRDkbuzjZU
QZUdbLd7En08lB1vuGtSSQ3Eq5t0WyMEzBgZOf86MWpjMmqWLR0NztyAO/7ZV3nW3lBsrshFicLp
k7dw7nWrk7n7MCGx3f+Aor2W5qPXq/9SeP9XbkUCHycONYucbOFp4VasWVixvVoZURKdOHi0IQRl
mOlHkcvjbnGe2KkdbFzPXUUoxed+CvKJzyl4d/hdAzqBCVBShoFGc3q4NNw9awm3Kk00omtwqNnu
G7ALU5XiKW1IQDwxkNcSrc8gkQZamSjtPz7jqg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
YDHw6cmuN7qjrnzVYYvabl/KGtIz5eWsc+N7SMUfv8ZrcjvnUjWDorX30er+Xj9NFXi/qRJEgswp
fQIXoBqHfchmx78k7VX5QZa5Wczydim+VlYWhyf2Jdw1PFgvI4jP0QkbMUf42KzQNlKLv+QFLDCd
NhUF58R7Inzn556GaVJPSEo5QOUb1JdIuzUJxASwCrZk+J0JXDtrvbku8DitOmS8oeH+Su7GpgKc
sMnOfBTq8aHLUpupIzPgdbqPj2dH7eZkCHjyU6e74mQN1j1c75sjKXDYw/xCVMXE0SJlSLSciZGt
LkPBbEKKXuOycEl7F8KfV1L5v34roZTYKO641Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12848)
`pragma protect data_block
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
MZzODufYOTbFXX6dewVxvQNWsXnZi0M=
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
