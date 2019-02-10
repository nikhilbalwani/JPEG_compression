`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:54:05 11/10/2017 
// Design Name: 
// Module Name:    Stage1 
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
module Stage1(M0, M1, M2, M3, M4, M5, M6, M7,
				  valid, 
				  I0, I1, I2, I3, I4, I5, I6, I7,
				  reset, clk, en);
	
	input reset, clk, en;
	input [31:0] I0, I1, I2, I3, I4, I5, I6, I7;
	output [31:0] M0, M1, M2, M3, M4, M5, M6, M7;
	output valid;
	
	wire valid_A07, valid_S07, valid_A16, valid_S16, valid_A25, valid_S25, valid_A34, valid_S34;
	
	assign valid = valid_A07 & valid_S07 & valid_A16 & valid_S16 & valid_A25 & valid_S25 & valid_A34 & valid_S34;
	
	Adder A07 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(I0), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(I7), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_A07), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(M0) // output [31 : 0] m_axis_result_tdata
	);
	
	Subtracter S07 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(I0), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(I7), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_S07), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(M7) // output [31 : 0] m_axis_result_tdata
	);
	
	Adder A16 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(I1), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(I6), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_A16), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(M1) // output [31 : 0] m_axis_result_tdata
	);
	
	Subtracter S16 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(I1), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(I6), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_S16), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(M6) // output [31 : 0] m_axis_result_tdata
	);
	
	Adder A25 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(I2), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(I5), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_A25), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(M2) // output [31 : 0] m_axis_result_tdata
	);
	
	Subtracter S25 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(I2), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(I5), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_S25), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(M5) // output [31 : 0] m_axis_result_tdata
	);
	
	Adder A34 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(I3), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(I4), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_A34), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(M3) // output [31 : 0] m_axis_result_tdata
	);
	
	Subtracter S34 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(I3), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(I4), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_S34), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(M4) // output [31 : 0] m_axis_result_tdata
	);
	
endmodule
