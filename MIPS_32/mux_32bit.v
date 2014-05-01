// 32-bit two-to-one multiplexer
module mux_32bit(a, b, ctrl, out);

	input [31:0] a, b;
	input ctrl;
	output [31:0] out;

	// If ctrl = 1 -> a
	// If ctrl = 2 -> b
	assign out = (ctrl) ? a : b;

endmodule
