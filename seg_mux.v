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
		input rst,
	
		output reg [3:0]x
    );
	 
always@(sel)
	if(rst==1)
		x=0;
	else begin
		case(sel)
//-----------------display hour & min-----------------------------------------//
       		//4'b1110:x=count[11:8];
       		//4'b1101:x=count[15:12];
       		//4'b1011:x=count[19:16];
       		//4'b0111:x=count[23:20];

//-----------------display min & sec------------------------------------------//		 
       		4'b1110:x=count[3:0];
       		4'b1101:x=count[7:4];
       		4'b1011:x=count[11:8];
       		4'b0111:x=count[15:12];
		 
	endcase
	end


endmodule
