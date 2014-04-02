//////////////////////////////////////////////////////////////////////////////////
// Company: UMBC
// Engineer: Paul Giro
// 
// Create Date:    21:24:11 04/01/2014 
// Design Name: 
// Module Name:    data_MEM 
//
// Description: 
//
//////////////////////////////////////////////////////////////////////////////////
module data_MEM(addr, d_in, d_out, en, wr, clk);

	// Make parameter values for easy RAM size changes
	parameter DATA_BITS = 64;
	parameter ADDR_BITS = 64;
	
	// All inputs and outputs defined
	input addr [(ADDR_BITS-1):0];
	input d_in [(DATA_BITS-1):0];
	input en;
	input wr;
	input clk;
	output reg d_out [(DATA_BITS-1):0];
	
	// Data RAM register
	reg [(DATA_BITS-1):0] data_RAM [(2**ADDR_BITS)-1:0]
	
	// Main RAM code
	always@ (posedge clk) begin
		if (en) begin							// When en is on, the RAM is active.
			if (wr) begin						// When wr is on, the corresponding address 
				data_RAM[addr] <= d_in;		// is written in the Data RAM and outputted;
				d_out <= d_in;
			end
			else begin
				d_out <= data_RAM[addr];	// Send out the data at the address given 
		end										// if it is a read (not wr). 
	end
		
		
endmodule
