`timescale 1ns / 1ps
`include "three_to_8_decoder.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:23:46 01/15/2023 
// Design Name: 
// Module Name:    test_3_to_8 
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
module test_3_to_8;

reg [2:0] inp;
reg en;
wire [7:0] outp;

threee_to_8_decoder uut(.in(inp), .out(outp), .e(en));
initial begin
      $dumpfile("test3to8.vcd");
      $dumpvars(0,test_3_to_8);
  inp = 000;
  en = 1;
end

initial begin
  #50 inp=001;
  #100 en=0;
  #200 en=1;
  inp=101;
  #100 inp=111;
  #50 inp=010;
  #50 inp=011;
  #50 inp=110;
end


endmodule
