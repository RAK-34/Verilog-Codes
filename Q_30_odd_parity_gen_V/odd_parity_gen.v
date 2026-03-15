module odd_parity(in,p);
	input [3:0]in;
	output p;

	assign p=~(^in);
endmodule
