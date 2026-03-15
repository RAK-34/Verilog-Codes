`include "bcd_exc3.v"
/*
module tb;
	reg b3,b2,b1,b0;
	wire e3,e2,e1,e0;

	bcd_exc3 dut(.b3(b3),.b2(b2),.b1(b1),.b0(b0),.e3(e3),.e2(e2),.e1(e1),.e0(e0));

	initial begin
		$monitor("bcd= %b\texcess-3= %b",{b3,b2,b1,b0},{e3,e2,e1,e0});
		{b3,b2,b1,b0}=4'b0000;
		#1;
		{b3,b2,b1,b0}=4'b0001;
		#1;
		{b3,b2,b1,b0}=4'b0010;
		#1;
		{b3,b2,b1,b0}=4'b0011;
		#1;
		{b3,b2,b1,b0}=4'b0100;
		#1;
		{b3,b2,b1,b0}=4'b0101;
		#1;
		{b3,b2,b1,b0}=4'b0110;
		#1;
		{b3,b2,b1,b0}=4'b0111;
		#1;
		{b3,b2,b1,b0}=4'b1000;
		#1;
		{b3,b2,b1,b0}=4'b1001;
		#1;
	end
endmodule*/

module tb;
	reg [3:0]bcd;
	wire [3:0]exc3;

	bcd_exc3 dut(.bcd(bcd),.exc3(exc3));

	initial begin
		repeat(10)begin
		bcd=$random;
		#1;
		$display("bcd=%b\texc3=%b",bcd,exc3);
		end
	end
endmodule
