// 32-bit two-to-one multiplexer
module mux_32bit(a, b, ctrl, outM);

	input [31:0] a, b;
	input ctrl;
	output [31:0] outM;

	// If ctrl = 0 -> a
	// If ctrl = 1 -> b
	assign outM = (ctrl) ? b : a;

endmodule
