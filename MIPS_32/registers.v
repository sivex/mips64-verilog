////////////////////////////////////////////////////////////////////////////////
// Company:		UMBC
// Engineer:	Paul Giro, Kevin Sears, Griffin Yourick, Aaron David
//
// Create Date: 23:58:03 04/16/2014
// Module Name: registers
// Description:
////////////////////////////////////////////////////////////////////////////////
module registers( readReg1, readReg2, writeReg, writeData, readData1, readData2, regWrite, clk);

	
	parameter SIZE = 32;

	reg [(SIZE-1):0] REGISTERS[31:0];

	// registers to read on negative edge
	input [25:21] readReg1;
	input [20:16] readReg2;

	// register to write to on positive edge
	input [4:0] writeReg;
	input [(SIZE-1):0] writeData; // sizes wrong. idea good.

	// write control signal
	input regWrite;
	input clk;

	// register outputs
	output reg [(SIZE-1):0] readData1, readData2;


	// read registers on negative edge of current clock
	always @ * begin
		readData1 <= REGISTERS[readReg1];
		readData2 <= REGISTERS[readReg2];
	end

	// write back on positive edge of next clock
	always @ (posedge clk) begin

	if (regWrite)
		begin
			REGISTERS[writeReg] <= writeData;
		end
	end
	
initial begin
	REGISTERS[0] = 0;
	REGISTERS[1] = 0;
	REGISTERS[2] = 0;
	REGISTERS[3] = 0;
	REGISTERS[4] = 0;
	REGISTERS[5] = 0;
	REGISTERS[6] = 0;
	REGISTERS[7] = 0;
	REGISTERS[8] = 0;
	REGISTERS[9] = 0;
	REGISTERS[10] = 0;
	REGISTERS[11] = 0;
	REGISTERS[12] = 0;
	REGISTERS[13] = 0;
	REGISTERS[14] = 0;
	REGISTERS[15] = 0;
	REGISTERS[16] = 0;
	REGISTERS[17] = 0;
	REGISTERS[18] = 0;
	REGISTERS[19] = 0;
	REGISTERS[20] = 0;
	REGISTERS[21] = 0;
	REGISTERS[22] = 0;
	REGISTERS[23] = 0;
	REGISTERS[24] = 0;
	REGISTERS[25] = 0;
	REGISTERS[26] = 0;
	REGISTERS[27] = 0;
	REGISTERS[28] = 0;
	REGISTERS[29] = 0;
	REGISTERS[30] = 0;
	REGISTERS[31] = 0;
end

endmodule
