`include "encoder.v"
module tb;
	reg [7:0]i;
	wire [2:0]y;

	//enc42 dut(.i(i),.y(y));
	//enc83 dut(.i(i),.y(y));
	enc83_42 dut(.i(i),.y(y));

	initial begin
		repeat(10)begin
			i=$random;
			#1;
			$display("i=%b\ty=%b",i,y);
		end
	end
endmodule
