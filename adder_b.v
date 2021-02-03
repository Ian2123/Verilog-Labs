//Lab6 | Section B | Pipelined split sum adder
`timescale 1ns/1ns
module adder_b(clk, n1, n2, sum);

input clk;
input signed [15:0] n1, n2;
output reg signed [16:0] sum;

reg signed [8:0] sum_LSB_1;
reg signed [15:8] n1_reg1, n2_reg1;

wire signed [8:0] sum_LSB;
wire signed [16:8] sum_MSB;
wire signed [16:0] sum_next;

assign sum_LSB = n1[7:0] + n2[7:0]; //Add least 8 sig bits.

always @ (posedge clk) begin
	sum_LSB_1 = sum_LSB;
	n1_reg1 <= n1[15:8];
	n2_reg1 <= n2[15:8];
end

assign sum_MSB = n1_reg1 + n2_reg1 + sum_LSB[8];
assign sum_next = sum_MSB + sum_LSB;

always @ (posedge clk) begin
	sum <= sum_next;
end
endmodule
