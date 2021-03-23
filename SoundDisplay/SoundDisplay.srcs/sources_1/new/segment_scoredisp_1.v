`timescale 1ns / 1ps

module segment_scoredisp_1(
    input [12:0] peak,
    output reg [3:0] value_peakseg1 = 0
    );
    
    always @ (*) 
    begin
        value_peakseg1 <= (peak / 10) % 10;
    end
    
endmodule