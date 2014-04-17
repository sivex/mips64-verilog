`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company:		UMBC
// Engineer:
//
// Create Date: 23:58:03 04/16/2014
// Module Name: registers
// Description:
////////////////////////////////////////////////////////////////////////////////
module registers( readReg1, readReg2, writeReg, writeData, readData1, readData2, regWrite);

	// sizes different for 64 bit but
	// for now this matches the diagram found here
	// www.google.com/ search single cycle mips datapath
	// courses.cs.washington third link
	// - Griffin Yourick using Kevin's account
	input [25:21] readReg1;
	input [20:16] readReg2;
	input [4:0] writeReg;
	input [3:0] writeData; // sizes wrong. idea good.

	input regWrite;

	output reg readData1, readData2;

endmodule
