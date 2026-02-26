`include "csa.v"
module tb;
	parameter N=3;
	reg [N-1:0]a,b,c;
	wire [N:0]sum;
	wire cout;
	integer seed;

	csa #(.N(N))dut(.a(a),.b(b),.c(c),.sum(sum),.cout(cout));

	initial begin
		seed=12;
		repeat(10) begin
			{a,b,c}=$random(seed);
			#1;
			$display("a=%b\tb=%b\tc=%b\tsum=%b\tcout=%b",a,b,c,sum,cout);
		end
	end
endmodule
