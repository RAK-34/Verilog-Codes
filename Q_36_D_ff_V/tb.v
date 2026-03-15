`include "d_ff.v"

module tb;
	reg clk,rst,d;
	wire q;

	d_ff dut(.clk(clk),.rst(rst),.d(d),.q(q));

	always #5 clk=~clk;
	initial begin
	clk=0;
	rst=1;
	repeat(2)@(posedge clk);
	rst=0;
	repeat(50)begin
		d=$random;
		#7;
	end
	$finish;
	end
endmodule
