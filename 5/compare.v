`timescale 1ns / 1ps
`include "final_sum.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:28:47 02/27/2023 
// Design Name: 
// Module Name:    compare 
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
module compare(a,b,c,clk,sig);
input [1:0] c;
input a,b,clk;
output sig;

wire [4:0] a1,b1,c1;
assign a1 = {4'b0, a};
assign b1 = {4'b0, b};
assign c1 = {3'b0, c};
wire s;

final_sum f4 (a1,b1,c1,s,clk);

assign sig = s;
endmodule
