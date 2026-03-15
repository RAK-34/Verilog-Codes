module sr_ff(s,r,clk,rst,q);
	input s,r,clk,rst;
	output reg q;

	always@(posedge clk)begin
		if(rst) q<=0;
		else
		case({s,r})
			2'b00:begin q<=q; end
			2'b01:begin q<=1'b0; end
			2'b10:begin q<=1'b1; end
			2'b11:begin q<=1'bz; end
		endcase
	end
endmodule
