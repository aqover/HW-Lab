// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Feb 17 18:51:01 2019
// Host        : DESKTOP-M83089R running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/aqover-pc/Documents/Learning/HWLabI/Verilog/Lab04/Lab04.srcs/sources_1/bd/system3/ip/system3_segmentDriver_0_1/system3_segmentDriver_0_1_sim_netlist.v
// Design      : system3_segmentDriver_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system3_segmentDriver_0_1,segmentDriver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "segmentDriver,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module system3_segmentDriver_0_1
   (seg,
    an,
    hex,
    fClk);
  output [6:0]seg;
  output [3:0]an;
  input [15:0]hex;
  input fClk;

  wire [3:0]an;
  wire fClk;
  wire [15:0]hex;
  wire [6:0]seg;

  system3_segmentDriver_0_1_segmentDriver inst
       (.an(an),
        .fClk(fClk),
        .hex(hex),
        .seg(seg));
endmodule

(* ORIG_REF_NAME = "clkDivide" *) 
module system3_segmentDriver_0_1_clkDivide
   (f,
    fClk);
  output [0:0]f;
  input fClk;

  wire [0:0]f;
  wire fClk;
  wire p_10_out;
  wire p_11_out;
  wire p_12_out;
  wire p_13_out;
  wire p_14_out;
  wire p_15_out;
  wire p_16_out;
  wire p_17_out;
  wire p_18_out;
  wire p_19_out;
  wire p_20_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire p_9_out;

  system3_segmentDriver_0_1_flipflop \genblk1[10].ff 
       (.p_11_out(p_11_out),
        .p_12_out(p_12_out));
  system3_segmentDriver_0_1_flipflop_0 \genblk1[11].ff 
       (.p_10_out(p_10_out),
        .p_11_out(p_11_out));
  system3_segmentDriver_0_1_flipflop_1 \genblk1[12].ff 
       (.p_10_out(p_10_out),
        .p_9_out(p_9_out));
  system3_segmentDriver_0_1_flipflop_2 \genblk1[13].ff 
       (.p_8_out(p_8_out),
        .p_9_out(p_9_out));
  system3_segmentDriver_0_1_flipflop_3 \genblk1[14].ff 
       (.p_7_out(p_7_out),
        .p_8_out(p_8_out));
  system3_segmentDriver_0_1_flipflop_4 \genblk1[15].ff 
       (.p_6_out(p_6_out),
        .p_7_out(p_7_out));
  system3_segmentDriver_0_1_flipflop_5 \genblk1[16].ff 
       (.p_5_out(p_5_out),
        .p_6_out(p_6_out));
  system3_segmentDriver_0_1_flipflop_6 \genblk1[17].ff 
       (.p_4_out(p_4_out),
        .p_5_out(p_5_out));
  system3_segmentDriver_0_1_flipflop_7 \genblk1[18].ff 
       (.p_3_out(p_3_out),
        .p_4_out(p_4_out));
  system3_segmentDriver_0_1_flipflop_8 \genblk1[19].ff 
       (.f(f),
        .p_3_out(p_3_out));
  system3_segmentDriver_0_1_flipflop_9 \genblk1[1].ff 
       (.fClk(fClk),
        .p_20_out(p_20_out));
  system3_segmentDriver_0_1_flipflop_10 \genblk1[2].ff 
       (.p_19_out(p_19_out),
        .p_20_out(p_20_out));
  system3_segmentDriver_0_1_flipflop_11 \genblk1[3].ff 
       (.p_18_out(p_18_out),
        .p_19_out(p_19_out));
  system3_segmentDriver_0_1_flipflop_12 \genblk1[4].ff 
       (.p_17_out(p_17_out),
        .p_18_out(p_18_out));
  system3_segmentDriver_0_1_flipflop_13 \genblk1[5].ff 
       (.p_16_out(p_16_out),
        .p_17_out(p_17_out));
  system3_segmentDriver_0_1_flipflop_14 \genblk1[6].ff 
       (.p_15_out(p_15_out),
        .p_16_out(p_16_out));
  system3_segmentDriver_0_1_flipflop_15 \genblk1[7].ff 
       (.p_14_out(p_14_out),
        .p_15_out(p_15_out));
  system3_segmentDriver_0_1_flipflop_16 \genblk1[8].ff 
       (.p_13_out(p_13_out),
        .p_14_out(p_14_out));
  system3_segmentDriver_0_1_flipflop_17 \genblk1[9].ff 
       (.p_12_out(p_12_out),
        .p_13_out(p_13_out));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop
   (p_11_out,
    p_12_out);
  output p_11_out;
  input p_12_out;

  wire p_11_out;
  wire p_12_out;
  wire st_i_1__8_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__8
       (.I0(p_11_out),
        .O(st_i_1__8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_12_out),
        .CE(1'b1),
        .D(st_i_1__8_n_0),
        .Q(p_11_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_0
   (p_10_out,
    p_11_out);
  output p_10_out;
  input p_11_out;

  wire p_10_out;
  wire p_11_out;
  wire st_i_1__9_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__9
       (.I0(p_10_out),
        .O(st_i_1__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_11_out),
        .CE(1'b1),
        .D(st_i_1__9_n_0),
        .Q(p_10_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_1
   (p_9_out,
    p_10_out);
  output p_9_out;
  input p_10_out;

  wire p_10_out;
  wire p_9_out;
  wire st_i_1__10_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__10
       (.I0(p_9_out),
        .O(st_i_1__10_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_10_out),
        .CE(1'b1),
        .D(st_i_1__10_n_0),
        .Q(p_9_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_10
   (p_19_out,
    p_20_out);
  output p_19_out;
  input p_20_out;

  wire p_19_out;
  wire p_20_out;
  wire st_i_1__0_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__0
       (.I0(p_19_out),
        .O(st_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_20_out),
        .CE(1'b1),
        .D(st_i_1__0_n_0),
        .Q(p_19_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_11
   (p_18_out,
    p_19_out);
  output p_18_out;
  input p_19_out;

  wire p_18_out;
  wire p_19_out;
  wire st_i_1__1_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__1
       (.I0(p_18_out),
        .O(st_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_19_out),
        .CE(1'b1),
        .D(st_i_1__1_n_0),
        .Q(p_18_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_12
   (p_17_out,
    p_18_out);
  output p_17_out;
  input p_18_out;

  wire p_17_out;
  wire p_18_out;
  wire st_i_1__2_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__2
       (.I0(p_17_out),
        .O(st_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_18_out),
        .CE(1'b1),
        .D(st_i_1__2_n_0),
        .Q(p_17_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_13
   (p_16_out,
    p_17_out);
  output p_16_out;
  input p_17_out;

  wire p_16_out;
  wire p_17_out;
  wire st_i_1__3_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__3
       (.I0(p_16_out),
        .O(st_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_17_out),
        .CE(1'b1),
        .D(st_i_1__3_n_0),
        .Q(p_16_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_14
   (p_15_out,
    p_16_out);
  output p_15_out;
  input p_16_out;

  wire p_15_out;
  wire p_16_out;
  wire st_i_1__4_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__4
       (.I0(p_15_out),
        .O(st_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_16_out),
        .CE(1'b1),
        .D(st_i_1__4_n_0),
        .Q(p_15_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_15
   (p_14_out,
    p_15_out);
  output p_14_out;
  input p_15_out;

  wire p_14_out;
  wire p_15_out;
  wire st_i_1__5_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__5
       (.I0(p_14_out),
        .O(st_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_15_out),
        .CE(1'b1),
        .D(st_i_1__5_n_0),
        .Q(p_14_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_16
   (p_13_out,
    p_14_out);
  output p_13_out;
  input p_14_out;

  wire p_13_out;
  wire p_14_out;
  wire st_i_1__6_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__6
       (.I0(p_13_out),
        .O(st_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_14_out),
        .CE(1'b1),
        .D(st_i_1__6_n_0),
        .Q(p_13_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_17
   (p_12_out,
    p_13_out);
  output p_12_out;
  input p_13_out;

  wire p_12_out;
  wire p_13_out;
  wire st_i_1__7_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__7
       (.I0(p_12_out),
        .O(st_i_1__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_13_out),
        .CE(1'b1),
        .D(st_i_1__7_n_0),
        .Q(p_12_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_2
   (p_8_out,
    p_9_out);
  output p_8_out;
  input p_9_out;

  wire p_8_out;
  wire p_9_out;
  wire st_i_1__11_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__11
       (.I0(p_8_out),
        .O(st_i_1__11_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_9_out),
        .CE(1'b1),
        .D(st_i_1__11_n_0),
        .Q(p_8_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_3
   (p_7_out,
    p_8_out);
  output p_7_out;
  input p_8_out;

  wire p_7_out;
  wire p_8_out;
  wire st_i_1__12_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__12
       (.I0(p_7_out),
        .O(st_i_1__12_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_8_out),
        .CE(1'b1),
        .D(st_i_1__12_n_0),
        .Q(p_7_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_4
   (p_6_out,
    p_7_out);
  output p_6_out;
  input p_7_out;

  wire p_6_out;
  wire p_7_out;
  wire st_i_1__13_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__13
       (.I0(p_6_out),
        .O(st_i_1__13_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_7_out),
        .CE(1'b1),
        .D(st_i_1__13_n_0),
        .Q(p_6_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_5
   (p_5_out,
    p_6_out);
  output p_5_out;
  input p_6_out;

  wire p_5_out;
  wire p_6_out;
  wire st_i_1__14_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__14
       (.I0(p_5_out),
        .O(st_i_1__14_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_6_out),
        .CE(1'b1),
        .D(st_i_1__14_n_0),
        .Q(p_5_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_6
   (p_4_out,
    p_5_out);
  output p_4_out;
  input p_5_out;

  wire p_4_out;
  wire p_5_out;
  wire st_i_1__15_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__15
       (.I0(p_4_out),
        .O(st_i_1__15_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_5_out),
        .CE(1'b1),
        .D(st_i_1__15_n_0),
        .Q(p_4_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_7
   (p_3_out,
    p_4_out);
  output p_3_out;
  input p_4_out;

  wire p_3_out;
  wire p_4_out;
  wire st_i_1__16_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__16
       (.I0(p_3_out),
        .O(st_i_1__16_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_4_out),
        .CE(1'b1),
        .D(st_i_1__16_n_0),
        .Q(p_3_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_8
   (f,
    p_3_out);
  output [0:0]f;
  input p_3_out;

  wire [0:0]f;
  wire p_3_out;
  wire st_i_1__17_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__17
       (.I0(f),
        .O(st_i_1__17_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_3_out),
        .CE(1'b1),
        .D(st_i_1__17_n_0),
        .Q(f),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_1_flipflop_9
   (p_20_out,
    fClk);
  output p_20_out;
  input fClk;

  wire fClk;
  wire p_20_out;
  wire qd;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1
       (.I0(p_20_out),
        .O(qd));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(fClk),
        .CE(1'b1),
        .D(qd),
        .Q(p_20_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "segmentDriver" *) 
module system3_segmentDriver_0_1_segmentDriver
   (an,
    seg,
    fClk,
    hex);
  output [3:0]an;
  output [6:0]seg;
  input fClk;
  input [15:0]hex;

  wire [3:0]an;
  wire fClk;
  wire [15:0]hex;
  wire [1:0]p_0_in;
  wire p_2_out;
  wire [1:0]pos;
  wire [6:0]seg;
  wire [3:0]sel0;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an[0]_INST_0 
       (.I0(pos[1]),
        .I1(pos[0]),
        .O(an[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[1]_INST_0 
       (.I0(pos[1]),
        .I1(pos[0]),
        .O(an[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[2]_INST_0 
       (.I0(pos[0]),
        .I1(pos[1]),
        .O(an[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an[3]_INST_0 
       (.I0(pos[1]),
        .I1(pos[0]),
        .O(an[3]));
  system3_segmentDriver_0_1_clkDivide cd
       (.f(p_2_out),
        .fClk(fClk));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pos[0]_i_1 
       (.I0(pos[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pos[1]_i_1 
       (.I0(pos[0]),
        .I1(pos[1]),
        .O(p_0_in[1]));
  FDRE #(
    .INIT(1'b0)) 
    \pos_reg[0] 
       (.C(p_2_out),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(pos[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pos_reg[1] 
       (.C(p_2_out),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(pos[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \seg[0]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg[1]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \seg[2]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \seg[3]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg[3]));
  LUT4 #(
    .INIT(16'h5710)) 
    \seg[4]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \seg[5]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    \seg[6]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(seg[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg[6]_INST_0_i_1 
       (.I0(hex[7]),
        .I1(hex[3]),
        .I2(hex[15]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(hex[11]),
        .O(sel0[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg[6]_INST_0_i_2 
       (.I0(hex[4]),
        .I1(hex[0]),
        .I2(hex[12]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(hex[8]),
        .O(sel0[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg[6]_INST_0_i_3 
       (.I0(hex[6]),
        .I1(hex[2]),
        .I2(hex[14]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(hex[10]),
        .O(sel0[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg[6]_INST_0_i_4 
       (.I0(hex[5]),
        .I1(hex[1]),
        .I2(hex[13]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(hex[9]),
        .O(sel0[1]));
endmodule
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
