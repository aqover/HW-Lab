`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2019 11:22:29 PM
// Design Name: 
// Module Name: system
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module system(
	input 	wire 		clk,
	output 	wire [15:0] led,
	output 	wire [6:0] 	seg,
	output 	wire 		dp,
	output 	wire [3:0] 	an,
	input 	wire 		btnU, btnD, btnL, btnR, btnC,
	output 	wire [3:0] 	vgaRed, vgaBlue, vgaGreen,
	output 	wire 		Hsync, Vsync,
	input 	wire 		RsRx,
	output 	wire 		RsTx,
	output 	wire 		PS2Clk,
	input 	wire 		PS2Data,
	inout 	wire [7:0] 	JA, JB, JC
    );

wire [7:0] pa, pb, pc, pd;

oc8051_fpga_top cpu(
	.clk(clk),
	.rst(btnU),
//
// interrupt interface
//
	.int1(),
	.int2(),
//
// 2x7 led display output (port 0)
//
	// .dispout(),
//
// ports
//
	.p0_out(pa), 
	.p1_out(pb), 
	.p2_out(pc), 
	.p3_out(pd), 
//
// external instruction rom interface
//
	.ea(),
	.iadr_o(),
	.istb_o(),
	.iack_i(),
	.icyc_o(),
	.idat_i(),
//
// external data ram interface
//
	.stb_o(),
	.cyc_o(),
	.dat_i(),
	.dat_o(),
	.adr_o(),
	.ack_i(),
	.we_o(),
//
// serial interface
//
	.rxd(RsRx),
	.txd(RsTx),
//
// timer/counter interface
//
	.t0(),
	.t1()
	);

segmentDriver disp(
	.seg(seg),
	.an(an),
	.hex(pa),
	.fClk(clk)
	);

endmodule
