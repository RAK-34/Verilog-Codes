`include "fa.v"
module fa_fs(a,b,cs,s_d,c_b);
	parameter N=1;
	input [N-1:0]a,b;
	input cs;
	output [N-1:0]s_d;
	output c_b;

	wire [N-1:0]w1;
	wire [N:0]w2;
	assign w2[0]=cs;

	genvar i;
	generate
		for(i=0;i<N;i=i+1) begin
			assign w1[i]=b[i]^w2[0];
			
			fa g1(.a(a[i]),.b(w1[i]),.cin(w2[i]),.sum(s_d[i]),.cout(w2[i+1]));
		end
	endgenerate
	assign c_b=w2[N];
endmodule
