`timescale 1ns / 1ps

module segment_scoredisp_3(
    input [12:0] peak,
    output reg [3:0] value_peakseg3 = 0
    );
    
    always @ (*) 
    begin
        value_peakseg3 <= peak / 1000;
    end
    
endmodule