`timescale 1ns / 1ps

module oled_menu_mux(
    input clock,
    input [3:0] menu_mode,
    input [15:0] oled_data_menu_0,
    input [15:0] oled_data_menu_1,
    input [15:0] oled_data_menu_2,
    input [15:0] oled_data_menu_3,
    input [15:0] oled_data_menu_4,
    input [15:0] oled_data_menu_5,
    input [15:0] oled_data_menu_6,
    input [15:0] oled_data_menu_7,
    output reg [15:0] oled_data_menu
    );
    
    always @ (posedge clock) 
    begin
        case (menu_mode)
        0:  begin
                oled_data_menu = oled_data_menu_0;
            end
        1:  begin
                oled_data_menu = oled_data_menu_1;
            end            
        2:  begin
                oled_data_menu = oled_data_menu_2;
            end            
        3:  begin
                oled_data_menu = oled_data_menu_3;
            end       
        4:  begin
                oled_data_menu = oled_data_menu_4;
            end                        
        5:  begin
                oled_data_menu = oled_data_menu_5;
            end                        
        6:  begin
                oled_data_menu = oled_data_menu_6;
            end
        7:  begin
                oled_data_menu = oled_data_menu_7;
            end
        default:
            begin
                oled_data_menu = oled_data_menu_0;
            end
        endcase
    end
                                       
endmodule
