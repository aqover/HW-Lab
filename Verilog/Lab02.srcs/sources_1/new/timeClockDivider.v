`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2019 03:12:24 AM
// Design Name: 
// Module Name: timeClockDivider
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

module dFlipFlop(
    output reg Q,
    output reg Qn,
    input wire Clk,
    input wire D
);

initial
begin
    Q=0;
    Qn=1;
end

always @(negedge Clk)
begin
    Q = D;
    Qn = !D;
end
endmodule

module timeClockDivider(
    output reg fClk,
    input wire clk,
    input wire [2:0]div
);

parameter bit = 8;
wire f[bit-1:0];
wire fn[bit-1:0];

assign f[0] = clk;

genvar i;
generate
for(i=1; i < bit; i=i+1) begin
    dFlipFlop df(f[i], fn[i], f[i-1], fn[i]);
end
endgenerate

always @(clk)
    casez(div)
        3'b000: fClk = f[0];
        3'b001: fClk = f[1];
        3'b010: fClk = f[2];
        3'b011: fClk = f[3];
        3'b100: fClk = f[4];
        3'b101: fClk = f[5];
        3'b110: fClk = f[6];
        3'b111: fClk = f[7];
        default: fClk = clk;
    endcase

endmodule
