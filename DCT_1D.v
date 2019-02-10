`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:02 11/11/2017 
// Design Name: 
// Module Name:    DCT_1D 
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
module DCT_1D(A0, A1, A2, A3, A4, A5, A6, A7,
				  valid, 
				  I0, I1, I2, I3, I4, I5, I6, I7,
				  reset, clk, en);
	
	input [31:0] I0, I1, I2, I3, I4, I5, I6, I7;
	input reset, clk, en;
	output [31:0] A0, A1, A2, A3, A4, A5, A6, A7;
	output valid;
	
	wire [31:0] M0, M1, M2, M3, M4, M5, M6, M7, N0, N1, N2, N3, N4, N5, N6, N7, O0, O1, O2, O3, O4, O5, O6, O7, D0, D1, D2, D3, D4, D5, D6, D7;
	wire valid_1, valid_2, valid_3, valid_4;
	
	Stage1 s1(M0, M1, M2, M3, M4, M5, M6, M7,
				  valid_1, 
				  I0, I1, I2, I3, I4, I5, I6, I7,
				  reset, clk, en);
	
	Stage2 s2(N0, N1, N2, N3, N4, N5, N6, N7,
				  valid_2, 
				  M0, M1, M2, M3, M4, M5, M6, M7,
				  reset, clk, en & valid_1);
				  
	Stage3 s3(O0, O1, O2, O3, O4, O5, O6, O7,
				  valid_3, 
				  N0, N1, N2, N3, N4, N5, N6, N7,
				  reset, clk, en * valid_2);
				  
	Stage4 s4(D0, D1, D2, D3, D4, D5, D6, D7,
				  valid_4, 
				  O0, O1, O2, O3, O4, O5, O6, O7,
				  reset, clk, en & valid_3);
	
	Stage5 s5(A0, A1, A2, A3, A4, A5, A6, A7, 
				  valid, 
				  D0, D1, D2, D3, D4, D5, D6, D7,
				  reset, clk, en & valid_4);
	
endmodule
