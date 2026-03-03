`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2026 11:10:51
// Design Name: 
// Module Name: tb_ring_counter
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


module tb_ring_counter();

reg clk, rst, preset, clr;
wire [3:0] count;

ring_counter uut(
    .clk(clk),
    .rst(rst),
    .preset(preset),
    .clr(clr),
    .count(count)
);

// Clock
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Stimulus
initial begin
    rst = 1;
    preset = 1;
    clr = 1;

    #20 rst = 0;   // Release reset

    #100 $finish;
end

endmodule
