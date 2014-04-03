////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro
//
// Create Date: 21:54:33 04/02/2014
// Module Name: sign_Extend
// Description: Sign extends a value by given parameters
////////////////////////////////////////////////////////////////////////////////
module sign_Extend(a, out);

	// Parameters for setting values
	parameter SIZE_IN = 32;
	parameter SIZE_OUT = 64;

	// Input and output set as given bit lengths defined in parameters
	input [(SIZE_IN-1):0] a;
	output [(SIZE_OUT-1):0] out;

	// Concatenate / sign extend by the size in value
	assign out = {{SIZE_IN{a[(SIZE_IN-1)]}}, a};

endmodule
