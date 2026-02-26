`include "ha.v"
`include "half_adder.v"

module tb;
	parameter N=5;
	reg [N-1:0]a;
	reg b;
	wire [N-1:0]sum;
	wire carry;
	
	n_bit_ha #(.N(N))dut(.a(a),.b(b),.sum(sum),.carry(carry));

	initial begin
		repeat(N)begin
			{a,b}=$random;
			#1;
			$display("a=%b,\tb=%b,\tsum=%b,\tcarry=%b",a,b,sum,carry);
		end
	end
endmodule
