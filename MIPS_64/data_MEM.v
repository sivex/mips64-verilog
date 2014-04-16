////////////////////////////////////////////////////////////////////////////////
// Company: UMBC
// Engineer: Paul Giro
//
// Create Date: 21:24:11 04/01/2014
// Module Name: data_MEM
// Description: Data memory module for the MIPS CPU
////////////////////////////////////////////////////////////////////////////////

module data_MEM(addr, d_in, d_out, en, wr, clk);

	// Make parameter values for easy RAM size changes
	parameter DATA_BITS = 64;
	parameter ADDR_BITS = 64;

	// All inputs and outputs defined
	input [(ADDR_BITS-1):0] addr;
	input [(DATA_BITS-1):0] d_in;
	input en;
	input wr;
	input clk;
	output reg [(DATA_BITS-1):0] d_out;

	// Data RAM register
	reg [(DATA_BITS-1):0] data_RAM [(2**ADDR_BITS)-1:0];

	// Main RAM code
	always@ (posedge clk) begin
		// When en is on, the RAM is active.
		if (en) begin
			// When wr is on, the corresponding address is written in the Data
			// RAM and output.
			if (wr) begin
				data_RAM[addr] <= d_in;
				d_out <= d_in;
			end
			// Send out the data at the address given if it is a read (not wr)
			else begin
				d_out <= data_RAM[addr];
			end
		end
	end

endmodule
