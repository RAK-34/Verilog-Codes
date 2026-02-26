`include "demux.v"
module tb;
	parameter N=3;
	reg i;
	reg [N-1:0]s;
	wire [2**N-1:0]y;

	demux_n #(.N(N))dut(.i(i),.s(s),.y(y));
	initial begin
		repeat(10)begin
			s=$random;
			i=1;
			#1;
			$display("i=%b\ts=%b\ty=%b",i,s,y);
		end
	end
endmodule
