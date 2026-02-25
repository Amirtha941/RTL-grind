`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2026 09:48:23
// Design Name: 
// Module Name: down4
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


module down4(
    input wire clk, rst,
    output reg [3:0] count
    );
    always@(posedge clk) begin
    if(rst)
        count<=0;
    else
        count<=count-1;
    end
    
endmodule
