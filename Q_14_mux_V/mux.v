module mux21(i0,i1,s,y);
	input i0,i1,s;
	output y;

	assign y=s?i1:i0;
endmodule

module mux41(i,s,y);
	input [3:0]i;
	input [1:0]s;
	output y;

	//assign y=(s==2'b11)?i[3]:(s==2'b10)?i[2]:(s==2'b01)?i[1]:i[0];
	//assign y=s[1]?(s[0]?i[3]:i[2]):(s[0]?i[1]:i[0]);
	assign y=i[s];
endmodule

module mux_n(i,s,y);
	parameter N=1;
	input [2**N-1:0]i;
	input [N-1:0]s;
	output y;

	assign y=i[s];
endmodule
