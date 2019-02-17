`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2019 01:13:13 AM
// Design Name: 
// Module Name: Stack-LIFO
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
module ramLIFO(
    inout wire [7:0]data,
    output wire [7:0]count,
    output reg ack,
    input wire pop, push, clear, clk
    );

reg [7:0]ram[255:0];
reg [7:0]top;
reg [1:0]st, nst;

assign count = top;
assign data = (nst == 2 || st == 2)? ram[top]: 8'bz;
initial
begin
top = 0;
nst = 0;
ack = 0;
end
always @(posedge clk) begin
  st = nst;
  casez({st, pop, push, clear})
  default: begin nst = 0; ack = 0; end
  5'b00001: begin top = 0; nst = 0; end
  5'b00010: if(top < 255) begin nst = 2'b01; ack = 1; end
  5'b00100: if(top > 0) begin nst = 2'b10; top = top - 1; ack = 1; end
  5'b010?0: begin ram[top] <= data; top = top + 1; ack = 0; nst = 0; end
  5'b10?00: begin nst = 0; end
  endcase
end
endmodule
