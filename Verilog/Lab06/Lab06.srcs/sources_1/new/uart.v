`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2019 01:24:24 PM
// Design Name: 
// Module Name: uart
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
module top_uart(
    output wire RsTx,
    input wire RsRx,
    output wire [10:0]led,
    input clk
    );
    parameter QUEUE_SIZE = 256;

    parameter STATE_TX_IDLE = 0;
    parameter STATE_TX_POP = 3;
    parameter STATE_TX_ADD = 1;
    parameter STATE_TX_SEND = 2;
    parameter STATE_TX_WAIT = 4;

    parameter STATE_RX_IDLE = 0;
    parameter STATE_RX_PUSH = 1;
    parameter STATE_RX_WAIT = 2;

    wire [7:0]RData;
    reg [7:0]TData;
    wire RFlag, TFlag;
    reg TWrite = 0;
    reg RClear = 0;
    uart u1(RsTx, RsRx, led[1:0], RFlag, RData, RClear, TFlag, TData, TWrite, clk);

    assign led[2] = (p == q);

    reg [7:0] fifo [QUEUE_SIZE - 1:0];
    integer p = 0;
    integer q = 0;
    integer tstate = STATE_TX_IDLE;
    integer rstate = STATE_RX_IDLE;
    assign led[10:3] = q[7:0];
    // always @(RData) rstate <= STATE_RX_IDLE;
    always @(posedge clk) begin
        case (rstate)
        STATE_RX_IDLE: begin
            RClear <= 0;
            fifo[q] <= 8'b0;
            if (RFlag)
                rstate <= STATE_RX_PUSH;
        end
        STATE_RX_PUSH: begin
            fifo[q] <= RData;
            q <= (q + 1) % QUEUE_SIZE;
            RClear <= 1;
            rstate <= STATE_RX_WAIT;
        end
        STATE_RX_WAIT: begin
            if (!RFlag) 
                rstate <= STATE_RX_IDLE;
        end
        default: rstate <= STATE_RX_IDLE;
        endcase

        case(tstate)
        STATE_TX_IDLE: begin
            if ((p != q) && !TFlag) begin
                tstate <= STATE_TX_POP;
            end
        end
        STATE_TX_POP: begin
            TData <= fifo[p];
            p <= (p + 1) % QUEUE_SIZE;
            tstate <= STATE_TX_ADD;
        end
        STATE_TX_ADD: begin
            TData <= TData + 1;
            tstate <= STATE_TX_SEND;
        end
        STATE_TX_SEND: begin
            TWrite = 1;
            if (TFlag)
                tstate <= STATE_TX_WAIT;
        end
        STATE_TX_WAIT: begin
            TWrite = 0;
            if (!TFlag)
                tstate <= STATE_TX_IDLE;
        end
        default: tstate <= STATE_TX_IDLE;
        endcase
    end
endmodule

module uart(
    output wire TxD,
    input wire RxD,
    output wire [1:0]led,
    output wire [7:0]RxData,
    output wire RxFlag,
    input wire RxClear,
    output wire TxBusy,
    input wire [7:0]TxData,
    input wire TxWrite,
    input wire clk
    );

    wire rx_en, tx_en;
    assign led = {TxBusy, RxFlag};
//    initial $monitor("uart: Tx: %x, Rx: %x", TxData, RxData);
    baud_rate_gen uart_buadrate(.rxclk_en(rx_en), .txclk_en(tx_en), .clk(clk));    
    uart_rx receive(.RData(RxData), .ready(RxFlag), .clear(RxClear), .en(rx_en), .clk(clk), .RxD(RxD));
    uart_tx transmit(.TxD(TxD), .busy(TxBusy), .Data(TxData), .wr_en(TxWrite), .en(tx_en), .clk(clk));
    
endmodule

module baud_rate_gen(
    output wire rxclk_en,
    output wire txclk_en,
    input wire clk
    );

    parameter Buadrate = 115200;
    parameter RX_ACC_MAX = 50000000 / (Buadrate * 16);
    parameter TX_ACC_MAX = 50000000 / Buadrate;
    parameter RX_ACC_WIDTH = $clog2(RX_ACC_MAX);
    parameter TX_ACC_WIDTH = $clog2(TX_ACC_MAX);
    reg [RX_ACC_WIDTH - 1:0] rx_acc = 0;
    reg [TX_ACC_WIDTH - 1:0] tx_acc = 0;

    assign rxclk_en = (rx_acc == 5'd0);
    assign txclk_en = (tx_acc == 9'd0);
    //always @(rxclk_en, txclk_en) $display("rx en: %x, tx en: %x", rxclk_en, txclk_en);
    always @(posedge clk) begin
    	if (rx_acc == RX_ACC_MAX)
    		rx_acc <= 0;
    	else
    		rx_acc <= rx_acc + 1;
    end

    always @(posedge clk) begin
    	if (tx_acc == TX_ACC_MAX)
    		tx_acc <= 0;
    	else
    		tx_acc <= tx_acc + 1;
    end
endmodule

module uart_rx(
    output [7:0] RData,
    output reg ready,
    input wire clear,
    input wire en,
    input wire clk,
    input wire RxD
    );

    parameter RX_STATE_START	= 2'b00;
    parameter RX_STATE_DATA		= 2'b01;
    parameter RX_STATE_STOP		= 2'b10;

    reg [1:0] state = RX_STATE_START;
    reg [7:0] tmp_data;
    integer counter;
    reg [4:0] bitpos;
    reg [7:0] RData;

    initial begin
        ready = 0;
        counter = 0;
    end
    always @(posedge clk) begin
        if (clear) ready = 0; 
        if (en) begin
    //        $display("uart rx: state: %x, receive: %x", state, RxD);
            case(state)
            RX_STATE_START: begin
                if (!RxD || counter != 0)
                   counter <= (counter + 1) % 16;
                
                if (counter == 15) begin
                    state <= RX_STATE_DATA;
                    counter <= 0;
                    tmp_data <= 8'b0;
                    bitpos <= 0;
                end
    //            $display("%d, uart rx: state 1 counter: %x", $time, counter);
            end
            RX_STATE_DATA: begin
                counter <= (counter + 1) % 16;
                if (counter == 8) begin
                    tmp_data <= tmp_data | (RxD << bitpos);
                     $display("%d, uart rx: bit: %d, data: %b, bitpos: %d", $time, RxD, tmp_data, bitpos);
                    bitpos <= (bitpos + 1);
                end
    //            $display("uart rx: counter: %x, bit pos: %x", counter, bitpos);
                if (bitpos == 8 && counter == 15) begin
                    state <= RX_STATE_STOP;
                end
            end
            RX_STATE_STOP: begin
                if (counter == 15 || (!RxD && counter >= 8)) begin
                    RData <= tmp_data;
                    counter <= 0;
                    state <= RX_STATE_START;
                    ready <= 1;
                    $display("%d, uart rx: Data out: %x", $time, RData);
                end
                else counter <= (counter + 1) % 16;
            end
            default: state <= RX_STATE_START;
            endcase
        end
    end    
endmodule

module uart_tx(
    output reg TxD,
    output wire busy,
    input wire [7:0]Data,
    input wire wr_en,
    input wire en,
    input wire clk
    );

    parameter STATE_IDLE	= 2'b00;
    parameter STATE_START	= 2'b01;
    parameter STATE_DATA	= 2'b10;
    parameter STATE_STOP	= 2'b11;

    reg [1:0] state = STATE_IDLE;
    reg [7:0] tmp_data;
    reg [4:0] bitpos = 0;

    assign busy = (state != STATE_IDLE);
    always @(posedge clk) begin
    //    if (en) $display("uart tx: state: %x, enable: %x", state, en);
        case(state)
        STATE_IDLE: begin
            if (wr_en) begin
                state <= STATE_START;
                tmp_data <= Data;
                bitpos <= 0;
            end
        end
        STATE_START: begin
            if (en) begin
                TxD <= 0;
                state <= STATE_DATA;
            end
        end
        STATE_DATA: begin
            if (en) begin
                if (bitpos == 7)
                    state <= STATE_STOP;
                else
                    bitpos <= bitpos + 1;
                TxD = tmp_data[bitpos];
                // $display("%d, uart tx: bit: %d, data %b, bitpos: %d", $time, TxD, tmp_data, bitpos);
            end
        end
        STATE_STOP: begin
            if (en) begin
                TxD <= 1;
                state <= STATE_IDLE;
                $display("%d, uart tx: Data In: %x", $time, tmp_data);
            end
        end
        default: begin
            TxD <= 1;
            state <= STATE_IDLE;
        end
        endcase
    end
endmodule