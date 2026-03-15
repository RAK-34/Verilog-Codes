`include "oct_binary.v"
module tb;
	reg [7:0]o;
	wire [2:0]b;

	oct_bin dut(.o(o),.b(b));

	initial begin
		$monitor("octal=%b\tbinary = %b",o,b);
		o=8'b0000_0001; #1;	
		o=8'b0000_0010; #1;	
		o=8'b0000_0100; #1;	
		o=8'b0000_1000; #1;	
		o=8'b0001_0000; #1;	
		o=8'b0010_0000; #1;	
		o=8'b0100_0000; #1;	
		o=8'b1000_0000; #1;	
	end
endmodule
