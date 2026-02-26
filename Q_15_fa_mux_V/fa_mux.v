module mux(i,s,y);
	parameter N=1;
	input [2**N-1:0]i;
	input [N-1:0]s;
	output y;

	assign y=i[s];
endmodule

module fa_mux81(a,b,c,sum,cout);
	input a,b,c;
	output sum,cout;

	mux #(3)g1(.i(8'b10010110),.s({a,b,c}),.y(sum));
	mux #(3)g2(.i(8'b11101000),.s({a,b,c}),.y(cout));
endmodule

module fa_mux41(a,b,c,sum,cout);
	input a,b,c;
	output sum,cout;
	wire w1,w2,w3;
	assign w1=b^c;
	assign w2=b&c;
	assign w3=b+c;

	mux #(2)g1(.i({c,~c,~c,c}),.s({a,b}),.y(sum));
	mux #(2)g2(.i({1'b1,c,c,1'b0}),.s({a,b}),.y(cout));
endmodule

module fa_mux21(a,b,c,sum,cout);
	input a,b,c;
	output sum,cout;
	wire w1,w2,w3,w4;

	assign w1=b^c;
	assign w2=~(b^c);
	assign w3=b&c;
	assign w4=b|c;

	mux #(1)g1(.i({w2,w1}),.s({a}),.y(sum));
	mux #(1)g2(.i({w4,w3}),.s({a}),.y(cout));
endmodule
