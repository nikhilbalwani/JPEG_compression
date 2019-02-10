`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:59:06 11/11/2017 
// Design Name: 
// Module Name:    Stage3 
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
module Stage3(O0, O1, O2, O3, O4, O5, O6, O7,
				  valid, 
				  N0, N1, N2, N3, N4, N5, N6, N7,
				  reset, clk, en);

	input reset, clk, en;
	output [31:0] O0, O1, O2, O3, O4, O5, O6, O7;
	input [31:0] N0, N1, N2, N3, N4, N5, N6, N7;
	output valid;
	wire [31:0] O3_0, N23, O2_1, O2_0;
	wire valid_O0, valid_O1, valid_O4, valid_O6, valid_O5, valid_O7, valid_O3_0, valid_N23, valid_O2_1, valid_O2, valid_O3;

	Adder A01 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(N0), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(N1), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_O0), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(O0) // output [31 : 0] m_axis_result_tdata
	);
	
	Subtracter S01 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(N0), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(N1), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_O1), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(O1) // output [31 : 0] m_axis_result_tdata
	);
	
	Adder A46 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(N4), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(N6), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_O4), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(O4) // output [31 : 0] m_axis_result_tdata
	);
	
	Subtracter S46 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(N4), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(N6), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_O6), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(O6) // output [31 : 0] m_axis_result_tdata
	);
	
	Adder A57 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(N5), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(N7), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_O7), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(O7) // output [31 : 0] m_axis_result_tdata
	);
	
	Subtracter S57 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(N7), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(N5), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_O5), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(O5) // output [31 : 0] m_axis_result_tdata
	);
	
	// -sin(pi/16) = 10111110010001111100010111000010
	// -sqrt(2) * sin(pi/16) = 10111110100011010100001010101111
	// -cos(pi/16) = 10111111011110110001010010111110
	// -sqrt(2) * cos(pi/16) = 10111111101100011000101010000110
	// -sin(pi/16) - cos(pi/16) = 10111111100101101000001100010111
	// sin(pi/16) = 00111110010001111100010111000010
	// sqrt(2) * sin(pi/16) = 00111110100011010100001010101111
	// cos(pi/16) = 00111111011110110001010010111110
	// sqrt(2) * cos(pi/16) = 00111111101100011000101010000110
	// sqrt(2) * sin(pi/16) - sqrt(2) * cos(pi/16) = 10111111100011100011100111011010
	// -sqrt(2) * sin(pi/16) - sqrt(2) * cos(pi/16) = 10111111110101001101101100110001
	
	Multiplier MO2_0 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(N3), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(32'b00111111010000111110111100010101), // input [31 : 0] s_axis_b_tdata sqrt(2) * (sin - cos)
  .m_axis_result_tvalid(valid_O2_0), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(O2_0) // output [31 : 0] m_axis_result_tdata
	);
	
	Adder AN23 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(N2), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(N3), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_N23), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(N23) // output [31 : 0] m_axis_result_tdata
	);
	
	Multiplier MO2_1 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en & valid_N23), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(N23), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en & valid_N23), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(32'b00111111000010101000101111010100), // input [31 : 0] s_axis_b_tdata (sqrt(2) * cos)
  .m_axis_result_tvalid(valid_O2_1), // output m_axis_result_tvalid
  .m_axis_result_tready(en & valid_N23), // input m_axis_result_tready
  .m_axis_result_tdata(O2_1) // output [31 : 0] m_axis_result_tdata
	);
	
	Adder AO2 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en & valid_O2_0 & valid_O2_1), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(O2_0), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en & valid_O2_0 & valid_O2_1), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(O2_1), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_O2), // output m_axis_result_tvalid
  .m_axis_result_tready(en & valid_O2_0 & valid_O2_1), // input m_axis_result_tready
  .m_axis_result_tdata(O2) // output [31 : 0] m_axis_result_tdata
	);
	
	Multiplier MO3_0 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(N2), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(32'b10111111111011001000001101011110), // input [31 : 0] s_axis_b_tdata (sqrt(2) * (-sin - cos))
  .m_axis_result_tvalid(valid_O3_0), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(O3_0) // output [31 : 0] m_axis_result_tdata
	);
	
	Adder AO3 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en & valid_O3_0 & valid_O2_1), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(O3_0), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en & valid_O3_0 & valid_O2_1), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(O2_1), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_O3), // output m_axis_result_tvalid
  .m_axis_result_tready(en & valid_O3_0 & valid_O2_1), // input m_axis_result_tready
  .m_axis_result_tdata(O3) // output [31 : 0] m_axis_result_tdata
	);
	
	assign valid = valid_O0 & valid_O1 & valid_O2 & valid_O3 & valid_O4 & valid_O5 & valid_O6 & valid_O7;
	
endmodule
