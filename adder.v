//////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro
// 
// Create Date:    21:46:59 04/02/2014 
// Design Name: 
// Module Name:    adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 	Basic two input adder with adjustable size
//
//
//////////////////////////////////////////////////////////////////////////////////
module adder(a, b, out);
	
	// Parameter for setting value
	parameter SIZE = 64;
	
	input [(SIZE-1):0] a, b;	// Set a and b the given size
	output [(SIZE-1):0] out;
	
	assign out = a + b;		// Add a and b
	
endmodule
