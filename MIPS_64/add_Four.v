////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro
//
// Create Date: 21:52:13 04/02/2014
// Module Name: add_Four
// Description: Adds four to a given bit size of an input value
////////////////////////////////////////////////////////////////////////////////
module add_Four(a, out);

	// Parameter for setting value
	parameter SIZE = 32;

	// Set a and out the given size
	input [(SIZE-1):0] a;
	output [(SIZE-1):0] out;

	// Add 4 to a and assign out;
	assign out = a + 4;

endmodule
