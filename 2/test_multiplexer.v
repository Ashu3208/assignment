module mymux(x,y,s,m);
input[2:0] x,y;
input s;
output[2:0]m;
assign m=x&~s|y&s;
endmodule