`timescale 1ns / 1ns

module aluTester();
wire [31:0]S;
wire z, Cout;
reg [31:0]A, B;
reg Cin;
reg [2:0] ops;

alu alu1(S, z, Cout, A, B, Cin, ops);

initial
begin
    #0;
    Cin = 0;
    ops = 0;
    
    A = 7;
    B = 5;
    Cin = 1;
    
    #10 ops = 1;
    #10 ops = 2;
    #10 ops = 3;
    #10 ops = 4;
    #10 ops = 5;
    #10 ops = 6;
    #10 ops = 7;
    
    #10;
    $finish;
end

endmodule