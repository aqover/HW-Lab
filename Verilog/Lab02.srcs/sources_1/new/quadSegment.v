`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2019 01:22:44 AM
// Design Name: 
// Module Name: quadSegment
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

module quadSegment(
    output reg [6:0]segOutput,
    output reg [3:0]anOutput,
    input wire [4:0]hex0Input,
    input wire [4:0]hex1Input,
    input wire [4:0]hex2Input,
    input wire [4:0]hex3Input,
    input wire clk
);

reg [1:0] p, n;
reg [4:0] hexN;
wire [6:0] seg;

hexToSegment HTS(seg, hexN);

initial
begin
    n = 0;
    p = 0;
    hexN = 0;
end

always @(posedge clk)
begin     
    segOutput = seg;
    case(n)
        2'b00: anOutput = 4'b0001;
        2'b01: anOutput = 4'b0010;
        2'b10: anOutput = 4'b0100;
        2'b11: anOutput = 4'b1000;
    endcase
end

always @(negedge clk) p = n;

// next state
always @(p)
    case(p)
        2'b00: n = 2'b01;
        2'b01: n = 2'b10;
        2'b10: n = 2'b11;
        2'b11: n = 2'b00;
    endcase

// select segment output
always @(n)
    case(n)
        2'b00: hexN = hex0Input;
        2'b01: hexN = hex1Input;
        2'b10: hexN = hex2Input;
        2'b11: hexN = hex3Input;
    endcase

endmodule
