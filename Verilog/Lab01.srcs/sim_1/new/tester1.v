`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2019 01:24:12 AM
// Design Name: 
// Module Name: tester1
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

module tester1;
reg a, b, cin;
wire cout, s;
FullAdder a1(cout, s, a ,b, cin);
initial
begin
    //$dumpfile("time.dump");
    //$dumpvars(2,a1);
    $monitor("time %t: {%b %b} <- {%d %d %d}", $time,cout,s,a,b,cin);
    #0;
    a=0;
    b=0;
    cin=0;
    
    #5;
    a=0;
    b=0;
    cin=1;
    
    #10;
    a=0;
    b=1;
    cin=0;
    
    #15;
    a=0;
    b=1;
    cin=1;
    
    #20;
    a=1;
    b=0;
    cin=0;
    
    #25;
    a=1;
    b=0;
    cin=1;
    
    #30;
    a=1;
    b=1;
    cin=0;
    
    #35;
    a=1;
    b=1;
    cin=1;
    
    #100;
    $finish;
end

endmodule
