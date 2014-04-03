//////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro
// 
// Create Date:    21:52:13 04/02/2014 
// Design Name: 
// Module Name:    add_Four 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 	Adds four to a given bit size of an input value
//
//
//////////////////////////////////////////////////////////////////////////////////
module add_Four(a, out);
		
	// Parameter for setting value
	parameter SIZE = 64;
	
	input [(SIZE-1):0] a;		// Set a and out the given size
	output [(SIZE-1):0] out;

	assign out = a + 4;		// Add 4 to a and assign out;
	
endmodule
