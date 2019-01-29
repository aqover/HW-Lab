`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2019 02:32:24 AM
// Design Name: 
// Module Name: shifter
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


module shiftA(q,clock,d);
parameter width=4;
output reg [width-1:0] q;
input clock,d;
integer i;

always @(posedge clock)
begin
//    q = {q[width-2:0], d};
    q[0] = d;
    for(i=1; i < width;i = i+1)
        q[i] = q[i-1];
    
end
endmodule

module shiftB(q,clock,d);
parameter width=4;
output reg [width-1:0] q;
input clock,d;

always @(posedge clock)
begin
    q <= {q[width-2:0], d};  
end
endmodule
