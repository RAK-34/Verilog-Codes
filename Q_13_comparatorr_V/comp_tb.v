`include "comp.v"
module tb;
	parameter N=3;
	reg [N-1:0]a,b;
	wire lt,gt,eq;

	comp_n #(.N(N))dut(.a(a),.b(b),.lt(lt),.gt(gt),.eq(eq));

	initial begin
		repeat(10) begin
			{a,b}=$random;
			#1;
			$display("a=%d\tb=%d\tgt=%b\teq=%b\tlt=%b",a,b,gt,eq,lt);
		end
	end
endmodule
