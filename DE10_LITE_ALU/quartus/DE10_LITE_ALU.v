
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module DE10_LITE_ALU(

	//////////// CLOCK //////////
	input 		          		ADC_CLK_10,
	input 		          		MAX10_CLK1_50,
	input 		          		MAX10_CLK2_50,

	//////////// KEY //////////
	input 		     [1:0]		KEY,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// SW //////////
	input 		     [9:0]		SW
);



//=======================================================
//  REG/WIRE declarations
//=======================================================




//=======================================================
//  Structural coding
//=======================================================


ALU #(
.WIDTH (4))
ALU0 ( .SrcA (SW[3:0]),
.SrcB (SW[7:4]),
.ALUControl ({KEY[0],SW[9:8]}),
.ALUResult (LEDR[3:0]),
.Zero(LEDR[4]));


endmodule