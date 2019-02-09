`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2019 02:21:56 PM
// Design Name: 
// Module Name: flipflop
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
module clkDivide(
    output reg fClk,
    input wire clk,
    input wire [4:0] bit
    );
parameter bitDiv=22;

wire [bitDiv-1:0] f, d;

assign f[0] = clk;

genvar i;
for(i=1;i<bitDiv;i = i+1)
    flipflop ff(f[i], d[i], d[i], f[i-1]);
    
always @(f[bit[4:0]]) fClk = f[bit[4:0]];
    
endmodule


module flipflop(
    output reg q,
    output reg qd,
    input wire d,
    input wire clk
    );

reg st;

initial st = 0;

always @(posedge clk) st = d;
always @(st)
begin
    q = st;
    qd = !st;
end
endmodule