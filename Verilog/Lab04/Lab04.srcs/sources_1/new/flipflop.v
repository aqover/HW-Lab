`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2019 02:21:56 PM
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
module debound(
    output reg q,
    input wire d,
    input wire clk
);

reg [7:0]count;
reg [1:0]tmp;

initial
begin
q = 0;
count = 0;
end

always @(posedge clk)
begin
 tmp <= {tmp[0], d};
 if (tmp[1] == tmp[0])
 begin
    count = (count[6:0] << 1) | 1;
    if (count == 8'b11111111)
    begin
        q = tmp[0];
        count = 0;
    end
 end
end

endmodule

module clkDivide(
    output reg fClk,
    input wire clk,
    input wire [4:0] bit
    );
parameter bitDiv=22;

wire [bitDiv-1:0] f, d;

assign f[0] = clk;

genvar i;
for(i=1;i<bitDiv;i = i+1)
    flipflop ff(f[i], d[i], d[i], f[i-1]);
    
always @(f[bit[4:0]]) fClk = f[bit[4:0]];
    
endmodule

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

module flipflop(
    output reg q,
    output reg qd,
    input wire d,
    input wire clk
    );

reg st;

initial st = 0;

always @(posedge clk) st = d;
always @(st)
begin
    q = st;
    qd = !st;
end
endmodule