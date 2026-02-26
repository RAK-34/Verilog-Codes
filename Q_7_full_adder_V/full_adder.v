//where as in parameterized full adder if we propagate the previous stage carry-output as carryin of next stage then it is called ripple carry adder
//(or) carry propagation occurs from lsb to msb
module n_bit_fa(a,b,c,sum,carry);
	parameter N=3;
	input [N-1:0]a,b;
	input c;
	`ifdef BEHAV
		output reg [N-1:0]sum;
		output reg carry;
	`else
		output [N-1:0]sum;
		output carry;
		wire [N-1:0]c_t;
	`endif

	`ifdef BEHAV
		initial $display("full_adder in behavioural model");
		always@(*) begin
			{carry,sum}=a+b+c;
		end
	`elsif DATA
		initial $display("full_adder in data flow model");
		assign {carry,sum}=a+b+c;
	`else
		initial $display("full_adder in gate level model");
		genvar i;
		not g0(c_t[0],~c);
		for(i=0;i<N;i=i+1) begin
			fa g1(.i0(a[i]),.i1(b[i]),.i2(c_t[i]),.s(sum[i]),.c(c_t[i+1]));
		end
		not g2(carry,~c_t[N-1]);
	`endif
endmodule
