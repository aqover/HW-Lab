`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2019 02:15:29 AM
// Design Name: 
// Module Name: flipflop
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


module flipflop(q, clock, nreset, d);
output q;
input clock, nreset, d;

reg q;

always @(posedge clock)
begin
   if (nreset == 1)
        q = d;
    else
        q = 0; 
end
endmodule
