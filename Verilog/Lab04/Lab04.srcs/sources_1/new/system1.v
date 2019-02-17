`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2019 06:09:49 PM
// Design Name: 
// Module Name: system1
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
module system1(
    output wire [6:0]seg,
    output wire [3:0]an,
    output wire [7:0]led,
    input wire [7:0]sw,
    input wire btnU, btnC, btnD, clk
);

reg [15:0]hex;
segmentDriver sd(seg, an, hex, clk);
wire fClk;
reg [4:0]bit = 10;
clkDivide cd(fClk, clk, bit);
wire [10:0]btn[4:0];
assign btn[0] = {sw, btnU, btnC, btnD};
assign led = btn[3][10:3];
genvar i;
for(i=0;i<11;i=i+1) begin
    debound db(btn[1][i], btn[0][i], fClk);
    flipflop ff0(btn[2][i], , btn[1][i], fClk);
    flipflop ff1(btn[3][i], , btn[2][i], fClk);
    if (i < 3)
        singlePulse sp(btn[4][i], btn[3][i], fClk);
end

reg [1:0]st, nst;
reg pop, push, clear;
wire [7:0]data, count;
wire ack;
ramLIFO ram(data, count, ack, pop, push, clear, fClk);
assign data = (ack && push)? btn[3][10:3]: 8'bz;
always @(count) hex[7:0] <= count;

initial begin
hex = 0;
st = 0;
nst = 0;
pop = 0;
push = 0;
clear = 0;
end

always @(posedge fClk) begin
    st = nst;
    casez({st, btn[4][2], btn[4][1], btn[4][0]})
    default: begin nst = 0; pop = 0; push = 0; clear = 0; end
    5'b00001: if (count > 0) begin pop = 1; nst = 1; end
    5'b00010: begin clear = 1; nst = 0; hex[15:8] = 0; end
    5'b00100: if (count < 255) begin push = 1; nst = 2; end
    5'b01???: if (!ack) nst = 1; else begin hex[15:8] <= data; nst = 0; pop = 0; end
    5'b10???: if(!ack) nst = 2; else begin nst = 0; push = 0; end
    endcase
    $display ("state: %d, ack: %d, data: %d, hex: %h", st, ack, data, hex);
end
endmodule

