`timescale 1ns / 1ps


module coordinate_converter(
    input [12:0] pixel_index,
    output [7:0] x,
    output [6:0] y
    );
    
    assign x = pixel_index % 96; // remainder is the column
    assign y = pixel_index / 96; // divide and the quotient is the row
    
    // x ranges from 0 to 95
    // y ranges from 0 to 63
endmodule
