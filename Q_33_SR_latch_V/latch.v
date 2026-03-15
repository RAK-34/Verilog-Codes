//sr-latch using nor gates
module sr_latch(s,r,q,q0);
	input s,r;
	output q,q0;

	assign q=~(r|q0);
	assign q0=~(s|q);
endmodule

//sr-latch using nand gates
module sr_lat_nand(s,r,q,q0);
	input s,r;
	output q,q0;

	assign q=~(r&q0);
	assign q0=~(s&q);
endmodule
