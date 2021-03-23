`timescale 1ns / 1ps

module segment_selector(
    input clk381,
    input [6:0] display_seg1,
    input [6:0] display_seg2,
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
            seg = 7'b0111111; // -
            an = 4'b1110;
            position = 3;
            pause = 1;
        end
    
        if (position == 1) begin
            seg = display_seg1;
            an = 4'b1101;
            position = 0;
        end
        
        if (position == 2) begin
            seg = display_seg2;
            an = 4'b1011; 
            position = 1;
        end
        
        if (position == 3 && pause == 0) begin
            seg = 7'b0111111; // -
            an = 4'b0111;
            position = 2;
        end
        
    end
         
endmodule