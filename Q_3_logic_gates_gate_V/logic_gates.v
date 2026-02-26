module logic_gates(a,b,not_o,and_o,or_o,nand_o,nor_o,xor_o,xnor_o);
	input a,b;
	output not_o,and_o,or_o,nand_o,nor_o,xor_o,xnor_o;

	and g1(and_o,a,b);
	or g2(or_o,a,b);
	not g3(not_o,a);
	nand g4(nand_o,a,b);
	nor g5(nor_o,a,b);
	xor g6(xor_o,a,b);
	xnor g7(xnor_o,a,b);
endmodule
