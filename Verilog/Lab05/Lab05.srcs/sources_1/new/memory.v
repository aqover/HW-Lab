`timescale 1ns / 1ps
//-------------------------------------------------------
// File name    : memory.v
// Title        : Memory
// Library      : nanoLADA
// Purpose      : Computer Architecture
// Developers   : Krerk Piromsopa, Ph. D.
//              : Chulalongkorn University.
module memory(data,address,wr,clock, seg, an, led, sw);
parameter DATA_WIDTH=32;
parameter ADDR_WIDTH=16;

inout	[DATA_WIDTH-1:0]	data;
input	[ADDR_WIDTH-1:0]	address;
input		             wr;
input		             clock;
output  [6:0]           seg;
output  [3:0]           an;
output  [11:0]           led;
input   [11:0]          sw;

reg [15:0]hex;
segmentDriver sd(seg, an, hex, clock);
wire [11:0]tmp[4:0];
wire fClk;
reg [4:0]div = 10;
clkDivide ck(fClk, clock, div);
genvar j;
for(j=0;j<12;j=j+1) begin
    debound db(tmp[1][j], tmp[0][j], fClk);
    flipflop ff0(tmp[2][j], ,tmp[1][j], fClk);
    flipflop ff1(tmp[3][j], , tmp[2][j], fClk);
end
reg	[7:0]	mem[0:1<<ADDR_WIDTH -1];

reg	[DATA_WIDTH-1:0]	data_out;
// Tri-State buffer
assign data=(wr==0) ? data_out:32'bz;

assign tmp[0] = sw;
assign led = tmp[3];

integer i;
initial
begin
	$readmemb("data.list",mem);
end

always @(address)
begin
    case (address[15:0])
    16'hFFF0: data_out = {28'b0, hex[3:0]};
    16'hFFF4: data_out = {28'b0, hex[7:4]};
    16'hFFF8: data_out = {28'b0, hex[11:8]};
    16'hFFFC: data_out = {28'b0, hex[15:12]};
    16'hFFE0: data_out = {28'b0, tmp[3][3:0]};
    16'hFFE4: data_out = {28'b0, tmp[3][7:4]};
    16'hFFE8: data_out = {28'b0, tmp[3][11:8]};
    default:data_out = {24'b0, mem[address][7:0]};
    endcase
    $display("%10d - mem[%h] -  %h\n",$time, address,data_out);
end

always @(posedge clock)
begin : MEM_WRITE
	if (wr) begin
       case(address[15:0])
       16'hFFF0: hex[3:0] = data[3:0];
       16'hFFF4: hex[7:4] = data[3:0];
       16'hFFF8: hex[11:8] = data[3:0];
       16'hFFFC: hex[15:12] = data[3:0];
//       32'hFFE0, 32'hFFE4, 32'hFFE8: 
	   default: mem[address] = data[7:0];
	   endcase
	   $display("%10d - MEM[%h] <- %h",$time, address, data);
	end
end

endmodule
