// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Feb 17 19:51:27 2019
// Host        : DESKTOP-M83089R running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/aqover-pc/Documents/Learning/HWLabI/Verilog/Lab04/Lab04.srcs/sources_1/bd/system3/ip/system3_clkDivide_0_1/system3_clkDivide_0_1_sim_netlist.v
// Design      : system3_clkDivide_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system3_clkDivide_0_1,clkDivide,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "clkDivide,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module system3_clkDivide_0_1
   (fClk,
    clk,
    bit);
  output fClk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [4:0]bit;

  wire [4:0]bit;
  wire clk;
  wire fClk;

  system3_clkDivide_0_1_clkDivide inst
       (.bit(bit),
        .clk(clk),
        .fClk(fClk));
endmodule

(* ORIG_REF_NAME = "clkDivide" *) 
module system3_clkDivide_0_1_clkDivide
   (fClk,
    clk,
    bit);
  output fClk;
  input clk;
  input [4:0]bit;

  wire [4:0]bit;
  wire clk;
  wire fClk;
  wire \genblk1[11].ff_n_1 ;
  wire \genblk1[15].ff_n_1 ;
  wire \genblk1[21].ff_n_0 ;
  wire \genblk1[3].ff_n_1 ;
  wire \genblk1[7].ff_n_1 ;
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
  wire p_1_out;
  wire p_20_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire p_9_out;

  system3_clkDivide_0_1_flipflop \genblk1[10].ff 
       (.p_11_out(p_11_out),
        .p_12_out(p_12_out));
  system3_clkDivide_0_1_flipflop_0 \genblk1[11].ff 
       (.bit(bit[2:0]),
        .bit_2_sp_1(\genblk1[11].ff_n_1 ),
        .fClk(\genblk1[15].ff_n_1 ),
        .p_10_out(p_10_out),
        .p_11_out(p_11_out),
        .p_12_out(p_12_out),
        .p_13_out(p_13_out));
  system3_clkDivide_0_1_flipflop_1 \genblk1[12].ff 
       (.p_10_out(p_10_out),
        .p_9_out(p_9_out));
  system3_clkDivide_0_1_flipflop_2 \genblk1[13].ff 
       (.p_8_out(p_8_out),
        .p_9_out(p_9_out));
  system3_clkDivide_0_1_flipflop_3 \genblk1[14].ff 
       (.p_7_out(p_7_out),
        .p_8_out(p_8_out));
  system3_clkDivide_0_1_flipflop_4 \genblk1[15].ff 
       (.bit(bit[1:0]),
        .p_6_out(p_6_out),
        .p_7_out(p_7_out),
        .p_8_out(p_8_out),
        .p_9_out(p_9_out),
        .st_reg_0(\genblk1[15].ff_n_1 ));
  system3_clkDivide_0_1_flipflop_5 \genblk1[16].ff 
       (.p_5_out(p_5_out),
        .p_6_out(p_6_out));
  system3_clkDivide_0_1_flipflop_6 \genblk1[17].ff 
       (.p_4_out(p_4_out),
        .p_5_out(p_5_out));
  system3_clkDivide_0_1_flipflop_7 \genblk1[18].ff 
       (.p_3_out(p_3_out),
        .p_4_out(p_4_out));
  system3_clkDivide_0_1_flipflop_8 \genblk1[19].ff 
       (.bit(bit),
        .fClk(fClk),
        .fClk_0(\genblk1[11].ff_n_1 ),
        .fClk_1(\genblk1[3].ff_n_1 ),
        .fClk_2(\genblk1[21].ff_n_0 ),
        .p_2_out(p_2_out),
        .p_3_out(p_3_out),
        .p_4_out(p_4_out),
        .p_5_out(p_5_out));
  system3_clkDivide_0_1_flipflop_9 \genblk1[1].ff 
       (.clk(clk),
        .p_20_out(p_20_out));
  system3_clkDivide_0_1_flipflop_10 \genblk1[20].ff 
       (.p_1_out(p_1_out),
        .p_2_out(p_2_out));
  system3_clkDivide_0_1_flipflop_11 \genblk1[21].ff 
       (.bit(bit[0]),
        .p_1_out(p_1_out),
        .st_reg_0(\genblk1[21].ff_n_0 ));
  system3_clkDivide_0_1_flipflop_12 \genblk1[2].ff 
       (.p_19_out(p_19_out),
        .p_20_out(p_20_out));
  system3_clkDivide_0_1_flipflop_13 \genblk1[3].ff 
       (.bit(bit[2:0]),
        .bit_2_sp_1(\genblk1[3].ff_n_1 ),
        .clk(clk),
        .fClk(\genblk1[7].ff_n_1 ),
        .p_18_out(p_18_out),
        .p_19_out(p_19_out),
        .p_20_out(p_20_out));
  system3_clkDivide_0_1_flipflop_14 \genblk1[4].ff 
       (.p_17_out(p_17_out),
        .p_18_out(p_18_out));
  system3_clkDivide_0_1_flipflop_15 \genblk1[5].ff 
       (.p_16_out(p_16_out),
        .p_17_out(p_17_out));
  system3_clkDivide_0_1_flipflop_16 \genblk1[6].ff 
       (.p_15_out(p_15_out),
        .p_16_out(p_16_out));
  system3_clkDivide_0_1_flipflop_17 \genblk1[7].ff 
       (.bit(bit[1:0]),
        .p_14_out(p_14_out),
        .p_15_out(p_15_out),
        .p_16_out(p_16_out),
        .p_17_out(p_17_out),
        .st_reg_0(\genblk1[7].ff_n_1 ));
  system3_clkDivide_0_1_flipflop_18 \genblk1[8].ff 
       (.p_13_out(p_13_out),
        .p_14_out(p_14_out));
  system3_clkDivide_0_1_flipflop_19 \genblk1[9].ff 
       (.p_12_out(p_12_out),
        .p_13_out(p_13_out));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_clkDivide_0_1_flipflop
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
module system3_clkDivide_0_1_flipflop_0
   (p_10_out,
    bit_2_sp_1,
    p_11_out,
    bit,
    fClk,
    p_12_out,
    p_13_out);
  output p_10_out;
  output bit_2_sp_1;
  input p_11_out;
  input [2:0]bit;
  input fClk;
  input p_12_out;
  input p_13_out;

  wire [2:0]bit;
  wire bit_2_sn_1;
  wire fClk;
  wire fClk_INST_0_i_6_n_0;
  wire p_10_out;
  wire p_11_out;
  wire p_12_out;
  wire p_13_out;
  wire st_i_1__9_n_0;

  assign bit_2_sp_1 = bit_2_sn_1;
  MUXF7 fClk_INST_0_i_2
       (.I0(fClk_INST_0_i_6_n_0),
        .I1(fClk),
        .O(bit_2_sn_1),
        .S(bit[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    fClk_INST_0_i_6
       (.I0(p_10_out),
        .I1(p_11_out),
        .I2(bit[1]),
        .I3(p_12_out),
        .I4(bit[0]),
        .I5(p_13_out),
        .O(fClk_INST_0_i_6_n_0));
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
module system3_clkDivide_0_1_flipflop_1
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
module system3_clkDivide_0_1_flipflop_10
   (p_1_out,
    p_2_out);
  output p_1_out;
  input p_2_out;

  wire p_1_out;
  wire p_2_out;
  wire st_i_1__18_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__18
       (.I0(p_1_out),
        .O(st_i_1__18_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_2_out),
        .CE(1'b1),
        .D(st_i_1__18_n_0),
        .Q(p_1_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_clkDivide_0_1_flipflop_11
   (st_reg_0,
    p_1_out,
    bit);
  output st_reg_0;
  input p_1_out;
  input [0:0]bit;

  wire [0:0]bit;
  wire p_0_out;
  wire p_1_out;
  wire st_i_1__19_n_0;
  wire st_reg_0;

  LUT3 #(
    .INIT(8'hB8)) 
    fClk_INST_0_i_5
       (.I0(p_0_out),
        .I1(bit),
        .I2(p_1_out),
        .O(st_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__19
       (.I0(p_0_out),
        .O(st_i_1__19_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_1_out),
        .CE(1'b1),
        .D(st_i_1__19_n_0),
        .Q(p_0_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_clkDivide_0_1_flipflop_12
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
module system3_clkDivide_0_1_flipflop_13
   (p_18_out,
    bit_2_sp_1,
    p_19_out,
    bit,
    fClk,
    p_20_out,
    clk);
  output p_18_out;
  output bit_2_sp_1;
  input p_19_out;
  input [2:0]bit;
  input fClk;
  input p_20_out;
  input clk;

  wire [2:0]bit;
  wire bit_2_sn_1;
  wire clk;
  wire fClk;
  wire fClk_INST_0_i_8_n_0;
  wire p_18_out;
  wire p_19_out;
  wire p_20_out;
  wire st_i_1__1_n_0;

  assign bit_2_sp_1 = bit_2_sn_1;
  MUXF7 fClk_INST_0_i_3
       (.I0(fClk_INST_0_i_8_n_0),
        .I1(fClk),
        .O(bit_2_sn_1),
        .S(bit[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    fClk_INST_0_i_8
       (.I0(p_18_out),
        .I1(p_19_out),
        .I2(bit[1]),
        .I3(p_20_out),
        .I4(bit[0]),
        .I5(clk),
        .O(fClk_INST_0_i_8_n_0));
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
module system3_clkDivide_0_1_flipflop_14
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
module system3_clkDivide_0_1_flipflop_15
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
module system3_clkDivide_0_1_flipflop_16
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
module system3_clkDivide_0_1_flipflop_17
   (p_14_out,
    st_reg_0,
    p_15_out,
    bit,
    p_16_out,
    p_17_out);
  output p_14_out;
  output st_reg_0;
  input p_15_out;
  input [1:0]bit;
  input p_16_out;
  input p_17_out;

  wire [1:0]bit;
  wire p_14_out;
  wire p_15_out;
  wire p_16_out;
  wire p_17_out;
  wire st_i_1__5_n_0;
  wire st_reg_0;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    fClk_INST_0_i_9
       (.I0(p_14_out),
        .I1(p_15_out),
        .I2(bit[1]),
        .I3(p_16_out),
        .I4(bit[0]),
        .I5(p_17_out),
        .O(st_reg_0));
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
module system3_clkDivide_0_1_flipflop_18
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
module system3_clkDivide_0_1_flipflop_19
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
module system3_clkDivide_0_1_flipflop_2
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
module system3_clkDivide_0_1_flipflop_3
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
module system3_clkDivide_0_1_flipflop_4
   (p_6_out,
    st_reg_0,
    p_7_out,
    bit,
    p_8_out,
    p_9_out);
  output p_6_out;
  output st_reg_0;
  input p_7_out;
  input [1:0]bit;
  input p_8_out;
  input p_9_out;

  wire [1:0]bit;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire p_9_out;
  wire st_i_1__13_n_0;
  wire st_reg_0;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    fClk_INST_0_i_7
       (.I0(p_6_out),
        .I1(p_7_out),
        .I2(bit[1]),
        .I3(p_8_out),
        .I4(bit[0]),
        .I5(p_9_out),
        .O(st_reg_0));
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
module system3_clkDivide_0_1_flipflop_5
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
module system3_clkDivide_0_1_flipflop_6
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
module system3_clkDivide_0_1_flipflop_7
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
module system3_clkDivide_0_1_flipflop_8
   (p_2_out,
    fClk,
    p_3_out,
    bit,
    fClk_0,
    fClk_1,
    fClk_2,
    p_4_out,
    p_5_out);
  output p_2_out;
  output fClk;
  input p_3_out;
  input [4:0]bit;
  input fClk_0;
  input fClk_1;
  input fClk_2;
  input p_4_out;
  input p_5_out;

  wire [4:0]bit;
  wire fClk;
  wire fClk_0;
  wire fClk_1;
  wire fClk_2;
  wire fClk_INST_0_i_1_n_0;
  wire fClk_INST_0_i_4_n_0;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire st_i_1__17_n_0;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    fClk_INST_0
       (.I0(fClk_INST_0_i_1_n_0),
        .I1(bit[4]),
        .I2(fClk_0),
        .I3(bit[3]),
        .I4(fClk_1),
        .O(fClk));
  MUXF7 fClk_INST_0_i_1
       (.I0(fClk_INST_0_i_4_n_0),
        .I1(fClk_2),
        .O(fClk_INST_0_i_1_n_0),
        .S(bit[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    fClk_INST_0_i_4
       (.I0(p_2_out),
        .I1(p_3_out),
        .I2(bit[1]),
        .I3(p_4_out),
        .I4(bit[0]),
        .I5(p_5_out),
        .O(fClk_INST_0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__17
       (.I0(p_2_out),
        .O(st_i_1__17_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(p_3_out),
        .CE(1'b1),
        .D(st_i_1__17_n_0),
        .Q(p_2_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_clkDivide_0_1_flipflop_9
   (p_20_out,
    clk);
  output p_20_out;
  input clk;

  wire clk;
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
       (.C(clk),
        .CE(1'b1),
        .D(qd),
        .Q(p_20_out),
        .R(1'b0));
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
