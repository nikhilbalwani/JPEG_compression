`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:36:43 11/12/2017
// Design Name:   Matrix_8_8
// Module Name:   D:/JPEG_compression/Matrix_8_8_tb.v
// Project Name:  JPEG_compression
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Matrix_8_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Matrix_8_8_tb;

	// Inputs
	reg [31:0] W0;
	reg [31:0] W1;
	reg [31:0] W2;
	reg [31:0] W3;
	reg [31:0] W4;
	reg [31:0] W5;
	reg [31:0] W6;
	reg [31:0] W7;
	reg [4:0] address;
	reg rw;
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] R0;
	wire [31:0] R1;
	wire [31:0] R2;
	wire [31:0] R3;
	wire [31:0] R4;
	wire [31:0] R5;
	wire [31:0] R6;
	wire [31:0] R7;

	// Instantiate the Unit Under Test (UUT)
	Matrix_8_8 uut (
		.R0(R0), 
		.R1(R1), 
		.R2(R2), 
		.R3(R3), 
		.R4(R4), 
		.R5(R5), 
		.R6(R6), 
		.R7(R7), 
		.W0(W0), 
		.W1(W1), 
		.W2(W2), 
		.W3(W3), 
		.W4(W4), 
		.W5(W5), 
		.W6(W6), 
		.W7(W7), 
		.address(address), 
		.rw(rw), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		W0 = 0;
		W1 = 0;
		W2 = 0;
		W3 = 0;
		W4 = 0;
		W5 = 0;
		W6 = 0;
		W7 = 0;
		address = 0;
		rw = 0;
		clk = 0;
		reset = 0;
		
		#750;
		rw = 1;
		
		#250;
		for (address = 0; address <= 7; address = address + 1)
		begin
			#1000;
			W0 = address * 8;
			W1 = address * 8 + 1;
			W2 = address * 8 + 2;
			W3 = address * 8 + 3;
			W4 = address * 8 + 4;
			W5 = address * 8 + 5;
			W6 = address * 8 + 6;
			W7 = address * 8 + 7;
		end
		
		rw = 0;
		for (address = 0; address <= 15; address = address + 1)
		begin
			#1000;
		end
		
	end
	
	always #500 clk = ~clk;
	
endmodule

