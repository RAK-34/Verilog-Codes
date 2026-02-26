module comp(a,b,gt,lt,eq);
	parameter N=1;
	input [N-1:0]a,b;
	output lt,gt,eq;

	assign gt=a&~b;
	assign lt=~a&b;
	assign eq=~(a^b);

/*
	assign gt=(a>b)?1'b1:0;
	assign lt=(a<b)?1'b1:0;
	assign eq=(a==b)?1'b1:0;
	always@(*) begin
		if(a>b) gt=1;
		else gt=0;
		if(a<b) lt=1;
		else lt=0;
		if(a==b) eq=1;
		else eq=0;
	end*/
endmodule

module comp2_1(a,b,gt,lt,eq);
	input [1:0]a,b;
	output gt,lt,eq;
	wire gw1,lw1,ew1,gw2,lw2,ew2;
	
	comp g2(.a(a[1]),.b(b[1]),.gt(gw2),.lt(lw2),.eq(ew2));
	comp g1(.a(a[0]),.b(b[0]),.gt(gw1),.lt(lw1),.eq(ew1));

	assign gt= gw2 | ew2&gw1;
	assign lt= lw2 | ew2&lw1;
	assign eq= ew1&ew2;
endmodule

module comp_3_2_1(a,b,gt,lt,eq);
	input [2:0]a,b;
	output gt,lt,eq;
	wire gw1,lw1,ew1,gw2,lw2,ew2;
	
	comp2_1 g2(.a(a[2:1]),.b(b[2:1]),.gt(gw2),.lt(lw2),.eq(ew2));
	comp g1(.a(a[0]),.b(b[0]),.gt(gw1),.lt(lw1),.eq(ew1));

	assign gt= gw2 | ew2&gw1;
	assign lt= lw2 | ew2&lw1;
	assign eq= ew1&ew2;
endmodule

module comp3_1(a,b,gt,lt,eq);
	input [2:0]a,b;
	output gt,lt,eq;
	wire gw3,gw2,gw1,lw3,lw2,lw1,ew3,ew2,ew1;

	comp g3(.a(a[2]),.b(b[2]),.gt(gw3),.lt(lw3),.eq(ew3));
	comp g2(.a(a[1]),.b(b[1]),.gt(gw2),.lt(lw2),.eq(ew2));
	comp g1(.a(a[0]),.b(b[0]),.gt(gw1),.lt(lw1),.eq(ew1));

	assign gt= gw3 | ew3&gw2 | ew3&ew2&gw1;
	assign lt= lw3 | ew3&lw2 | ew3&ew2&lw1;
	assign eq= ew1&ew2&ew3;
endmodule

module comp_n(a,b,gt,lt,eq);
	parameter N=1;
	input [N-1:0]a,b;
	output gt,lt,eq;
	wire [N-1:0]gw,lw,ew;

	genvar i;
	generate
		for(i=N-1;i>=0;i=i-1) begin
			comp g3(.a(a[i]),.b(b[i]),.gt(gw[i]),.lt(lw[i]),.eq(ew[i]));
//			comp g2(.a(a[1]),.b(b[1]),.gt(gw2),.lt(lw2),.eq(ew2));
//			comp g1(.a(a[0]),.b(b[0]),.gt(gw1),.lt(lw1),.eq(ew1));
		end
		for(i=N-1;i>0;i=i-1) begin
			assign gt= gw[i] | ew[i]&gw[i-1];
			assign lt= lw[i] | ew[i]&lw[i-1];
			assign eq= ew[i]&ew[i-1];
		end
	endgenerate
endmodule
