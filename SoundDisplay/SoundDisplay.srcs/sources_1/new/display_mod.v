`timescale 1ns / 1ps


module display_mod(
    input basys_clk,
    input [3:0] overall_mode,
    input [15:0] oled_data_basic,  // basic task
    input [15:0] oled_data_gamemode_2 , // space shooter
    input [15:0] oled_data_G2_overall, // cow game
    input [15:0] oled_data_paint, //paint 
    input [15:0] oled_data_menu,
    
    output reg [15:0] oled_data
    );

    /*
    modes:
    0: menu
    1: basic task  
    2: space shooter
    3: cow game
    4: paint
    */
   
    always @ (posedge basys_clk)
    begin
        case (overall_mode)
            0:
            begin
                oled_data = oled_data_menu;
            end
            1: 
            begin
                oled_data = oled_data_basic; 
            end
            2: 
            begin
                oled_data = oled_data_gamemode_2 ; 
            end
            3: 
            begin
                oled_data = oled_data_G2_overall; 
            end
            4:
            begin
                oled_data = oled_data_paint;
            end
            
            default: oled_data = oled_data_menu; 
        endcase    
        
    end
endmodule