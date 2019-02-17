// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Feb 17 22:25:20 2019
// Host        : DESKTOP-M83089R running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/aqover-pc/Documents/Learning/HWLabI/Verilog/Lab04/Lab04.srcs/sources_1/bd/system3/ip/system3_calculator_0_0/system3_calculator_0_0_stub.v
// Design      : system3_calculator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "calculator,Vivado 2018.3" *)
module system3_calculator_0_0(out, a, b, add, sub, multiply, devide, clear, clk)
/* synthesis syn_black_box black_box_pad_pin="out[15:0],a[3:0],b[3:0],add,sub,multiply,devide,clear,clk" */;
  output [15:0]out;
  input [3:0]a;
  input [3:0]b;
  input add;
  input sub;
  input multiply;
  input devide;
  input clear;
  input clk;
endmodule
