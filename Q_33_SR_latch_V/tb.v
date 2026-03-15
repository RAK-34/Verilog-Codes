`include "latch.v"

module tb;
	reg i1,i2;
	wire q,q0;

	//sr_latch dut(.s(i1),.r(i2),.q(q),.q0(q0));
	sr_lat_nand dut(.s(i1),.r(i2),.q(q),.q0(q0));

	initial begin
	$monitor("s=%b\tr=%b\tq=%b\tq0=%b",i1,i2,q,q0);
	{i1,i2}=2'b01;
	#1;
	{i1,i2}=2'b10;
	#1;
	{i1,i2}=2'b00;
	#1;
	{i1,i2}=2'b11;
	#1;
	end
endmodule
