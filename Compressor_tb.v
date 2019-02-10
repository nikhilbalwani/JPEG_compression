`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:18:10 11/16/2017
// Design Name:   Compressor
// Module Name:   D:/JPEG_compression/Compressor_tb.v
// Project Name:  JPEG_compression
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Compressor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Compressor_tb;

	// Inputs
	reg [31:0] A11;
	reg [31:0] A12;
	reg [31:0] A13;
	reg [31:0] A14;
	reg [31:0] A15;
	reg [31:0] A16;
	reg [31:0] A17;
	reg [31:0] A18;
	reg [31:0] A21;
	reg [31:0] A22;
	reg [31:0] A23;
	reg [31:0] A24;
	reg [31:0] A25;
	reg [31:0] A26;
	reg [31:0] A27;
	reg [31:0] A28;
	reg [31:0] A31;
	reg [31:0] A32;
	reg [31:0] A33;
	reg [31:0] A34;
	reg [31:0] A35;
	reg [31:0] A36;
	reg [31:0] A37;
	reg [31:0] A38;
	reg [31:0] A41;
	reg [31:0] A42;
	reg [31:0] A43;
	reg [31:0] A44;
	reg [31:0] A45;
	reg [31:0] A46;
	reg [31:0] A47;
	reg [31:0] A48;
	reg [31:0] A51;
	reg [31:0] A52;
	reg [31:0] A53;
	reg [31:0] A54;
	reg [31:0] A55;
	reg [31:0] A56;
	reg [31:0] A57;
	reg [31:0] A58;
	reg [31:0] A61;
	reg [31:0] A62;
	reg [31:0] A63;
	reg [31:0] A64;
	reg [31:0] A65;
	reg [31:0] A66;
	reg [31:0] A67;
	reg [31:0] A68;
	reg [31:0] A71;
	reg [31:0] A72;
	reg [31:0] A73;
	reg [31:0] A74;
	reg [31:0] A75;
	reg [31:0] A76;
	reg [31:0] A77;
	reg [31:0] A78;
	reg [31:0] A81;
	reg [31:0] A82;
	reg [31:0] A83;
	reg [31:0] A84;
	reg [31:0] A85;
	reg [31:0] A86;
	reg [31:0] A87;
	reg [31:0] A88;
	reg clk;
	reg reset;
	reg en;

	// Outputs
	wire [31:0] B11;
	wire [31:0] B12;
	wire [31:0] B13;
	wire [31:0] B14;
	wire [31:0] B15;
	wire [31:0] B16;
	wire [31:0] B17;
	wire [31:0] B18;
	wire [31:0] B21;
	wire [31:0] B22;
	wire [31:0] B23;
	wire [31:0] B24;
	wire [31:0] B25;
	wire [31:0] B26;
	wire [31:0] B27;
	wire [31:0] B28;
	wire [31:0] B31;
	wire [31:0] B32;
	wire [31:0] B33;
	wire [31:0] B34;
	wire [31:0] B35;
	wire [31:0] B36;
	wire [31:0] B37;
	wire [31:0] B38;
	wire [31:0] B41;
	wire [31:0] B42;
	wire [31:0] B43;
	wire [31:0] B44;
	wire [31:0] B45;
	wire [31:0] B46;
	wire [31:0] B47;
	wire [31:0] B48;
	wire [31:0] B51;
	wire [31:0] B52;
	wire [31:0] B53;
	wire [31:0] B54;
	wire [31:0] B55;
	wire [31:0] B56;
	wire [31:0] B57;
	wire [31:0] B58;
	wire [31:0] B61;
	wire [31:0] B62;
	wire [31:0] B63;
	wire [31:0] B64;
	wire [31:0] B65;
	wire [31:0] B66;
	wire [31:0] B67;
	wire [31:0] B68;
	wire [31:0] B71;
	wire [31:0] B72;
	wire [31:0] B73;
	wire [31:0] B74;
	wire [31:0] B75;
	wire [31:0] B76;
	wire [31:0] B77;
	wire [31:0] B78;
	wire [31:0] B81;
	wire [31:0] B82;
	wire [31:0] B83;
	wire [31:0] B84;
	wire [31:0] B85;
	wire [31:0] B86;
	wire [31:0] B87;
	wire [31:0] B88;
	wire valid;

	// Instantiate the Unit Under Test (UUT)
	Compressor uut (
		.B11(B11), 
		.B12(B12), 
		.B13(B13), 
		.B14(B14), 
		.B15(B15), 
		.B16(B16), 
		.B17(B17), 
		.B18(B18), 
		.B21(B21), 
		.B22(B22), 
		.B23(B23), 
		.B24(B24), 
		.B25(B25), 
		.B26(B26), 
		.B27(B27), 
		.B28(B28), 
		.B31(B31), 
		.B32(B32), 
		.B33(B33), 
		.B34(B34), 
		.B35(B35), 
		.B36(B36), 
		.B37(B37), 
		.B38(B38), 
		.B41(B41), 
		.B42(B42), 
		.B43(B43), 
		.B44(B44), 
		.B45(B45), 
		.B46(B46), 
		.B47(B47), 
		.B48(B48), 
		.B51(B51), 
		.B52(B52), 
		.B53(B53), 
		.B54(B54), 
		.B55(B55), 
		.B56(B56), 
		.B57(B57), 
		.B58(B58), 
		.B61(B61), 
		.B62(B62), 
		.B63(B63), 
		.B64(B64), 
		.B65(B65), 
		.B66(B66), 
		.B67(B67), 
		.B68(B68), 
		.B71(B71), 
		.B72(B72), 
		.B73(B73), 
		.B74(B74), 
		.B75(B75), 
		.B76(B76), 
		.B77(B77), 
		.B78(B78), 
		.B81(B81), 
		.B82(B82), 
		.B83(B83), 
		.B84(B84), 
		.B85(B85), 
		.B86(B86), 
		.B87(B87), 
		.B88(B88), 
		.valid(valid), 
		.A11(A11), 
		.A12(A12), 
		.A13(A13), 
		.A14(A14), 
		.A15(A15), 
		.A16(A16), 
		.A17(A17), 
		.A18(A18), 
		.A21(A21), 
		.A22(A22), 
		.A23(A23), 
		.A24(A24), 
		.A25(A25), 
		.A26(A26), 
		.A27(A27), 
		.A28(A28), 
		.A31(A31), 
		.A32(A32), 
		.A33(A33), 
		.A34(A34), 
		.A35(A35), 
		.A36(A36), 
		.A37(A37), 
		.A38(A38), 
		.A41(A41), 
		.A42(A42), 
		.A43(A43), 
		.A44(A44), 
		.A45(A45), 
		.A46(A46), 
		.A47(A47), 
		.A48(A48), 
		.A51(A51), 
		.A52(A52), 
		.A53(A53), 
		.A54(A54), 
		.A55(A55), 
		.A56(A56), 
		.A57(A57), 
		.A58(A58), 
		.A61(A61), 
		.A62(A62), 
		.A63(A63), 
		.A64(A64), 
		.A65(A65), 
		.A66(A66), 
		.A67(A67), 
		.A68(A68), 
		.A71(A71), 
		.A72(A72), 
		.A73(A73), 
		.A74(A74), 
		.A75(A75), 
		.A76(A76), 
		.A77(A77), 
		.A78(A78), 
		.A81(A81), 
		.A82(A82), 
		.A83(A83), 
		.A84(A84), 
		.A85(A85), 
		.A86(A86), 
		.A87(A87), 
		.A88(A88), 
		.clk(clk), 
		.reset(reset), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		A11 = 56;
		A12 = 34;
		A13 = 24;
		A14 = 53;
		A15 = 93;
		A16 = 219;
		A17 = 432;
		A18 = 329;
		A21 = 0;
		A22 = 0;
		A23 = 0;
		A24 = 0;
		A25 = 0;
		A26 = 0;
		A27 = 0;
		A28 = 0;
		A31 = 0;
		A32 = 0;
		A33 = 0;
		A34 = 0;
		A35 = 0;
		A36 = 0;
		A37 = 0;
		A38 = 0;
		A41 = 0;
		A42 = 0;
		A43 = 0;
		A44 = 0;
		A45 = 0;
		A46 = 0;
		A47 = 0;
		A48 = 0;
		A51 = 0;
		A52 = 0;
		A53 = 0;
		A54 = 0;
		A55 = 0;
		A56 = 0;
		A57 = 0;
		A58 = 0;
		A61 = 0;
		A62 = 0;
		A63 = 0;
		A64 = 0;
		A65 = 0;
		A66 = 0;
		A67 = 0;
		A68 = 0;
		A71 = 0;
		A72 = 0;
		A73 = 0;
		A74 = 0;
		A75 = 0;
		A76 = 0;
		A77 = 0;
		A78 = 0;
		A81 = 0;
		A82 = 0;
		A83 = 0;
		A84 = 0;
		A85 = 0;
		A86 = 0;
		A87 = 0;
		A88 = 0;
		clk = 0;
		reset = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
		always clk = ~clk;
		
endmodule

