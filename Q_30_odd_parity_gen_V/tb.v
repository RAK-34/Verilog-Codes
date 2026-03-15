`include "odd_parity_gen.v"
module tb;
	reg [3:0]in;
	wire p;

	odd_parity dut(.in(in),.p(p));

	initial begin
	repeat(10)begin
		in=$random;
		#1;
		$display("input=%b\tparity_bit = %b",in,p);
	end
	end
endmodule
