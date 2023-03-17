`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:22:31 01/14/2023 
// Design Name: 
// Module Name:    Full_adder_32b 
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
module Full_adder_32b(a,b,sig,s_c,cout,s);
input  [31:0]a,b;
output [31:0] cout,s_c,s;
output reg sig;
assign s_c=a+b;
Full_adder_1b f0(a[0],b[0],0,s[0],cout[0]);
Full_adder_1b f1(a[1],b[1],cout[0],s[1],cout[1]);
Full_adder_1b f2(a[2],b[2],cout[1],s[2],cout[2]);
Full_adder_1b f3(a[3],b[3],cout[2],s[3],cout[3]);
Full_adder_1b f4(a[4],b[4],cout[3],s[4],cout[4]);
Full_adder_1b f5(a[5],b[5],cout[4],s[5],cout[5]);
Full_adder_1b f6(a[6],b[6],cout[5],s[6],cout[6]);
Full_adder_1b f7(a[7],b[7],cout[6],s[7],cout[7]);
Full_adder_1b f8(a[8],b[8],cout[7],s[8],cout[8]);
Full_adder_1b f9(a[9],b[9],cout[8],s[9],cout[9]);
Full_adder_1b f10(a[10],b[10],cout[9],s[10],cout[10]);
Full_adder_1b f11(a[11],b[11],cout[10],s[11],cout[11]);
Full_adder_1b f12(a[12],b[12],cout[11],s[12],cout[12]);
Full_adder_1b f13(a[13],b[13],cout[12],s[13],cout[13]);
Full_adder_1b f14(a[14],b[14],cout[13],s[14],cout[14]);
Full_adder_1b f15(a[15],b[15],cout[14],s[15],cout[15]);
Full_adder_1b f16(a[16],b[16],cout[15],s[16],cout[16]);
Full_adder_1b f17(a[17],b[17],cout[16],s[17],cout[17]);
Full_adder_1b f18(a[18],b[18],cout[17],s[18],cout[18]);
Full_adder_1b f19(a[19],b[19],cout[18],s[19],cout[19]);
Full_adder_1b f20(a[20],b[20],cout[19],s[20],cout[20]);
Full_adder_1b f21(a[21],b[21],cout[20],s[21],cout[21]);
Full_adder_1b f22(a[22],b[22],cout[21],s[22],cout[22]);
Full_adder_1b f23(a[23],b[23],cout[22],s[23],cout[23]);
Full_adder_1b f24(a[24],b[24],cout[23],s[24],cout[24]);
Full_adder_1b f25(a[25],b[25],cout[24],s[25],cout[25]);
Full_adder_1b f26(a[26],b[26],cout[25],s[26],cout[26]);
Full_adder_1b f27(a[27],b[27],cout[26],s[27],cout[27]);
Full_adder_1b f28(a[28],b[28],cout[27],s[28],cout[28]);
Full_adder_1b f29(a[29],b[29],cout[28],s[29],cout[29]);
Full_adder_1b f30(a[30],b[30],cout[29],s[30],cout[30]);
Full_adder_1b f31(a[31],b[31],cout[30],s[31],cout[31]);
always @* begin
if(s==s_c) 
begin
  sig=1;
end else 
begin
  sig=0;
end
end
endmodule 