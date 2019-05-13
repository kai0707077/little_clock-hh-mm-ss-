`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:28 05/12/2019 
// Design Name: 
// Module Name:    seg_mux 
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
module seg_mux(
	
		input wire [23:0]count,
		input [3:0]sel,
		
		output reg [3:0]x
    );
	 
always@(sel)
	case(sel)
		 //4'b1110:x=count[11:8];// Enable U1 ---first led of 7seg
       //4'b1101:x=count[15:12];// Enable U2 --second led of 7seg
       //4'b1011:x=count[19:16];// Enable U3 ---third led of 7seg
       //4'b0111:x=count[23:20];// Enable U4 -----4th led of 7seg 
		 
		 4'b1110:x=count[3:0];// Enable U1 ---first led of 7seg
       4'b1101:x=count[7:4];// Enable U2 --second led of 7seg
       4'b1011:x=count[11:8];// Enable U3 ---third led of 7seg
       4'b0111:x=count[15:12];// Enable U4 -----4th led of 7seg 
		 
	endcase
	 


endmodule
