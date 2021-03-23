`timescale 1ns / 1ps

module display_seven_seg(
    input clk,
    input [3:0] overall_mode,
    input SW1,
    input [3:0] adv_mode,
    input end_cow,
    input [5:0] cow_mode,
    input [6:0] seg1, [3:0] an1,
    input [6:0] seg2, [3:0] an2,
    input [6:0] seg3, [3:0] an3,
    input [6:0] seg4, [3:0] an4,
        
    output reg [6:0] seg, reg [3:0] an, 
    output dp
    );
    
    assign dp = 1;
    
    always @ (posedge clk)
    begin
        if (overall_mode == 0 || overall_mode == 1)
        begin
            if (SW1)
            begin
                seg = seg1;
                an = an1;
            end
            else
            begin
                seg = seg2;
                an = an2;
            end
        end
        else if (overall_mode == 2)
        begin
            if (adv_mode == 2 || adv_mode == 3)
            begin
                seg = seg3;
                an = an3;
            end
            else
            begin
                seg = 7'b1111111;
                an = 4'b1111;
            end
        end
        else if (overall_mode == 3)
        begin
            if (cow_mode == 4)
            begin
                seg = seg4;
                an = an4;
            end
            else
            begin
                seg = 7'b1111111;
                an = 4'b1111;
            end
        end
        else
        begin
            seg = 7'b1111111;
            an = 4'b1111;
        end
    /*
        modes:
        0: menu
        1: basic task  
        2: space shooter
        3: cow game
        4: paint
        */
       
        
    end
    

endmodule
