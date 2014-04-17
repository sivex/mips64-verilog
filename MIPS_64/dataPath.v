//////////////////////////////////////////////////////////////////////////////////
// Company: 	UMBC
// Engineer: 	Paul Giro, Kevin Sears
// 
// Create Date:    18:42:10 04/16/2014 
// Design Name: 
// Module Name:    dataPath
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 	Data Path for the 64 Bit Single-Cycle CPU
//
//
//////////////////////////////////////////////////////////////////////////////////
module dataPath(clk, imem, readDataMem);

	parameter SIZE = 64;
	
	input clk;
	input [(SIZE-1):0] imem;
	output [(SIZE-1):0] readDataMem;
	
	wire index_out;

		PC programCounter (
			 .clk(clk), 
			 .PCen(PCen), 
			 .index_in(index_in), 
			 .index_out(index_out)
			 );

		add_Four addFour (
			 .a(index_out), 
			 .out(outAddFour)
			 );

		instruction_MEM IMEM (
			 .index(index_out), 
			 .instruction(imem), 
			 .en(en), 
			 .wr(wr), 
			 .clk(clk)
			 );

		
		mux_5bit fiveBitMux (
			 .a(instruction), //instruction[20:16]
			 .b(instruction), //instruction[15:11]
			 .ctrl(RegDst), 
			 .out(writeReg)
			 );

		registers register (
			 .readReg1(instruction), //instruction[25:21]
			 .readReg2(instruction), //instruction[20:16]
			 .writeReg(writeReg), 
			 .writeData(writeData), 
			 .readData1(readData1), 
			 .readData2(readData2), 
			 .regWrite(regWrite)
			 );

		sign_Extend singExtend (
			 .a(instruction), //instruction[15:0]
			 .out(sign_ExtendOut)
			 );

		mux_64bit ALUSrcMux (
		 .a(readData2), 
		 .b(sign_ExtendOut), 
		 .ctrl(ALUSrc), 
		 .out(ALUIn)
		 );	

		ALU ALU (
			 .ALUOp(ALUOp), 
			 .a(readData1), 
			 .b(ALUIn), 
			 .out(ALUOut), 
			 .zero(zero), 
			 .overflow(overflow)
			 );

		shifter shifter (
			 .a(sign_ExtendOut), 
			 .out(outTemp)
			 );
		adder adderPC (
			 .a(outTemp), 
			 .b(outAddFour), 
			 .out(outAdderPC)
			 );
		mux_64bit PCSrcMux (
			 .a(outAddFour), 
			 .b(outAdderPC), 
			 .ctrl(PCSrc), 
			 .out(index_in)
			 );

// look over the dataMem logic again. Just creating the schematic, but the logic may be
// different with the two control signals I've created according to our control module
		data_MEM dataMem (
			 .readAddress(ALUOut), 
			 .writeAddress(ALUOut), 
			 .writeData(readData2), 
			 .readDataMem(readDataMem), 
			 .memWrite(memWrite), 
			 .memRead(memRead), 
			 .clk(clk)
			 );

		mux_64bit memToRegMux (
			 .a(ALUOut), 
			 .b(readDataMem), 
			 .ctrl(MemToReg), 
			 .out(regWrite)
			 );


		control_unit controlUnit (
			 .clk(clk), 
			 .inst(inst), 
			 .zero(zero), 
			 .RegDst(RegDst), 
			 .RegWrite(RegWrite), 
			 .ALUSrc(ALUSrc), 
			 .ALUOp(ALUOp), 
			 .PCSrc(PCSrc), 
			 .PCen(PCen), 
			 .MemWrite(MemWrite), 
			 .MemRead(MemRead), 
			 .MemToReg(MemToReg)
			 );







			









endmodule
