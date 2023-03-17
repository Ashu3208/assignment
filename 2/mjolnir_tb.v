`include "mjolnir.v"
module mjolnir_tb;
parameter k=64;
reg [k-1:0]a,b;
reg clk;
wire [k-1:0]s;
wire cout;

mjolnir uut(.a(a),.b(b),.s(s),.cout(cout),.clk(clk));
initial begin
      clk<=0;
      forever #10 clk<=~clk;
end

initial begin
      $dumpfile("mjolnir.vcd");
      $dumpvars(0, mjolnir_tb);
      a=1;
      b=1;
      end;

initial begin
      #20 a=0;
      #20 b=1;
      #40 a=2;
      #40 b=3;
      #50 $finish;
      end      

endmodule      