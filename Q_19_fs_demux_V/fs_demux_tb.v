`include "fs_demux18.v"
`include "fs_demux14.v"
`include "fs_demux12.v"

module tb;
	reg a,b,bin;
	wire diff,bout;

	fs_demux18 dut(.a(a),.b(b),.bin(bin),.diff(diff),.bout(bout));
	//fs_demux14 dut(.a(a),.b(b),.bin(bin),.diff(diff),.bout(bout));
	//fs_demux12 dut(.a(a),.b(b),.bin(bin),.diff(diff),.bout(bout));

	initial begin
		repeat(10)begin
			{a,b,bin}=$random;
			#1;
			$display("a=%b\tb=%b\tbin=%b\tdiff=%b\tbout=%b",a,b,bin,diff,bout);
			$display("y=%b",dut.w1);
		end
	end
endmodule
