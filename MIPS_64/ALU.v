//////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro
// 
// Create Date:    17:41:43 04/05/2014 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 	ALU for a MIPS machine. Contains options for AND, OR, NOR, ADD, 
//						SUB, MULT, and EQ
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(control, a, b, out, zero, overflow);
	
	// Parameterized input and output bit length
	parameter SIZE = 64;
	
	// Inputs and outputs
	input [3:0] control;
	input [(SIZE-1):0] a,b;
	output reg [(SIZE-1):0] out;
	output reg overflow;
	output zero;
	
	// Register for collecting the high 32 bits of mult
	reg [(SIZE-1):0] high_mult;

	//Assign zero is true if out is 0
	assign zero = (out == 0); 
	
	// Cases for ALU
	always @(control, a, b) begin 
	
		case (control)
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
							// Equality
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
