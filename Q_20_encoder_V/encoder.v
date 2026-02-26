module enc42(i,y);
	input [3:0]i;
	output reg [1:0]y;

	/*always@(*)begin
		case(i)
		4'b0001:y=2'b00;
		4'b0010:y=2'b01;
		4'b0100:y=2'b10;
		4'b1000:y=2'b11;
		endcase
	end*/
	/*always@(*)begin
		if(i[0])y=2'b00;
		else if(i[1])y=2'b01;
		else if(i[2])y=2'b10;
		else if(i[3])y=2'b11;
	end*/

//lsb priority encoder
	/*always@(*)begin
		casex(i)
		4'bxxx1:y=2'b00;
		4'bxx10:y=2'b01;
		4'bx100:y=2'b10;
		4'b1000:y=2'b11;
		endcase
	end*/
//msb priority encoder
	always@(*)begin
		casex(i)
		4'b0001:y=2'b00;
		4'b001x:y=2'b01;
		4'b01xx:y=2'b10;
		4'b1xxx:y=2'b11;
		endcase
	end
endmodule

module enc83(i,y);
	input [7:0]i;
	output reg [2:0]y;

//lsb priority
	/*always@(*)begin
		casex(i)
			8'bxxxx_xxx1:y=3'b000;
			8'bxxxx_xx10:y=3'b001;
			8'bxxxx_x100:y=3'b010;
			8'bxxxx_1000:y=3'b011;
			8'bxxx1_0000:y=3'b100;
			8'bxx10_0000:y=3'b101;
			8'bx100_0000:y=3'b110;
			8'b1000_0000:y=3'b111;
		endcase
	end*/
//msb priority
	always@(*)begin
		casex(i)
			8'b0000_0001:y=3'b000;
			8'b0000_001x:y=3'b001;
			8'b0000_01xx:y=3'b010;
			8'b0000_1xxx:y=3'b011;
			8'b0001_xxxx:y=3'b100;
			8'b001x_xxxx:y=3'b101;
			8'b01xx_xxxx:y=3'b110;
			8'b1xxx_xxxx:y=3'b111;
		endcase
	end
endmodule

module enc83_42(i,y);
	input [7:0]i;
	output [2:0]y;
	wire w;
	wire [1:0]y_low,y_high;

	enc42 g1(.i(i[3:0]),.y(y_low));
	enc42 g2(.i(i[7:4]),.y(y_high));

	assign w= |i[7:4];
	assign y[2]=w;
	assign y[1:0]=w?y_high:y_low;
endmodule
