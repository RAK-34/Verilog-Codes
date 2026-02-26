module demux14(i,en,s,y);
	input i,en;
	input [1:0]s;
	output reg [3:0]y;

	always@(*)begin
		y=0;
		if(en==0) y[s]=i;
	end
endmodule

module fa_demux14(a,b,cin,sum,cout);
	input a,b,cin;
	output sum,cout;
	wire [7:0]w1;

	demux14 g1(.i(1'b1),.en(a),.s({b,cin}),.y({w1[3:0]}));
	demux14 g2(.i(1'b1),.en(~a),.s({b,cin}),.y({w1[7:4]}));

	or g3(sum,w1[1],w1[2],w1[4],w1[7]);
	or g4(cout,w1[3],w1[5],w1[6],w1[7]);
endmodule
