module dec_bcd(d,b);
	input [9:0]d;
	output [3:0]b;

	assign b[3]=d[8] | d[9];
	assign b[2]=d[4] | d[5] | d[6] | d[7];
	assign b[1]=d[2] | d[3] | d[6] | d[7];
	assign b[0]=d[1] | d[3] | d[5] | d[7] | d[9];
endmodule
