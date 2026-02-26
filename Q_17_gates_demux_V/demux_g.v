module demux12(i,s,y);
	input i,s;
	output [1:0]y;

	assign y[0]=~s&i;
	assign y[1]=s&i;
endmodule

// basic logic gates using 1x2demux
// not gate design
module not_g(a,not_o);
	input a;
	output not_o;
	wire w;

	demux12 g1(.i(1'b1),.s(a),.y({w,not_o}));
endmodule

//and gate
module and_g(a,b,and_o);
	input a,b;
	output and_o;
	wire w;

	demux12 g1(.i(b),.s(a),.y({and_o,w}));
endmodule

//or gate
module or_g(a,b,or_o);
	input a,b;
	output or_o;
	wire w1,w2,w3,w4,w5;

	demux12 g1(.i(1'b1),.s(a),.y({w1,w2}));//w2=~a
	demux12 g2(.i(w2),.s(b),.y({w3,w4}));//w4=~a&~b
	demux12 g3(.i(1'b1),.s(w4),.y({w5,or_o}));
endmodule

//nand gate
module nand_g(a,b,nand_o);
	input a,b;
	output nand_o;
	wire w1,w2,w3;

	demux12 g1(.i(b),.s(a),.y({w2,w1}));
	demux12 g2(.i(1'b1),.s(w2),.y({w3,nand_o}));
endmodule

//nor gate
module nor_g(a,b,nor_o);
	input a,b;
	output nor_o;
	wire w1,w2,w3;

	demux12 g1(.i(1'b1),.s(a),.y({w1,w2}));//w2=~a
	demux12 g2(.i(w2),.s(b),.y({w3,nor_o}));//w4=~a&~b
endmodule

//xor gate y=~(~a&~b | a&b)
module xor_g(a,b,xor_o);
	input a,b;
	output xor_o;
	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13;

	demux12 g1(.i(1'b1),.s(a),.y({w2,w1}));//w1=~a
	demux12 g2(.i(1'b1),.s(b),.y({w4,w3}));//w3=~b
	demux12 g3(.i(w3),.s(w1),.y({w6,w5}));//w6=~a&~b
	demux12 g4(.i(b),.s(a),.y({w8,w7}));//w8=a&b
	demux12 g5(.i(1'b1),.s(w6),.y({w10,w9}));//w9=~(~a&~b)
	demux12 g6(.i(1'b1),.s(w8),.y({w12,w11}));//w11=~(a&b)
	demux12 g7(.i(w9),.s(w11),.y({xor_o,w13}));
endmodule

//xnor gate y=~(a&~b | ~a&b)
module xnor_g(a,b,xnor_o);
	input a,b;
	output xnor_o;
	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13;

	demux12 g1(.i(1'b1),.s(a),.y({w2,w1}));//w1=~a
	demux12 g2(.i(1'b1),.s(b),.y({w4,w3}));//w3=~b
	demux12 g3(.i(w3),.s(a),.y({w6,w5}));//w6=a&~b
	demux12 g4(.i(w1),.s(b),.y({w8,w7}));//w8=~a&b
	demux12 g5(.i(1'b1),.s(w6),.y({w10,w9}));//w9=~(a&~b)
	demux12 g6(.i(1'b1),.s(w8),.y({w12,w11}));//w11=~(~a&b)
	demux12 g7(.i(w9),.s(w11),.y({xnor_o,w13}));
endmodule
