`timescale 1ns/1ns
module adder_bTB();

reg clk;
reg signed [15:0] n1, n2;

wire signed [16:0] sum;

adder_b(.clk(clk), .n1(n1), .n2(n2), .sum(sum));

initial begin 
	clk = 0;
	forever #1 clk = ~clk;
end

initial begin: apply_stimulus
	integer i;
	n1 = 0;
	n2 = 0;
	for(i=1; i<=10; i=i+1) begin
		#2;
		n1 = i;
		n2 = i;
	end
	#2;
end
endmodule
