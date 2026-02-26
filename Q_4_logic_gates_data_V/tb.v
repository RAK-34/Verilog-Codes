`include "logic_gates.v"

module tb;
	reg a,b;
	wire not_o,and_o,or_o,nand_o,nor_o,xor_o,xnor_o;

	logic_gates dut(a,b,not_o,and_o,or_o,nand_o,nor_o,xor_o,xnor_o);

	initial begin
		a=1;b=0;
		#1;
		$display("a=%0b\tb=%0b",a,b);
		$display("and output = %0b",and_o);
		$display("or output = %0b",or_o);
		$display("not output = %0b",not_o);
		$display("nand output = %0b",nand_o);
		$display("nor output = %0b",nor_o);
		$display("xor output = %0b",xor_o);
		$display("xnor output = %0b",xnor_o);
	end
endmodule

/* outputs

a=1	b=0
and output = 0
or output = 1
not output = 0
nand output = 1
nor output = 0
xor output = 1
xnor output = 0

*/
