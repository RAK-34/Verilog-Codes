`include "dec_bcd.v"
module tb;
	reg [9:0]d;
	wire [3:0]b;

	dec_bcd dut(.d(d),.b(b));

	initial begin
		$monitor("decimal=%b\tbcd = %b",d,b);
		d=10'b0000_0000_01; #1;	
		d=10'b0000_0000_10; #1;	
		d=10'b0000_0001_00; #1;	
		d=10'b0000_0010_00; #1;	
		d=10'b0000_0100_00; #1;	
		d=10'b0000_1000_00; #1;	
		d=10'b0001_0000_00; #1;	
		d=10'b0010_0000_00; #1;	
		d=10'b0100_0000_00; #1;	
		d=10'b1000_0000_00; #1;	
	end
endmodule
