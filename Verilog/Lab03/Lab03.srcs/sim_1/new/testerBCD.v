`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2019 01:10:34 PM
// Design Name: 
// Module Name: testerBCD
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


module testerBCD();

reg en_count, en_up, en_down;
reg clk, up, down, borrowed, set9, clear;
wire borrow, overflow;
wire [3:0]outBCD;

bcdCounter bcd1(outBCD, overflow, borrow, up, down, borrowed, set9, clear, clk);

always #5 clk = !clk & en_count;
always #10 up = !up & en_up;
always #10 down = !down & en_down;
initial
begin
    #0; // test counter up
    en_count = 1;
    en_up = 1;
    en_down = 0;
    clk = 0;
    up = 0;
    down = 0;
    borrowed = 0;
    set9 = 0;
    clear = 0;
    
    #400; // test counter down
    en_up = 0;
    en_down = 1;
     
    #400; //test set9
    en_down = 0;
    set9 = 1;
    #10 set9 = 0;
    
    #40; // test clear
    clear = 1;
    #10 clear = 0;
    
    #40; // test borowed
    borrowed = 1;
    #10 borrowed = 0;
    #10 borrowed = 1;
    #10 borrowed = 0;
    
    #40;
    $finish;
end

endmodule
