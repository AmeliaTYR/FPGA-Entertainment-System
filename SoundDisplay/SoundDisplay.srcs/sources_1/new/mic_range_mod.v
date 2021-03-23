`timescale 1ns / 1ps


module mic_range_mod(
    input [11:0] mic_in,
    output reg [5:0] mic_out
    );
    
    always @ (mic_in)
    begin  
        if (mic_in < 2150)
            mic_out = 6'd0;
        else if (mic_in < 2271)
            mic_out = 6'd1;
        else if (mic_in < 2392)
            mic_out = 6'd2;
        else if (mic_in < 2513)
            mic_out = 6'd3;
        else if (mic_in < 2634)
            mic_out = 6'd4;
        else if (mic_in < 2755)
            mic_out = 6'd5;
        else if (mic_in < 2876)
            mic_out = 6'd6;
        else if (mic_in < 2997)
            mic_out = 6'd7;
        else if (mic_in < 3118)
            mic_out = 6'd8;
        else if (mic_in < 3239)
            mic_out = 6'd9;
        else if (mic_in < 3360)
            mic_out = 6'd10;
        else if (mic_in < 3481)
            mic_out = 6'd11;
        else if (mic_in < 3602)
            mic_out = 6'd12;
        else if (mic_in < 3723)
            mic_out = 6'd13;
        else if (mic_in < 3844)
            mic_out = 6'd14;
        else if (mic_in < 3965)    
            mic_out = 6'd15;    
        else if (mic_in < 4095)    
            mic_out = 6'd16; 

    end
endmodule