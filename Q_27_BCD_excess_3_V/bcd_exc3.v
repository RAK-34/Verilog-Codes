module bcd_exc3(bcd,exc3);
	input [3:0]bcd;
	`ifdef COMB
		output [3:0]exc3;
	`else
		output reg [3:0]exc3;
	`endif

	`ifdef COMB
	initial $display("combinational logic");
	assign exc3[3] = bcd[3] | bcd[2]&bcd[0] | bcd[2]&bcd[1];
	assign exc3[2] = ~bcd[2]&bcd[0] | ~bcd[2]&bcd[1] | bcd[2]&~bcd[1]&~bcd[0];
	assign exc3[1] = bcd[1]&bcd[0] | ~bcd[1]&~bcd[0];
	assign exc3[0] = ~bcd[0];

	`else
	initial $display("sequential logic");
	always@(*)begin
		if(bcd<10) exc3=bcd+3;
		else exc3=4'bzzzz;
	end
	`endif
endmodule
