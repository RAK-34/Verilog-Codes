`include "bin_gray.v"
module tb;
	parameter N=4;
	reg [N-1:0]b;
	wire [N-1:0]g;

	b_g #(.N(N))dut(.b(b),.g(g));

	initial begin
		repeat(10)begin
			b=$random;
			#1;
			$display("binary = %b\tgray = %b",b,g);
		end
	end
endmodule
