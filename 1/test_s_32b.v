`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:30:52 01/14/2023 
// Design Name: 
// Module Name:    test_fa_32b 
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
module test_fa_32b;

reg [31:0] a,b;
wire [31:0] cout,s,s_c;
wire sig;

Subtractor_32b uut(.a(a), .b(b), .cout(cout), .s(s), .s_c(s_c), .sig(sig));

initial begin
a=84;
b=35;
end

initial begin

#100 a=55;
#100 b=68;

end

endmodule
