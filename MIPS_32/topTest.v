`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:	Aaron David, Paul Giro, Kevin Sears, Griffin Yourick
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

	reg [7:0] cycle;
	wire [31:0] readDataMem, ALUa, ALUb, writeData, instruction;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst(rst),
		.readDataMem(readDataMem),
		.ALUa(ALUa),
		.ALUb(ALUb),
		.writeData(writeData),
		.instruction(instruction)
		
	);

	always begin
		#1
		clk = ~clk;
		if (clk==1'b1) begin
			cycle = cycle + 1;
//			$monitor("Instruction = %b,\t ALU_a = %d,\t ALU_b =%d,\t Data_out =%d,\t Data_mem =%d", 
//						instruction, ALUa, ALUb, writeData, readDataMem);
		end
	end
		
	always @ (ALUa, ALUb, instruction, writeData, readDataMem) begin
		$monitor("Cycle = %d,\t Instruction = %b,\t ALU_a = %d,\t ALU_b =%d,\t Data_out =%d,\t Data_mem =%d", 
						cycle, instruction, ALUa, ALUb, writeData, readDataMem);
	end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		cycle = 0;
		#2;
		rst = 0;
		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		//rst = 1;
		//#6
		//rst = 0;
		
		
		
	end
      
endmodule

