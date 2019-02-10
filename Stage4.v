`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:54 11/11/2017 
// Design Name: 
// Module Name:    Stage4 
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
module Stage4(D0, D1, D2, D3, D4, D5, D6, D7,
				  valid, 
				  O0, O1, O2, O3, O4, O5, O6, O7,
				  reset, clk, en);
	
	input [31:0] O0, O1, O2, O3, O4, O5, O6, O7;
	output [31:0] D0, D1, D2, D3, D4, D5, D6, D7;
	output valid;
	input reset, clk, en;
	
	wire valid_D5, valid_D1, valid_D3, valid_D7;
	
	Adder A71 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(O4), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(O7), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_D1), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(D1) // output [31 : 0] m_axis_result_tdata
	);

	Subtracter S71 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(O7), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(O4), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_D7), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(D7) // output [31 : 0] m_axis_result_tdata
	);
	
	Multiplier M3 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(32'b00111111101101010000010011110011), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(O5), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_D3), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(D3) // output [31 : 0] m_axis_result_tdata
	);
	
	Multiplier M5 (
  .aclk(clk), // input aclk
  .aresetn(reset), // input aresetn
  .s_axis_a_tvalid(en), // input s_axis_a_tvalid
  .s_axis_a_tready(), // output s_axis_a_tready
  .s_axis_a_tdata(32'b00111111101101010000010011110011), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(en), // input s_axis_b_tvalid
  .s_axis_b_tready(), // output s_axis_b_tready
  .s_axis_b_tdata(O6), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(valid_D5), // output m_axis_result_tvalid
  .m_axis_result_tready(en), // input m_axis_result_tready
  .m_axis_result_tdata(D5) // output [31 : 0] m_axis_result_tdata
	);
	
	assign D0 = O0;
	assign D4 = O1;
	assign D2 = O2;
	assign D6 = O3;
	
	assign valid = valid_D5 & valid_D1 & valid_D3 & valid_D7;
	
endmodule
