`timescale 1ns / 1ps

module segment_peak(
    input clk381, 
    input [6:0] display_peakseg0, 
    input [6:0] display_peakseg1,
    input [6:0] display_peakseg2,
    input [6:0] display_peakseg3,
    output reg [6:0] seg, 
    output reg [3:0] an
    );
    

        reg [1:0] position = 3;
        reg pause = 0;
        
        always @ (posedge clk381) 
        begin
            if (pause)
                pause = 0;
                
            if (position == 0) begin
                seg = display_peakseg0;
                an = 4'b1110;
                position = 3;
                pause = 1;
            end
        
            if (position == 1) begin
                seg = display_peakseg1;
                an = 4'b1101;
                position = 0;
            end
            
            if (position == 2) begin
                seg = display_peakseg2;
                an = 4'b1011; 
                position = 1;
            end
            
            if (position == 3 && pause == 0) begin
                seg = display_peakseg3;
                an = 4'b0111;
                position = 2;
            end
            
        end
            
endmodule