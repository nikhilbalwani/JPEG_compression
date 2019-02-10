`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:24:54 11/10/2017
// Design Name:   Stage1
// Module Name:   D:/JPEG_compression/Stage1_tb.v
// Project Name:  JPEG_compression
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Stage1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Stage1_tb;

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
	wire [31:0] M0;
	wire [31:0] M1;
	wire [31:0] M2;
	wire [31:0] M3;
	wire [31:0] M4;
	wire [31:0] M5;
	wire [31:0] M6;
	wire [31:0] M7;
	wire valid;

	// Instantiate the Unit Under Test (UUT)
	Stage1 uut (
		.M0(M0), 
		.M1(M1), 
		.M2(M2), 
		.M3(M3), 
		.M4(M4), 
		.M5(M5), 
		.M6(M6), 
		.M7(M7), 
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
		I1 = 32'b01000000000000000000000000000000;
		I2 = 32'b01000000010000000000000000000000;
		I3 = 32'b01000000100000000000000000000000;
		I4 = 32'b01000000101000000000000000000000;
		I5 = 32'b01000000110000000000000000000000;
		I6 = 32'b01000000111000000000000000000000;
		I7 = 32'b01000001000000000000000000000000;
		reset = 0;
		clk = 0;
		en = 1'b1;
		
		#1000;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #500 clk = ~clk;
      
endmodule

