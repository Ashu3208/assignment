module multiplexer(a,b,c,d,s1,s0,y);
    input [31:0]a,b,c,d;
    input s0,s1;
    output [31:0] y;
     assign y = s0?(s1?c:d):(s1?b:a);
    // assign y = (~s1 & ~s0 & a) | (s1 & ~s0 & b) | (~s1 & s0 & c) | (s1 & s0 & d);
    
endmodule