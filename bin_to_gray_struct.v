// Lab 1 | Binary to gray code converter - structural implementation
`timescale 1ns/1ns
module bin_to_gray_struct(x1, x2, x3, x4, z1, z2, z3, z4);

input x1, x2, x3, x4;
output z1, z2, z3, z4;

buf(z1,x1);
xor(z2,x1,x2);
xor(z3,x2,x3);
xor(z4,x3,x4);

endmodule
