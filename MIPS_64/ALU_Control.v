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
		2'b00: ALUCtrl <= 4'b0010;
		2'b01: ALUCtrl <= 4'b0110;
		2'b1?:
		begin
			case(function_field)
				6'b??0000: ALUCtrl <= 4'b0010;
				6'b??0010: ALUCtrl <= 4'b0110;
				6'b??0100: ALUCtrl <= 4'b0000;
				6'b??0101: ALUCtrl <= 4'b0001;
				6'b??1010: ALUCtrl <= 4'b0111;
				default: ALUCtrl <= 4'b1110;
			endcase
		end
		default: ALUCtrl <= 4'b1111;
		
	endcase
	
	end

endmodule
