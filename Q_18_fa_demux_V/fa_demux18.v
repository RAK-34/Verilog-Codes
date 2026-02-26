module demux18(i,s,y);
	input i;
	input [2:0]s;
	output reg [7:0]y;

	always@(*)begin
		y=0;
		y[s]=i;
	end
endmodule

module fa_demux18(a,b,cin,sum,cout);
	input a,b,cin;
	output sum,cout;
	wire [7:0]w;

	demux18 g1(.i(1'b1),.s({a,b,cin}),.y(w));
	or g2(sum,w[1],w[2],w[4],w[7]);
	or g3(cout,w[3],w[5],w[6],w[7]);
endmodule
