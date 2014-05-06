`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:21:28 05/06/2014
// Design Name:   top
// Module Name:   C:/Users/skrim/Documents/GitHub/mips64-verilog/MIPS_32/topTest.v
// Project Name:  MIPS_32
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module topTest;

	// Inputs
	reg clk;
	reg rst;

	wire [31:0] readDataMem, ALUa, ALUb;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst(rst),
		.readDataMem(readDataMem),
		.ALUa(ALUa),
		.ALUb(ALUb)
	);

	always begin
		#1
		clk = ~clk;
		$monitor("ReadDataMem =\t%b ALUa =\t%b ALUb =\t%b",readDataMem, ALUa, ALUb);
		end

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		#1;
		rst = 0;
		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		//rst = 1;
		//#6
		//rst = 0;
		
		
		
	end
      
endmodule

