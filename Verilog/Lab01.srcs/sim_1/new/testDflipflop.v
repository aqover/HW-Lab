`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2019 02:18:29 AM
// Design Name: 
// Module Name: testDflipflop
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


module testDflipflop;

reg clock, nreset, d;
flipflop D1(q,clock,nreset,d);

always #10 clock=~clock;

initial
begin
    //$dumpfile("testDFlipFlop.dump");
    //$dumpvars(1,D1);
    #0;
    d=0;
    clock=0;
    nreset=0;
    
    #50 nreset=1;
    
    #1000 
    $finish;
end

//always #8 d=~d;
endmodule
