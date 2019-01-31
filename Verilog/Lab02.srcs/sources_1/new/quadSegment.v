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

reg [1:0] pS, nS;
reg [4:0] hexN;
wire [6:0] seg;
reg on_off;

hexToSegment HTS(seg, hexN);

initial
begin
    nS = 0;
    pS = 0;
    on_off = 1;
    hexN = 0;
end

always @(posedge clk)
begin    
//    on_off = ~on_off;
    segOutput = seg;
    case({on_off, nS})
        3'b100: anOutput = 4'b1110;
        3'b101: anOutput = 4'b1101;
        3'b110: anOutput = 4'b1011;
        3'b111: anOutput = 4'b0111;
        default: anOutput = 4'b1111;
   endcase
   pS = nS;
end

// next state
always @(pS)
    case(pS)
        2'b00: nS = 2'b01;
        2'b01: nS = 2'b10;
        2'b10: nS = 2'b11;
        2'b11: nS = 2'b00;
    endcase

// select segment output
always @(nS)
    case(nS)
        2'b00: hexN = hex0Input;
        2'b01: hexN = hex1Input;
        2'b10: hexN = hex2Input;
        2'b11: hexN = hex3Input;
    endcase

endmodule
