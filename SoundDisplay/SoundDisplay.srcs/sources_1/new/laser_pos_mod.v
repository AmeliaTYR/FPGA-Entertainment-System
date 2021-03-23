`timescale 1ns / 1ps


// this mod fires a laser every laser_clk posedge based on mic value
module laser_pos_mod(
    input laser_clk, 
    input [5:0] peak_out,
    output reg [3:0] laser_x
    );
    
    always @ (posedge laser_clk)
    begin
        if (peak_out < 6)
            laser_x = 0;
        else if (peak_out < 9)
            laser_x = 2;
        else if (peak_out < 12)
            laser_x = 3;
        else 
            laser_x = 4;           
    end
    
endmodule
