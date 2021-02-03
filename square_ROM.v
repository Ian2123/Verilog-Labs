// Lab 5 | Section A | ROM module that sqaures 4 bit input 'n'.

module square_ROM(n, sign, square);

input [3:0] n; //number.
input sign;    //signed number if 1, unsigned if 0.
output reg [7:0] square;

always @ (n or sign) begin
	if(sign==0) begin //if unsigned (0-15)
		case(n)
			0: square <= 0;
			1: square <= 1;
			2: square <= 4;
			3: square <= 9;
			4: square <= 16;
			5: square <= 25;
			6: square <= 36;
			7: square <= 49;
			8: square <= 64;
			9: square <= 81;
			10: square <= 100;
			11: square <= 121;
			12: square <= 144;
			13: square <= 169;
			14: square <= 196;
			15: square <= 255;
			default: square <= 0;
		endcase
	end
	else begin //if signed (-8-+7)
		case(n)
			0: square <= 0;
			1: square <= 1;
			2: square <= 4;
			3: square <= 9;
			4: square <= 16;
			5: square <= 25;
			6: square <= 36;
			7: square <= 49;
			8: square <= 64;  //-8
			9: square <= 1;   //-1
			10: square <= 4;  //-2
			11: square <= 9;  //-3
			12: square <= 16; //-4
			13: square <= 25; //-5
			14: square <= 36; //-6
			15: square <= 49; //-7
		endcase
	end
end
endmodule
