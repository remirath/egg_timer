// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Mon Mar 31 20:55:18 2025
// Host        : mc6030-33 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
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
pjcRx1HIc+9ova/Dzq7qoxgAoI6cXK0ZiqBerhmQwKFUsXDOyxgn55aRlRl38984h3AyFAz4SXI7
daAcXH+Y3qP9vg9jJWrX0zJ8cWNtxtA9vn9toGGIX9URIPndVe7jglfqGVwH7thtZL047oJf2H1n
xD32BPt9MzptymDDi7poTczkbORgm28yRGRukbt9pCHo2BFxak7jwg2JOEyzy0r5ItUxT+JbTgXb
xRb5utKguZe2rUzLYwayboSO7jMlfsTHOduL150MyRUDDCbxoUpZe1XprMTRaw/UdOSFR7tiRaHO
2rxmOhIl2NrZ96SdBCaapaMT6OQkBPW5l5r1Fg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
oXspEye9KnuLOwCB0SJX0rEub40NMxF2bj51PmoAhjCANbUTi+CZ9I3zjBDm9uCm8qaaNZIzueLE
hFw9bhq8Vn/RHWARD07Z9fkCWmlcemBYEJMBda5pKR4Bsrov1MUmlReRHk0c1/GEzTGfW6Xlu+Ou
vADF/cfRpUZB6wXUKrXv2t7UMz6Ke41Srs6Rt3Klc75/mAXKJCfKLeutuun5BA9lTCWSihXZIINu
UQhaFG/+tyomJibshnH0HVyPFQ9s/Fu5eV1xjzMZAYbwNRiSx4H32e+ajE9zGwrtzD8ec/MVFNmL
zwSYlr5kkkC3cVGlLaXQlaz7DxTD0tNmIw2VkA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12784)
`pragma protect data_block
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
zgjbcWE4w9lhZIvIogWCKg==
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
