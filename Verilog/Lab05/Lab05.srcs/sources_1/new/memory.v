`timescale 1ns / 1ps
//-------------------------------------------------------
// File name    : memory.v
// Title        : Memory
// Library      : nanoLADA
// Purpose      : Computer Architecture
// Developers   : Krerk Piromsopa, Ph. D.
//              : Chulalongkorn University.
module memory(data,address,wr,clock, seg, an, sw);
parameter DATA_WIDTH=32;
parameter ADDR_WIDTH=27;

inout	[DATA_WIDTH-1:0]	data;
input	[ADDR_WIDTH-1:0]	address;
input		wr;
input		clock;
output wire [6:0]seg;
output wire [3:0]an;
input wire [11:0]sw;

wire [15:0]hex;
segmentDriver sd(seg, an, hex, clock);
wire [11:0]tmp[4:0];
reg fClk;
reg [4:0]div = 10;
clkDivide ck(fClk, clock, div);
genvar j;
for(j=0;j<12;j=j+1) begin
    debound db(tmp[1][j], tmp[0][j], fClk);
    flipflop ff0(tmp[2][j], ,tmp[1][j], fClk);
    flipflop ff1(tmp[3][j], , tmp[2][j], fClk);
    singlePulse sp(tmp[4][j], tmp[3][j], fClk);
end
reg	[DATA_WIDTH-1:0]	mem[0:1<<ADDR_WIDTH -1];

reg	[DATA_WIDTH-1:0]	data_out;
// Tri-State buffer
assign data=(wr==0) ? data_out:32'bz;

assign hex[3:0] = mem[65520][3:0];
assign hex[7:4] = mem[65524][3:0];
assign hex[11:8] = mem[65528][3:0];
assign hex[15:12] = mem[65532][3:0];
assign tmp[0] = sw;
always @(tmp) begin
mem[65504][3:0] = tmp[4][3:0];
mem[65508][3:0] = tmp[4][7:4];
mem[65512][3:0] = tmp[4][11:8];
end

integer i;
initial
begin
	$readmemb("data.list",mem);
end

always @(address)
begin
	$display("%10d - mem[%h] -  %h\n",$time, address,data_out);	
	data_out = mem[address];
end

always @(posedge clock)
begin : MEM_WRITE
	if (wr) begin
		mem[address]=data;
		$display("%10d - MEM[%h] <- %h",$time, address, data);
	end
end

endmodule
