////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: 	Paul Giro
//
// Create Date: 21:49:26 04/02/2014
// Module Name: shifter
// Description: Shifts the bit stream by a parameter value
////////////////////////////////////////////////////////////////////////////////
module shifter(a, outS);

	// Parameters for setting values
	parameter SIZE = 32;
	parameter SHIFT_N = 2;

	// input and output same bit length
	input [(SIZE-1):0] a;
	output [(SIZE-1):0] outS;

	// shift left by given value
	assign outS = a << SHIFT_N;

endmodule
