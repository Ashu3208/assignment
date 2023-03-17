`include "dec3to8.v"

module decoder_tb;
wire [7:0] out;
reg en;
reg [2:0] in;
integer i;

decoder3_to_8 uut(.in(in),.out(out),.en(en));

initial begin     
      $dumpfile("decoder3to8.vcd");
      $dumpvars(0, decoder_tb);
      $monitor( "en=%b, in=%d, out=%b ", en, in, out);
      for ( i=0; i<16; i=i+1) 
        begin
           {en,in}  = i;
            #10;
        end
   end
endmodule

 