////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: 	Paul Giro
//
// Create Date: 21:49:26 04/02/2014
// Module Name: shifter
// Description: Shifts the bit stream by a parameter value
////////////////////////////////////////////////////////////////////////////////
module shifter(a, out);

	// Parameters for setting values
	parameter SIZE = 64;
	parameter SHIFT_N = 2;

	// input and output same bit length
	input [(SIZE-1):0] a;
	output [(SIZE-1):0] out;

	// shift left by given value
	assign out = a << SHIFT_N;

endmodule
