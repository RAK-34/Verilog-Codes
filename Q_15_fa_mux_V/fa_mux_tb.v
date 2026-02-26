`include "fa_mux.v"
module tb;
	reg a,b,c;
	wire sum,cout;

	fa_mux21 dut(.a(a),.b(b),.c(c),.sum(sum),.cout(cout));
	initial begin
		repeat(20)begin
			{a,b,c}=$random;
			#1;
			$display("a=%b\tb=%b\tc=%b\tsum=%b\tcout=%b",a,b,c,sum,cout);
		end
	end
endmodule
