module bin_bcd(bin,bcd);
	input [3:0]bin;
	output [4:0]bcd;

	assign bcd = (bin>9)?{1'b1,bin-4'b1010}:bin;
endmodule
