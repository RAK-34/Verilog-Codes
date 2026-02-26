module demux21(i,s,y);
	input i,s;
	output [1:0]y;

	assign y[0]=~s&i;
	assign y[1]=s&i;
endmodule

module demux41(i,s,y);
	input i;
	input [1:0]s;
	output reg [3:0]y;

	always@(*)begin
		y=4'b0000;
		y[s]=i;		
		//case(s)
		//	2'b00:y[0]=i;
		//	2'b01:y[1]=i;
		//	2'b10:y[2]=i;
		//	2'b11:y[3]=i;
		//endcase
	end
endmodule

module demux_n(i,s,y);
	parameter N=1;
	input i;
	input [N-1:0]s;
	output reg [2**N-1:0]y;

	always@(*)begin
		y={2**N-1{1'b0}};
		y[s]=i;
	end
endmodule
