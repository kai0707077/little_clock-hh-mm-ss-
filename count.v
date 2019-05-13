`timescale 1ns / 1ps

module count(
    input clk,
    input rst,
    output reg[23:0] count
);

always@ (posedge clk or posedge rst)
    begin
        if(rst==1)
			count<=0;
        else if(count==24'h235959)          //day circle reset
				count<=24'h000000;
				
        else if(count[19:0]==20'h95959)    //min 00:59->01:00
            count<=count+20'h6A6A7;   
		  
        else if(count[15:0]==16'h5959)           //min 9->10
            count<=count+16'hA6A7;
		  
        else if(count[11:0]==12'h959)     //sec 00:59->01:00
            count<=count+12'h6A7;
       
        else if(count[7:0]==8'h59)            //sec 9->10
            count<=count+8'hA7;
		 
        else if(count[3:0]==4'h9)
            count<=count+4'h7;             //sec+1
        
		  else
            count<=count+1;
	  end

endmodule
