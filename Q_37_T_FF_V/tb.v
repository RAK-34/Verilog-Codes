`include "t_ff.v"

module tb;
	reg clk,rst,t;
	wire q;

	t_ff dut(.clk(clk),.rst(rst),.t(t),.q(q));

	always #5 clk=~clk;
	initial begin
	clk=0;
	rst=1;
	repeat(2)@(posedge clk);
	rst=0;
	repeat(50)begin
		t=$random;
		#7;
	end
	$finish;
	end
endmodule
