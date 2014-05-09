////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro
//
// Create Date: 17:41:43 04/05/2014
// Module Name: ALU
// Description: ALU for a MIPS machine. Contains options for AND, OR, NOR, ADD, 
//		SUB, MULT, and EQ
//		control: 1 - AND	|	5 - EQ
//					2 - OR	|	6 - MULT
//					3 - ADD	|	7 - NOR
//					4 - SUB
////////////////////////////////////////////////////////////////////////////////
module ALU(ALUOp, a, b, outCalc, zero, overflow);

	// Parameterized input and output bit length
	parameter SIZE = 32;

	// Inputs and outputs
	input [3:0] ALUOp; // ALUCTRL
	input [(SIZE-1):0] a,b;
	output reg [(SIZE-1):0] outCalc;
	output reg overflow;
	output zero;

	// Register for collecting the high 32 bits of mult
	//reg [(SIZE-1):0] high_mult;

	// Assign true if out is 0
	assign zero = (outCalc == 0);

	// Cases for ALU
	always @(ALUOp, a, b) begin
		case (ALUOp)
			4'b0000: begin
				// AND
				outCalc <= a & b;
			end
			4'b0001: begin
				// OR
				outCalc <= a | b;
			end
			4'b0010: begin
				// ADD
				{overflow,outCalc} <= a + b;
			end
			4'b0110: begin
				// SUB
				{overflow,outCalc} <= a - b;
			end
			default: begin
				// Default to 0 (should not happen)
				outCalc <= 0;
			end
		endcase
	end
endmodule
