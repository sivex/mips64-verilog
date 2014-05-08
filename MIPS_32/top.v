`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:13 05/06/2014 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top( clk ,rst, readDataMem, ALUa, ALUb, writeData, instruction
    );

	input clk,rst;
	
	
	/////////////wire declarations//////////////////////////////
	//
	// in and out of PC
	wire [31:0] pcIn, pcOut; 
	// out of instruction mem
	output [31:0] instruction; 
	 
	// countrol output
	wire ALUSrc, memWrite, memRead, memToReg, regDst, regWrite, branchEq, branchNeq, jump; 
	wire [1:0] ALUOp;
	
	// 5bitmux output
	wire [4:0] writeReg; 
	
	// signExtend Out
	wire [31:0] signExtendOut;
	
	// add One output
	wire [31:0] noBranchInstruction;
	
	// shifter output
	wire [31:0] shiftOut;
	
	// adder output
	wire [31:0] branchAddress;
	
	// control signals
	wire branchCtrl; 
	wire [3:0] ALUCtrl; 
	
	// register outputs
	output [31:0] ALUa; // readData1
	wire [31:0] readData2; // readData2
	
	// alu source mux outputs
	output [31:0] ALUb;
	
	// ALU Output
	wire [31:0] ALUOutput;
	wire zero;
	wire overflow;
	
	// mem to reg mux output
	output [31:0] writeData;
	
	// data memory output
	output [31:0] readDataMem;
	
	// branch logic
	assign and2 = (zero & branchEq);
	assign and1 = ((!zero) & branchNeq);
	assign branchCtrl = (and1 | and2);
	
	// jump logic
	wire [31:0] jumpAddress;
	assign jumpAddress = {{noBranchInstruction[31:26]},{instruction[25:0]}};
	wire [31:0] branchOut;
	
	
	// module declarations /////////////////////////////////////
	//
	// Instantiate the program counter
	PC programCounter (
		 .clk(clk), 
		 .index_in(pcIn), 
		 .index_out(pcOut), 
		 .rst(rst)
		 );
		 
		 
	// Instantiate the control unit
	control_unit controlUnit (
		 .inst(instruction[31:26]), 
		 .RegDst(regDst), 
		 .RegWrite(regWrite), 
		 .ALUSrc(ALUSrc), 
		 .ALUOp(ALUOp), 
		 .MemWrite(memWrite), 
		 .MemRead(memRead), 
		 .MemToReg(memToReg), 
		 .BranchEq(branchEq), 
		 .BranchNeq(branchNeq), 
		 .Jump(jump)
		 );

	// Instantiate instruction Memory
	instruction_MEM instructionMemory (
		 .index(pcOut), 
		 .instruction(instruction), 
		 .clk(clk)
		 );

	// Instantiate the multiplexer
	mux_5bit fiveBitMux (
		 .a(instruction[20:16]), 
		 .b(instruction[15:11]), 
		 .ctrl(regDst), 
		 .outM(writeReg)
		 );

	// Instantiate the sign extend
	sign_Extend signExtend (
		 .a(instruction[15:0]), 
		 .outE(signExtendOut)
		 );

		// Instantiate the PC increment 
	add_One programCounterIncrement (
		 .a(pcOut), 
		 .outA(noBranchInstruction)
		 );

	// Instantiate the branch shift
	shifter branchShifter (
		 .a(signExtendOut), 
		 .outS(shiftOut)
		 );

	// Instantiate the branch address computation
	adder branchAddressAdder (
		 .a(noBranchInstruction), 
		 .b(shiftOut), 
		 .outA(branchAddress)
		 );
		 
	// Instantiate the branch multiplexer
	mux_32bit branchMux (
		 .a(noBranchInstruction), 
		 .b(branchAddress), 
		 .ctrl(branchCtrl),
		 .outM(branchOut)
		 );

	// Instantiate the module
	mux_32bit jumpMux (
		 .a(branchOut), 
		 .b(jumpAddress), 
		 .ctrl(jump), 
		 .outM(pcIn)
		 );

		// Instantiate the ALU control
	ALU_Control ALUControl (
		 .ALUOp(ALUOp), 
		 .function_field(instruction[5:0]), 
		 .ALUCtrl(ALUCtrl)
		 );

	// Instantiate the ALU
	ALU ArithmeticLogicUnit (
		 .ALUOp(ALUCtrl), 
		 .a(ALUa), 
		 .b(ALUb), 
		 .outCalc(ALUOutput), 
		 .zero(zero), 
		 .overflow(overflow)
		 );

	// Instantiate the registers
	registers registersModule (
		 .readReg1(instruction[25:21]), 
		 .readReg2(instruction[20:16]), 
		 .writeReg(writeReg), 
		 .writeData(writeData), 
		 .readData1(ALUa), 
		 .readData2(readData2), 
		 .regWrite(regWrite), 
		 .clk(clk)
		 );

	// Instantiate the data memory
	data_MEM dataMemory (
		 .address(ALUOutput), 
		 .writeData(readData2), 
		 .readDataMem(readDataMem), 
		 .memWrite(memWrite), 
		 .memRead(memRead), 
		 .clk(clk)
		 );

	// Instantiate the ALU source Mux
	mux_32bit ALUSrcMux (
		 .a(readData2), 
		 .b(signExtendOut), 
		 .ctrl(ALUSrc), 
		 .outM(ALUb)
		 );

	// Instantiate the memory to register Mux
	mux_32bit memToRegMux (
		 .a(ALUOutput), 
		 .b(readDataMem), 
		 .ctrl(memToReg), 
		 .outM(writeData)
		 );


endmodule
