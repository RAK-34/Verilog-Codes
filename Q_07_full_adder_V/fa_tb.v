`include "fa.v"
`include "full_adder.v"

module tb;
	parameter N=5;
	reg [N-1:0]a,b;
	reg c;
	wire [N-1:0]sum;
	wire carry;
	
	n_bit_fa #(.N(N))dut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));

	initial begin
		repeat(10)begin
			{a,b,c}=$random;
			#1;
			$display("a=%b,\tb=%b,\tc=%b,\tsum=%b,\tcarry=%b",a,b,c,sum,carry);
		end
	end
endmodule
