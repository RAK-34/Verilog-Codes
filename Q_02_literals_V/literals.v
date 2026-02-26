module literals;
	integer a;
	real b;
	initial begin
		b=12.23;
		a=b;
		$display("value in decimal = %0d",a);
		$display("real value = %0.2f",b);
		$display("value in binary = %0b",a);
		$display("value in octal = %0o",a);
		$display("value in hexa_decimal = %0h",a);
	end
endmodule

/* outputs

value in decimal = 12
real value = 12.23
value in binary = 1100
value in octal = 14
value in hexa_decimal = c

*/
