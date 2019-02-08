`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2019 01:57:16 PM
// Design Name: 
// Module Name: singlePulse
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


module singlePulse(
    output reg d,
    input wire p,
    input wire clk
    );
    
reg st;
initial st = 0;
always @(posedge clk)
begin
d = 0;
case ({st, p})
    2'b00,
    2'b10: st = 0;
    2'b11: st = 1;
    2'b01: 
    begin
        st = 1;
        d = 1;
    end
endcase
end
endmodule
