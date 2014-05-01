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
	input [4:0] inst;
	output RegDst, RegWrite, ALUSrc, PCSrc, PCen, MemWrite, MemRead, MemToReg;
	output [1:0] ALUOp;

	// type of instruction
	reg R,I,J; 

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
		if(inst == 100000) begin
			R = 1;
			I = 0;
			J = 0;
			end
		else if((inst == 100011)||(inst == 101011)||(inst == 000100)||(inst == 000101)) begin  
			R = 0;
			I = 1;
			J = 0;
			end
		else if((inst == 000010)) begin
			R = 0;
			I = 0;
			J = 1;
			end
		end
	// parse parts of instruction
	always @(posedge clk) begin
		// for Register-Type
		if (R) begin
			RegDst = 1;
			ALUSrc = 0;
			MemtoReg = 1;
			ALUOp = 2'b10;
		end
		// for Immediate-Type
		else if (I) begin 

			end
		
		// for J- Type
		else if (J) begin

			end
		end

endmodule
