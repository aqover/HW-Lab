`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2019 08:05:47 PM
// Design Name: 
// Module Name: testerSystem1
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


module testerSystem1();
wire [6:0]seg;
wire [3:0]an;
reg [7:0]sw;
reg btnC, btnU, clk;

reg en_sw;
    
system1 s1(seg, an, clk, sw, btnC, btnU);

initial
begin
    #0;
    sw = 0;
    btnC = 0;
    btnU = 0;
    clk = 0;
    en_sw = 1;
    
    #200 btnC = 1;
    #20 btnC = 0;
            
    #4000;
    $finish;
end

always #5 clk = !clk;
always #20 sw[1] = !sw[1] & en_sw;
endmodule
