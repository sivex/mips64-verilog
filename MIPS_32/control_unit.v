////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro, Kevin Sears, Griffin Yourick, Aaron David
//
// Create Date: 18:02:28 04/16/2014
// Module Name: control_unit
// Description: Control unit for the 64 bit MIPS CPU
////////////////////////////////////////////////////////////////////////////////
module control_unit( inst, RegDst, RegWrite, ALUSrc, ALUOp, MemWrite, MemRead, MemToReg, BranchEq, BranchNeq, Jump);

	input [5:0] inst;
	output reg RegDst, RegWrite, ALUSrc, MemWrite, MemRead, MemToReg, BranchEq, BranchNeq, Jump;
	output reg [1:0] ALUOp;

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
	always@* begin //  changes at input change
	
	RegDst=0;RegWrite=0;ALUSrc=0;MemWrite=0;MemRead=0;MemToReg=0;BranchEq=0;BranchNeq=0;Jump=0;
		
		//any R-type (add)
		if(inst == 6'b000000) begin
			ALUSrc = 0;
			RegWrite = 1;
			ALUOp = 2'b10;
			MemWrite = 0;
			MemToReg = 0;
			RegDst = 1;
		end
		//addi
		else if (inst == 6'b001000) begin
			RegWrite = 1;
			RegDst = 0;
			ALUSrc = 1;
			MemWrite = 0;
			MemToReg = 0;
			ALUOp = 2'b00;
		end
		//lw
		else if (inst == 6'b100011) begin
			RegWrite = 1;
			RegDst = 0;
			ALUSrc = 1;
			MemWrite = 0;
			MemToReg = 1;
			ALUOp = 2'b00;
		end
		//sw
		else if (inst == 6'b101011) begin
			RegWrite = 0;
			RegDst = 0;
			ALUSrc = 1;
			MemWrite = 1;
			MemToReg = 0;
			ALUOp = 2'b00;
		end
		//branch if equal
		else if (inst == 6'b000100) begin // not correct
			RegWrite = 0;
			RegDst = 0;
			ALUSrc = 0;
			MemWrite = 0;
			MemToReg = 0;
			ALUOp = 2'b01;
			BranchEq = 1;
		end
		//bne
		else if(inst == 6'b000101) begin // not correct
			RegWrite = 0;
			RegDst = 0;
			ALUSrc = 0;
			MemWrite = 0;
			MemToReg = 0;
			ALUOp = 2'b01;
			BranchNeq = 1;
		end
		//jmp 
		else if(inst == 6'b000010) begin // not correct
			Jump = 1;
		end
	end

endmodule
