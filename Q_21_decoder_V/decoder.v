module dec_2_4(i,en,y);
	input [1:0]i;
	input en;
	output reg [3:0]y;

	always@(*)begin
		y=0;
		if(en==0) y[i]=1;
		else y=0;
	end
endmodule

module dec_n(i,en,y);
	parameter N=1;
	input [N:0]i;
	input en;
	output reg [2**(N+1)-1:0]y;

	always@(*)begin
	y=0;
	if(en==0) y[i]=1'b1;
	end
endmodule
