//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Feb 17 22:24:10 2019
//Host        : DESKTOP-M83089R running 64-bit major release  (build 9200)
//Command     : generate_target system3.bd
//Design      : system3
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "system3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system3,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "system3.hwdef" *) 
module system3
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

  wire btnC_1;
  wire btnD_1;
  wire btnL_1;
  wire btnR_1;
  wire btnU_1;
  wire [15:0]calculator_0_out;
  wire clkDivide_0_fClk;
  wire clk_1;
  wire [3:0]segmentDriver_0_an;
  wire [6:0]segmentDriver_0_seg;
  wire [3:0]swA_1;
  wire [3:0]swB_1;
  wire [4:0]xlconstant_0_dout;

  assign an[3:0] = segmentDriver_0_an;
  assign btnC_1 = btnC;
  assign btnD_1 = btnD;
  assign btnL_1 = btnL;
  assign btnR_1 = btnR;
  assign btnU_1 = btnU;
  assign clk_1 = clk;
  assign seg[6:0] = segmentDriver_0_seg;
  assign swA_1 = swA[3:0];
  assign swB_1 = swB[3:0];
  system3_calculator_0_0 calculator_0
       (.a(swA_1),
        .add(btnU_1),
        .b(swB_1),
        .clear(btnC_1),
        .clk(clkDivide_0_fClk),
        .devide(btnR_1),
        .multiply(btnL_1),
        .out(calculator_0_out),
        .sub(btnD_1));
  system3_clkDivide_0_1 clkDivide_0
       (.bit(xlconstant_0_dout),
        .clk(clk_1),
        .fClk(clkDivide_0_fClk));
  system3_segmentDriver_0_1 segmentDriver_0
       (.an(segmentDriver_0_an),
        .fClk(clk_1),
        .hex(calculator_0_out),
        .seg(segmentDriver_0_seg));
  system3_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
