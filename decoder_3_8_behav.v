// Lab 2 | 3-8 decoder implemented using behavioral modeling.
`timescale 1ns/1ns
module decoder_3_8_behav(I[2:0], en, D[7:0]);
input [2:0] I;
input en;
output reg [7:0] D;

always @ (I or en) begin
   case({en, I})
		4'b1000: D = 8'b00000001;
		4'b1001: D = 8'b00000010;
		4'b1010: D = 8'b00000100;
		4'b1011: D = 8'b00001000;
		4'b1100: D = 8'b00010000;
		4'b1101: D = 8'b00100000;
		4'b1110: D = 8'b01000000;
		4'b1111: D = 8'b10000000;
		default: D = 8'b00000000; //When disabled.
	endcase
end
endmodule
