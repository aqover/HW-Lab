`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2019 03:24:38 AM
// Design Name: 
// Module Name: testerClockDivider
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


module testerClockDivider;

reg clk;
reg [2:0]div;
wire fClk;

timeClockDivider cd1(fClk, clk, div);

always #5 clk=~clk;

initial
begin
    #0 clk = 0;
    div = 3'b111;
    #1000;
    $finish;
end

endmodule
