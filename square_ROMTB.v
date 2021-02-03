// Lab 5 | Section A | Testbench

module square_ROMTB();

reg [3:0] n;
reg sign;
wire [7:0] square;

square_ROM(.n(n), .sign(sign), .square(square));

initial begin
	$monitor("n = %b = %d, sign = %b, square = %d", n, n, sign, square);
end

initial begin: apply_stimulus
	reg[4:0] i;
	n = 0;
	sign = 0; //positive only (0-15)
	for(i=0; i<=15; i=i+1) begin
		#1 n = i;
	end

	#1 n = 0;
	sign = 1; //(-8-+7) n=9 square is 1 since 9 is 1001 = -1 if msb is sign bit.
	for(i=0; i<=15; i=i+1) begin
		#1 n = i;
	end
end
endmodule
