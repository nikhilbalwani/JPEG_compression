`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:25:24 11/11/2017
// Design Name:   Stage4
// Module Name:   D:/JPEG_compression/Stage4_tb.v
// Project Name:  JPEG_compression
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Stage4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Stage4_tb;

	// Inputs
	reg [31:0] O0;
	reg [31:0] O1;
	reg [31:0] O2;
	reg [31:0] O3;
	reg [31:0] O4;
	reg [31:0] O5;
	reg [31:0] O6;
	reg [31:0] O7;
	reg reset;
	reg clk;
	reg en;

	// Outputs
	wire [31:0] D0;
	wire [31:0] D1;
	wire [31:0] D2;
	wire [31:0] D3;
	wire [31:0] D4;
	wire [31:0] D5;
	wire [31:0] D6;
	wire [31:0] D7;
	wire valid;

	// Instantiate the Unit Under Test (UUT)
	Stage4 uut (
		.D0(D0), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3), 
		.D4(D4), 
		.D5(D5), 
		.D6(D6), 
		.D7(D7), 
		.valid(valid), 
		.O0(O0), 
		.O1(O1), 
		.O2(O2), 
		.O3(O3), 
		.O4(O4), 
		.O5(O5), 
		.O6(O6), 
		.O7(O7), 
		.reset(reset), 
		.clk(clk), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		O0 = 32'b00111111100000000000000000000000;
		O1 = 32'b01000000000000000000000000000000;
		O2 = 32'b01000000010000000000000000000000;
		O3 = 32'b01000000100000000000000000000000;
		O4 = 32'b01000000101000000000000000000000;
		O5 = 32'b01000000110000000000000000000000;
		O6 = 32'b01000000111000000000000000000000;
		O7 = 32'b01000001000000000000000000000000;
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

