module hexdec_bin(h,b);
	input [15:0]h;
	output [3:0]b;

	assign b[3]=h[8] | h[9] | h[10] | h[11] | h[12] | h[13] | h[14] | h[15];
	assign b[2]=h[4] | h[5] | h[6] | h[7] | h[12] | h[13] | h[14] | h[15];
	assign b[1]=h[2] | h[3] | h[6] | h[7] | h[10] | h[11] | h[14] | h[15];
	assign b[0]=h[1] | h[3] | h[5] | h[7] | h[9] | h[11] | h[13] | h[15];
endmodule
