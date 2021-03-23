`timescale 1ns / 1ps

module segment_peakdisp_0(
    input [11:0] peak,
    output reg [3:0] value_peakseg0 = 0
    );
    
    always @ (*) 
    begin
        value_peakseg0 <= peak % 10;
    end
    
endmodule