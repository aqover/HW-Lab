`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2019 02:23:59 PM
// Design Name: 
// Module Name: system2
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
module rom(
    output wire [7:0]d,
    input wire [4:0]addr,
    input wire clk
);

parameter bits = 5;
reg [7:0] rom[0:(2**bits)-1];
// NOTE: To infer combinational logic instead of a ROM, use
// (* synthesis, logic_block *)
initial $readmemb("rom.data", rom);
assign d = rom[addr];
//always @(posedge clk) $display("rom %b", d);

endmodule

module system2(
    output wire [6:0]seg,
    output wire [3:0]an,
    input wire [4:0]sw,
    input wire clk
    );

wire fClk;
reg [4:0]bits = 10;
clkDivide cd(fClk, clk, bits);

reg [15:0]hex;
wire [7:0]data;
wire [4:0]btn[4:0];

assign btn[0] = sw;
segmentDriver sd(seg, an, hex, clk);
rom r(data, btn[3], fClk);

always @(data) hex[7:0] <= data;

genvar i;
for(i=0;i<5;i=i+1)
begin
    debound db(btn[1][i], btn[0][i], fClk);
    flipflop ff0(btn[2][i], ,btn[1][i], fClk);
    flipflop ff1(btn[3][i], ,btn[2][i], fClk);
end
//initial hex[15:8] = 0;
endmodule
