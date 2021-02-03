// Lab 2 | 3-8 Decoder implemented using structural modeling
`timescale 1ns/1ns
module decoder_3_8_struct(en, I[2:0], D[7:0]);

input [2:0]I;
input en;
output [7:0]D;

wire [2:0]I_not;

not(I_not[0], I[0]);
not(I_not[1], I[1]);
not(I_not[2], I[2]);

and(D[0], en, I_not[2], I_not[1], I_not[0]);
and(D[1], en, I_not[2], I_not[1], I[0]);
and(D[2], en, I_not[2], I[1], I_not[0]);
and(D[3], en, I_not[2], I[1], I[0]);
and(D[4], en, I[2], I_not[1], I_not[0]);
and(D[5], en, I[2], I_not[1], I[0]);
and(D[6], en, I[2], I[1], I_not[0]);
and(D[7], en, I[2], I[1], I[0]);
endmodule
