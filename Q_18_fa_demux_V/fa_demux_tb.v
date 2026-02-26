`include "fa_demux18.v"
`include "fa_demux14.v"
`include "fa_demux12.v"

module tb;
	reg a,b,c;
	wire sum,cout;

	//fa_demux18 dut(.a(a),.b(b),.cin(c),.sum(sum),.cout(cout));
	//fa_demux14 dut(.a(a),.b(b),.cin(c),.sum(sum),.cout(cout));
	fa_demux12 dut(.a(a),.b(b),.cin(c),.sum(sum),.cout(cout));

	initial begin
		repeat(10)begin
			{a,b,c}=$random;
			#1;
			$display("a=%b\tb=%b\tc=%b\tsum=%b\tcout=%b",a,b,c,sum,cout);
			$display("y=%b",dut.w1);
		end
	end
endmodule
