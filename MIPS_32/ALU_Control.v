`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:20:38 04/17/2014 
// Design Name: 
// Module Name:    ALU_Control 

//////////////////////////////////////////////////////////////////////////////////
module ALU_Control(
    input [1:0] ALUOp,
    input [5:0] function_field,
    output reg [3:0] ALUCtrl
    );
	 
	 always @ (ALUOp or function_field) begin
	 
	 case(ALUOp)
		2'b00: ALUCtrl <= 4'b0010; //addi
		2'b01: ALUCtrl <= 4'b0110; //subtract
		2'b10:
		begin
			case(function_field) //R-Type
				6'b100000: ALUCtrl <= 4'b0010; //add // changed from 0000000 5/6/14 6:32
				6'b000010: ALUCtrl <= 4'b0110; //subtract
				6'b000100: ALUCtrl <= 4'b0000; //AND
				6'b000101: ALUCtrl <= 4'b0001; //OR
				default: ALUCtrl <= 4'b1110; //error checking
			endcase
		end
		default: ALUCtrl <= 4'b1111; //error checking
		
	endcase
	
	end

endmodule
