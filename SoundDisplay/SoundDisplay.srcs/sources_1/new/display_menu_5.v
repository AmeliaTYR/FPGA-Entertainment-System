`timescale 1ns / 1ps

module display_menu_5(
    input [7:0] x, 
    input [6:0] y, 
    input [1:0] color_theme, 
    input [3:0] option, 
    output reg [15:0] oled_data
    );
    
    reg [15:0] color_bg, color_letter, color_option;
        
    reg [15:0]  param01_M_x=11, param01_M_y=15,
                param01_I_x=17, param01_I_y=15,
                param01_C_x=21, param01_C_y=15,
                param01_I1_x=26, param01_I1_y=15, 
                param01_N_x=30, param01_N_y=15,
                param01_O_x=36, param01_O_y=15,
                param01_R_x=41, param01_R_y=15,
                param01_P_x=47, param01_P_y=15,
                param01_E_x=51, param01_E_y=15,
                param01_A_x=55, param01_A_y=15,
                param01_K_x=59, param01_K_y=15,
                param01_O1_x=65, param01_O1_y=15,
                param01_N1_x=70, param01_N1_y=15,
                param01_L_x=76, param01_L_y=15,
                param01_E1_x=80, param01_E1_y=15,
                param01_D_x=84, param01_D_y=15, 


                param02_M_x=23, param02_M_y=44,
                param02_I_x=29, param02_I_y=44,
                param02_C_x=33, param02_C_y=44,
                param02_I1_x=38, param02_I1_y=44,
                param02_N_x=42, param02_N_y=44,
                
                param03_P_x=55, param03_P_y=44,
                param03_E_x=59, param03_E_y=44,
                param03_A_x=63, param03_A_y=44,
                param03_K_x=67, param03_K_y=44;

                
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
        1:  begin //MIC_IN
            if ((y >= 44) && (y < 49)) // y value in range
                begin 
                    if ((x >= 17) && (x < 20))
                    begin 
                        if (x == 17)
                        oled_data = color_option;
                        else if (x == 18 && (y - 44 != 0 && y - 44 != 4))
                        oled_data = color_option;
                        else if (x == 19 && y - 44 == 2)
                        oled_data = color_option;
                    end 
                end
            end
        
        0:  begin //PEAK_IN
            if ((y >= 44) && (y < 49)) // y value in range
                begin 
                    if ((x >= 49) && (x < 52))
                    begin 
                        if (x == 49)
                        oled_data = color_option;
                        else if (x == 50 && (y - 44 != 0 && y - 44 != 4))
                        oled_data = color_option;
                        else if (x == 51 && y - 44 == 2)
                        oled_data = color_option;
                    end 
                end
            end             
        endcase
        
        //"MIC IN OR PEAK ON LED"//
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

        if ((y >= param01_I1_y) && (y < param01_I1_y+ 5)) // y value in range
        begin 
            if ((x >= param01_I1_x) && (x < param01_I1_x+ 3))
            begin 
                if (x == param01_I1_x && (y - param01_I1_y == 0 || y - param01_I1_y == 4))
                oled_data = color_letter;
                else if (x == param01_I1_x+1)
                oled_data = color_letter;
                else if (x == param01_I1_x+2 && (y - param01_I1_y == 0 || y - param01_I1_y == 4))
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

        if ((y >= param01_P_y) && (y < param01_P_y+ 5)) // y value in range
        begin 
            if ((x >= param01_P_x) && (x < param01_P_x+ 3))
            begin 
                if (x == param01_P_x)
                oled_data = color_letter;
                else if (x == param01_P_x+1 && (y - param01_P_y == 0 || y - param01_P_y == 2))
                oled_data = color_letter;
                else if (x == param01_P_x + 2 && (y - param01_P_y <= 2)&& (y - param01_P_y >= 0))
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

        if ((y >= param01_N1_y) && (y < param01_N1_y+ 5)) // y value in range
        begin 
            if ((x >= param01_N1_x) && (x < param01_N1_x+ 4))
            begin 
                if (x == param01_N1_x)
                oled_data = color_letter;
                else if (x == param01_N1_x+1 && y - param01_N1_y == 2)
                oled_data = color_letter;
                else if (x == param01_N1_x+2 && y - param01_N1_y == 3)
                oled_data = color_letter;
                else if (x == param01_N1_x+3)
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

        if ((y >= param02_M_y) && (y < param02_M_y+ 5)) // y value in range
        begin 
            if ((x >= param02_M_x) && (x < param02_M_x+ 5))
            begin 
                if (x == param02_M_x)
                oled_data = color_letter;
                else if (x == param02_M_x+1 && y - param02_M_y == 1)
                oled_data = color_letter;
                else if (x == param02_M_x+2 && y - param02_M_y == 2)
                oled_data = color_letter;
                else if (x == param02_M_x+3 && y - param02_M_y == 1)
                oled_data = color_letter;
                else if (x == param02_M_x+4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param02_I_y) && (y < param02_I_y+ 5)) // y value in range
        begin 
            if ((x >= param02_I_x) && (x < param02_I_x+ 3))
            begin 
                if (x == param02_I_x && (y - param02_I_y == 0 || y - param02_I_y == 4))
                oled_data = color_letter;
                else if (x == param02_I_x+1)
                oled_data = color_letter;
                else if (x == param02_I_x+2 && (y - param02_I_y == 0 || y - param02_I_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param02_C_y) && (y < param02_C_y+ 5)) // y value in range
        begin 
            if ((x >= param02_C_x) && (x < param02_C_x+ 3))
            begin 
                if (x == param02_C_x)
                oled_data = color_letter;
                else if (x == param02_C_x+1 && (y - param02_C_y == 0 || y - param02_C_y == 4))
                oled_data = color_letter;
                else if (x == param02_C_x+2 && (y != param02_C_y+2))
                oled_data = color_letter;
            end  
        end

        if ((y >= param02_I1_y) && (y < param02_I1_y+ 5)) // y value in range
        begin 
            if ((x >= param02_I1_x) && (x < param02_I1_x+ 3))
            begin 
                if (x == param02_I1_x && (y - param02_I1_y == 0 || y - param02_I1_y == 4))
                oled_data = color_letter;
                else if (x == param02_I1_x+1)
                oled_data = color_letter;
                else if (x == param02_I1_x+2 && (y - param02_I1_y == 0 || y - param02_I1_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param02_N_y) && (y < param02_N_y+ 5)) // y value in range
        begin 
            if ((x >= param02_N_x) && (x < param02_N_x+ 4))
            begin 
                if (x == param02_N_x)
                oled_data = color_letter;
                else if (x == param02_N_x+1 && y - param02_N_y == 2)
                oled_data = color_letter;
                else if (x == param02_N_x+2 && y - param02_N_y == 3)
                oled_data = color_letter;
                else if (x == param02_N_x+3)
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

        if ((y >= param03_E_y) && (y < param03_E_y+ 5)) // y value in range
        begin 
            if ((x >= param03_E_x) && (x < param03_E_x+ 3))
            begin 
                if (x == param03_E_x)
                oled_data = color_letter;
                else if (x == param03_E_x+1 && (y - param03_E_y == 0 || y - param03_E_y == 2 || y - param03_E_y == 4))
                oled_data = color_letter;
                else if (x == param03_E_x+2 && (y - param03_E_y == 0 || y - param03_E_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param03_A_y) && (y < param03_A_y+ 5)) // y value in range
        begin 
            if ((x >= param03_A_x) && (x < param03_A_x+ 3))
            begin 
                if (x == param03_A_x && (y - param03_A_y <= 4)&& (y - param03_A_y >= 1))
	            oled_data = color_letter;
	            else if (x == param03_A_x+1 && (y - param03_A_y == 3 || y - param03_A_y == 0))
                oled_data = color_letter;
	            else if (x == param03_A_x+2 && (y - param03_A_y <= 4)&& (y - param03_A_y >= 1))
	            oled_data = color_letter;
            end  
        end

        if ((y >= param03_K_y) && (y < param03_K_y+ 5)) // y value in range
        begin 
            if ((x >= param03_K_x) && (x < param03_K_x+ 4))
            begin 
	            if (x == param03_K_x)
	            oled_data = color_letter;
	            else if (x == param03_K_x+1 && y - param03_K_y == 2)
                oled_data = color_letter;
	            else if (x == param03_K_x+2 && (y - param03_K_y == 1 || y - param03_K_y == 3))
	            oled_data = color_letter;
                else if (x == param03_K_x+3 && (y - param03_K_y == 0 || y - param03_K_y == 4))
	            oled_data = color_letter;
            end  
        end        
    end
endmodule
