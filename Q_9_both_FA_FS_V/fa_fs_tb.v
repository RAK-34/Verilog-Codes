`include "fa_fs.v"

module tb;
	parameter N=3;
	reg [N-1:0]a,b;
	reg cs;
	wire [N-1:0]s_d,w;
	wire c_b;

	fa_fs #(.N(N))dut(.a(a),.b(b),.cs(cs),.s_d(s_d),.c_b(c_b));

	initial begin
		repeat(10) begin
			{a,b,cs}=$random;
			#1;
			$display("a=%b\tb=%b\tcs=%b\tc_b=%b\ts_d=%b",a,b,cs,c_b,s_d);
			$display("w1=%b",dut.w1);
		end
	end
endmodule
