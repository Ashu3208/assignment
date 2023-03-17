
`include "Full_adder_parameter.v"
module mjolnir(a,b,s,cout,clk);

parameter k = 64;
input [k-1:0] a,b;
input clk;
output reg [k-1:0] s;
output reg cout;


wire [k-1:0] sum_wire;
wire [(k/2)-1:0] sum1;
wire [(k/2)-1:0] sum2;
wire cout_wire;
wire cout_wire1;
wire cout_wire2;
assign sum_wire[k-1:(k/2)]=0;

Full_adder_parameter #(.w1(k/2)) add1(.a(a[(k/2)-1:0]), .b(b[(k/2)-1:0]), .cin(1'b0), .s(sum_wire[(k/2)-1:0]), .cout(cout_wire));
Full_adder_parameter #(.w1(k/2)) add2(.a(a[k-1:k/2]), .b(b[k-1:k/2]), .cin(1'b0), .s(sum1), .cout(cout_wire1));
Full_adder_parameter #(.w1(k/2)) add3(.a(a[k-1:k/2]), .b(b[k-1:k/2]), .cin(1'b1), .s(sum2), .cout(cout_wire2));

s[k-1:k/2]<=~cout_wire&sum1|cout_wire&sum2;
cout<=~cout_wire&cout_wire1|cout_wire&cout_wire2;
always@(clk)
begin
    s<= sum_wire;
    
end
endmodule
