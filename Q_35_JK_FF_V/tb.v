`include "jk_ff.v"

module tb;
	reg clk,rst,j,k;
	wire q;

	jk_ff dut(.clk(clk),.rst(rst),.j(j),.k(k),.q(q));

	always #5 clk=~clk;
	initial begin
	clk=0;
	rst=1;
	repeat(2)@(posedge clk);
	rst=0;
	repeat(50)begin
		{j,k}=$random;
		#7;
	end
	$finish;
	end
endmodule
