module demux18(i,s,y);
	input i;
	input [2:0]s;
	output reg [7:0]y;

	always@(*)begin
		y=0;
		y[s]=i;
	end
endmodule

module fs_demux18(a,b,bin,diff,bout);
	input a,b,bin;
	output diff,bout;
	wire [7:0]w1;

	demux18 g1(.i(1'b1),.s({a,b,bin}),.y(w1));
	or g2(diff,w1[1],w1[2],w1[4],w1[7]);
	or g3(bout,w1[1],w1[2],w1[3],w1[7]);
endmodule
