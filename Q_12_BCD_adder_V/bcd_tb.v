`include "bcd_ad.v"
module tb;
	reg [3:0]a,b;
	reg cin;
	wire [3:0]sum;
	wire cout;

	bcd dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

	initial begin
		repeat(10)begin
			{a,b,cin}=$random;
			#1;
			$display("a=%b\tb=%b\tcin=%b\tsum=%b\tcout=%b",a,b,cin,sum,cout);
		end
	end
endmodule
