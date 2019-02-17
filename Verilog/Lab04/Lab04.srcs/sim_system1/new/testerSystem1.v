`timescale 1ns / 1ns

module testerSystem1();

reg clk, btnC, btnU, btnD;
reg [7:0]sw;
wire [6:0]seg;
wire [3:0]an;
wire [7:0]led;

system1 s(seg, an, led, sw, btnU, btnC, btnD, clk);

initial
begin
    #0;
    clk = 0;
    sw = 0;
    btnC = 0;
    btnD = 0;
    btnU = 0;
    
    #100 sw = 8'h19;
    #10 btnU = 1;
    #200;
    sw = 0;
    btnU = 0;
    
    #200 btnD = 1;
    #100 btnD = 0;
    #1000000000;
    $finish;
end
always #5 clk = !clk;
endmodule