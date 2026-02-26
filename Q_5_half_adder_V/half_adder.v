module n_bit_ha(a,b,sum,carry);
	parameter N=3;
	input [N-1:0]a;
	input b;
	`ifdef BEHAV
		output reg [N-1:0]sum;
		output reg carry;
	`else
		output [N-1:0]sum;
		output carry;
		wire [N-1:0]c_t;
	`endif

	`ifdef BEHAV
		initial $display("half_adder in behavioural model");
		always@(*) begin
			{carry,sum}=a+b;
		end
	`elsif DATA
		initial $display("half_adder in data flow model");
		assign {carry,sum}=a+b;
	`else
		initial $display("half_adder in gate level model");
		genvar i;
		not g0(c_t[0],~b);
		for(i=0;i<N;i=i+1) begin
			ha g1(.i0(a[i]),.i1(c_t[i]),.s(sum[i]),.c(c_t[i+1]));
		end
		not g2(carry,~c_t[N-1]);
	`endif
endmodule
