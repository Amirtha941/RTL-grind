`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2026 11:27:49
// Design Name: 
// Module Name: tb_mod_n
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


module tb_mod_n( );
   reg clk,clr;
   wire [3:0] count;
   mod_n uut(
    .clk(clk),
    .clr(clr),
    .count(count));
   initial begin
       clk=0;
       forever #5 clk=~clk;
   end
   
   initial begin
        clr=0;
        #15;
        clr=1;
        #150;
        $finish;
        
   end
endmodule
