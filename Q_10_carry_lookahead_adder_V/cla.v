module cla(a,b,cin,sum,cout);
	parameter N=1;
	input [N-1:0]a,b;
	input cin;
	output [N-1:0]sum;
	output cout;
	
	wire [N:0]co;
	wire [N-1:0]g,p;

	assign co[0]=cin;
	genvar i;
	
	generate
	for(i=0;i<N;i=i+1) begin
		assign g[i]=a[i]&b[i];
		assign p[i]=a[i]^b[i];
		
		assign sum[i]=p[i]^co[i];
		assign co[i+1]=g[i]+p[i]&co[i];
	end
	endgenerate
	assign cout=co[N];
endmodule
