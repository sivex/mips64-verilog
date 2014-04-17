////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Kevin Sears
//
// Create Date: 17:30:30 04/16/2014
// Module Name: mux_64bit
// Description: 64 bit two to one multiplexer
////////////////////////////////////////////////////////////////////////////////
module mux_64bit(a, b, ctrl, out);

	input [63:0] a, b;
	input ctrl;
	output [63:0] out;

	// If ctrl = 1 -> a
	// If ctrl = 0 -> b
	assign out = (ctrl) ? (a) : (b);

endmodule
