module data_types;
//reg data types
	reg a;
	integer b;
	real c;
	time t;
	realtime rt;
//net data types
	wire d;
	wand e;
	wor f;
	tri g;
	initial begin
		$display("default value of data type reg = %0d",a);
		$display("default value of data type integer = %0d",b);
		$display("default value of data type real = %0d",c);
		$display("default value of data type time = %0d",t);
		$display("default value of data type real_time = %0d",rt);
		$display("default value of data type wire = %0d",d);
		$display("default value of data type wand = %0d",e);
		$display("default value of data type wor = %0d",f);
		$display("default value of data type tri = %0d",g);
	end
endmodule



/* output

default value of data type reg = x
default value of data type integer = x
default value of data type real = 0
default value of data type time = x
default value of data type real_time = 0
default value of data type wire = z
default value of data type wand = z
default value of data type wor = z
default value of data type tri = z

*/
