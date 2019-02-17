// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Feb 17 18:51:01 2019
// Host        : DESKTOP-M83089R running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/aqover-pc/Documents/Learning/HWLabI/Verilog/Lab04/Lab04.srcs/sources_1/bd/system3/ip/system3_segmentDriver_0_1/system3_segmentDriver_0_1_stub.v
// Design      : system3_segmentDriver_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "segmentDriver,Vivado 2018.3" *)
module system3_segmentDriver_0_1(seg, an, hex, fClk)
/* synthesis syn_black_box black_box_pad_pin="seg[6:0],an[3:0],hex[15:0],fClk" */;
  output [6:0]seg;
  output [3:0]an;
  input [15:0]hex;
  input fClk;
endmodule
