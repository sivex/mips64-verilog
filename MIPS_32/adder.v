////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro, Aaron David, Griffin Yourick, Kevin Sears
//
// Create Date: 21:46:59 04/02/2014
// Module Name: adder
// Description: Basic two input adder with adjustable size
////////////////////////////////////////////////////////////////////////////////
module adder(a, b, outA);

	// Parameter for setting value
	parameter SIZE = 32;

	// Set a and b the given size
	input [(SIZE-1):0] a, b;
	output [(SIZE-1):0] outA;

	// Add a and b
	assign outA = a + b;

endmodule
