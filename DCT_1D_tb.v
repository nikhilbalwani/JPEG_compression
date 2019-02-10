`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:39:42 11/11/2017
// Design Name:   DCT_1D
// Module Name:   D:/JPEG_compression/DCT_1D_tb.v
// Project Name:  JPEG_compression
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DCT_1D
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DCT_1D_tb;

	// Inputs
	reg [31:0] I0;
	reg [31:0] I1;
	reg [31:0] I2;
	reg [31:0] I3;
	reg [31:0] I4;
	reg [31:0] I5;
	reg [31:0] I6;
	reg [31:0] I7;
	reg reset;
	reg clk;
	reg en;

	// Outputs
	wire [31:0] A0;
	wire [31:0] A1;
	wire [31:0] A2;
	wire [31:0] A3;
	wire [31:0] A4;
	wire [31:0] A5;
	wire [31:0] A6;
	wire [31:0] A7;
	wire valid;

	// Instantiate the Unit Under Test (UUT)
	DCT_1D uut (
		.A0(A0), 
		.A1(A1), 
		.A2(A2), 
		.A3(A3), 
		.A4(A4), 
		.A5(A5), 
		.A6(A6), 
		.A7(A7), 
		.valid(valid), 
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.I4(I4), 
		.I5(I5), 
		.I6(I6), 
		.I7(I7), 
		.reset(reset), 
		.clk(clk), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		I0 = 32'b00111111100000000000000000000000;
		I1 = 32'b01000000000010100110010000000000;
		I2 = 32'b01000000010000001000100100000000;
		I3 = 32'b01000000100000000000000000000000;
		I4 = 32'b01000000101000000000000111000000;
		I5 = 32'b01000000110111000100000000000000;
		I6 = 32'b01000000111000000000000000000000;
		I7 = 32'b01000001000000000011101110000000;
		reset = 0;
		clk = 0;
		en = 1;

		// Wait 100 ns for global reset to finish
		#1000;
       reset = 1;
		// Add stimulus here

	end
      
		always #500 clk = ~clk;
		
endmodule

