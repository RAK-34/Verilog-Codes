module demux14(i,en,s,y);
	input i,en;
	input [1:0]s;
	output reg [3:0]y;

	always@(*)begin
		y=0;
		if(en==0) y[s]=i;
	end
endmodule

module fs_demux14(a,b,bin,diff,bout);
	input a,b,bin;
	output diff,bout;
	wire [7:0]w1;

	demux14 g1(.i(1'b1),.en(a),.s({b,bin}),.y({w1[3:0]}));
	demux14 g2(.i(1'b1),.en(~a),.s({b,bin}),.y({w1[7:4]}));

	or g3(diff,w1[1],w1[2],w1[4],w1[7]);
	or g4(bout,w1[1],w1[2],w1[3],w1[7]);
endmodule
