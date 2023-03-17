`include "compare.v"
module test;
    reg [1:0] c;
    reg a,b,clk;
    wire sig;
   compare a0(.a(a),.b(b),.c(c),.clk(clk),.sig(sig));
   initial begin
    $dumpfile("test.gcd");
    $dumpvars(0,test);
   clk<=0;
 #10  forever clk=~clk;
   end
    initial begin
   
#5
a <=5'b00000;
b<=5'b00001; 
c<=5'b10;
#200 $finish;
end 
endmodule