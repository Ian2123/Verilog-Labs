// Lab 5 | Section B | sqrt rom Testbench

module sqrt_ROMTB();

reg[3:0] n;
wire[31:0] sqrt;

sqrt_ROM(.n(n), .sqrto(sqrt));

initial begin
	$monitor("n = %b = %d, sqrt = %f", n, n, $bitstoshortreal(sqrt));
end

initial begin: apply_stimulus
	reg[4:0] i;
	for(i=0; i<=15; i=i+1) begin
		n = i;
		#1;
	end
	#1;
end
endmodule
