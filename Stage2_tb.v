`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:20:48 11/11/2017
// Design Name:   Stage2
// Module Name:   D:/JPEG_compression/Stage2_tb.v
// Project Name:  JPEG_compression
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Stage2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Stage2_tb;

	// Inputs
	reg [31:0] M0;
	reg [31:0] M1;
	reg [31:0] M2;
	reg [31:0] M3;
	reg [31:0] M4;
	reg [31:0] M5;
	reg [31:0] M6;
	reg [31:0] M7;
	reg reset;
	reg clk;
	reg en;

	// Outputs
	wire [31:0] N0;
	wire [31:0] N1;
	wire [31:0] N2;
	wire [31:0] N3;
	wire [31:0] N4;
	wire [31:0] N5;
	wire [31:0] N6;
	wire [31:0] N7;
	wire valid;

	// Instantiate the Unit Under Test (UUT)
	Stage2 uut (
		.N0(N0), 
		.N1(N1), 
		.N2(N2), 
		.N3(N3), 
		.N4(N4), 
		.N5(N5), 
		.N6(N6), 
		.N7(N7), 
		.valid(valid), 
		.M0(M0), 
		.M1(M1), 
		.M2(M2), 
		.M3(M3), 
		.M4(M4), 
		.M5(M5), 
		.M6(M6), 
		.M7(M7), 
		.reset(reset), 
		.clk(clk), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		M0 = 32'b00111111100000000000000000000000;
		M1 = 32'b01000000000000000000000000000000;
		M2 = 32'b01000000010000000000000000000000;
		M3 = 32'b01000000100000000000000000000000;
		M4 = 32'b01000000101000000000000000000000;
		M5 = 32'b01000000110000000000000000000000;
		M6 = 32'b01000000111000000000000000000000;
		M7 = 32'b01000001000000000000000000000000;
		reset = 0;
		clk = 0;
		en = 1;
		#1000;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
  
  always #500 clk = ~clk;
	
endmodule

