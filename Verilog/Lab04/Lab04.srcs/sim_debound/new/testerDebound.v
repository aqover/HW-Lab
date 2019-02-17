`timescale 1ns / 1ns

module testerDebound();

reg clk;
wire out;
reg in;

debound db(out, in, clk);

always #5 clk = !clk;
initial
begin
    #0;
    in = 0;
    clk = 0;
    
    #7 in = 1;
    #2 in = 0;
    #1 in = 1;
    #2 in = 0;
    #1 in = 1;
    #2 in = 0;
    #1 in = 1;
    #100 in = 0;
    #2000;
    $finish;
end
endmodule