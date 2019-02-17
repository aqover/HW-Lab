`timescale 1ns / 1ns

module testerRam();

reg clk, cl, u, d;

reg [7:0]dataIn, dataOut;
wire [7:0] c;
wire [7:0]data;
wire a;

ramLIFO ram(data, c, a, d, u, cl, clk);

initial
begin
    #0;
    dataIn = 0;
    dataOut = 0;
    d = 0;
    u = 0;
    cl = 0;
    clk = 0;
    
    #100 dataIn = 8'h52;
    #10 u = 1;
    #20 u = 0;
    
    #100 d = 1;
    #20 d = 0;
    
    
    #1000;
    $finish;
end
always @(d && a) dataOut <= data;
assign data = (u && a)? dataIn : 8'bz;
always #5 clk = !clk;
endmodule