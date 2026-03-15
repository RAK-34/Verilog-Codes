module oct_bin(o,b);
	input [7:0]o;
	output [2:0]b;

	assign b[2]=o[4] | o[5] | o[6] | o[7];
	assign b[1]=o[2] | o[3] | o[6] | o[7];
	assign b[0]=o[1] | o[3] | o[5] | o[7];
endmodule
