////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro, Aaron David, Griffin Yourick, Kevin Sears
//
// Create Date: 21:52:13 04/02/2014
// Module Name: add_One
// Description: Adds four to a given bit size of an input value
////////////////////////////////////////////////////////////////////////////////
module add_One(a, outA);

	// Parameter for setting value
	parameter SIZE = 32;

	// Set a and out the given size
	input [(SIZE-1):0] a;
	output [(SIZE-1):0] outA;

	// Add 1 to a and assign out;
	assign outA = a + 1;

endmodule
