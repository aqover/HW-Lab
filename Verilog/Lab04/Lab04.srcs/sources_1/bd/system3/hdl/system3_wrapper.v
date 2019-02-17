//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Feb 17 20:32:36 2019
//Host        : DESKTOP-M83089R running 64-bit major release  (build 9200)
//Command     : generate_target system3_wrapper.bd
//Design      : system3_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system3_wrapper
   (an,
    btnC,
    btnD,
    btnL,
    btnR,
    btnU,
    clk,
    seg,
    swA,
    swB);
  output [3:0]an;
  input btnC;
  input btnD;
  input btnL;
  input btnR;
  input btnU;
  input clk;
  output [6:0]seg;
  input [3:0]swA;
  input [3:0]swB;

  wire [3:0]an;
  wire btnC;
  wire btnD;
  wire btnL;
  wire btnR;
  wire btnU;
  wire clk;
  wire [6:0]seg;
  wire [3:0]swA;
  wire [3:0]swB;

  system3 system3_i
       (.an(an),
        .btnC(btnC),
        .btnD(btnD),
        .btnL(btnL),
        .btnR(btnR),
        .btnU(btnU),
        .clk(clk),
        .seg(seg),
        .swA(swA),
        .swB(swB));
endmodule
