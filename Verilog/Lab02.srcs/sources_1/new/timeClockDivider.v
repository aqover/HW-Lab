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
    input wire [0:1]div
);

wire f2, f2n, f4, f4n, f8, f8n;
dFlipFlop df1(f2, f2n, clk, f2n);
dFlipFlop df2(f4, f4n, f2, f4n);
dFlipFlop df3(f8, f8n, f4, f8n);

always @(clk)
begin
    case(div)
        2'b00: fClk = !clk;
        2'b01: fClk = f2;
        2'b10: fClk = f4;
        2'b11: fClk = f8;
    endcase
end

endmodule
