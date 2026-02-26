`include "mux.v"
module tb;
	parameter N=3;
	reg [2**N-1:0]i;
	reg [N-1:0]s;
	wire y;

	mux_n #(.N(N))dut(.i(i),.s(s),.y(y));

	initial begin
		repeat(10)begin
			{i,s}=$random;
			#1;
			$display("i=%b\ts=%b\ty=%b",i,s,y);
		end
	end
endmodule
