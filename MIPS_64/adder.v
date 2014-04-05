////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro
//
// Create Date: 21:46:59 04/02/2014
// Module Name: adder
// Description: Basic two input adder with adjustable size
////////////////////////////////////////////////////////////////////////////////
module adder(a, b, out);

	// Parameter for setting value
	parameter SIZE = 64;

	// Set a and b the given size
	input [(SIZE-1):0] a, b;
	output [(SIZE-1):0] out;

	// Add a and b
	assign out = a + b;

endmodule
