`timescale 1ns / 1ps

module display_menu_4(
    input [7:0] x, 
    input [6:0] y, 
    input [1:0] color_theme, 
    input [3:0] option, 
    output reg [15:0] oled_data
    );
    
    reg [15:0] color_bg, color_letter, color_option;
        
    reg [15:0]  param01_B_x=16, param01_B_y=15, 
                param01_O_x=20, param01_O_y=15, 
                param01_R_x=25, param01_R_y=15, 
                param01_D_x=30, param01_D_y=15, 
                param01_E_x=34, param01_E_y=15, 
                param01_R1_x=38, param01_R1_y=15, 
                param01_T_x=44, param01_T_y=15, 
                param01_H_x=48, param01_H_y=15, 
                param01_I_x=52, param01_I_y=15, 
                param01_C_x=56, param01_C_y=15, 
                param01_K_x=60, param01_K_y=15, 
                param01_N_x=65, param01_N_y=15, 
                param01_E1_x=70, param01_E1_y=15, 
                param01_S_x=74, param01_S_y=15, 
                param01_S1_x=78, param01_S1_y=15,

                param02_1_x=33, param02_1_y=44,
                param02_P_x=36, param02_P_y=44,
                param02_X_x=40, param02_X_y=44,
                
                param03_3_x=54, param03_3_y=44,
                param03_P_x=58, param03_P_y=44,
                param03_X_x=62, param03_X_y=44;

                
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
        
        //"BORDER THICKNESS"//
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
        
        if ((y >= param01_R1_y) && (y < param01_R1_y+ 5)) // y value in range
        begin 
            if ((x >= param01_R1_x) && (x < param01_R1_x+ 4))
            begin 
                if (x == param01_R1_x)
                oled_data = color_letter;
                else if (x == param01_R1_x+1 && (y - param01_R1_y == 0 || y - param01_R1_y == 2))
                oled_data = color_letter;
                else if (x == param01_R1_x + 2 && (y - param01_R1_y != 2)&& (y - param01_R1_y != 4))
                oled_data = color_letter;
                else if (x == param01_R1_x+3 && y - param01_R1_y == 4)
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param01_T_y) && (y < param01_T_y+ 5)) // y value in range
        begin 
            if ((x >= param01_T_x) && (x < param01_T_x+ 3))
            begin 
                if (x == param01_T_x && y - param01_T_y == 0)
                oled_data = color_letter;
                else if (x == param01_T_x+1)
                oled_data = color_letter;
                else if (x == param01_T_x + 2 && y - param01_T_y == 0)
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

        if ((y >= param01_I_y) && (y < param01_I_y+ 5)) // y value in range
        begin 
            if ((x >= param01_I_x) && (x < param01_I_x+ 3))
            begin 
                if (x == param01_I_x && (y - param01_I_y == 0 || y - param01_I_y == 4))
                oled_data = color_letter;
                else if (x == param01_I_x+1)
                oled_data = color_letter;
                else if (x == param01_I_x+2 && (y - param01_I_y == 0 || y - param01_I_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param01_C_y) && (y < param01_C_y+ 5)) // y value in range
        begin 
            if ((x >= param01_C_x) && (x < param01_C_x+ 3))
            begin 
                if (x == param01_C_x)
                oled_data = color_letter;
                else if (x == param01_C_x+1 && (y - param01_C_y == 0 || y - param01_C_y == 4))
                oled_data = color_letter;
                else if (x == param01_C_x+2 && (y != param01_C_y+2))
                oled_data = color_letter;
            end  
        end

        if ((y >= param01_K_y) && (y < param01_K_y+ 5)) // y value in range
        begin 
            if ((x >= param01_K_x) && (x < param01_K_x+ 4))
            begin 
                if (x == param01_K_x)
                oled_data = color_letter;
                else if (x == param01_K_x+1 && y - param01_K_y == 2)
                oled_data = color_letter;
                else if (x == param01_K_x+2 && (y - param01_K_y == 1 || y - param01_K_y == 3))
                oled_data = color_letter;
                else if (x == param01_K_x+3 && (y - param01_K_y == 0 || y - param01_K_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param01_N_y) && (y < param01_N_y+ 5)) // y value in range
        begin 
            if ((x >= param01_N_x) && (x < param01_N_x+ 4))
            begin 
                if (x == param01_N_x)
                oled_data = color_letter;
                else if (x == param01_N_x+1 && y - param01_N_y == 2)
                oled_data = color_letter;
                else if (x == param01_N_x+2 && y - param01_N_y == 3)
                oled_data = color_letter;
                else if (x == param01_N_x+3)
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

        if ((y >= param01_S1_y) && (y < param01_S1_y+ 5)) // y value in range
        begin 
            if ((x >= param01_S1_x) && (x < param01_S1_x+ 3))
            begin 
                if (x == param01_S1_x && y - param01_S1_y != 3)
                oled_data = color_letter;
                else if (x == param01_S1_x+1 && (y - param01_S1_y != 1) && ( y - param01_S1_y != 3))
                oled_data = color_letter;
                else if (x == param01_S1_x + 2 && (y - param01_S1_y != 1)&& (y - param01_S1_y != 2))
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

        if ((y >= param02_P_y) && (y < param02_P_y+ 5)) // y value in range
        begin 
            if ((x >= param02_P_x) && (x < param02_P_x+ 3))
            begin 
                if (x == param02_P_x)
                oled_data = color_letter;
                else if (x == param02_P_x+1 && (y - param02_P_y == 0 || y - param02_P_y == 2))
                oled_data = color_letter;
                else if (x == param02_P_x + 2 && (y - param02_P_y <= 2)&& (y - param02_P_y >= 0))
                oled_data = color_letter;
            end  
        end

        if ((y >= param02_X_y) && (y < param02_X_y+ 5)) // y value in range
        begin 
            if ((x >= param02_X_x) && (x < param02_X_x+ 3))
            begin 
                if (x == param02_X_x && y - param02_X_y != 2)
                oled_data = color_letter;
                else if (x == param02_X_x+1 && y - param02_X_y == 2)
                oled_data = color_letter;
                else if (x == param02_X_x + 2 && y - param02_X_y != 2)
                oled_data = color_letter;
            end  
        end

        if ((y >= param03_3_y) && (y < param03_3_y+ 5)) // y value in range
        begin 
            if ((x >= param03_3_x) && (x < param03_3_x+ 3))
            begin 
                if (x == param03_3_x && (y - param03_3_y== 0 || y - param03_3_y== 4))
                oled_data = color_letter;
                else if (x == param03_3_x+1 && (y - param03_3_y != 1) && ( y - param03_3_y != 3))
                oled_data = color_letter;
                else if (x == param03_3_x + 2 && y - param03_3_y != 2)
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param03_P_y) && (y < param03_P_y+ 5)) // y value in range
        begin 
            if ((x >= param03_P_x) && (x < param03_P_x+ 3))
            begin 
                if (x == param03_P_x)
                oled_data = color_letter;
                else if (x == param03_P_x+1 && (y - param03_P_y == 0 || y - param03_P_y == 2))
                oled_data = color_letter;
                else if (x == param03_P_x + 2 && (y - param03_P_y <= 2)&& (y - param03_P_y >= 0))
                oled_data = color_letter;
            end  
        end

        if ((y >= param03_X_y) && (y < param03_X_y+ 5)) // y value in range
        begin 
            if ((x >= param03_X_x) && (x < param03_X_x+ 3))
            begin 
                if (x == param03_X_x && y - param03_X_y != 2)
                oled_data = color_letter;
                else if (x == param03_X_x+1 && y - param03_X_y == 2)
                oled_data = color_letter;
                else if (x == param03_X_x + 2 && y - param03_X_y != 2)
                oled_data = color_letter;
            end  
        end

        
    end
endmodule
