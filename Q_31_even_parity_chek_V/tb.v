`include "even_parity_che.v"

module tb;
	reg [3:0]in;
	reg pin;
	wire err;
	integer seed;

	even_che dut(.in(in),.pin(pin),.err(err));

	initial begin
	seed=100;
	repeat(10)begin
		{pin,in}=$random(seed);
		#1;
		$display("input=%b\tparity_in=%b\terror=%b",in,pin,err);
	end
	end
endmodule
