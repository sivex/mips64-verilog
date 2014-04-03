//////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro
// 
// Create Date:    21:54:33 04/02/2014 
// Design Name: 
// Module Name:    sign_Extend 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 	Sign extends a value by given parameters
//
//
//////////////////////////////////////////////////////////////////////////////////
module sign_Extend(a, out);

	// Parameters for setting values
	parameter SIZE_IN = 32;
	parameter SIZE_OUT = 64;

	input [(SIZE_IN-1):0] a;							// Input and output set as given bit 
	output [(SIZE_OUT-1):0] out;						// lengths defined in parameters
	
	assign out = {{SIZE_IN{a[(SIZE_IN-1)]}}, a};	// Concatenate / sign extend by 
																// the size in value
	
endmodule
