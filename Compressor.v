`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:49:20 11/15/2017 
// Design Name: 
// Module Name:    Compressor 
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
module Compressor(B11, B12, B13, B14, B15, B16, B17, B18,
					B21, B22, B23, B24, B25, B26, B27, B28,
					B31, B32, B33, B34, B35, B36, B37, B38,
					B41, B42, B43, B44, B45, B46, B47, B48,
					B51, B52, B53, B54, B55, B56, B57, B58,
					B61, B62, B63, B64, B65, B66, B67, B68,
					B71, B72, B73, B74, B75, B76, B77, B78,
					B81, B82, B83, B84, B85, B86, B87, B88,
				  valid, 
				  A11, A12, A13, A14, A15, A16, A17, A18,
				  A21, A22, A23, A24, A25, A26, A27, A28,
				  A31, A32, A33, A34, A35, A36, A37, A38,
				  A41, A42, A43, A44, A45, A46, A47, A48,
				  A51, A52, A53, A54, A55, A56, A57, A58,
				  A61, A62, A63, A64, A65, A66, A67, A68,
				  A71, A72, A73, A74, A75, A76, A77, A78,
				  A81, A82, A83, A84, A85, A86, A87, A88,
				  clk, reset, en);

	input clk, reset, en;
	wire valid_0, valid_1, valid_2;
	output valid;
					  
	input [31:0] A11, A12, A13, A14, A15, A16, A17, A18,
					 A21, A22, A23, A24, A25, A26, A27, A28,
					 A31, A32, A33, A34, A35, A36, A37, A38,
					 A41, A42, A43, A44, A45, A46, A47, A48,
					 A51, A52, A53, A54, A55, A56, A57, A58,
					 A61, A62, A63, A64, A65, A66, A67, A68,
					 A71, A72, A73, A74, A75, A76, A77, A78,
					 A81, A82, A83, A84, A85, A86, A87, A88;

	output [31:0] B11, B12, B13, B14, B15, B16, B17, B18,
					B21, B22, B23, B24, B25, B26, B27, B28,
					B31, B32, B33, B34, B35, B36, B37, B38,
					B41, B42, B43, B44, B45, B46, B47, B48,
					B51, B52, B53, B54, B55, B56, B57, B58,
					B61, B62, B63, B64, B65, B66, B67, B68,
					B71, B72, B73, B74, B75, B76, B77, B78,
					B81, B82, B83, B84, B85, B86, B87, B88;
					
	wire [31:0] C11, C12, C13, C14, C15, C16, C17, C18,
					C21, C22, C23, C24, C25, C26, C27, C28,
					C31, C32, C33, C34, C35, C36, C37, C38,
					C41, C42, C43, C44, C45, C46, C47, C48,
					C51, C52, C53, C54, C55, C56, C57, C58,
					C61, C62, C63, C64, C65, C66, C67, C68,
					C71, C72, C73, C74, C75, C76, C77, C78,
					C81, C82, C83, C84, C85, C86, C87, C88;
	
	wire [31:0] D11, D12, D13, D14, D15, D16, D17, D18,
					D21, D22, D23, D24, D25, D26, D27, D28,
					D31, D32, D33, D34, D35, D36, D37, D38,
					D41, D42, D43, D44, D45, D46, D47, D48,
					D51, D52, D53, D54, D55, D56, D57, D58,
					D61, D62, D63, D64, D65, D66, D67, D68,
					D71, D72, D73, D74, D75, D76, D77, D78,
					D81, D82, D83, D84, D85, D86, D87, D88;
	
	DCT_2D dct(C11, C12, C13, C14, C15, C16, C17, C18,
					C21, C22, C23, C24, C25, C26, C27, C28,
					C31, C32, C33, C34, C35, C36, C37, C38,
					C41, C42, C43, C44, C45, C46, C47, C48,
					C51, C52, C53, C54, C55, C56, C57, C58,
					C61, C62, C63, C64, C65, C66, C67, C68,
					C71, C72, C73, C74, C75, C76, C77, C78,
					C81, C82, C83, C84, C85, C86, C87, C88,
				  valid_0, 
				  A11, A12, A13, A14, A15, A16, A17, A18,
				  A21, A22, A23, A24, A25, A26, A27, A28,
				  A31, A32, A33, A34, A35, A36, A37, A38,
				  A41, A42, A43, A44, A45, A46, A47, A48,
				  A51, A52, A53, A54, A55, A56, A57, A58,
				  A61, A62, A63, A64, A65, A66, A67, A68,
				  A71, A72, A73, A74, A75, A76, A77, A78,
				  A81, A82, A83, A84, A85, A86, A87, A88,
				  clk, reset, en);
	
	Quantisation q(C11, C12, C13, C14, C15, C16, C17, C18,
					C21, C22, C23, C24, C25, C26, C27, C28,
					C31, C32, C33, C34, C35, C36, C37, C38,
					C41, C42, C43, C44, C45, C46, C47, C48,
					C51, C52, C53, C54, C55, C56, C57, C58,
					C61, C62, C63, C64, C65, C66, C67, C68,
					C71, C72, C73, C74, C75, C76, C77, C78,
					C81, C82, C83, C84, C85, C86, C87, C88,
					valid_1, 
					D11, D12, D13, D14, D15, D16, D17, D18,
					D21, D22, D23, D24, D25, D26, D27, D28,
					D31, D32, D33, D34, D35, D36, D37, D38,
					D41, D42, D43, D44, D45, D46, D47, D48,
					D51, D52, D53, D54, D55, D56, D57, D58,
					D61, D62, D63, D64, D65, D66, D67, D68,
					D71, D72, D73, D74, D75, D76, D77, D78,
					D81, D82, D83, D84, D85, D86, D87, D88,
					clk, reset, en & valid_0);
					
	floatTofix f2f(D11, D12, D13, D14, D15, D16, D17, D18,
					D21, D22, D23, D24, D25, D26, D27, D28,
					D31, D32, D33, D34, D35, D36, D37, D38,
					D41, D42, D43, D44, D45, D46, D47, D48,
					D51, D52, D53, D54, D55, D56, D57, D58,
					D61, D62, D63, D64, D65, D66, D67, D68,
					D71, D72, D73, D74, D75, D76, D77, D78,
					D81, D82, D83, D84, D85, D86, D87, D88,
						
						B11, B12, B13, B14, B15, B16, B17, B18,
						B21, B22, B23, B24, B25, B26, B27, B28,
						B31, B32, B33, B34, B35, B36, B37, B38,
						B41, B42, B43, B44, B45, B46, B47, B48,
						B51, B52, B53, B54, B55, B56, B57, B58,
						B61, B62, B63, B64, B65, B66, B67, B68,
						B71, B72, B73, B74, B75, B76, B77, B78,
						B81, B82, B83, B84, B85, B86, B87, B88,
						clk, reset, en & valid_1, valid);

	
endmodule
