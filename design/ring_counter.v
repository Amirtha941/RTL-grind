`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2026 10:35:22
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(
    input wire clk,rst,
    input wire preset,clr,
    output reg  [3:0] count
    );
    always@(posedge clk or posedge rst)begin
        if(rst)
            count<=4'b0001;
        else if (!preset)
            count<=4'b1111;
        else if (!clr)
            count<=4'b0000;
        else
            count<={count[2:0],count[3]};
            
     end
endmodule
