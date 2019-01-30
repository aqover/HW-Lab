`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2019 03:01:34 AM
// Design Name: 
// Module Name: testerSystem
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


module testerSystem();

reg clk;
wire [7:0]seg;
wire [3:0]an;

system s1(seg, an, clk);

always #5 clk = ~clk;

initial
begin
    #0 clk = 0;
end

endmodule
