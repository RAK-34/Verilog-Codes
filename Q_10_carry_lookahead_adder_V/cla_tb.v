`include "cla.v"

module tb;
	parameter N=3;
	reg [N-1:0]a,b;
	reg cin;
	wire [N-1:0]sum;
	wire cout;

	cla #(.N(N))dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

	initial begin
		repeat(20) begin
			{a,b,cin}=$random;
			#1;
			$display("a=%b\tb=%b\tcin=%b\tsum=%b\tcout=%b",a,b,cin,sum,cout);
		end
	end
endmodule
