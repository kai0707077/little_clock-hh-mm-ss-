`timescale 1ns / 1ps


module clk_div(
    input clk,
    input rst,
    output  clk1,
    output  [1:0]clks  
);

 reg [63:0]div;

always@ (posedge clk or posedge rst)
    begin
        if(rst)
            div <= 64'b0;
        else
            div <= div + 1;
							
    end

//----------------for real test-----------------------------------------------------//	
assign clk1 = div[25];
assign clks[1:0] = div[19:18];  //best freqency for the human eyes

//----------------for test bench-----------------------------------------------------//		
 //assign clk1 = div[1];   
 //assign clks[1:0] = div[2:1];

endmodule
