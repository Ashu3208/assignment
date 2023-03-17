
`include "Full_adder_1b.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:36:59 01/29/2023 
// Design Name: 
// Module Name:    Full_adder_parameter 
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
module Full_adder_parameter(a,b,cin,s,cout);

parameter w1=32;
input  [w1-1:0]a,b;
input cin;
output [w1-1:0] s;
output  cout;


wire [w1:0] c_temp;

assign c_temp[0]=cin;

genvar i;

generate
for(i=0;i<32;i=i+1)
begin: loop1
Full_adder_1b add0(a[i],b[i],c_temp[i],s[i],c_temp[i+1]);
end
endgenerate

assign cout=c_temp[w1];

endmodule
