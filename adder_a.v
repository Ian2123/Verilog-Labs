//Lab6 | Section A | Pipelined Adder
`timescale 1ns/1ns
module adder_a(clk, n1, n2, sum);

input clk;
input signed [15:0] n1, n2;
output reg signed [16:0] sum;

wire signed [16:0] sum_i_next;

assign sum_i_next = n1 + n2;

always @ (posedge clk)
	sum <= sum_i_next;

endmodule
