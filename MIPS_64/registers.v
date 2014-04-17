////////////////////////////////////////////////////////////////////////////////
// Company:		UMBC
// Engineer:
//
// Create Date: 23:58:03 04/16/2014
// Module Name: registers
// Description:
////////////////////////////////////////////////////////////////////////////////
module registers( readReg1, readReg2, writeReg, writeData, readData1, readData2, regWrite, clk);

	parameter SIZE = 32;
	
	reg [(SIZE-1):0] REGISTERS[31:0];

	// sizes different for 64 bit but
	// for now this matches the diagram found here
	// www.google.com/ search single cycle mips datapath
	// courses.cs.washington third link
	// - Griffin Yourick using Kevin's account
	
	//registers to read on negative edge
	input [25:21] readReg1;
	input [20:16] readReg2;
	
	//register to write to on positive edge
	input [4:0] writeReg;
	input [(SIZE-1):0] writeData; // sizes wrong. idea good.

	//write control signal
	input regWrite;
	input clk;
	
	//register outputs
	output reg [(SIZE-1):0] readData1, readData2;
	
	
	//read registers on negative edge of current clock
	always @ (negedge clk) begin
	
	readData1 <= REGISTERS[readReg1];
	readData2 <= REGISTERS[readReg2];
	
	end
	
	//write back on positive edge of next clock
	always @ (posedge clk) begin
	
	if (regWrite) 
	begin
		REGISTERS[writeReg] <= writeData;
	end
	
	end
	

endmodule
