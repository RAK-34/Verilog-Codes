module odd_che(in,pin,err);
	input [3:0]in;
	input pin;
	output err;

	assign err=~(^in^pin);
endmodule
