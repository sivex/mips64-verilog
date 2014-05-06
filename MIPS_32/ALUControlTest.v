`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:15:01 05/06/2014
// Design Name:   ALU_Control
// Module Name:   C:/Users/skrim/Documents/GitHub/mips64-verilog/MIPS_32/ALUControlTest.v
// Project Name:  MIPS_32
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUControlTest;

	// Inputs
	reg [1:0] ALUOp;
	reg [5:0] function_field;

	// Outputs
	wire [3:0] ALUCtrl;

	// Instantiate the Unit Under Test (UUT)
	ALU_Control uut (
		.ALUOp(ALUOp), 
		.function_field(function_field), 
		.ALUCtrl(ALUCtrl)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		function_field = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		

	end
      
endmodule

