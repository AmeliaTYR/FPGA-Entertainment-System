`timescale 1ns / 1ps

module segment_disp_1(
    input [5:0] led_out,
    output reg [3:0] value_seg1 = 0
    );
    
    always @ (*) 
    begin
        value_seg1 <= led_out % 10;
    end
    
endmodule