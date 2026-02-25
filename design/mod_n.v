`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2026 11:14:48
// Design Name: 
// Module Name: mod_n
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


module mod_n #(parameter N=6)(
    input wire clk,clr,
    output reg [3:0] count
    );
    always@(posedge clk )begin
    if(!clr)
        count<=4'b0000;
    else if (count==N-1)
        count<=4'b0000;
    else
        count<=count+1;
    end
endmodule
