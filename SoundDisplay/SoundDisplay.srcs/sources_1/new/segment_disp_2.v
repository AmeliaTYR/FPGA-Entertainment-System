`timescale 1ns / 1ps

module segment_disp_2(
    input [5:0] led_out,
    output reg [3:0] value_seg2 = 0
    );
    
    always @ (*) 
    begin
        value_seg2 <= led_out / 10;
    end
    
endmodule