module logic_gates(a,b,not_o,and_o,or_o,nand_o,nor_o,xor_o,xnor_o);
	input a,b;
	output not_o,and_o,or_o,nand_o,nor_o,xor_o,xnor_o;

	assign and_o=a&b;
	assign or_o=a|b;
	assign not_o=~a;
	assign nand_o=~(a&b);
	assign nor_o=~(a|b);
	assign xor_o=a^b;
	assign xnor_o=~(a^b);
endmodule
