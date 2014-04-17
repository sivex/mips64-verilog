////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Kevin Sears
//
// Create Date: 17:21:03 04/16/2014
// Module Name: mux_5bit
// Description: Multiplexer for 5 bit 2 input and 1 output
////////////////////////////////////////////////////////////////////////////////
module mux_5bit(a, b, ctrl, out);

	input [4:0] a, b;
	input ctrl;
	output [4:0] out;

	// If ctrl = 1 -> a
	// If ctrl = 0 -> b
	assign out = (ctrl) ? (a) : (b);

endmodule
