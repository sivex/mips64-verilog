////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Aaron David, Paul Giro, Kevin Sears, Griffin Yourick
//
// Create Date: 17:21:03 04/16/2014
// Module Name: mux_5bit
// Description: Multiplexer for 5 bit 2 input and 1 output
////////////////////////////////////////////////////////////////////////////////
module mux_5bit(a, b, ctrl, outM);

	input [4:0] a, b;
	input ctrl;
	output [4:0] outM;

	// If ctrl = 1 -> b
	// If ctrl = 0 -> a
	assign outM = (ctrl) ? b : a;

endmodule
