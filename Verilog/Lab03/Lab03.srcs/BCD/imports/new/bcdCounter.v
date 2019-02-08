`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2019 12:27:21 PM
// Design Name: 
// Module Name: bcdCounter
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


module bcdCounter(
    output reg [3:0] outputs,
    output reg overflow,
    output reg borrow,
    input wire up_down,
    input wire borrowed,    
    input wire set9,
    input wire clear,
    input wire clk
    );

reg [1:0] c;
reg [3:0] count;

always @(posedge clk)
begin
    c = 0;
    case (up_down)
        1: c[0] = 1; // counter up
        0: c[1] = 1; // counter down
    endcase
end

always @(posedge c[0])
if (count == 9)
begin
    count = 0;
    overflow = 1;
end
else
begin
    count = count + 1;
    overflow = 0;
end

always @(posedge c[1])
if (count == 0)
begin
    borrow = 1;
    count = 9;
end
else
begin
    count = count - 1;
    borrow = 0;
end

always @(posedge borrowed) c[1] = 1;
always @(posedge set9) count = 9;
always @(posedge clear) count = 0;
begin

end
endmodule
