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
module ALU(ALUOp, a, b, out, zero, overflow);

	// Parameterized input and output bit length
	parameter SIZE = 32;

	// Inputs and outputs
	input [3:0] ALUOp;
	input [(SIZE-1):0] a,b;
	output reg [(SIZE-1):0] out;
	output reg overflow;
	output zero;

	// Register for collecting the high 32 bits of mult
	reg [(SIZE-1):0] high_mult;

	// Assign true if out is 0
	assign zero = (out == 0);

	// Cases for ALU
	always @(ALUOp, a, b) begin
		case (ALUOp)
			4'b0001: begin
				// AND
				out <= a & b;
			end
			4'b0010: begin
				// OR
				out <= a | b;
			end
			4'b0011: begin
				// ADD
				{overflow,out} <= a + b;
			end
			4'b0100: begin
				// SUB
				{overflow,out} <= a - b;
			end
			4'b0101: begin
				// EQ
				out <= (a == b) ? 1 : 0;
			end
			4'b0110: begin
				// MULT
				{high_mult,out} <= a * b;
			end
			4'b0111: begin
				// NOR
				out <= ~(a | b);
			end
			default: begin
				// Default to 0 (should not happen)
				out <= 0;
			end
		endcase
	end
endmodule
