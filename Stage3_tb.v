`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:33:00 11/11/2017
// Design Name:   Stage3
// Module Name:   D:/JPEG_compression/Stage3_tb.v
// Project Name:  JPEG_compression
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Stage3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Stage3_tb;

	// Inputs
	reg [31:0] N0;
	reg [31:0] N1;
	reg [31:0] N2;
	reg [31:0] N3;
	reg [31:0] N4;
	reg [31:0] N5;
	reg [31:0] N6;
	reg [31:0] N7;
	reg reset;
	reg clk;
	reg en;

	// Outputs
	wire [31:0] O0;
	wire [31:0] O1;
	wire [31:0] O2;
	wire [31:0] O3;
	wire [31:0] O4;
	wire [31:0] O5;
	wire [31:0] O6;
	wire [31:0] O7;
	wire valid;

	// Instantiate the Unit Under Test (UUT)
	Stage3 uut (
		.O0(O0), 
		.O1(O1), 
		.O2(O2), 
		.O3(O3), 
		.O4(O4), 
		.O5(O5), 
		.O6(O6), 
		.O7(O7), 
		.valid(valid), 
		.N0(N0), 
		.N1(N1), 
		.N2(N2), 
		.N3(N3), 
		.N4(N4), 
		.N5(N5), 
		.N6(N6), 
		.N7(N7), 
		.reset(reset), 
		.clk(clk), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		N0 = 32'b00111111100000000000000000000000;
		N1 = 32'b01000000000000000000000000000000;
		N2 = 32'b01000000010000000000000000000000;
		N3 = 32'b01000000100000000000000000000000;
		N4 = 32'b01000000101000000000000000000000;
		N5 = 32'b01000000110000000000000000000000;
		N6 = 32'b01000000111000000000000000000000;
		N7 = 32'b01000001000000000000000000000000;
		reset = 0;
		clk = 0;
		en = 1;
		
		#1000 reset = 1'b1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #500 clk = ~clk;
      
endmodule

