`include "demux_g.v"
module tb;
	reg i,s;
	wire [1:0]y;

	demux12 dut(.i(i),.s(s),.y(y));
	initial begin
		repeat(10)begin
			s=$random;
			i=1;
			#1;
			$display("i=%b\ts=%b\ty=%b",i,s,y);
		end
	end
endmodule

module not_tb;
	reg a;
	wire not_o;

	not_g dut(.a(a),.not_o(not_o));
	initial begin
		repeat(5)begin
			a=$random;
			#1;
			$display("a=%b\tnot_o_~a=%b",a,not_o);
		end
	end
endmodule

module and_tb;
	reg a,b;
	wire and_o;

	and_g dut(.a(a),.b(b),.and_o(and_o));

	initial begin
	repeat(10)begin
		{a,b}=$random;
		#1;
		$display("a=%b\tb=%b\tand_o=%b",a,b,and_o);
	end
	end
endmodule

module or_tb;
	reg a,b;
	wire or_o;

	or_g dut(.a(a),.b(b),.or_o(or_o));

	initial begin
	repeat(10)begin
		{a,b}=$random;
		#1;
		$display("a=%b\tb=%b\tor_o=%b",a,b,or_o);
	end
	end
endmodule

module nand_tb;
	reg a,b;
	wire nand_o;

	nand_g dut(.a(a),.b(b),.nand_o(nand_o));

	initial begin
	repeat(10)begin
		{a,b}=$random;
		#1;
		$display("a=%b\tb=%b\tnand_o=%b",a,b,nand_o);
	end
	end
endmodule

module nor_tb;
	reg a,b;
	wire nor_o;

	nor_g dut(.a(a),.b(b),.nor_o(nor_o));

	initial begin
	repeat(10)begin
		{a,b}=$random;
		#1;
		$display("a=%b\tb=%b\tnor_o=%b",a,b,nor_o);
	end
	end
endmodule

module xor_tb;
	reg a,b;
	wire xnor_o;

	xor_g dut(.a(a),.b(b),.xor_o(xor_o));

	initial begin
	repeat(10)begin
		{a,b}=$random;
		#1;
		$display("a=%b\tb=%b\txor_o=%b",a,b,xor_o);
	end
	end
endmodule

module xnor_tb;
	reg a,b;
	wire xnor_o;

	xnor_g dut(.a(a),.b(b),.xnor_o(xnor_o));

	initial begin
	repeat(10)begin
		{a,b}=$random;
		#1;
		$display("a=%b\tb=%b\txnor_o=%b",a,b,xnor_o);
	end
	end
endmodule
