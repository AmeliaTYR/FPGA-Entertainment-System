`timescale 1ns / 1ps

module display_menu_2(
    input [7:0] x, 
    input [6:0] y, 
    input [1:0] color_theme, 
    input [3:0] option, 
    output reg [15:0] oled_data
    );
    
    reg [15:0] color_bg, color_letter, color_option;
        
    reg [15:0]  param01_S_x=18, param01_S_y=15, 
                param01_H_x=22, param01_H_y=15, 
                param01_O_x=26, param01_O_y=15, 
                param01_W_x=31, param01_W_y=15, 
                param01_V_x=38, param01_V_y=15, 
                param01_O1_x=44, param01_O1_y=15, 
                param01_L_x=49, param01_L_y=15, 
                param01_U_x=53, param01_U_y=15, 
                param01_M_x=58, param01_M_y=15, 
                param01_E_x=64, param01_E_y=15, 
                param01_B_x=69, param01_B_y=15, 
                param01_A_x=73, param01_A_y=15, 
                param01_R_x=77, param01_R_y=15, 
                
                param02_Y_x=33, param02_Y_y=44,
                param02_E_x=37, param02_E_y=44,
                param02_S_x=41, param02_S_y=44,
                
                param03_N_x=54, param03_N_y=44,
                param03_O_x=59, param03_O_y=44;
                
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
        1:  begin //YES
            if ((y >= 44) && (y < 49)) // y value in range
                begin 
                    if ((x >= 27) && (x < 30))
                    begin 
                        if (x == 27)
                        oled_data = color_option;
                        else if (x == 28 && (y - 44 != 0 && y - 44 != 4))
                        oled_data = color_option;
                        else if (x == 29 && y - 44 == 2)
                        oled_data = color_option;
                    end 
                end
            end
        
        0:  begin //NO
            if ((y >= 44) && (y < 49)) // y value in range
                begin 
                    if ((x >= 48) && (x < 51))
                    begin 
                        if (x == 48)
                        oled_data = color_option;
                        else if (x == 49 && (y - 44 != 0 && y - 44 != 4))
                        oled_data = color_option;
                        else if (x == 50 && y - 44 == 2)
                        oled_data = color_option;
                    end 
                end
            end             
        endcase
        
        //"SHOW VOLUME BAR"//
        
                if ((y >= param01_S_y) && (y < param01_S_y+ 5)) // y value in range
        begin 
            if ((x >= param01_S_x) && (x < param01_S_x+ 3))
            begin 
                if (x == param01_S_x && y - param01_S_y != 3)
                oled_data = color_letter;
                else if (x == param01_S_x+1 && (y - param01_S_y != 1) && ( y - param01_S_y != 3))
                oled_data = color_letter;
                else if (x == param01_S_x + 2 && (y - param01_S_y != 1)&& (y - param01_S_y != 2))
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param01_H_y) && (y < param01_H_y+ 5)) // y value in range
        begin 
            if ((x >= param01_H_x) && (x < param01_H_x+ 3))
            begin 
                if (x == param01_H_x)
                oled_data = color_letter;
                else if (x == param01_H_x+1 && y - param01_H_y == 2)
                oled_data = color_letter;
                else if (x == param01_H_x+2)
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
        
        if ((y >= param01_W_y) && (y < param01_W_y+ 5)) // y value in range
        begin 
            if ((x >= param01_W_x) && (x < param01_W_x+ 5))
            begin 
                if (x == param01_W_x && y - param01_W_y != 4)
                oled_data = color_letter;
                else if (x == param01_W_x+1 && y - param01_W_y == 4)
                oled_data = color_letter;
                else if (x == param01_W_x + 2)
                oled_data = color_letter;
                else if (x == param01_W_x + 3 && y - param01_W_y == 4)
                oled_data = color_letter;
                else if (x == param01_W_x + 4 && y - param01_W_y != 4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param01_V_y) && (y < param01_V_y+ 5)) // y value in range
        begin 
            if ((x >= param01_V_x) && (x < param01_V_x+ 5))
            begin 
                if (x == param01_V_x && (y - param01_V_y == 0 || y - param01_V_y == 1))
                oled_data = color_letter;
                else if (x == param01_V_x+1 && (y - param01_V_y == 2 || y - param01_V_y == 3))
                oled_data = color_letter;
                else if (x == param01_V_x + 2 && y - param01_V_y == 4)
                oled_data = color_letter;
                else if (x == param01_V_x + 3 && (y - param01_V_y == 2 || y - param01_V_y == 3))
                oled_data = color_letter;
                else if (x == param01_V_x + 4 && (y - param01_V_y == 0 || y - param01_V_y == 1))
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param01_O1_y) && (y < param01_O1_y+ 5)) // y value in range
        begin 
            if ((x >= param01_O1_x) && (x < param01_O1_x+ 4))
            begin 
                if (x == param01_O1_x && (y - param01_O1_y <= 3)&& (y - param01_O1_y >= 1))
                oled_data = color_letter;
                else if (x == param01_O1_x+1 && (y - param01_O1_y == 0 || y - param01_O1_y == 4))
                oled_data = color_letter;
                else if (x == param01_O1_x+2 && (y - param01_O1_y == 0 || y - param01_O1_y == 4))
                oled_data = color_letter;
                else if (x == param01_O1_x + 3 && (y - param01_O1_y <= 3)&& (y - param01_O1_y >= 1))
                oled_data = color_letter;
            end  
        end

        if ((y >= param01_L_y) && (y < param01_L_y+ 5)) // y value in range
        begin 
            if ((x >= param01_L_x) && (x < param01_L_x+ 3))
            begin 
                if (x == param01_L_x)
                oled_data = color_letter;
                else if (x == param01_L_x+1 && y - param01_L_y == 4)
                oled_data = color_letter;
                else if (x == param01_L_x+2 && (y - param01_L_y == 3 || y - param01_L_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param01_U_y) && (y < param01_U_y+ 5)) // y value in range
        begin 
            if ((x >= param01_U_x) && (x < param01_U_x+ 4))
            begin 
                if (x == param01_U_x && y - param01_U_y != 4)
                oled_data = color_letter;
                else if (x == param01_U_x+1 && y - param01_U_y == 4)
                oled_data = color_letter;
                else if (x == param01_U_x + 2 && y - param01_U_y == 4)
                oled_data = color_letter;
                else if (x == param01_U_x + 3 && y - param01_U_y != 4)
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
        
        if ((y >= param01_B_y) && (y < param01_B_y+ 5)) // y value in range
        begin 
            if ((x >= param01_B_x) && (x < param01_B_x+ 3))
            begin 
                if (x == param01_B_x)
                oled_data = color_letter;
                else if (x == param01_B_x+1 && (y - param01_B_y == 0 || y - param01_B_y == 2 || y - param01_B_y == 4))
                oled_data = color_letter;
                else if (x == param01_B_x+2 && (y - param01_B_y <= 3)&& (y - param01_B_y >= 1))
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

        if ((y >= param01_R_y) && (y < param01_R_y+ 5)) // y value in range
        begin 
            if ((x >= param01_R_x) && (x < param01_R_x+ 4))
            begin 
                if (x == param01_R_x)
                oled_data = color_letter;
                else if (x == param01_R_x+1 && (y - param01_R_y == 0 || y - param01_R_y == 2))
                oled_data = color_letter;
                else if (x == param01_R_x + 2 && (y - param01_R_y != 2)&& (y - param01_R_y != 4))
                oled_data = color_letter;
                else if (x == param01_R_x+3 && y - param01_R_y == 4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param02_Y_y) && (y < param02_Y_y+ 5)) // y value in range
        begin 
            if ((x >= param02_Y_x) && (x < param02_Y_x+ 3))
            begin 
                if (x == param02_Y_x && y- param02_Y_y != 4)
                oled_data = color_letter;
                else if (x == param02_Y_x+1 && (y - param02_Y_y == 3 || y - param02_Y_y == 4))
                oled_data = color_letter;
                else if (x == param02_Y_x+2 && y- param02_Y_y != 4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param02_E_y) && (y < param02_E_y+ 5)) // y value in range
        begin 
            if ((x >= param02_E_x) && (x < param02_E_x+ 3))
            begin 
                if (x == param02_E_x)
                oled_data = color_letter;
                else if (x == param02_E_x+1 && (y - param02_E_y == 0 || y - param02_E_y == 2 || y - param02_E_y == 4))
                oled_data = color_letter;
                else if (x == param02_E_x+2 && (y - param02_E_y == 0 || y - param02_E_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param02_S_y) && (y < param02_S_y+ 5)) // y value in range
        begin 
            if ((x >= param02_S_x) && (x < param02_S_x+ 3))
            begin 
                if (x == param02_S_x && y - param02_S_y != 3)
                oled_data = color_letter;
                else if (x == param02_S_x+1 && (y - param02_S_y != 1) && (y - param02_S_y != 3))
                oled_data = color_letter;
                else if (x == param02_S_x + 2 && (y - param02_S_y != 1)&& (y - param02_S_y != 2))
                oled_data = color_letter;
            end  
        end

        if ((y >= param03_N_y) && (y < param03_N_y+ 5)) // y value in range
        begin 
            if ((x >= param03_N_x) && (x < param03_N_x+ 4))
            begin 
                if (x == param03_N_x)
                oled_data = color_letter;
                else if (x == param03_N_x+1 && y - param03_N_y == 2)
                oled_data = color_letter;
                else if (x == param03_N_x+2 && y - param03_N_y == 3)
                oled_data = color_letter;
                else if (x == param03_N_x+3)
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param03_O_y) && (y < param03_O_y+ 5)) // y value in range
        begin 
            if ((x >= param03_O_x) && (x < param03_O_x+ 4))
            begin 
                if (x == param03_O_x && (y - param03_O_y <= 3)&& (y - param03_O_y >= 1))
                oled_data = color_letter;
                else if (x == param03_O_x+1 && (y - param03_O_y == 0 || y - param03_O_y == 4))
                oled_data = color_letter;
                else if (x == param03_O_x+2 && (y - param03_O_y == 0 || y - param03_O_y == 4))
                oled_data = color_letter;
                else if (x == param03_O_x + 3 && (y - param03_O_y <= 3)&& (y - param03_O_y >= 1))
                oled_data = color_letter;
            end  
        end 
        
    end
endmodule
