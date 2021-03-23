`timescale 1ns / 1ps

module display_menu_7(
    input [7:0] x, 
    input [6:0] y, 
    input [1:0] color_theme, 
    input [3:0] option, 
    output reg [15:0] oled_data
    );
    
    reg [15:0] color_bg, color_letter, color_option;
        
    reg [15:0]  param01_G_x=30, param01_G_y=15, 
                param01_A_x=35, param01_A_y=15, 
                param01_M_x=39, param01_M_y=15, 
                param01_E_x=45, param01_E_y=15, 
                param01_M1_x=50, param01_M1_y=15, 
                param01_O_x=56, param01_O_y=15, 
                param01_D_x=61, param01_D_y=15, 
                param01_E1_x=65, param01_E1_y=15,

                param02_1_x=27, param02_1_y=44,
                
                param03_2_x=40, param03_2_y=44,
                
                param04_3_x=53, param04_3_y=44,
                
                param05_4_x=66, param05_4_y=44;

                
    // decide colour theme
    always @ (color_theme)
    begin
       case (color_theme)
           1: // black bg, white text, blue arrow
           begin
               color_bg = 16'h0000; // background
               color_letter = 16'hFFFF;// alphabet color
               color_option = 16'h001F; //arrow color
           end
           2: // white bg, black text, red arrow
           begin
               color_bg = 16'hFFFF; // background
               color_letter = 16'h0000;// alphabet color
               color_option = 16'hF800; //arrow color
           end 
           3: // blue bg, white text, red arrow
           begin
               color_bg = 16'h001F; // background
               color_letter = 16'hFFFF;// alphabet color
               color_option = 16'hF800; //arrow color
           end
           default:
           begin 
               color_bg = 16'hFFFF; // background
               color_letter = 16'hFFFF;// alphabet color
               color_option = 16'hFFFF; //arrow color           
           end
       endcase
    end   
    
    always @ (x, y, color_theme, option)
    begin            
        oled_data = color_bg;
        
        case (option)
        1:  begin //digit 1
            if ((y >= 44) && (y < 49)) // y value in range
                begin 
                    if ((x >= 21) && (x < 24))
                    begin 
                        if (x == 21)
                        oled_data = color_option;
                        else if (x == 22 && (y - 44 != 0 && y - 44 != 4))
                        oled_data = color_option;
                        else if (x == 23 && y - 44 == 2)
                        oled_data = color_option;
                    end 
                end
            end
        
        2:  begin //digit 2
            if ((y >= 44) && (y < 49)) // y value in range
                begin 
                    if ((x >= 34) && (x < 37))
                    begin 
                        if (x == 34)
                        oled_data = color_option;
                        else if (x == 35 && (y - 44 != 0 && y - 44 != 4))
                        oled_data = color_option;
                        else if (x == 36 && y - 44 == 2)
                        oled_data = color_option;
                    end 
                end
            end             

        3:  begin //digit 3
            if ((y >= 44) && (y < 49)) // y value in range
                begin 
                    if ((x >= 47) && (x < 50))
                    begin 
                        if (x == 47)
                        oled_data = color_option;
                        else if (x == 48 && (y - 44 != 0 && y - 44 != 4))
                        oled_data = color_option;
                        else if (x == 49 && y - 44 == 2)
                        oled_data = color_option;
                    end 
                end
            end     
        4:  begin //digit 4
            if ((y >= 44) && (y < 49)) // y value in range
                begin 
                    if ((x >= 60) && (x < 63))
                    begin 
                        if (x == 60)
                        oled_data = color_option;
                        else if (x == 61 && (y - 44 != 0 && y - 44 != 4))
                        oled_data = color_option;
                        else if (x == 62 && y - 44 == 2)
                        oled_data = color_option;
                    end 
                end
            end 
        endcase
        
        //"GAME MODE"//
         if ((y >= param01_G_y) && (y < param01_G_y+ 5)) // y value in range
        begin 
            if ((x >= param01_G_x) && (x < param01_G_x+ 4))
            begin 
                if (x == param01_G_x && (y - param01_G_y <= 3)&& (y - param01_G_y >= 1))
                oled_data = color_letter;
                else if (x == param01_G_x+1 && (y - param01_G_y == 0 || y - param01_G_y == 4))
                oled_data = color_letter;
                else if (x == param01_G_x+2 && (y - param01_G_y == 0 || y - param01_G_y == 2 || y - param01_G_y == 4))
                oled_data = color_letter;
                else if (x == param01_G_x+3 && (y - param01_G_y == 3 || y - param01_G_y == 2))
                oled_data = color_letter;
            end  
        end

        if ((y >= param01_A_y) && (y < param01_A_y+ 5)) // y value in range
        begin 
            if ((x >= param01_A_x) && (x < param01_A_x+ 3))
            begin 
                if (x == param01_A_x && (y - param01_A_y <= 4)&& (y - param01_A_y >= 1))
                oled_data = color_letter;
                else if (x == param01_A_x+1 && (y - param01_A_y == 3 || y - param01_A_y == 0))
                oled_data = color_letter;
                else if (x == param01_A_x+2 && (y - param01_A_y <= 4)&& (y - param01_A_y >= 1))
                oled_data = color_letter;
            end  
        end



        if ((y >= param01_M_y) && (y < param01_M_y+ 5)) // y value in range
        begin 
            if ((x >= param01_M_x) && (x < param01_M_x+ 5))
            begin 
                if (x == param01_M_x)
                oled_data = color_letter;
                else if (x == param01_M_x+1 && y - param01_M_y == 1)
                oled_data = color_letter;
                else if (x == param01_M_x+2 && y - param01_M_y == 2)
                oled_data = color_letter;
                else if (x == param01_M_x+3 && y - param01_M_y == 1)
                oled_data = color_letter;
                else if (x == param01_M_x+4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param01_E_y) && (y < param01_E_y+ 5)) // y value in range
        begin 
            if ((x >= param01_E_x) && (x < param01_E_x+ 3))
            begin 
                if (x == param01_E_x)
                oled_data = color_letter;
                else if (x == param01_E_x+1 && (y - param01_E_y == 0 || y - param01_E_y == 2 || y - param01_E_y == 4))
                oled_data = color_letter;
                else if (x == param01_E_x+2 && (y - param01_E_y == 0 || y - param01_E_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param01_M1_y) && (y < param01_M1_y+ 5)) // y value in range
        begin 
            if ((x >= param01_M1_x) && (x < param01_M1_x+ 5))
            begin 
                if (x == param01_M1_x)
                oled_data = color_letter;
                else if (x == param01_M1_x+1 && y - param01_M1_y == 1)
                oled_data = color_letter;
                else if (x == param01_M1_x+2 && y - param01_M1_y == 2)
                oled_data = color_letter;
                else if (x == param01_M1_x+3 && y - param01_M1_y == 1)
                oled_data = color_letter;
                else if (x == param01_M1_x+4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param01_O_y) && (y < param01_O_y+ 5)) // y value in range
        begin 
            if ((x >= param01_O_x) && (x < param01_O_x+ 4))
            begin 
                if (x == param01_O_x && (y - param01_O_y <= 3)&& (y - param01_O_y >= 1))
                oled_data = color_letter;
                else if (x == param01_O_x+1 && (y - param01_O_y == 0 || y - param01_O_y == 4))
                oled_data = color_letter;
                else if (x == param01_O_x+2 && (y - param01_O_y == 0 || y - param01_O_y == 4))
                oled_data = color_letter;
                else if (x == param01_O_x + 3 && (y - param01_O_y <= 3)&& (y - param01_O_y >= 1))
                oled_data = color_letter;
            end  
        end

        if ((y >= param01_D_y) && (y < param01_D_y+ 5)) // y value in range
        begin 
            if ((x >= param01_D_x) && (x < param01_D_x+ 3))
            begin 
                if (x == param01_D_x)
                oled_data = color_letter;
                else if (x == param01_D_x+1 && (y - param01_D_y == 0 || y - param01_D_y == 4))
                oled_data = color_letter;
                else if (x == param01_D_x+2 && (y - param01_D_y <= 3)&& (y - param01_D_y >= 1))
                oled_data = color_letter;
            end  
        end

        if ((y >= param01_E1_y) && (y < param01_E1_y+ 5)) // y value in range
        begin 
            if ((x >= param01_E1_x) && (x < param01_E1_x+ 3))
            begin 
                if (x == param01_E1_x)
                oled_data = color_letter;
                else if (x == param01_E1_x+1 && (y - param01_E1_y == 0 || y - param01_E1_y == 2 || y - param01_E1_y == 4))
                oled_data = color_letter;
                else if (x == param01_E1_x+2 && (y - param01_E1_y == 0 || y - param01_E1_y == 4))
                oled_data = color_letter;
            end  
        end
    
        if ((y >= param02_1_y) && (y < param02_1_y+ 5)) // y value in range
        begin 
            if ((x >= param02_1_x) && (x < param02_1_x+ 2))
            begin 
                if (x == param02_1_x && y- param02_1_y == 0)
                oled_data = color_letter;
                else if (x == param02_1_x+1)
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param03_2_y) && (y < param03_2_y+ 5)) // y value in range
        begin 
            if ((x >= param03_2_x) && (x < param03_2_x+ 3))
            begin 
                if (x == param03_2_x && y - param03_2_y != 1)
                oled_data = color_letter;
                else if (x == param03_2_x+1 && (y - param03_2_y != 1) && ( y - param03_2_y != 3))
                oled_data = color_letter;
                else if (x == param03_2_x + 2 && y - param03_2_y != 3)
                oled_data = color_letter;
            end  
        end

        
        if ((y >= param04_3_y) && (y < param04_3_y+ 5)) // y value in range
        begin 
            if ((x >= param04_3_x) && (x < param04_3_x+ 3))
            begin 
                if (x == param04_3_x && (y - param04_3_y== 0 || y - param04_3_y== 4))
                oled_data = color_letter;
                else if (x == param04_3_x+1 && (y - param04_3_y != 1) && ( y - param04_3_y != 3))
                oled_data = color_letter;
                else if (x == param04_3_x + 2 && y - param04_3_y != 2)
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param05_4_y) && (y < param05_4_y+ 5)) // y value in range
        begin 
            if ((x >= param05_4_x) && (x < param05_4_x+ 3))
            begin 
                if (x == param05_4_x && (y - param05_4_y== 2 || y - param05_4_y== 3))
                oled_data = color_letter;
                else if (x == param05_4_x+1 &&(y - param05_4_y== 1 || y - param05_4_y== 3))
                oled_data = color_letter;
                else if (x == param05_4_x + 2)
                oled_data = color_letter;
            end  
        end

     
    end
endmodule
