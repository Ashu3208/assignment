`include "multiplexer.v"

module multiplexer_tb;
reg [31:0] a,b,c,d;
wire[31:0] y;
reg s0,s1;

multiplexer uut(.a(a),.b(b),.c(c),.d(d),.s0(s0),.s1(s1),.y(y));

initial begin
      $dumpfile("multiplexer4to1.vcd");
      $dumpvars(0, multiplexer_tb);
      $monitor( "a=%b, b=%d, c=%b ,d=%b,y=%b", a, b, c,d,y);
       // Test case 1: s1 = 0, s0 = 0
    a = 32'h0000_0001;
    b = 32'h0000_0010;
    c = 32'h0000_0100;
    d = 32'h0000_1000;
    s1 = 0;
    s0 = 0;
    #1;
    // expected output: a
    

    // Test case 2: s1 = 0, s0 = 1
    a = 32'h0000_0001;
    b = 32'h0000_0010;
    c = 32'h0000_0100;
    d = 32'h0000_1000;
    s1 = 0;
    s0 = 1;
    #1;
    // expected output: c
   

    // Test case 3: s1 = 1, s0 = 0
    a = 32'h0000_0001;
    b = 32'h0000_0010;
    c = 32'h0000_0100;
    d = 32'h0000_1000;
    s1 = 1;
    s0 = 0;
    #1;
    // expected output: b
   

    // Test case 4: s1 = 1, s0 = 1
    a = 32'h0000_0001;
    b = 32'h0000_0010;
    c = 32'h0000_0100;
    d = 32'h0000_1000;
    s1 = 1;
    s0 = 1;
    #1;
    // expected output: d
   

    $finish;
end
endmodule