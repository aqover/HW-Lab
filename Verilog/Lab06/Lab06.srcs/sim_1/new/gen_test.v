`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2019 06:24:46 PM
// Design Name: 
// Module Name: gen_test
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
module uart_tx_test();

reg [7:0] data = 0;
reg clk = 0;
reg enable = 0;

wire tx_busy;
wire rdy;
wire [7:0] rxdata;

wire loopback;
reg rdy_clr = 0;

wire [1:0]led;

uart test_uart(
    loopback,
    loopback,
    led,
    rxdata,
    rdy,
    rdy_clr,
    tx_busy,
    data,
    enable,
    clk
);

initial begin
	$dumpfile("uart.vcd");
	$dumpvars(0, uart_tx_test);
	enable <= 1'b1;
	#2 enable <= 1'b0;
end

always #1 clk = ~clk;

always @(posedge rdy) begin
	#2 rdy_clr <= 1;
	#2 rdy_clr <= 0;
	$display ("test: rx data: %x, tx data: %x", rxdata, data);
	if (rxdata != data) begin
		$display("FAIL: rx data %x does not match tx %x", rxdata, data);
		$finish;
	end 
	else begin
		if (rxdata == 8'hff) begin
			$display("SUCCESS: all bytes verified");
			$finish;
		end
		data <= data + 1'b1;
		// data <= 8'h39;
		enable <= 1'b1;
		#2 enable <= 1'b0;
//		$display("SEND: tx data %x", data);
	end
end

endmodule