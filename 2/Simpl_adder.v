`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:57:09 01/29/2023 
// Design Name: 
// Module Name:    Simpl_adder 
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
module Simpl_adder(clk,a,b,cin,sum,cout);
parameter W=64;

input [W-1:0] a,b;
input cin,clk;
output reg [W-1:0] sum;
output reg cout;

reg cin_reg;
wire [W-1:0] sum_wire;
wire cout_wire;

Full_adder_parameter #(.w1(W/2)) add32(.a(a), .b(b), .cin(cin_reg), .s(sum_wire), .cout(cout_wire));

always@(posedge clk)
begin
cin_reg<=cin;sum<=sum_wire;cout<=cout_wire;
end

endmodule
