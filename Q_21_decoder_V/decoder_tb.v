`include "decoder.v"
module tb;
	parameter N=3;
	reg [N:0]i;
	reg en;
	wire [2**(N+1)-1:0]y;

	//dec_2_4 dut(.i(i),.en(en),.y(y));
	dec_n #(.N(N))dut(.i(i),.en(en),.y(y));

	initial begin
	repeat(20)begin
		{i}=$random;
		en=0;
		#1;
		$display("i=%b\ten=%b\ty=%b",i,en,y);
	end
	end
endmodule
