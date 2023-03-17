`include "memory.v"
module memory_tb();

wire [31:0]dataout;
reg [31:0]Datain;
reg [4:0]address;
reg Writeen,reset,mode,clock;

// Instantiate the Unit Under Test (UUT)
memory uut (
      .dataout(dataout), 
      .Writeen(Writeen),
      .address(address),
      .mode(mode),
      .Datain(Datain),
      .clock(clock), 
      .reset(reset)
      
);

initial begin
clock<=0;
forever #10 clock<=~clock;
end

initial begin      
      $dumpfile("memory.vcd");
      $dumpvars(0, memory_tb);
      reset = 1;
      mode =0;
      address=5'b0;
      
      #10;
      reset = 0;
      mode=1;
      address=5'b1;
      Writeen=1;
      Datain=32'b1;
      
      #20
      Writeen=0;

      #20
      mode=0;

        #20
      $finish;

end
endmodule