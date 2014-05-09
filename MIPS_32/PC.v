////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro, Kevin Sears, Griffin Yourick, Aaron David
//
// Create Date: 18:32:15 04/16/2014
// Module Name: PC
// Description: PC register for holding the next instruction index
////////////////////////////////////////////////////////////////////////////////
module PC(clk, index_in, index_out, rst);

	parameter SIZE = 32;

	input clk;
	input rst;
	input [(SIZE-1):0] index_in;
	output reg [(SIZE-1):0] index_out;

	// Register for index of the next instruction
	always @(posedge clk or posedge rst) begin

		//reset program counter on rst
		if (rst) begin
		index_out <= 32'b0;
		end
		//otherwise output previous index + 4
		else begin
			index_out <= index_in;
		end
	end

endmodule
