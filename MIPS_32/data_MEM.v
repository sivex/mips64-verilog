////////////////////////////////////////////////////////////////////////////////
// Company: UMBC
// Engineer: Paul Giro, Aaron David, Griffin Yourick, Kevin Sears
//
// Create Date: 21:24:11 04/01/2014
// Module Name: data_MEM
// Description: Data memory module for the MIPS CPU
////////////////////////////////////////////////////////////////////////////////

module data_MEM(address, writeData, readDataMem, memWrite, memRead, clk);

	// Make parameter values for easy RAM size changes
	parameter DATA_BITS = 32;
	parameter ADDR_BITS = 32;

	// All inputs and outputs defined
	input [(ADDR_BITS-1):0] address; // Address
	input [(DATA_BITS-1):0] writeData; // Write Data
	input memWrite;
	input memRead;
	input clk;
	output reg [(DATA_BITS-1):0] readDataMem; // readData

	// Data RAM register
	reg [(DATA_BITS-1):0] data_RAM [(2**ADDR_BITS)-1:0];

	// Main RAM code
	
	always @ * begin
		readDataMem <= data_RAM[address];
		end
		
	always@ (posedge clk) begin
			if (memWrite) begin
				data_RAM[address] <= writeData;
				readDataMem <= writeData;
			end
			// Send out the data at the address given if it is a read (not wr)
			else begin
				readDataMem <= data_RAM[address];
			end
		end
	

endmodule
