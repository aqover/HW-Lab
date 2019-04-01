`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2019 03:09:33 PM
// Design Name: 
// Module Name: system
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
module system(
    output wire RsTx,
    input wire RsRx,
    output wire [10:0]led,
    output wire [3:0]vgaRed, vgaGreen, vgaBlue,
    output wire Hsync, Vsync,
    input wire [11:0]sw,
    input btnC, btnU, btnL, clk
    );
    
vga_test vga(
    .clk(clk), 
    .sw(sw),
    .push({btnL, btnU}),
    .hsync(Hsync),
    .vsync(Vsync),
    .rgb({vgaRed, vgaGreen, vgaBlue})
);

top_uart u(
    .RsTx(RsTx),
    .RsRx(RsRx),
    .led(led),
    .clk(clk)
    );
endmodule
