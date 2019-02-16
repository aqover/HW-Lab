`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2019 03:49:33 PM
// Design Name: 
// Module Name: system1
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
module system1(
    output [6:0]seg,
    output [3:0]an,
    input clk,
    input [7:0]sw,
    input btnC,
    input btnU
    );
//////////////////////////////////////////////////////////////////////////////////
wire [15:0] hex;
segmentDriver sd(seg, an, hex, clk);
wire fClk;
reg [4:0]bit = 21;
clkDivide cd(fClk, clk, bit);
//////////////////////////////////////////////////////////////////////////////////
genvar i;

wire [3:0] sw_up, sw_down;
wire [19:0]ffq, ffqd;
wire btnU1, btnC1;
for(i=0;i<4;i = i+1)
begin
    flipflop ff1(ffq[4*i], ffqd[4*i], sw[2*i], fClk);
    flipflop ff2(ffq[4*i+1], ffqd[4*i+1], ffq[4*i], fClk);
    singlePulse sp1(sw_down[i], ffq[4*i+1], fClk);
    
    flipflop ff3(ffq[4*i+2], ffqd[4*i+2], sw[2*i+1], fClk);
    flipflop ff4(ffq[4*i+3], ffqd[4*i+3], ffq[4*i+2], fClk);
    singlePulse sp2(sw_up[i], ffq[4*i+3], fClk);
end
flipflop ff5(ffq[16], ffqd[16], btnC, fClk);
flipflop ff6(ffq[17], ffqd[17], ffq[16], fClk);
singlePulse sp3(btnC1, ffq[17], fClk);

flipflop ff7(ffq[18], ffqd[18], btnU, fClk);
flipflop ff8(ffq[19], ffqd[19], ffq[18], fClk);
singlePulse sp4(btnU1, ffq[19], fClk);
//////////////////////////////////////////////////////////////////////////////////
wire [3:0] dcba_borrow, dcba_cout;
reg [3:0] dcba_clk, sw_up1, sw_down1;

always @(sw_up[0]) sw_up1[0] = sw_up[0] & (hex[15:0] != 16'h9999);
always @(sw_up[1] or dcba_cout[0]) sw_up1[1] = (sw_up[1] & (hex[15:4] != 12'h999)) | dcba_cout[0];
always @(sw_up[2] or dcba_cout[1]) sw_up1[2] = (sw_up[2] & (hex[15:8] != 8'h99)) | dcba_cout[1];
always @(sw_up[3] or dcba_cout[2]) sw_up1[3] = (sw_up[3] & (hex[15:12] != 4'h9)) | dcba_cout[2];
always @(sw_down[0]) sw_down1[0] = sw_down[0] & (hex[15:0] != 4'h0000);
always @(sw_down[1] or dcba_borrow[0]) sw_down1[1] = (sw_down[1] & (hex[15:4] != 3'h000)) | dcba_borrow[0];
always @(sw_down[2] or dcba_borrow[1]) sw_down1[2] = (sw_down[2] & (hex[15:8] != 2'h00)) | dcba_borrow[1];
always @(sw_down[3] or dcba_borrow[2]) sw_down1[3] = (sw_down[3] & (hex[15:12] != 1'h0)) | dcba_borrow[2];
generate
for(i=0;i<4;i=i+1)
    bcdCounter bcd(hex[4*(i+1)-1:4*i], dcba_cout[i], dcba_borrow[i], sw_up1[i], sw_down1[i], btnU1, btnC1, fClk); 
endgenerate
//////////////////////////////////////////////////////////////////////////////////
 initial
 begin
    sw_up1 = 0;
    sw_down1 = 0;
 end
//////////////////////////////////////////////////////////////////////////////////
endmodule
