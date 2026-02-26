`include "fa.v"
module csa(a,b,c,sum,cout);
	parameter N=1;
	input [N-1:0]a,b,c;
	output [N:0]sum;
	output cout;

	wire [N:0]ws,wc1;
	wire [N:0]wc2;

	assign wc2[0]=0;
	assign ws[N]=0;

	genvar i;
	generate
		for(i=0;i<N;i=i+1) begin
			fa g1(.a(a[i]),.b(b[i]),.c(c[i]),.s(ws[i]),.co(wc1[i]));
		end
		for(i=0;i<N;i=i+1) begin
			fa g1(.a(ws[i+1]),.b(wc1[i]),.c(wc2[i]),.s(sum[i+1]),.co(wc2[i+1]));
		end
		assign sum[0]=ws[0];
		assign cout=wc2[N];
	endgenerate
endmodule
