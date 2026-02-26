module demux12(i,s,en,y);
	input i,s,en;
	output reg [1:0]y;

	always@(*)begin
		y=0;
		if(en==0) y[s]=i;
	end
endmodule

module fs_demux12(a,b,bin,diff,bout);
	input a,b,bin;
	output diff,bout;
	wire [7:0]w1;
	wire [3:0]w2;
	wire [1:0]w3;

	demux12 g1(.i(1'b1),.en(1'b0),.s(a),.y(w3));
	demux12 g2(.i(1'b1),.en(~w3[0]),.s(b),.y({w2[1:0]}));
	demux12 g3(.i(1'b1),.en(~w3[1]),.s(b),.y({w2[3:2]}));
	demux12 g4(.i(1'b1),.en(~w2[0]),.s(bin),.y(w1[1:0]));
	demux12 g5(.i(1'b1),.en(~w2[1]),.s(bin),.y(w1[3:2]));
	demux12 g6(.i(1'b1),.en(~w2[2]),.s(bin),.y(w1[5:4]));
	demux12 g7(.i(1'b1),.en(~w2[3]),.s(bin),.y(w1[7:6]));

	or g8(diff,w1[1],w1[2],w1[4],w1[7]);
	or g9(bout,w1[1],w1[2],w1[3],w1[7]);
endmodule
