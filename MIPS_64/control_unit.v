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

	parameter SIZE = 32;

	input clk;
	input [(SIZE-1):0] inst;
	input zero;
	output RegDst, RegWrite, ALUSrc, PCSrc, PCen, MemWrite, MemRead, MemToReg;
	output [3:0] ALUOp;

	// type of instruction
	reg R,I,J; 

	reg[4:0] sourceReg, sourceReg2, destReg, shift;
	reg[5:0] funct;
	reg[15:0] immediateData;
	reg[25:0] jumpData;

	// inst.	OPCODE	TYPE
	// add 	100000	R
	// addi	001000	I
	// lw		100011	I
	// sw		101011	I
	// jmp	000010	J
	// beq	000100	I
	// bne	000101	I
	//
	// determine type of instruction
	always @(posedge clk) begin
		reg opCode = inst[31:26];
		if(opCode == 100000) begin
			R = 1;
			I = 0;
			J = 0;
			end
		else if((opCode == 100011)||(opCode == 101011)||(opCode == 000100)||(opCode == 000101)) begin  
			R = 0;
			I = 1;
			J = 0;
			end
		else if((opCode == 000010)) begin
			R = 0;
			I = 0;
			J = 1;
			end
		end
	// parse parts of instruction
	always @(posedge clk) begin
		// for all reg opCode = inst[31:26];

		// for Register-Type
		if (R) begin
			reg sourceReg = inst[25:21];
			reg sourceReg2 = inst[20:16];
			reg destReg = inst[15:11];
			reg shift = inst[10:6];
			reg funct = inst[5:0];
			end

		// for Immediate-Type
		else if (I) begin 
			reg sourceReg = inst[25:21];
			reg sourceReg2 = inst[20:16];
			reg immediateData = inst[15:0];
			end
		
		// for J- Type
		else if (J) begin
			reg jumpData = inst[25:0];
			end
		end

endmodule
