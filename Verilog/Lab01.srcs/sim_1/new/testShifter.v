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

reg clock;
reg [1:0]d;
wire [1:0]q1;
wire [1:0]q2;

shiftA s1(q1, clock, d);
shiftB s2(q2, clock, d);

always #10 clock=~clock;

initial
begin
    $monitor("time %t: Input {%d}, S1 {%d}, S2{%d}", $time, d, q1, q2);
    #0 d=0;
    clock=0;
    
    #50 d=2;
    
    #100;
    $finish;
end

always #8 d=~d;
endmodule
