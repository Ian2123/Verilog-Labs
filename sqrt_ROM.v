// Lab 5 | Section B | Square root ROM

module sqrt_ROM(n, sqrto);

input[3:0] n; //unsigned number
output reg[31:0] sqrto;

real sqrt;
wire[1:0] sqrt_int;
wire[29:0] sqrt_dp;

always @ (n) begin
	case(n+1)
		0: sqrt <= 0.000;
		1: sqrt <= 1.000;
		2: sqrt <= 1.414;
		3: sqrt <= 1.732;
		4: sqrt <= 2.000;
		5: sqrt <= 2.236;
		6: sqrt <= 2.448;
		7: sqrt <= 2.645;
		8: sqrt <= 2.828;
		9: sqrt <= 3.000;
		10: sqrt <= 3.162;
		11: sqrt <= 3.316;
		12: sqrt <= 3.464;
		13: sqrt <= 3.605;
		14: sqrt <= 3.741;
		15: sqrt <= 3.872;
		default: sqrt <= 0.000;
	endcase
	sqrto = $shortrealtobits(sqrt);
end

assign sqrt_int = sqrto[31:30];
assign sqrt_dp = sqrto[29:0];
endmodule
