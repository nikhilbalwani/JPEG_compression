`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:05:43 11/12/2017 
// Design Name: 
// Module Name:    Matrix_8_8 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Matrix_8_8(R0, R1, R2, R3, R4, R5, R6, R7, W0, W1, W2, W3, W4, W5, W6, W7, address, rw, clk, reset);

	reg [31:0] memory [63:0];
	output reg [31:0] R0, R1, R2, R3, R4, R5, R6, R7;
	input [31:0] W0, W1, W2, W3, W4, W5, W6, W7;
	input [4:0] address;
	input rw, clk, reset;
	integer i;

	always @ (posedge clk)
	begin
	
		if (rw == 1'b0)
		begin
			if (address >= 0 && address <= 7)
			begin
				R0 <= memory[address * 8];
				R1 <= memory[address * 8 + 1];
				R2 <= memory[address * 8 + 2];
				R3 <= memory[address * 8 + 3];
				R4 <= memory[address * 8 + 4];
				R5 <= memory[address * 8 + 5];
				R6 <= memory[address * 8 + 6];
				R7 <= memory[address * 8 + 7];
			end
			
			else if (address >= 8 && address <= 15)
			begin
				R0 <= memory[address - 8];
				R1 <= memory[address];
				R2 <= memory[address + 8];
				R3 <= memory[address + 16];
				R4 <= memory[address + 24];
				R5 <= memory[address + 32];
				R6 <= memory[address + 40];
				R7 <= memory[address + 48];
			end
		end
		
		else if (rw == 1'b1)
		begin
			if (address >= 0 && address <= 7)
			begin
				memory[address * 8] <= W0;
				memory[address * 8 + 1] <= W1;
				memory[address * 8 + 2] <= W2;
				memory[address * 8 + 3] <= W3;
				memory[address * 8 + 4] <= W4;
				memory[address * 8 + 5] <= W5;
				memory[address * 8 + 6] <= W6;
				memory[address * 8 + 7] <= W7;
			end
			
			else if (address >= 8 && address <= 15)
			begin
				memory[address - 8] <= W0;
				memory[address] <= W1;
				memory[address + 8] <= W2;
				memory[address + 16] <= W3;
				memory[address + 24] <= W4;
				memory[address + 32] <= W5;
				memory[address + 40] <= W6;
				memory[address + 48] <= W7;
			end
		end
	end

endmodule
