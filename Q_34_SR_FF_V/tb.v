`include "sr_ff.v"

module tb;
	reg i1,i2,clk,rst;
	wire q;

	sr_ff dut(.s(i1),.r(i2),.clk(clk),.rst(rst),.q(q));

	always #5 clk=~clk;

	initial begin
	clk=0;
	rst=1;
	repeat(2)@(posedge clk);
	rst=0;
	repeat(50)begin
	{i1,i2}=$random;
	#7;
	end
	$finish;
	end

endmodule
