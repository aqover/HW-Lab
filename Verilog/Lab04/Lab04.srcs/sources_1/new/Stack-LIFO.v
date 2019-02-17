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
    input wire oe, we, clear, clk
    );

reg [7:0]ram[255:0];
reg [7:0]top;
reg [1:0]st, nst;

assign count = top;
assign data = (st == 2)? ram[top]: 8'bz;
initial
begin
top = 0;
nst = 0;
ack = 0;
end
always @(posedge clk) begin
  st = nst;
  casez({st, oe, we, clear})
  default: begin nst = 0; ack = 0; end
  5'b00001: begin top = 0; nst = 0; end
  5'b00010: if(top < 255) begin nst = 2'b01; ack = 1; end
  5'b00100: if(top > 0) begin nst = 2'b10; ack = 1; end
  5'b010?0: begin ram[top] <= data; top = top + 1; nst = 0; end
  5'b10?00: begin top = top - 1; nst = 0; end
  endcase
end
endmodule

module system1(
    output wire [6:0]seg,
    output wire [3:0]an,
    output wire [7:0]led,
    input wire [7:0]sw,
    input wire btnU, btnC, btnD, clk
);
wire [15:0]hex;
wire [10:0]btn[4:0];
wire fClk;
reg [4:0]bits = 10;
wire [7:0]data;
reg [7:0]dataOut;
wire ack;
reg cw,cr;

assign btn[0] = {sw, btnC, btnU, btnD};
assign led = btn[3][10:3];

clkDivide cd(fClk, clk, bits);
segmentDriver sd(seg, an, hex, clk);
ramLIFO ram1(data, hex[7:0], ack, btn[4][0], btn[4][1], btn[4][2], fClk);

genvar i;
for(i=0;i<11;i=i+1)
begin
    debound db(btn[1][i], btn[0][i], fClk);
    flipflop ff0(btn[2][i], ,btn[1][i], fClk);
    flipflop ff1(btn[3][i], ,btn[2][i], fClk);
    if (i < 3)
        singlePulse sp(btn[4][i], btn[3][i], fClk);
end

reg [1:0]st, nst;

initial dataOut = 0;

always @(posedge fClk) begin
    $display("%b %h, %h, %b", cw, hex, data, btn[3][10:3]);
    st = nst;
    casez({st, btn[4][0], btn[4][1]})
    default: begin nst = 0; cr = 0; cw = 0; end
    4'b0001: begin nst = 2'b01; cr = 1; end
    4'b0010: begin nst = 2'b10; cw = 1; end
    4'b010?: begin nst = 0; end
    4'b10?0: begin nst = 0; end
    endcase
end

assign data = (cr && ack)? btn[3][10:3]: 8'bz;
always @(cw && ack) dataOut <= data;
assign hex[15:8] = dataOut;

endmodule
