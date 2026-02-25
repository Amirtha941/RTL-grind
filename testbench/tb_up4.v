`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2026 09:05:20
// Design Name: 
// Module Name: tb_up4
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


module tb_up4;
    reg clk,rst;
    wire [4:0]count;
    up4 uut (.clk(clk),.rst(rst),.count(count));
    initial begin
        clk=0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst=0;
        #5 rst=1;
        #5 rst=0;
    end
endmodule
