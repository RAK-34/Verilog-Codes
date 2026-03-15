module ev_par(in,p);
	input [3:0]in;
	output p;

	assign p=^in;
endmodule
