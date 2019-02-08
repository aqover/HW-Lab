`timescale 1ns / 1ns

module testerClockDivide();

reg clk;
wire fclk;

clkDivide cd(fclk, clk);

always #5 clk = !clk;

initial
begin
    #0 clk = 0;
    
    #1000000000;
    $finish;
end

endmodule