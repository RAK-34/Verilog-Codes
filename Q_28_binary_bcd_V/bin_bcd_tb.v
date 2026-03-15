`include "bin_bcd.v"
module tb;
	reg [3:0]bin;
	wire [4:0]bcd;

	bin_bcd dut(.bin(bin),.bcd(bcd));

	initial begin
		repeat(10)begin
		bin=$random;
		#1;
		$display("binary=%b\tbcd = %b",bin,bcd);
		end
	end
endmodule
