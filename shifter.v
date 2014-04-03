//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 	Paul Giro
// 
// Create Date:    21:49:26 04/02/2014 
// Design Name: 
// Module Name:    shifter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 	Shifts the bit stream by a parameter value
//
//
//////////////////////////////////////////////////////////////////////////////////
module shifter(a, out);
	
	// Parameters for setting values
	parameter SIZE = 64;
	parameter SHIFT_N = 2;
	
	input [(SIZE-1):0] a;			// input and output same bit length
	output [(SIZE-1):0] out;

	assign out = a << SHIFT_N;		// shift left by given value
	
endmodule
