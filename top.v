`timescale 1ns / 1ps

module top(

    input clk,
    input rst,
    output wire [6:0]seg,
    output wire [3:0]sel,
    output sec   // for single led to display
);

//wire clk1;
wire [3:0]x;
wire [23:0]count;
wire [1:0]clks;
wire clk1;
assign sec = clk1;
clk_div M1(

    .clk(clk),
    .rst(rst),
    
    .clk1(clk1),  //1HZ clock
    .clks(clks)   //scan clock
);

count M2(

    .clk(clk1),
    .rst(rst),

    .count(count)  //6_bit_hex for hh:mm:ss
);


scan M3(

    .clk(clks),
    .rst(rst),
	 //.count(count),

    .sel(sel)

);

seg_mux M4(

	.count(count),
	.sel(sel),
	
	.x(x)
);

hex7seg M5(

    .x(x),
    
    .a_to_g(seg)
);

endmodule 
