`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2019 06:13:50 PM
// Design Name: 
// Module Name: system3
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
module system31(
    output wire [6:0]seg,
    output wire [3:0]an,
    input wire [7:0]sw,
    input wire btnU, btnD, btnL, btnR, btnC, clk
);

system3 st(an, btnC, btnD, btnL, btnR, btnU, clk, seg, sw[3:0], sw[7:4]);

endmodule

module calculator(
    output wire [15:0]out,
    input wire [3:0]a, b,
    input wire add, sub, multiply, devide, clear, clk
    );
    

reg [7:0]sum;
assign out[3:0] = btn[3][12:9];
assign out[7:4] = btn[3][8:5];
assign out[15:8] = sum; 

wire [12:0]btn[4:0];
assign btn[0] = {a, b, clear, add, sub, multiply, devide};
genvar i;
for(i=0;i<13;i=i+1) begin
    debound db(btn[1][i], btn[0][i], clk);
    flipflop ff0(btn[2][i], , btn[1][i], clk);
    flipflop ff1(btn[3][i], , btn[2][i], clk);
    if (i < 5)
        singlePulse sp(btn[4][i], btn[3][i], clk);
end

always @(posedge clk)
    case (btn[4][4:0])
    5'b10000: sum = 0;
    5'b01000: sum = btn[3][12:9] + btn[3][8:5];
    5'b00100: sum = btn[3][12:9] - btn[3][8:5];
    5'b00010: sum = btn[3][12:9] * btn[3][8:5];
    5'b00001: sum = btn[3][12:9] / btn[3][8:5];
    endcase
endmodule
