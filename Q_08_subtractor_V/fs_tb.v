`include "fs.v"

module tb;
	reg a,b,c;
	wire diff,bo;

	fs dut(.a(a),.b(b),.c(c),.diff(diff),.bo(bo));

	initial begin
	repeat(10)begin
		{a,b,c}=$random;
		#1;
		$display("a=%0b\tb=%-b\tc=%0b\tdiff=%0b\tbo=%0b",a,b,c,diff,bo);
	end
	end
endmodule
