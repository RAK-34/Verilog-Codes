module fa(i0,i1,i2,s,c);
	input i0,i1,i2;
	output s,c;
	wire n1,n2,n3;

	xor g1(s,i0,i1,i2);
	and g2(n1,i0,i1);
	and g3(n2,i1,i2);
	and g4(n3,i2,i0);
	or g5(c,n1,n2,n3);
endmodule
