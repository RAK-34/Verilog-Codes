module ha(i0,i1,s,c);
	input i0,i1;
	output s,c;

	xor g1(s,i0,i1);
	and g2(c,i0,i1);
endmodule
