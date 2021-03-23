`timescale 1ns / 1ps


module peak_amp_mod(
    input clk20k,
    input [11:0] mic_in,
    output reg [11:0] current_max
    );
    
    reg [13:0] count = 0;
    reg [11:0] mic_max = 0;
    
    
    always @ (posedge clk20k)
    begin
        count <= (count == 1500) ? 0 : count + 1;
        if (count == 0)
            mic_max = 0;
        if (mic_max < mic_in)
            mic_max = mic_in;
        if (count == 1500)
            current_max = mic_max;
    end
    
    
    
endmodule
