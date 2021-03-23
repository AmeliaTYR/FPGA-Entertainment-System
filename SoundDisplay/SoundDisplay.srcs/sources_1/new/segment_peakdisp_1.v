`timescale 1ns / 1ps

module segment_peakdisp_1(
    input [11:0] peak,
    output reg [3:0] value_peakseg1 = 0
    );
    
    always @ (*) 
    begin
        value_peakseg1 <= (peak / 10) % 10;
    end
    
endmodule