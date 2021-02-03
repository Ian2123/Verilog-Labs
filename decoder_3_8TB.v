// Lab 2 | 3-8 Behavioral Decoder Testbench
`timescale 1ns/1ns
module decoder_3_8TB();

reg [2:0] inputs;
reg enable;

wire [7:0] struct_out;
wire [7:0] behav_out;

//Instantiations
decoder_3_8_behav inst_b ( .en(enable), .I(inputs), .D(behav_out));
decoder_3_8_struct inst_s ( .en(enable), .I(inputs), .D(struct_out));

initial begin: apply_stimulus
	reg [4:0] invect;
	for(invect = 0; invect<16; invect=invect+1) begin
		{enable, inputs[2], inputs[1], inputs[0]} = invect[4:0];
		#5 $display("Structural: EN=%b Inputs=%b, Outputs=%b", enable, inputs[2:0], struct_out[7:0]);
	end
	for(invect = 0; invect<16; invect=invect+1) begin
		{enable, inputs[2], inputs[1], inputs[0]} = invect[4:0];
		#5 $display("Behavioral: EN=%b Inputs=%b, Outputs=%b", enable, inputs[2:0], behav_out[7:0]);
	end
end
endmodule
