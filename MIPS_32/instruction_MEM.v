////////////////////////////////////////////////////////////////////////////////
// Company: UMBC
// Engineer: Griffin Yourick, Paul Giro, Kevin Sears, Aaron David
//
// Create Date: 7:07:00 04/10/2014
// Module Name: instruction_MEM
// Description: Instruction memory module for the MIPS 32-bit CPU
////////////////////////////////////////////////////////////////////////////////

module instruction_MEM(index, instruction, clk);



	// Make parameter values for easy RAM size changes
	parameter DATA_BITS = 32;
	parameter IMEM_SIZE = 128;

	// Inputs/Outputs defined
	input [(DATA_BITS-1):0] index;
	input clk;			// Clock
	output reg [(DATA_BITS-1):0] instruction;

	// Instruction RAM register
	reg [(DATA_BITS-1):0] instruction_RAM [(IMEM_SIZE-1):0];

	initial begin
		$readmemb("instructionsTest.txt", instruction_RAM); // edited
	end

	// Output instruction at given index on positive edge
	always@ (posedge clk) begin

		instruction <= instruction_RAM[index];
	
	end

endmodule
