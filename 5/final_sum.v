`timescale 1ns / 1ps
`include "Veda2.v"
`include "final_addsum.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:54:55 02/27/2023 
// Design Name: 
// Module Name:    final_sum 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module final_sum(a,b,c,sig,clk);
input [4:0] a,b,c;
input clk;
output sig;
wire [31:0] d1,d2,d3,d0;

Veda2 v0(d0, 1'b1, a, a, 1'b1, 32'b1_10000100_10010000000000000000000, 1'b1, clk);
Veda2 v4(d1, 1'b1, a, a, 1'b1, 32'b1_10000100_10010000000000000000000, 1'b0, clk);
Veda2 v5(d2, 1'b1, b, b, 1'b1, 32'b0_10000100_10010000000000000000000, 1'b0, clk);
Veda2 v6(d3, 1'b1, c, c, 1'b1, 32'b1_00000000_00000000000000000000000, 1'b0, clk);
wire [31:0] d3c;
final_addsum f1(d1,d2,d3c);

assign sig = (d3 == d3c) ? 1'b1:1'b0 ;

endmodule
