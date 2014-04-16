////////////////////////////////////////////////////////////////////////////////
// Company: UMBC
// Engineer: Griffin Yourick
//
// Create Date: 7:07:00 04/10/2014
// Module Name: instruction_MEM
// Description: Instruction memory module for the MIPS 64-bit CPU
////////////////////////////////////////////////////////////////////////////////

module instruction_MEM(index, instruction, en, wr, clk);

	// Make parameter values for easy RAM size changes
	parameter DATA_BITS = 64;
	parameter IMEM_SIZE = 128

	// Inputs/Outputs defined
	input [5:0] index;
	input en;			// Enable
	input wr;			// Write
	input clk;			// Clock
	output [(DATA_BITS-1):0] instruction;

	// Instruction RAM register
	reg [(DATA_BITS-1):0] instruction_RAM [(IMEM_SIZE-1):0];

	// Main RAM code
	always@ (posedge clk) begin
		// When en is on, the RAM is active.
		if (en) begin
			if (wr) begin
				// TODO: implement copying instructions (code) into IMEM
			end
			// Output the instruction from the given index (!wr)
			else begin
				instruction <= instruction_RAM[index];
			end
		end
	end

endmodule
