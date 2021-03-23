`timescale 1ns / 1ps

module segment_scoredisp_2(
    input [12:0] peak,
    output reg [3:0] value_peakseg2 = 0
    );
    
    always @ (*) 
    begin
        value_peakseg2 <= (peak / 100) % 10;
    end
    
endmodule