`timescale 1ns/1ns
module adder_aTB();

reg clk;
reg signed [15:0] n1, n2;

wire signed [16:0] sum;

adder_a(.clk(clk), .n1(n1), .n2(n2), .sum(sum));

initial begin 
	clk = 0;
	forever #1 clk = ~clk;
end

initial begin
	$monitor("n1 = %d, n2 = %d, sum = %d", n1, n2, sum);
end

initial begin: apply_stimulus
	integer i;
	n1 = -6;
	n2 = -6;
	for(i=-5; i<=5; i=i+1) begin
		#2;
		n1 = i;
		n2 = i;
	end
	#2;
end
endmodule
