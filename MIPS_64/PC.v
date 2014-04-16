//////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro, Kevin Sears
// 
// Create Date:    18:32:15 04/16/2014 
// Design Name: 
// Module Name:    PC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 	PC register for holding the next instruction index
//
//
//////////////////////////////////////////////////////////////////////////////////
module PC(clk, PCen, index_in, index_out);

	parameter SIZE = 64; 
	
	input clk;
	input PCen;
	input [(SIZE-1):0] index_in;
	output reg [(SIZE-1):0] index_out;
	
	// Register for index of the next instruction
	always @(posedge clk) begin
	
		if (PCen) begin
			index_out <= index_in;
		end
		
		else begin
			index_out <= index_out;
		end
	end

endmodule
