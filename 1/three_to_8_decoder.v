`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:54:00 01/15/2023 
// Design Name: 
// Module Name:    three_to_8_decoder 
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
module threee_to_8_decoder( in,out, e);


input [2:0] in;
input e;
output reg [7:0] out;

always @* 
  begin 
    if(e)
     begin
      case (in)
        000 : out = 10000000;
        001 : out = 01000000;
        010 : out = 00100000;
        011 : out = 00010000;
        100 : out = 00001000;
        101 : out = 00000100;
        110 : out = 00000010;
        default : out = 00000001;
      endcase
     end
     else
      begin
        out = 00000000;
      end
  end
  



endmodule
