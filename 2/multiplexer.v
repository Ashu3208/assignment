`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:04:10 01/15/2023 
// Design Name: 
// Module Name:    multiplexer 
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
module multiplexer(a,b,c,d,s1,s0,y);
     parameter w=1;
    input [w:0]a,b,c,d;
    input s0,s1;
    output reg [w:0] y;
    always @*
    begin 
        if(s0==0)
		  begin
		   if(s1==0)
			y = a;
			else
			y = b;
		  end
		  else
		  begin
		   if(s1==0)
			y = c;
			else
			y = d;
		  end
			
    end
     
    
    
endmodule