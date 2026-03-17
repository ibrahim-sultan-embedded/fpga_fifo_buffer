`timescale 1ns/1ps

module tb_fifo;

reg clk;
reg rst;
reg wr_en;
reg rd_en;
reg [7:0] din;

wire [7:0] dout;
wire full;
wire empty;

fifo uut (
    .clk(clk),
    .rst(rst),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .din(din),
    .dout(dout),
    .full(full),
    .empty(empty)
);

initial begin
    clk = 0;
    forever #10 clk = ~clk;
end

initial begin
    rst = 1;
    wr_en = 0;
    rd_en = 0;
    din = 0;

    #50;
    rst = 0;

    // WRITE
    #20;
    wr_en = 1;
    din = 8'hA1;

    #20;
    din = 8'hB2;

    #20;
    din = 8'hC3;

    #20;
    wr_en = 0;

    // READ
    #40;
    rd_en = 1;

    #60;
    rd_en = 0;

    #200;
    $finish;
end

endmodule
