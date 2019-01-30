`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2019 01:50:36 AM
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
    output [6:0]seg,
    output [3:0]an,
    input clk
);

//wire [3:0]anTmp;
//wire [7:0] segTmp;

reg [3:0] hex0, hex1, hex2, hex3;
wire [3:0]fClk;
reg [2:0]div[3:0];

assign fClk[0] = clk;

generate
genvar i;
for(i=1;i<4;i=i+1)
    timeClockDivider tCD(fClk[i], fClk[i-1], div[i]);
endgenerate
quadSegment QS(seg, an, hex0, hex1, hex2, hex3, fClk[3]);

//always @(segTmp) seg = segTmp;
//always @(anTmp) an = anTmp;

initial
begin
    div[0] = 2;
    div[1] = 5;
    div[2] = 7;
    div[3] = 7;
    hex0 = 4;
    hex1 = 3;
    hex2 = 2;
    hex3 = 1;
    
end

endmodule
