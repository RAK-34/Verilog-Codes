`include "gray_bin.v"
module tb;
	parameter N=3;
	reg [N-1:0]g;
	wire [N-1:0]b;

	g_b #(.N(N))dut(.g(g),.b(b));

	initial begin
		repeat(10)begin
			g=$random;
			#1;
			$display("gray = %b\tbinary = %b",g,b);
		end
	end
endmodule
