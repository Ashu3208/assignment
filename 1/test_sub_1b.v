`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:45:13 01/14/2023 
// Design Name: 
// Module Name:    test_sub_1b 
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
module test_sub_1b;
reg a,b,cin;
wire s,cout;

Subtractor_1b uut(.a(a), .b(b), .bin(cin), .d(s), .bout(cout));
initial 
begin
a=1;
b=1;
cin=1;
end

initial 
begin
#100 b<=0;
#100 cin<=0;
#500 b<=1;
end

endmodule
