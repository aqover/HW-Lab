`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2019 12:10:18 PM
// Design Name: 
// Module Name: segmentDriver
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
module segmentDriver(
    output [6:0] seg,
    output reg [3:0] an,
    input wire [15:0] hex,
    input wire fClk
);

wire clk;
reg [4:0]bit = 19;
clkDivide cd(clk, fClk, bit);

reg [1:0] pos;
reg [3:0] hexSel;
hexToSegment hts(seg, hexSel);

initial pos = 0;
always @(posedge clk) pos = pos + 1;

always @(pos)
case(pos)
    2'b00: hexSel = hex[3: 0];
    2'b01: hexSel = hex[7: 4];
    2'b10: hexSel = hex[11: 8];
    2'b11: hexSel = hex[15: 12];
endcase

always @(pos)
case (pos)
    2'b00: an = 4'b1110;
    2'b01: an = 4'b1101;
    2'b10: an = 4'b1011;
    2'b11: an = 4'b0111;
endcase

endmodule

module hexToSegment(
    output reg [6:0] seg,
    input wire [3:0] hex
    );
    
// 7-segment encoding
//      0
//     ---
//  5 |   | 1
//     --- <--6
//  4 |   | 2
//     ---
//      3

   always @(hex)
      case (hex)
          4'b0001 : seg = 7'b1111001;   // 1
          4'b0010 : seg = 7'b0100100;   // 2
          4'b0011 : seg = 7'b0110000;   // 3
          4'b0100 : seg = 7'b0011001;   // 4
          4'b0101 : seg = 7'b0010010;   // 5
          4'b0110 : seg = 7'b0000010;   // 6
          4'b0111 : seg = 7'b1111000;   // 7
          4'b1000 : seg = 7'b0000000;   // 8
          4'b1001 : seg = 7'b0010000;   // 9
          4'b1010 : seg = 7'b0001000;   // A
          4'b1011 : seg = 7'b0000011;   // b
          4'b1100 : seg = 7'b1000110;   // C
          4'b1101 : seg = 7'b0100001;   // d
          4'b1110 : seg = 7'b0000110;   // E
          4'b1111 : seg = 7'b0001110;   // F
          default : seg = 7'b1000000;   // 0
      endcase
				
				
endmodule