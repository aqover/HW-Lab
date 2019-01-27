`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2019 01:20:43 AM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(cout, s, a, b, cin);
output cout, s;
input a, b, cin;

assign {cout, s} = a + b + cin;

//reg t1, t2;
//always @(a or b or cin)
//begin
//    t1 = a & b;
//    t2 = a ^ b;
//    s = t2 ^ cin;
//    cout = (cin & t2) ^ t1;
//end
endmodule
