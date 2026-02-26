module ha(a,b,sum,carry);
	input a,b;
	output sum,carry;

	assign {carry,sum}=a+b;
endmodule

module fa(a,b,c,sum,carry);
	input a,b,c;
	output sum,carry;
	wire n1,n2,n3;

	ha g1(.a(a),.b(b),.sum(n1),.carry(n2));
	ha g2(.a(c),.b(n1),.sum(sum),.carry(n3));
	or g3(carry,n2,n3);
endmodule
