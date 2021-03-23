`timescale 1ns / 1ps

module clock_divider_module(
    input basys_clk,
    input [31:0] m, 
    output reg my_clk = 0
    );
    
    reg [31:0] count = 0; 
    
    always @ (posedge basys_clk)
    begin
        count <= (count == m) ? 0: count + 1; 
        my_clk  <= (count  == 0) ? ~my_clk : my_clk;
    end
   
    
endmodule

