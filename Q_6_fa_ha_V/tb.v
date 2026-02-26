`include "full_adder.v"

module tb;
	reg a,b,c;
	wire sum,carry;

	fa dut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));

	initial begin
		repeat(100) begin
			{a,b,c}=$random;
			#1;
			//$display("a=%0b,\tb=%0b,\tc=%0b,\tsum=%0b,\tcarry=%0b",a,b,c,sum,carry);
		end
	end
endmodule
