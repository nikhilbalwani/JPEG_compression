`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:37:55 11/10/2017 
// Design Name: 
// Module Name:    Stage2 
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
module Stage2(N0, N1, N2, N3, N4, N5, N6, N7,
				  valid, 
				  M0, M1, M2, M3, M4, M5, M6, M7,
				  reset, clk, en);

	input reset, clk, en;
	output [31:0] N0, N1, N2, N3, N4, N5, N6, N7;
	input [31:0] M0, M1, M2, M3, M4, M5, M6, M7;
	output valid;
	wire [31:0] N5_0, N5_1, M56, N6_0, N4_0, M47, N4_1, N7_0;
	wire valid_MN5_0, valid_MN5_1, valid_N6, valid_MN4_0, valid_MN4_1, valid_N4, valid_MN7_0, valid_N7;
	wire valid_A03, valid_S03, valid_A12, valid_S12, valid_A56, valid_N5, valid_MN_0, valid_A47;
	// N0 = M0 + M3
	
	assign valid = valid_A03 & valid_S03 & valid_A12 & valid_S12 & valid_N4 & valid_N5 & valid_N6 & valid_N7;
	
	Adder A03 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(M0), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(M3), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_A03), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(N0) // output [31 : 0] m_axis_result_tdata
	);
	
	// N3 = M0 - M3
	Subtracter S03 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(M0), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(M3), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_S03), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(N3) // output [31 : 0] m_axis_result_tdata
	);
	
	// N1 = M1 + M2
	
	Adder A12 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(M1), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(M2), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_A12), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(N1) // output [31 : 0] m_axis_result_tdata
	);
	
	// N2 = M1 - M2
	
	Subtracter S12 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(M1), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(M2), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_S12), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(N2) // output [31 : 0] m_axis_result_tdata
	);
	
	// -sin(pi/16) = 10111110010001111100010111000010
	// -cos(pi/16) = 10111111011110110001010010111110
	// -sin(pi/16) - cos(pi/16) = 10111111100101101000001100010111
	// sin(pi/16) = 00111110010001111100010111000010
	// cos(pi/16) = 00111111011110110001010010111110
	// 10111111010010010010001101001110
	
	Multiplier MN5_0 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(32'b10111111010010010010001101001110), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(M6), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_MN5_0), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(N5_0) // output [31 : 0] m_axis_result_tdata
	);
	
	// M56 = M5 + M6
	
	Adder A56 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(M5), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(M6), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_A56), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(M56) // output [31 : 0] m_axis_result_tdata
	);
	
	Multiplier MN5_1 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en & valid_A56), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(M56), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en & valid_A56), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(32'b00111111011110110001010010111110), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_MN5_1), // output m_axis_result_tvalid
  .m_axis_result_tready(en & valid_A56), // input m_axis_result_tready
  .m_axis_result_tdata(N5_1) // output [31 : 0] m_axis_result_tdata
	);
	
	// N5 = M5 (-sin(pi/16) - cos(pi/16)) + (M5 + M6) * cos(pi/16)
	
	Adder AN5 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en & valid_MN5_0 & valid_MN5_1), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(N5_0), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en & valid_MN5_0 & valid_MN5_1), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(N5_1), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_N5), // output m_axis_result_tvalid
  .m_axis_result_tready(en & valid_MN5_0 & valid_MN5_1), // input m_axis_result_tready
  .m_axis_result_tdata(N5) // output [31 : 0] m_axis_result_tdata
	);
	
	Multiplier MN6_0 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(32'b10111111100101101000001100010111), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(M5), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_MN6_0), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(N6_0) // output [31 : 0] m_axis_result_tdata
	);
	
	Adder AN6 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en & valid_MN6_0 & valid_MN5_1), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(N6_0), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en & valid_MN6_0 & valid_MN5_1), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(N5_1), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_N6), // output m_axis_result_tvalid
  .m_axis_result_tready(en & valid_MN6_0 & valid_MN5_1), // input m_axis_result_tready
  .m_axis_result_tdata(N6) // output [31 : 0] m_axis_result_tdata
	);
	
	// -sin(3pi/16) = 10111111000011100011100111011010
	// -cos(3pi/16) = 10111111010101001101101100110001
	// -sin(3pi/16) - cos(pi/16) = 10111111101100011000101010000110
	// sin(3pi/16) = 00111111000011100011100111011010
	// cos(3pi/16) = 00111111010101001101101100110001
	
	Multiplier MN4_0 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(32'b10111110100011010100001010101111), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(M7), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_MN4_0), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(N4_0) // output [31 : 0] m_axis_result_tdata
	);
	
	Multiplier MN7_0 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(32'b10111111101100011000101010000110), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(M4), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_MN7_0), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(N7_0) // output [31 : 0] m_axis_result_tdata
	);
	
	Adder A47 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(M4), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(M7), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_A47), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(M47) // output [31 : 0] m_axis_result_tdata
	);
	
	Multiplier MN4_1 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en & valid_A47), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(M47), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en & valid_A47), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(32'b00111111010101001101101100110001), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_MN4_1), // output m_axis_result_tvalid
  .m_axis_result_tready(en & valid_A47), // input m_axis_result_tready
  .m_axis_result_tdata(N4_1) // output [31 : 0] m_axis_result_tdata
	);
	
	Adder AN4 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en & valid_MN4_0 & valid_MN4_1), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(N4_0), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en & valid_MN4_0 & valid_MN4_1), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(N4_1), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_N4), // output m_axis_result_tvalid
  .m_axis_result_tready(en & valid_MN4_0 & valid_MN4_1), // input m_axis_result_tready
  .m_axis_result_tdata(N4) // output [31 : 0] m_axis_result_tdata
	);
	
	Adder AN7 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en & valid_MN7_0 & valid_MN4_1), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(N7_0), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en & valid_MN7_0 & valid_MN4_1), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(N4_1), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_N7), // output m_axis_result_tvalid
  .m_axis_result_tready(en & valid_MN7_0 & valid_MN4_1), // input m_axis_result_tready
  .m_axis_result_tdata(N7) // output [31 : 0] m_axis_result_tdata
	);
	
endmodule
