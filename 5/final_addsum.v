`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:51:37 02/27/2023 
// Design Name: 
// Module Name:    addsum 
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
module final_addsum(

input [31:0] a_operand,b_operand, //Inputs in the format of IEEE-754 Representation.
output [31:0] result
);

wire output_sign;

wire [31:0] operand_a,operand_b;
wire [23:0] significand_a,significand_b;
wire [7:0] exponent_diff;
wire [23:0] significand_b_add_sub;
wire [24:0] significand_add;
wire [30:0] add_sum;

assign {operand_a,operand_b} = (a_operand[30:0] < b_operand[30:0]) ? {b_operand,a_operand} : {a_operand,b_operand};
assign output_sign = operand_a[31];
assign significand_a = (operand_a[30:23] == 0) ? {1'b0,operand_a[22:0]} : {1'b1,operand_a[22:0]};
assign significand_b = (operand_b[30:23] == 0) ? {1'b0,operand_b[22:0]} : {1'b1,operand_b[22:0]};
assign exponent_diff = operand_a[30:23] - operand_b[30:23];
assign significand_b_add_sub = significand_b >> exponent_diff;

wire temp;
assign temp = operand_a[31] ^ operand_b[31];
assign significand_add = temp?(significand_a == significand_b_add_sub ? 25'b0 : (significand_a + significand_b_add_sub)):(significand_a + significand_b_add_sub); 

assign add_sum[22:0] = significand_add[24] ? significand_add[23:1] : significand_add[22:0];
assign add_sum[30:23] = (significand_add == 24'b0) ? 8'b0:(significand_add[24] ? (1'b1 + operand_a[30:23]) : operand_a[30:23]);
assign result =  {output_sign,add_sum};


endmodule
