module bcd(a,b,cin,sum,cout);
	input [3:0]a,b;
	input cin;
	output reg [3:0]sum;
	output reg cout;

	reg [4:0]s_temp;

	always@(*)begin
		s_temp=a+b+cin;
		if(s_temp>9) begin
			sum=s_temp+6;
			cout=1;
		end
		else {cout,sum}=s_temp;
	end
endmodule
