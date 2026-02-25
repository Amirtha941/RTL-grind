`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2026 08:47:13
// Design Name: 
// Module Name: up4
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


module up4(
    input wire clk,rst,
    output reg [4:0]count
    );
    always@(posedge clk)
    begin
        if(rst)
            count<=5'd0;
        else
            count<=count+1;
    end
endmodule
