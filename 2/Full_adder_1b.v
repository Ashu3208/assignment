
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:19:46 01/14/2023 
// Design Name: 
// Module Name:    Full_adder_1b 
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
module Full_adder_1b(a,b,cin,s,cout);
input a,b,cin;
output s,cout;

wire s_temp,c_temp,x_temp;
xor x1(s_temp,a,b);
xor x2(s,s_temp,cin);//s = (a xor b)xor cin
and a1(c_temp,a,b);
and a2(x_temp,s_temp,cin);
or  o1(cout,c_temp,x_temp);// cout = (a&b) + (a xor b)&cin

endmodule
