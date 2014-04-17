////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro, Kevin Sears
//
// Create Date: 18:02:28 04/16/2014
// Module Name: control_unit
// Description: Control unit for the 64 bit MIPS CPU
////////////////////////////////////////////////////////////////////////////////
module control_unit(clk, inst, zero, RegDst, RegWrite, ALUSrc, ALUOp,
							PCSrc, PCen, MemWrite, MemRead, MemToReg);

	parameter SIZE = 64;

	input clk;
	input [(SIZE-1):0] inst;
	input zero;
	output RegDst, RegWrite, ALUSrc, PCSrc, PCen, MemWrite, MemRead, MemToReg;
	output [3:0] ALUOp;

endmodule
