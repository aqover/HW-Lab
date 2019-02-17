`timescale 1ns / 1ns

module testerSystem2();

wire [6:0]seg;
wire [3:0]an;
reg [4:0]sw;
reg clk;
system2 st(seg, an, sw, clk);
initial begin
    #0;
    sw = 0;
    clk = 0;
    
    #100 sw[0] = 1;
    
    #1000;
    $finish;
end
always #5 clk = !clk;
endmodule