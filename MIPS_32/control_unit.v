////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro, Kevin Sears
//
// Create Date: 18:02:28 04/16/2014
// Module Name: control_unit
// Description: Control unit for the 64 bit MIPS CPU
////////////////////////////////////////////////////////////////////////////////
module control_unit(clk, inst, zero, ALUSrc, ALUOp,
							PCSrc, PCen, MemWrite, MemRead, MemToReg);
	input clk;
	input [5:0] inst;
	output RegDst, RegWrite, ALUSrc, PCSrc, PCen, MemWrite, MemRead, MemToReg, BranchEq, BranchNeq, Jump;
	output [1:0] ALUOp;

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
	
	RegDst=0;RegWrite=0;ALUSrc=0;MemWrite=0;MemRead=0;MemToReg=0;Branch=0;
		
		//any R-type (add)
		if(inst == 000000) begin
			ALUSrc = 0;
			RegWrite = 0;
			ALUOp = 2'b10;
			MemWrite = 0;
			MemToReg = 0;
			RegDst = 1;
			Branch = 0;
		end
		//addi
		else if (inst == 001000) begin
			RegWrite = 1;
			RegDst = 0;
			ALUSrc = 1;
			MemWrite = 0;
			MemToReg = 0;
			ALUOp = 10;
		end
		//lw
		else if (inst == 100011) begin
			RegWrite = 1;
			RegDst = 0;
			ALUSrc = 1;
			Branch = 0;
			MemWrite = 0;
			MemToReg = 1;
			ALUOp = 2'b00;
		end
		//sw
		else if (inst == 101011) begin
			RegWrite = 0;
			RegDst = 0;
			ALUSrc = 1;
			Branch = 0;
			MemWrite = 1;
			MemToReg = 0;
			ALUOp = 2'b00;
		end
		
	end

endmodule
