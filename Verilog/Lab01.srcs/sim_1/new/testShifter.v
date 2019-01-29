`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2019 02:34:46 AM
// Design Name: 
// Module Name: testShifter
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


module testShifter;
parameter width = 4;
reg clock;
reg [width-1:0]d;
wire [width-1:0]q1;
wire [width-1:0]q2;

shiftA s1(q1, clock, d);
shiftB s2(q2, clock, d);

always #5 clock=~clock;

initial
begin
    $monitor("time %t: Input {%d}, S1 {%d}, S2{%d}", $time, d, q1, q2);
    #0 d=0;
    clock=0;
        
    #1000;
    $finish;
end

always #40 d=~d;
endmodule
