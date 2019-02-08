`timescale 1ns / 1ns


module testerSignlePulse();
wire d;
reg p, clk;
singlePulse sp(d, p, clk);

always #5 clk = !clk;

initial
begin
 #0;
 p = 0;
 clk = 0;
 
 #5 p = 1;
 #5 p = 0;
 
 #10 p = 1;
 #45 p = 0;
 
 #45;
 $finish;
end

endmodule