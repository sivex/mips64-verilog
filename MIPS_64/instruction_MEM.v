module instruction_MEM(index, instruction);

	parameter DATA_BITS = 64;
	parameter IMEM_SIZE = 128

	input [5:0] index;
	output [(DATA_BITS-1):0] instruction;

	reg [(DATA_BITS-1):0] instruction_RAM [(IMEM_SIZE-1):0];

endmodule
