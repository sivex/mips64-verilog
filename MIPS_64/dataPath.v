//////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro, Kevin Sears
// 
// Create Date:    18:42:10 04/16/2014 
// Design Name: 
// Module Name:    dataPath
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 	Data Path for the 64 Bit Single-Cycle CPU
//
//
//////////////////////////////////////////////////////////////////////////////////
module dataPath(clk, imem, dmem);

	parameter SIZE = 64;
	
	input clk;
	input [(SIZE-1):0] imem;
	output [(SIZE-1):0] dmem;
	

endmodule
