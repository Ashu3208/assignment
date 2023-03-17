`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:30 02/12/2023 
// Design Name: 
// Module Name:    memo2 
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
module Veda2(dataout, Writeen, addressa,addressb, mode, Datain, reset, clock);

input [31:0] Datain;
input [4:0]addressa,addressb;
input Writeen, reset, mode, clock;
output reg [31:0] dataout;
reg [31:0] RF [31:0]; 

always@(posedge clock)
begin
if(reset) begin 
RF[0]<=32'b0;
RF[1]<=32'b0;
RF[2]<=32'b0;
RF[3]<=32'b0;
RF[4]<=32'b0;
RF[5]<=32'b0;
RF[6]<=32'b0;
RF[7]<=32'b0;
RF[8]<=32'b0;
RF[9]<=32'b0;
RF[10]<=32'b0;
RF[11]<=32'b0;
RF[12]<=32'b0;
RF[13]<=32'b0;
RF[14]<=32'b0;
RF[15]<=32'b0;
RF[16]<=32'b0;
RF[17]<=32'b0;
RF[18]<=32'b0;
RF[19]<=32'b0;
RF[20]<=32'b0;
RF[21]<=32'b0;
RF[22]<=32'b0;
RF[23]<=32'b0;
RF[24]<=32'b0;
RF[25]<=32'b0;
RF[26]<=32'b0;
RF[27]<=32'b0;
RF[28]<=32'b0;
RF[29]<=32'b0;
RF[30]<=32'b0;
RF[31]<=32'b0;

dataout<= RF[addressb];
end
else begin
    if (Writeen) begin
	 if(mode == 1) begin
	dataout<= RF[addressb];
	end
	else begin 
        
        RF[addressa]<= Datain;
        if (addressa == addressb)
         dataout<=Datain;
        else 
        dataout<=RF[addressb];
        
    end
    end
    else begin 
       dataout<= RF[addressb];

    end

end
end 
endmodule 