`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:29:40 01/14/2023 
// Design Name: 
// Module Name:    Subtractor 
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
module Subtractor(a,b,bin,d,bout);
input a,b,bin;
output d,bout;

wire s_temp,c_temp,x_temp,n_a,a_temp,co_t;
xor x1(s_temp,a,b);
xor x2(d,s_temp,bin);//d = (a xor b)xor cin
not n(n_a,a);
and a1(c_temp,n_a,bin);
and a2(x_temp,b,bin);
and a3(a_temp,n_a,b);
or  o1(co_t,c_temp,x_temp);
or  o2(bout,co_t,a_temp);// bout = (na and b) + (b and bin) + (na and bin)



endmodule
