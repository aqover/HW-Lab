`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2019 02:47:53 PM
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
module clk_divider(
    output reg fclk,
    input wire clk
);
initial fclk = 0;
always @(posedge clk) fclk = !fclk;

endmodule

module system1(
    output wire [11:0]led,
    input wire clk
);

wire [32:0]fclk;
wire sclock;
assign fclk[0] = clk;
genvar i;
for(i=1;i<25;i=i+1)
    clk_divider aclk(fclk[i], fclk[i-1]);
assign sclock = fclk[24];

reg [3:0]st;
reg [3:0]nst, lout;
assign led[3:0] = lout;
assign led[7] = sclock;
initial begin
 st = 0;
 nst = 0;
end

always @(posedge sclock) begin
    st = nst;
end

always @(st) begin
    case (st)
    4'b0000: lout = 4'b0000;
    4'b0001: lout = 4'b0001;
    4'b0010: lout = 4'b0011;
    4'b0011: lout = 4'b0010;
    4'b0100: lout = 4'b0110;
    default: lout = 4'b0000;
    endcase
    nst = (st + 1) % 5;
end;
endmodule
