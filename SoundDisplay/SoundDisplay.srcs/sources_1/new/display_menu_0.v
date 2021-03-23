`timescale 1ns / 1ps

module display_menu_0(
    input [7:0] x,
    input [6:0] y,
    input [1:0] color_theme,
    input [3:0] choice,
    output reg [15:0] oled_data
    );
    
    reg [15:0] color_bg, color_letter, color_choice;
    
    reg [15:0]  param01_S_x=10, param01_S_y=5, 
                param01_H_x=14, param01_H_y=5, 
                param01_O_x=18, param01_O_y=5, 
                param01_W_x=23, param01_W_y=5, 
                param01_B_x=30, param01_B_y=5, 
                param01_O1_x=34, param01_O1_y=5, 
                param01_R_x=39, param01_R_y=5, 
                param01_D_x=44, param01_D_y=5, 
                param01_E_x=48, param01_E_y=5, 
                param01_R1_x=52, param01_R1_y=5,
                
                param02_S_x=10, param02_S_y=13, 
                param02_H_x=14, param02_H_y=13, 
                param02_O_x=18, param02_O_y=13, 
                param02_W_x=23, param02_W_y=13, 
                param02_V_x=30, param02_V_y=13, 
                param02_O1_x=36, param02_O1_y=13, 
                param02_L_x=41, param02_L_y=13, 
                param02_U_x=45, param02_U_y=13, 
                param02_M_x=50, param02_M_y=13, 
                param02_E_x=56, param02_E_y=13, 
                param02_B_x=61, param02_B_y=13, 
                param02_A_x=65, param02_A_y=13, 
                param02_R_x=69, param02_R_y=13, 
                
                param03_S_x=10, param03_S_y=21, 
                param03_H_x=14, param03_H_y=21, 
                param03_O_x=18, param03_O_y=21, 
                param03_W_x=23, param03_W_y=21, 
                param03_I_x=30, param03_I_y=21, 
                param03_N_x=34, param03_N_y=21, 
                param03_D_x=39, param03_D_y=21, 
                param03_I1_x=43, param03_I1_y=21, 
                param03_C_x=47, param03_C_y=21, 
                param03_A_x=51, param03_A_y=21, 
                param03_T_x=55, param03_T_y=21, 
                param03_O1_x=59, param03_O1_y=21, 
                param03_R_x=64, param03_R_y=21, 
                
                param04_B_x=10, param04_B_y=29, 
                param04_O_x=14, param04_O_y=29, 
                param04_R_x=19, param04_R_y=29, 
                param04_D_x=24, param04_D_y=29, 
                param04_E_x=28, param04_E_y=29, 
                param04_R1_x=32, param04_R1_y=29, 
                param04_T_x=38, param04_T_y=29, 
                param04_H_x=42, param04_H_y=29, 
                param04_I_x=46, param04_I_y=29, 
                param04_C_x=50, param04_C_y=29, 
                param04_K_x=54, param04_K_y=29, 
                param04_N_x=59, param04_N_y=29, 
                param04_E1_x=64, param04_E1_y=29, 
                param04_S_x=68, param04_S_y=29, 
                param04_S1_x=72, param04_S1_y=29,
                
                param05_M_x=10, param05_M_y=37,
                param05_I_x=16, param05_I_y=37,
                param05_C_x=20, param05_C_y=37,
                param05_I1_x=25, param05_I1_y=37,
                param05_N_x=29, param05_N_y=37,
                param05_O_x=35, param05_O_y=37,
                param05_R_x=40, param05_R_y=37,
                param05_P_x=46, param05_P_y=37,
                param05_E_x=50, param05_E_y=37,
                param05_A_x=54, param05_A_y=37,
                param05_K_x=58, param05_K_y=37,
                param05_O1_x=64, param05_O1_y=37,
                param05_N1_x=69, param05_N1_y=37,
                param05_L_x=75, param05_L_y=37,
                param05_E1_x=79, param05_E1_y=37,
                param05_D_x=83, param05_D_y=37, 
                
                param06_M_x=10, param06_M_y=45, 
                param06_I_x=16, param06_I_y=45, 
                param06_C_x=20, param06_C_y=45, 
                param06_I1_x=25, param06_I1_y=45, 
                param06_N_x=29, param06_N_y=45, 
                param06_O_x=35, param06_O_y=45, 
                param06_R_x=40, param06_R_y=45, 
                param06_P_x=46, param06_P_y=45, 
                param06_E_x=50, param06_E_y=45, 
                param06_A_x=54, param06_A_y=45, 
                param06_K_x=58, param06_K_y=45, 
                param06_O1_x=64, param06_O1_y=45, 
                param06_N1_x=69, param06_N1_y=45, 
                param06_7_x=75, param06_7_y=45, 
                param06_S_x=80, param06_S_y=45, 
                param06_E1_x=84, param06_E1_y=45, 
                param06_G_x=88, param06_G_y=45, 
                
                param07_G_x=10, param07_G_y=53, 
                param07_A_x=15, param07_A_y=53, 
                param07_M_x=19, param07_M_y=53, 
                param07_E_x=25, param07_E_y=53, 
                param07_M1_x=30, param07_M1_y=53, 
                param07_O_x=36, param07_O_y=53, 
                param07_D_x=41, param07_D_y=53, 
                param07_E1_x=45, param07_E1_y=53; 

    // decide colour theme
    always @ (color_theme)
    begin
       case (color_theme)
           1: // black bg, white text, blue arrow
           begin
               color_bg = 16'h0000; // background
               color_letter = 16'hFFFF;// alphabet color
               color_choice = 16'h001F; //arrow color
           end
           2: // white bg, black text, red arrow
           begin
               color_bg = 16'hFFFF; // background
               color_letter = 16'h0000;// alphabet color
               color_choice = 16'hF800; //arrow color
           end 
           3: // blue bg, white text, red arrow
           begin
               color_bg = 16'h001F; // background
               color_letter = 16'hFFFF;// alphabet color
               color_choice = 16'hF800; //arrow color
           end
           default:
           begin 
               color_bg = 16'hFFFF; // background
               color_letter = 16'hFFFF;// alphabet color
               color_choice = 16'hFFFF; //arrow color           
           end
       endcase
    end
    
    always @ (x, y, color_theme, choice)
    begin            
        oled_data = color_bg;
        
        case (choice)
        1:  begin
            if ((y >= 5) && (y < 10)) // y value in range
                begin 
                    if ((x >= 4) && (x < 7))
                    begin 
                        if (x == 4)
                        oled_data = color_choice;
                        else if (x == 5 && (y - 5 != 0 && y - 5 != 4))
                        oled_data = color_choice;
                        else if (x == 6 && y - 5 == 2)
                        oled_data = color_choice;
                    end 
                end
            end
        
        2:  begin
            if ((y >= 13) && (y < 18)) // y value in range
                begin 
                    if ((x >= 4) && (x < 7))
                    begin 
                        if (x == 4)
                        oled_data = color_choice;
                        else if (x == 5 && (y - 13 != 0 && y - 13 != 4))
                        oled_data = color_choice;
                        else if (x == 6 && y - 13 == 2)
                        oled_data = color_choice;
                    end 
                end
            end
                
        3:  begin
            if ((y >= 21) && (y < 26)) // y value in range
                begin 
                    if ((x >= 4) && (x < 7))
                    begin 
                        if (x == 4)
                        oled_data = color_choice;
                        else if (x == 5 && (y - 21 != 0 && y - 21 != 4))
                        oled_data = color_choice;
                        else if (x == 6 && y - 21 == 2)
                        oled_data = color_choice;
                    end 
                end
            end
            
        4:  begin
            if ((y >= 29) && (y < 34)) // y value in range
                begin 
                    if ((x >= 4) && (x < 7))
                    begin 
                        if (x == 4)
                        oled_data = color_choice;
                        else if (x == 5 && (y - 29 != 0 && y - 29 != 4))
                        oled_data = color_choice;
                        else if (x == 6 && y - 29 == 2)
                        oled_data = color_choice;
                    end 
                end
            end
            
        5:  begin
            if ((y >= 37) && (y < 42)) // y value in range
                begin 
                    if ((x >= 4) && (x < 7))
                    begin 
                        if (x == 4)
                        oled_data = color_choice;
                        else if (x == 5 && (y - 37 != 0 && y - 37 != 4))
                        oled_data = color_choice;
                        else if (x == 6 && y - 37 == 2)
                        oled_data = color_choice;
                    end 
                end
            end
            
        6:  begin
            if ((y >= 45) && (y < 50)) // y value in range
                begin 
                    if ((x >= 4) && (x < 7))
                    begin 
                        if (x == 4)
                        oled_data = color_choice;
                        else if (x == 5 && (y - 45 != 0 && y - 45 != 4))
                        oled_data = color_choice;
                        else if (x == 6 && y - 45 == 2)
                        oled_data = color_choice;
                    end 
                end
            end
            
        7:  begin
            if ((y >= 53) && (y < 58)) // y value in range
                begin 
                    if ((x >= 4) && (x < 7))
                    begin 
                        if (x == 4)
                        oled_data = color_choice;
                        else if (x == 5 && (y - 53 != 0 && y - 53 != 4))
                        oled_data = color_choice;
                        else if (x == 6 && y - 53 == 2)
                        oled_data = color_choice;
                    end 
                end
            end
        endcase
        
        //"SHOW BORDER"//
        if ((y >= param01_S_y) && (y < param01_S_y+ 5)) // y value in range
        begin 
            if ((x >= param01_S_x) && (x < param01_S_x+ 3))
            begin 
                if (x == param01_S_x && y - param01_S_y != 3)
                oled_data = color_letter;
                else if (x == param01_S_x+1 && (y - param01_S_y != 1) && (y - param01_S_y != 3))
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
        
        //"SHOW VOLUME BAR"//
        if ((y >= param02_S_y) && (y < param02_S_y+ 5)) // y value in range
        begin 
            if ((x >= param02_S_x) && (x < param02_S_x+ 3))
            begin 
                if (x == param02_S_x && y - param02_S_y != 3)
                oled_data = color_letter;
                else if (x == param02_S_x+1 && (y - param02_S_y != 1) && ( y - param02_S_y != 3))
                oled_data = color_letter;
                else if (x == param02_S_x + 2 && (y - param02_S_y != 1)&& (y - param02_S_y != 2))
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param02_H_y) && (y < param02_H_y+ 5)) // y value in range
        begin 
            if ((x >= param02_H_x) && (x < param02_H_x+ 3))
            begin 
                if (x == param02_H_x)
                oled_data = color_letter;
                else if (x == param02_H_x+1 && y - param02_H_y == 2)
                oled_data = color_letter;
                else if (x == param02_H_x+2)
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param02_O_y) && (y < param02_O_y+ 5)) // y value in range
        begin 
            if ((x >= param02_O_x) && (x < param02_O_x+ 4))
            begin 
                if (x == param02_O_x && (y - param02_O_y <= 3)&& (y - param02_O_y >= 1))
                oled_data = color_letter;
                else if (x == param02_O_x+1 && (y - param02_O_y == 0 || y - param02_O_y == 4))
                oled_data = color_letter;
                else if (x == param02_O_x+2 && (y - param02_O_y == 0 || y - param02_O_y == 4))
                oled_data = color_letter;
                else if (x == param02_O_x + 3 && (y - param02_O_y <= 3)&& (y - param02_O_y >= 1))
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param02_W_y) && (y < param02_W_y+ 5)) // y value in range
        begin 
            if ((x >= param02_W_x) && (x < param02_W_x+ 5))
            begin 
                if (x == param02_W_x && y - param02_W_y != 4)
                oled_data = color_letter;
                else if (x == param02_W_x+1 && y - param02_W_y == 4)
                oled_data = color_letter;
                else if (x == param02_W_x + 2)
                oled_data = color_letter;
                else if (x == param02_W_x + 3 && y - param02_W_y == 4)
                oled_data = color_letter;
                else if (x == param02_W_x + 4 && y - param02_W_y != 4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param02_V_y) && (y < param02_V_y+ 5)) // y value in range
        begin 
            if ((x >= param02_V_x) && (x < param02_V_x+ 5))
            begin 
                if (x == param02_V_x && (y - param02_V_y == 0 || y - param02_V_y == 1))
                oled_data = color_letter;
	            else if (x == param02_V_x+1 && (y - param02_V_y == 2 || y - param02_V_y == 3))
                oled_data = color_letter;
                else if (x == param02_V_x + 2 && y - param02_V_y == 4)
	            oled_data = color_letter;
                else if (x == param02_V_x + 3 && (y - param02_V_y == 2 || y - param02_V_y == 3))
	            oled_data = color_letter;
                else if (x == param02_V_x + 4 && (y - param02_V_y == 0 || y - param02_V_y == 1))
	            oled_data = color_letter;
            end  
		end
		
        if ((y >= param02_O1_y) && (y < param02_O1_y+ 5)) // y value in range
        begin 
            if ((x >= param02_O1_x) && (x < param02_O1_x+ 4))
            begin 
                if (x == param02_O1_x && (y - param02_O1_y <= 3)&& (y - param02_O1_y >= 1))
                oled_data = color_letter;
                else if (x == param02_O1_x+1 && (y - param02_O1_y == 0 || y - param02_O1_y == 4))
                oled_data = color_letter;
                else if (x == param02_O1_x+2 && (y - param02_O1_y == 0 || y - param02_O1_y == 4))
                oled_data = color_letter;
                else if (x == param02_O1_x + 3 && (y - param02_O1_y <= 3)&& (y - param02_O1_y >= 1))
                oled_data = color_letter;
            end  
        end

        if ((y >= param02_L_y) && (y < param02_L_y+ 5)) // y value in range
        begin 
            if ((x >= param02_L_x) && (x < param02_L_x+ 3))
            begin 
                if (x == param02_L_x)
	            oled_data = color_letter;
	            else if (x == param02_L_x+1 && y - param02_L_y == 4)
                oled_data = color_letter;
	            else if (x == param02_L_x+2 && (y - param02_L_y == 3 || y - param02_L_y == 4))
	            oled_data = color_letter;
            end  
		end

        if ((y >= param02_U_y) && (y < param02_U_y+ 5)) // y value in range
        begin 
            if ((x >= param02_U_x) && (x < param02_U_x+ 4))
            begin 
                if (x == param02_U_x && y - param02_U_y != 4)
	            oled_data = color_letter;
	            else if (x == param02_U_x+1 && y - param02_U_y == 4)
                oled_data = color_letter;
                else if (x == param02_U_x + 2 && y - param02_U_y == 4)
	            oled_data = color_letter;
                else if (x == param02_U_x + 3 && y - param02_U_y != 4)
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
        
        if ((y >= param02_B_y) && (y < param02_B_y+ 5)) // y value in range
        begin 
            if ((x >= param02_B_x) && (x < param02_B_x+ 3))
            begin 
                if (x == param02_B_x)
                oled_data = color_letter;
                else if (x == param02_B_x+1 && (y - param02_B_y == 0 || y - param02_B_y == 2 || y - param02_B_y == 4))
                oled_data = color_letter;
                else if (x == param02_B_x+2 && (y - param02_B_y <= 3)&& (y - param02_B_y >= 1))
                oled_data = color_letter;
            end  
        end

        if ((y >= param02_A_y) && (y < param02_A_y+ 5)) // y value in range
        begin 
            if ((x >= param02_A_x) && (x < param02_A_x+ 3))
            begin 
                if (x == param02_A_x && (y - param02_A_y <= 4)&& (y - param02_A_y >= 1))
	            oled_data = color_letter;
	            else if (x == param02_A_x+1 && (y - param02_A_y == 3 || y - param02_A_y == 0))
                oled_data = color_letter;
	            else if (x == param02_A_x+2 && (y - param02_A_y <= 4)&& (y - param02_A_y >= 1))
	            oled_data = color_letter;
            end  
        end

        if ((y >= param02_R_y) && (y < param02_R_y+ 5)) // y value in range
        begin 
            if ((x >= param02_R_x) && (x < param02_R_x+ 4))
            begin 
                if (x == param02_R_x)
                oled_data = color_letter;
                else if (x == param02_R_x+1 && (y - param02_R_y == 0 || y - param02_R_y == 2))
                oled_data = color_letter;
                else if (x == param02_R_x + 2 && (y - param02_R_y != 2)&& (y - param02_R_y != 4))
                oled_data = color_letter;
                else if (x == param02_R_x+3 && y - param02_R_y == 4)
                oled_data = color_letter;
            end  
        end

        //"SHOW INDICATOR"//
        if ((y >= param03_S_y) && (y < param03_S_y+ 5)) // y value in range
        begin 
            if ((x >= param03_S_x) && (x < param03_S_x+ 3))
            begin 
                if (x == param03_S_x && y - param03_S_y != 3)
                oled_data = color_letter;
                else if (x == param03_S_x+1 && (y - param03_S_y != 1) && ( y - param03_S_y != 3))
                oled_data = color_letter;
                else if (x == param03_S_x + 2 && (y - param03_S_y != 1)&& (y - param03_S_y != 2))
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param03_H_y) && (y < param03_H_y+ 5)) // y value in range
        begin 
            if ((x >= param03_H_x) && (x < param03_H_x+ 3))
            begin 
                if (x == param03_H_x)
                oled_data = color_letter;
                else if (x == param03_H_x+1 && y - param03_H_y == 2)
                oled_data = color_letter;
                else if (x == param03_H_x+2)
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
        
        if ((y >= param03_W_y) && (y < param03_W_y+ 5)) // y value in range
        begin 
            if ((x >= param03_W_x) && (x < param03_W_x+ 5))
            begin 
                if (x == param03_W_x && y - param03_W_y != 4)
                oled_data = color_letter;
                else if (x == param03_W_x+1 && y - param03_W_y == 4)
                oled_data = color_letter;
                else if (x == param03_W_x + 2)
                oled_data = color_letter;
                else if (x == param03_W_x + 3 && y - param03_W_y == 4)
                oled_data = color_letter;
                else if (x == param03_W_x + 4 && y - param03_W_y != 4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param03_I_y) && (y < param03_I_y+ 5)) // y value in range
        begin 
            if ((x >= param03_I_x) && (x < param03_I_x+ 3))
            begin 
	            if (x == param03_I_x && (y - param03_I_y == 0 || y - param03_I_y == 4))
                oled_data = color_letter;
	            else if (x == param03_I_x+1)
                oled_data = color_letter;
	            else if (x == param03_I_x+2 && (y - param03_I_y == 0 || y - param03_I_y == 4))
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

        if ((y >= param03_D_y) && (y < param03_D_y+ 5)) // y value in range
        begin 
            if ((x >= param03_D_x) && (x < param03_D_x+ 3))
            begin 
                if (x == param03_D_x)
                oled_data = color_letter;
                else if (x == param03_D_x+1 && (y - param03_D_y == 0 || y - param03_D_y == 4))
                oled_data = color_letter;
                else if (x == param03_D_x+2 && (y - param03_D_y <= 3)&& (y - param03_D_y >= 1))
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param03_I1_y) && (y < param03_I1_y+ 5)) // y value in range
        begin 
            if ((x >= param03_I1_x) && (x < param03_I1_x+ 3))
            begin 
                if (x == param03_I1_x && (y - param03_I1_y == 0 || y - param03_I1_y == 4))
                oled_data = color_letter;
                else if (x == param03_I1_x+1)
                oled_data = color_letter;
                else if (x == param03_I1_x+2 && (y - param03_I1_y == 0 || y - param03_I1_y == 4))
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param03_C_y) && (y < param03_C_y+ 5)) // y value in range
        begin 
            if ((x >= param03_C_x) && (x < param03_C_x+ 3))
            begin 
                if (x == param03_C_x)
                oled_data = color_letter;
                else if (x == param03_C_x+1 && (y - param03_C_y == 0 || y - param03_C_y == 4))
                oled_data = color_letter;
                else if (x == param03_C_x+2 && (y != param03_C_y+2))
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

        if ((y >= param03_T_y) && (y < param03_T_y+ 5)) // y value in range
        begin 
            if ((x >= param03_T_x) && (x < param03_T_x+ 3))
            begin 
                if (x == param03_T_x && y - param03_T_y == 0)
	            oled_data = color_letter;
	            else if (x == param03_T_x+1)
                oled_data = color_letter;
                else if (x == param03_T_x + 2 && y - param03_T_y == 0)
	            oled_data = color_letter;
            end  
		end

        if ((y >= param03_O1_y) && (y < param03_O1_y+ 5)) // y value in range
        begin 
            if ((x >= param03_O1_x) && (x < param03_O1_x+ 4))
            begin 
                if (x == param03_O1_x && (y - param03_O1_y <= 3)&& (y - param03_O1_y >= 1))
                oled_data = color_letter;
                else if (x == param03_O1_x+1 && (y - param03_O1_y == 0 || y - param03_O1_y == 4))
                oled_data = color_letter;
                else if (x == param03_O1_x+2 && (y - param03_O1_y == 0 || y - param03_O1_y == 4))
                oled_data = color_letter;
                else if (x == param03_O1_x + 3 && (y - param03_O1_y <= 3)&& (y - param03_O1_y >= 1))
                oled_data = color_letter;
            end  
        end

        if ((y >= param03_R_y) && (y < param03_R_y+ 5)) // y value in range
        begin 
            if ((x >= param03_R_x) && (x < param03_R_x+ 4))
            begin 
                if (x == param03_R_x)
                oled_data = color_letter;
                else if (x == param03_R_x+1 && (y - param03_R_y == 0 || y - param03_R_y == 2))
                oled_data = color_letter;
                else if (x == param03_R_x + 2 && (y - param03_R_y != 2)&& (y - param03_R_y != 4))
                oled_data = color_letter;
                else if (x == param03_R_x+3 && y - param03_R_y == 4)
                oled_data = color_letter;
            end  
        end

        //"BORDER THICKNESS"//
        if ((y >= param04_B_y) && (y < param04_B_y+ 5)) // y value in range
        begin 
            if ((x >= param04_B_x) && (x < param04_B_x+ 3))
            begin 
                if (x == param04_B_x)
                oled_data = color_letter;
                else if (x == param04_B_x+1 && (y - param04_B_y == 0 || y - param04_B_y == 2 || y - param04_B_y == 4))
                oled_data = color_letter;
                else if (x == param04_B_x+2 && (y - param04_B_y <= 3)&& (y - param04_B_y >= 1))
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param04_O_y) && (y < param04_O_y+ 5)) // y value in range
        begin 
            if ((x >= param04_O_x) && (x < param04_O_x+ 4))
            begin 
                if (x == param04_O_x && (y - param04_O_y <= 3)&& (y - param04_O_y >= 1))
                oled_data = color_letter;
                else if (x == param04_O_x+1 && (y - param04_O_y == 0 || y - param04_O_y == 4))
                oled_data = color_letter;
                else if (x == param04_O_x+2 && (y - param04_O_y == 0 || y - param04_O_y == 4))
                oled_data = color_letter;
                else if (x == param04_O_x + 3 && (y - param04_O_y <= 3)&& (y - param04_O_y >= 1))
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param04_R_y) && (y < param04_R_y+ 5)) // y value in range
        begin 
            if ((x >= param04_R_x) && (x < param04_R_x+ 4))
            begin 
                if (x == param04_R_x)
                oled_data = color_letter;
                else if (x == param04_R_x+1 && (y - param04_R_y == 0 || y - param04_R_y == 2))
                oled_data = color_letter;
                else if (x == param04_R_x + 2 && (y - param04_R_y != 2)&& (y - param04_R_y != 4))
                oled_data = color_letter;
                else if (x == param04_R_x+3 && y - param04_R_y == 4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param04_D_y) && (y < param04_D_y+ 5)) // y value in range
        begin 
            if ((x >= param04_D_x) && (x < param04_D_x+ 3))
            begin 
                if (x == param04_D_x)
                oled_data = color_letter;
                else if (x == param04_D_x+1 && (y - param04_D_y == 0 || y - param04_D_y == 4))
                oled_data = color_letter;
                else if (x == param04_D_x+2 && (y - param04_D_y <= 3)&& (y - param04_D_y >= 1))
                oled_data = color_letter;
            end  
        end

        if ((y >= param04_E_y) && (y < param04_E_y+ 5)) // y value in range
        begin 
            if ((x >= param04_E_x) && (x < param04_E_x+ 3))
            begin 
                if (x == param04_E_x)
                oled_data = color_letter;
                else if (x == param04_E_x+1 && (y - param04_E_y == 0 || y - param04_E_y == 2 || y - param04_E_y == 4))
                oled_data = color_letter;
                else if (x == param04_E_x+2 && (y - param04_E_y == 0 || y - param04_E_y == 4))
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param04_R1_y) && (y < param04_R1_y+ 5)) // y value in range
        begin 
            if ((x >= param04_R1_x) && (x < param04_R1_x+ 4))
            begin 
                if (x == param04_R1_x)
                oled_data = color_letter;
                else if (x == param04_R1_x+1 && (y - param04_R1_y == 0 || y - param04_R1_y == 2))
                oled_data = color_letter;
                else if (x == param04_R1_x + 2 && (y - param04_R1_y != 2)&& (y - param04_R1_y != 4))
                oled_data = color_letter;
                else if (x == param04_R1_x+3 && y - param04_R1_y == 4)
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param04_T_y) && (y < param04_T_y+ 5)) // y value in range
        begin 
            if ((x >= param04_T_x) && (x < param04_T_x+ 3))
            begin 
                if (x == param04_T_x && y - param04_T_y == 0)
                oled_data = color_letter;
                else if (x == param04_T_x+1)
                oled_data = color_letter;
                else if (x == param04_T_x + 2 && y - param04_T_y == 0)
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param04_H_y) && (y < param04_H_y+ 5)) // y value in range
        begin 
            if ((x >= param04_H_x) && (x < param04_H_x+ 3))
            begin 
                if (x == param04_H_x)
                oled_data = color_letter;
                else if (x == param04_H_x+1 && y - param04_H_y == 2)
                oled_data = color_letter;
                else if (x == param04_H_x+2)
                oled_data = color_letter;
            end  
        end

        if ((y >= param04_I_y) && (y < param04_I_y+ 5)) // y value in range
        begin 
            if ((x >= param04_I_x) && (x < param04_I_x+ 3))
            begin 
                if (x == param04_I_x && (y - param04_I_y == 0 || y - param04_I_y == 4))
                oled_data = color_letter;
                else if (x == param04_I_x+1)
                oled_data = color_letter;
                else if (x == param04_I_x+2 && (y - param04_I_y == 0 || y - param04_I_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param04_C_y) && (y < param04_C_y+ 5)) // y value in range
        begin 
            if ((x >= param04_C_x) && (x < param04_C_x+ 3))
            begin 
                if (x == param04_C_x)
                oled_data = color_letter;
                else if (x == param04_C_x+1 && (y - param04_C_y == 0 || y - param04_C_y == 4))
                oled_data = color_letter;
                else if (x == param04_C_x+2 && (y != param04_C_y+2))
                oled_data = color_letter;
            end  
        end

        if ((y >= param04_K_y) && (y < param04_K_y+ 5)) // y value in range
        begin 
            if ((x >= param04_K_x) && (x < param04_K_x+ 4))
            begin 
	            if (x == param04_K_x)
	            oled_data = color_letter;
	            else if (x == param04_K_x+1 && y - param04_K_y == 2)
                oled_data = color_letter;
	            else if (x == param04_K_x+2 && (y - param04_K_y == 1 || y - param04_K_y == 3))
	            oled_data = color_letter;
                else if (x == param04_K_x+3 && (y - param04_K_y == 0 || y - param04_K_y == 4))
	            oled_data = color_letter;
            end  
        end

        if ((y >= param04_N_y) && (y < param04_N_y+ 5)) // y value in range
        begin 
            if ((x >= param04_N_x) && (x < param04_N_x+ 4))
            begin 
                if (x == param04_N_x)
                oled_data = color_letter;
                else if (x == param04_N_x+1 && y - param04_N_y == 2)
                oled_data = color_letter;
                else if (x == param04_N_x+2 && y - param04_N_y == 3)
                oled_data = color_letter;
                else if (x == param04_N_x+3)
                oled_data = color_letter;
            end  
        end

        if ((y >= param04_E1_y) && (y < param04_E1_y+ 5)) // y value in range
        begin 
            if ((x >= param04_E1_x) && (x < param04_E1_x+ 3))
            begin 
                if (x == param04_E1_x)
                oled_data = color_letter;
                else if (x == param04_E1_x+1 && (y - param04_E1_y == 0 || y - param04_E1_y == 2 || y - param04_E1_y == 4))
                oled_data = color_letter;
                else if (x == param04_E1_x+2 && (y - param04_E1_y == 0 || y - param04_E1_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param04_S_y) && (y < param04_S_y+ 5)) // y value in range
        begin 
            if ((x >= param04_S_x) && (x < param04_S_x+ 3))
            begin 
                if (x == param04_S_x && y - param04_S_y != 3)
                oled_data = color_letter;
                else if (x == param04_S_x+1 && (y - param04_S_y != 1) && ( y - param04_S_y != 3))
                oled_data = color_letter;
                else if (x == param04_S_x + 2 && (y - param04_S_y != 1)&& (y - param04_S_y != 2))
                oled_data = color_letter;
            end  
        end

        if ((y >= param04_S1_y) && (y < param04_S1_y+ 5)) // y value in range
        begin 
            if ((x >= param04_S1_x) && (x < param04_S1_x+ 3))
            begin 
                if (x == param04_S1_x && y - param04_S1_y != 3)
                oled_data = color_letter;
                else if (x == param04_S1_x+1 && (y - param04_S1_y != 1) && ( y - param04_S1_y != 3))
                oled_data = color_letter;
                else if (x == param04_S1_x + 2 && (y - param04_S1_y != 1)&& (y - param04_S1_y != 2))
                oled_data = color_letter;
            end  
        end
        
        //"MIC IN OR PEAK ON LED"//
        if ((y >= param05_M_y) && (y < param05_M_y+ 5)) // y value in range
        begin 
            if ((x >= param05_M_x) && (x < param05_M_x+ 5))
            begin 
                if (x == param05_M_x)
                oled_data = color_letter;
                else if (x == param05_M_x+1 && y - param05_M_y == 1)
                oled_data = color_letter;
                else if (x == param05_M_x+2 && y - param05_M_y == 2)
                oled_data = color_letter;
                else if (x == param05_M_x+3 && y - param05_M_y == 1)
                oled_data = color_letter;
                else if (x == param05_M_x+4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param05_I_y) && (y < param05_I_y+ 5)) // y value in range
        begin 
            if ((x >= param05_I_x) && (x < param05_I_x+ 3))
            begin 
                if (x == param05_I_x && (y - param05_I_y == 0 || y - param05_I_y == 4))
                oled_data = color_letter;
                else if (x == param05_I_x+1)
                oled_data = color_letter;
                else if (x == param05_I_x+2 && (y - param05_I_y == 0 || y - param05_I_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param05_C_y) && (y < param05_C_y+ 5)) // y value in range
        begin 
            if ((x >= param05_C_x) && (x < param05_C_x+ 3))
            begin 
                if (x == param05_C_x)
                oled_data = color_letter;
                else if (x == param05_C_x+1 && (y - param05_C_y == 0 || y - param05_C_y == 4))
                oled_data = color_letter;
                else if (x == param05_C_x+2 && (y != param05_C_y+2))
                oled_data = color_letter;
            end  
        end

        if ((y >= param05_I1_y) && (y < param05_I1_y+ 5)) // y value in range
        begin 
            if ((x >= param05_I1_x) && (x < param05_I1_x+ 3))
            begin 
                if (x == param05_I1_x && (y - param05_I1_y == 0 || y - param05_I1_y == 4))
                oled_data = color_letter;
                else if (x == param05_I1_x+1)
                oled_data = color_letter;
                else if (x == param05_I1_x+2 && (y - param05_I1_y == 0 || y - param05_I1_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param05_N_y) && (y < param05_N_y+ 5)) // y value in range
        begin 
            if ((x >= param05_N_x) && (x < param05_N_x+ 4))
            begin 
                if (x == param05_N_x)
                oled_data = color_letter;
                else if (x == param05_N_x+1 && y - param05_N_y == 2)
                oled_data = color_letter;
                else if (x == param05_N_x+2 && y - param05_N_y == 3)
                oled_data = color_letter;
                else if (x == param05_N_x+3)
                oled_data = color_letter;
            end  
        end

        if ((y >= param05_O_y) && (y < param05_O_y+ 5)) // y value in range
        begin 
            if ((x >= param05_O_x) && (x < param05_O_x+ 4))
            begin 
                if (x == param05_O_x && (y - param05_O_y <= 3)&& (y - param05_O_y >= 1))
                oled_data = color_letter;
                else if (x == param05_O_x+1 && (y - param05_O_y == 0 || y - param05_O_y == 4))
                oled_data = color_letter;
                else if (x == param05_O_x+2 && (y - param05_O_y == 0 || y - param05_O_y == 4))
                oled_data = color_letter;
                else if (x == param05_O_x + 3 && (y - param05_O_y <= 3)&& (y - param05_O_y >= 1))
                oled_data = color_letter;
            end  
        end

        if ((y >= param05_R_y) && (y < param05_R_y+ 5)) // y value in range
        begin 
            if ((x >= param05_R_x) && (x < param05_R_x+ 4))
            begin 
                if (x == param05_R_x)
                oled_data = color_letter;
                else if (x == param05_R_x+1 && (y - param05_R_y == 0 || y - param05_R_y == 2))
                oled_data = color_letter;
                else if (x == param05_R_x + 2 && (y - param05_R_y != 2)&& (y - param05_R_y != 4))
                oled_data = color_letter;
                else if (x == param05_R_x+3 && y - param05_R_y == 4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param05_P_y) && (y < param05_P_y+ 5)) // y value in range
        begin 
            if ((x >= param05_P_x) && (x < param05_P_x+ 3))
            begin 
                if (x == param05_P_x)
	            oled_data = color_letter;
	            else if (x == param05_P_x+1 && (y - param05_P_y == 0 || y - param05_P_y == 2))
                oled_data = color_letter;
                else if (x == param05_P_x + 2 && (y - param05_P_y <= 2)&& (y - param05_P_y >= 0))
	            oled_data = color_letter;
            end  
        end

        if ((y >= param05_E_y) && (y < param05_E_y+ 5)) // y value in range
        begin 
            if ((x >= param05_E_x) && (x < param05_E_x+ 3))
            begin 
                if (x == param05_E_x)
                oled_data = color_letter;
                else if (x == param05_E_x+1 && (y - param05_E_y == 0 || y - param05_E_y == 2 || y - param05_E_y == 4))
                oled_data = color_letter;
                else if (x == param05_E_x+2 && (y - param05_E_y == 0 || y - param05_E_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param05_A_y) && (y < param05_A_y+ 5)) // y value in range
        begin 
            if ((x >= param05_A_x) && (x < param05_A_x+ 3))
            begin 
                if (x == param05_A_x && (y - param05_A_y <= 4)&& (y - param05_A_y >= 1))
	            oled_data = color_letter;
	            else if (x == param05_A_x+1 && (y - param05_A_y == 3 || y - param05_A_y == 0))
                oled_data = color_letter;
	            else if (x == param05_A_x+2 && (y - param05_A_y <= 4)&& (y - param05_A_y >= 1))
	            oled_data = color_letter;
            end  
        end

        if ((y >= param05_K_y) && (y < param05_K_y+ 5)) // y value in range
        begin 
            if ((x >= param05_K_x) && (x < param05_K_x+ 4))
            begin 
	            if (x == param05_K_x)
	            oled_data = color_letter;
	            else if (x == param05_K_x+1 && y - param05_K_y == 2)
                oled_data = color_letter;
	            else if (x == param05_K_x+2 && (y - param05_K_y == 1 || y - param05_K_y == 3))
	            oled_data = color_letter;
                else if (x == param05_K_x+3 && (y - param05_K_y == 0 || y - param05_K_y == 4))
	            oled_data = color_letter;
            end  
        end

        if ((y >= param05_O1_y) && (y < param05_O1_y+ 5)) // y value in range
        begin 
            if ((x >= param05_O1_x) && (x < param05_O1_x+ 4))
            begin 
                if (x == param05_O1_x && (y - param05_O1_y <= 3)&& (y - param05_O1_y >= 1))
                oled_data = color_letter;
                else if (x == param05_O1_x+1 && (y - param05_O1_y == 0 || y - param05_O1_y == 4))
                oled_data = color_letter;
                else if (x == param05_O1_x+2 && (y - param05_O1_y == 0 || y - param05_O1_y == 4))
                oled_data = color_letter;
                else if (x == param05_O1_x + 3 && (y - param05_O1_y <= 3)&& (y - param05_O1_y >= 1))
                oled_data = color_letter;
            end  
        end

        if ((y >= param05_N1_y) && (y < param05_N1_y+ 5)) // y value in range
        begin 
            if ((x >= param05_N1_x) && (x < param05_N1_x+ 4))
            begin 
                if (x == param05_N1_x)
                oled_data = color_letter;
                else if (x == param05_N1_x+1 && y - param05_N1_y == 2)
                oled_data = color_letter;
                else if (x == param05_N1_x+2 && y - param05_N1_y == 3)
                oled_data = color_letter;
                else if (x == param05_N1_x+3)
                oled_data = color_letter;
            end  
        end

        if ((y >= param05_L_y) && (y < param05_L_y+ 5)) // y value in range
        begin 
            if ((x >= param05_L_x) && (x < param05_L_x+ 3))
            begin 
                if (x == param05_L_x)
	            oled_data = color_letter;
	            else if (x == param05_L_x+1 && y - param05_L_y == 4)
                oled_data = color_letter;
	            else if (x == param05_L_x+2 && (y - param05_L_y == 3 || y - param05_L_y == 4))
	            oled_data = color_letter;
            end  
		end

        if ((y >= param05_E1_y) && (y < param05_E1_y+ 5)) // y value in range
        begin 
            if ((x >= param05_E1_x) && (x < param05_E1_x+ 3))
            begin 
                if (x == param05_E1_x)
                oled_data = color_letter;
                else if (x == param05_E1_x+1 && (y - param05_E1_y == 0 || y - param05_E1_y == 2 || y - param05_E1_y == 4))
                oled_data = color_letter;
                else if (x == param05_E1_x+2 && (y - param05_E1_y == 0 || y - param05_E1_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param05_D_y) && (y < param05_D_y+ 5)) // y value in range
        begin 
            if ((x >= param05_D_x) && (x < param05_D_x+ 3))
            begin 
                if (x == param05_D_x)
                oled_data = color_letter;
                else if (x == param05_D_x+1 && (y - param05_D_y == 0 || y - param05_D_y == 4))
                oled_data = color_letter;
                else if (x == param05_D_x+2 && (y - param05_D_y <= 3)&& (y - param05_D_y >= 1))
                oled_data = color_letter;
            end  
        end

        //"MIC IN OR PEAK ON 7 SEG"//
        if ((y >= param06_M_y) && (y < param06_M_y+ 5)) // y value in range
        begin 
            if ((x >= param06_M_x) && (x < param06_M_x+ 5))
            begin 
                if (x == param06_M_x)
                oled_data = color_letter;
                else if (x == param06_M_x+1 && y - param06_M_y == 1)
                oled_data = color_letter;
                else if (x == param06_M_x+2 && y - param06_M_y == 2)
                oled_data = color_letter;
                else if (x == param06_M_x+3 && y - param06_M_y == 1)
                oled_data = color_letter;
                else if (x == param06_M_x+4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_I_y) && (y < param06_I_y+ 5)) // y value in range
        begin 
            if ((x >= param06_I_x) && (x < param06_I_x+ 3))
            begin 
                if (x == param06_I_x && (y - param06_I_y == 0 || y - param06_I_y == 4))
                oled_data = color_letter;
                else if (x == param06_I_x+1)
                oled_data = color_letter;
                else if (x == param06_I_x+2 && (y - param06_I_y == 0 || y - param06_I_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_C_y) && (y < param06_C_y+ 5)) // y value in range
        begin 
            if ((x >= param06_C_x) && (x < param06_C_x+ 3))
            begin 
                if (x == param06_C_x)
                oled_data = color_letter;
                else if (x == param06_C_x+1 && (y - param06_C_y == 0 || y - param06_C_y == 4))
                oled_data = color_letter;
                else if (x == param06_C_x+2 && (y != param06_C_y+2))
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_I1_y) && (y < param06_I1_y+ 5)) // y value in range
        begin 
            if ((x >= param06_I1_x) && (x < param06_I1_x+ 3))
            begin 
                if (x == param06_I1_x && (y - param06_I1_y == 0 || y - param06_I1_y == 4))
                oled_data = color_letter;
                else if (x == param06_I1_x+1)
                oled_data = color_letter;
                else if (x == param06_I1_x+2 && (y - param06_I1_y == 0 || y - param06_I1_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_N_y) && (y < param06_N_y+ 5)) // y value in range
        begin 
            if ((x >= param06_N_x) && (x < param06_N_x+ 4))
            begin 
                if (x == param06_N_x)
                oled_data = color_letter;
                else if (x == param06_N_x+1 && y - param06_N_y == 2)
                oled_data = color_letter;
                else if (x == param06_N_x+2 && y - param06_N_y == 3)
                oled_data = color_letter;
                else if (x == param06_N_x+3)
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_O_y) && (y < param06_O_y+ 5)) // y value in range
        begin 
            if ((x >= param06_O_x) && (x < param06_O_x+ 4))
            begin 
                if (x == param06_O_x && (y - param06_O_y <= 3)&& (y - param06_O_y >= 1))
                oled_data = color_letter;
                else if (x == param06_O_x+1 && (y - param06_O_y == 0 || y - param06_O_y == 4))
                oled_data = color_letter;
                else if (x == param06_O_x+2 && (y - param06_O_y == 0 || y - param06_O_y == 4))
                oled_data = color_letter;
                else if (x == param06_O_x + 3 && (y - param06_O_y <= 3)&& (y - param06_O_y >= 1))
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_R_y) && (y < param06_R_y+ 5)) // y value in range
        begin 
            if ((x >= param06_R_x) && (x < param06_R_x+ 4))
            begin 
                if (x == param06_R_x)
                oled_data = color_letter;
                else if (x == param06_R_x+1 && (y - param06_R_y == 0 || y - param06_R_y == 2))
                oled_data = color_letter;
                else if (x == param06_R_x + 2 && (y - param06_R_y != 2)&& (y - param06_R_y != 4))
                oled_data = color_letter;
                else if (x == param06_R_x+3 && y - param06_R_y == 4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_P_y) && (y < param06_P_y+ 5)) // y value in range
        begin 
            if ((x >= param06_P_x) && (x < param06_P_x+ 3))
            begin 
                if (x == param06_P_x)
                oled_data = color_letter;
                else if (x == param06_P_x+1 && (y - param06_P_y == 0 || y - param06_P_y == 2))
                oled_data = color_letter;
                else if (x == param06_P_x + 2 && (y - param06_P_y <= 2)&& (y - param06_P_y >= 0))
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_E_y) && (y < param06_E_y+ 5)) // y value in range
        begin 
            if ((x >= param06_E_x) && (x < param06_E_x+ 3))
            begin 
                if (x == param06_E_x)
                oled_data = color_letter;
                else if (x == param06_E_x+1 && (y - param06_E_y == 0 || y - param06_E_y == 2 || y - param06_E_y == 4))
                oled_data = color_letter;
                else if (x == param06_E_x+2 && (y - param06_E_y == 0 || y - param06_E_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_A_y) && (y < param06_A_y+ 5)) // y value in range
        begin 
            if ((x >= param06_A_x) && (x < param06_A_x+ 3))
            begin 
                if (x == param06_A_x && (y - param06_A_y <= 4)&& (y - param06_A_y >= 1))
                oled_data = color_letter;
                else if (x == param06_A_x+1 && (y - param06_A_y == 3 || y - param06_A_y == 0))
                oled_data = color_letter;
                else if (x == param06_A_x+2 && (y - param06_A_y <= 4)&& (y - param06_A_y >= 1))
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_K_y) && (y < param06_K_y+ 5)) // y value in range
        begin 
            if ((x >= param06_K_x) && (x < param06_K_x+ 4))
            begin 
                if (x == param06_K_x)
                oled_data = color_letter;
                else if (x == param06_K_x+1 && y - param06_K_y == 2)
                oled_data = color_letter;
                else if (x == param06_K_x+2 && (y - param06_K_y == 1 || y - param06_K_y == 3))
                oled_data = color_letter;
                else if (x == param06_K_x+3 && (y - param06_K_y == 0 || y - param06_K_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_O1_y) && (y < param06_O1_y+ 5)) // y value in range
        begin 
            if ((x >= param06_O1_x) && (x < param06_O1_x+ 4))
            begin 
                if (x == param06_O1_x && (y - param06_O1_y <= 3)&& (y - param06_O1_y >= 1))
                oled_data = color_letter;
                else if (x == param06_O1_x+1 && (y - param06_O1_y == 0 || y - param06_O1_y == 4))
                oled_data = color_letter;
                else if (x == param06_O1_x+2 && (y - param06_O1_y == 0 || y - param06_O1_y == 4))
                oled_data = color_letter;
                else if (x == param06_O1_x + 3 && (y - param06_O1_y <= 3)&& (y - param06_O1_y >= 1))
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_N1_y) && (y < param06_N1_y+ 5)) // y value in range
        begin 
            if ((x >= param06_N1_x) && (x < param06_N1_x+ 4))
            begin 
                if (x == param06_N1_x)
                oled_data = color_letter;
                else if (x == param06_N1_x+1 && y - param06_N1_y == 2)
                oled_data = color_letter;
                else if (x == param06_N1_x+2 && y - param06_N1_y == 3)
                oled_data = color_letter;
                else if (x == param06_N1_x+3)
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_7_y) && (y < param06_7_y+ 5)) // y value in range
        begin 
            if ((x >= param06_7_x) && (x < param06_7_x+ 3))
            begin 
                if (x == param06_7_x && y - param06_7_y == 0)
                oled_data = color_letter;
                else if (x == param06_7_x+1 && (y - param06_7_y == 0 || y - param06_7_y == 2))
                oled_data = color_letter;
                else if (x == param06_7_x + 2)
                oled_data = color_letter;
            end  
        end
        
        if ((y >= param06_S_y) && (y < param06_S_y+ 5)) // y value in range
        begin 
            if ((x >= param06_S_x) && (x < param06_S_x+ 3))
            begin 
                if (x == param06_S_x && y - param06_S_y != 3)
                oled_data = color_letter;
                else if (x == param06_S_x+1 && (y - param06_S_y != 1) && ( y - param06_S_y != 3))
                oled_data = color_letter;
                else if (x == param06_S_x + 2 && (y - param06_S_y != 1)&& (y - param06_S_y != 2))
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_E1_y) && (y < param06_E1_y+ 5)) // y value in range
        begin 
            if ((x >= param06_E1_x) && (x < param06_E1_x+ 3))
            begin 
                if (x == param06_E1_x)
                oled_data = color_letter;
                else if (x == param06_E1_x+1 && (y - param06_E1_y == 0 || y - param06_E1_y == 2 || y - param06_E1_y == 4))
                oled_data = color_letter;
                else if (x == param06_E1_x+2 && (y - param06_E1_y == 0 || y - param06_E1_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param06_G_y) && (y < param06_G_y+ 5)) // y value in range
        begin 
            if ((x >= param06_G_x) && (x < param06_G_x+ 4))
            begin 
                if (x == param06_G_x && (y - param06_G_y <= 3)&& (y - param06_G_y >= 1))
                oled_data = color_letter;
                else if (x == param06_G_x+1 && (y - param06_G_y == 0 || y - param06_G_y == 4))
                oled_data = color_letter;
                else if (x == param06_G_x+2 && (y - param06_G_y == 0 || y - param06_G_y == 2 || y - param06_G_y == 4))
                oled_data = color_letter;
                else if (x == param06_G_x+3 && (y - param06_G_y == 3 || y - param06_G_y == 2))
                oled_data = color_letter;
            end  
        end

        //"GAME MODE"//
        if ((y >= param07_G_y) && (y < param07_G_y+ 5)) // y value in range
        begin 
            if ((x >= param07_G_x) && (x < param07_G_x+ 4))
            begin 
                if (x == param07_G_x && (y - param07_G_y <= 3)&& (y - param07_G_y >= 1))
                oled_data = color_letter;
                else if (x == param07_G_x+1 && (y - param07_G_y == 0 || y - param07_G_y == 4))
                oled_data = color_letter;
                else if (x == param07_G_x+2 && (y - param07_G_y == 0 || y - param07_G_y == 2 || y - param07_G_y == 4))
                oled_data = color_letter;
                else if (x == param07_G_x+3 && (y - param07_G_y == 3 || y - param07_G_y == 2))
                oled_data = color_letter;
            end  
        end

        if ((y >= param07_A_y) && (y < param07_A_y+ 5)) // y value in range
        begin 
            if ((x >= param07_A_x) && (x < param07_A_x+ 3))
            begin 
                if (x == param07_A_x && (y - param07_A_y <= 4)&& (y - param07_A_y >= 1))
                oled_data = color_letter;
                else if (x == param07_A_x+1 && (y - param07_A_y == 3 || y - param07_A_y == 0))
                oled_data = color_letter;
                else if (x == param07_A_x+2 && (y - param07_A_y <= 4)&& (y - param07_A_y >= 1))
                oled_data = color_letter;
            end  
        end



        if ((y >= param07_M_y) && (y < param07_M_y+ 5)) // y value in range
        begin 
            if ((x >= param07_M_x) && (x < param07_M_x+ 5))
            begin 
                if (x == param07_M_x)
                oled_data = color_letter;
                else if (x == param07_M_x+1 && y - param07_M_y == 1)
                oled_data = color_letter;
                else if (x == param07_M_x+2 && y - param07_M_y == 2)
                oled_data = color_letter;
                else if (x == param07_M_x+3 && y - param07_M_y == 1)
                oled_data = color_letter;
                else if (x == param07_M_x+4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param07_E_y) && (y < param07_E_y+ 5)) // y value in range
        begin 
            if ((x >= param07_E_x) && (x < param07_E_x+ 3))
            begin 
                if (x == param07_E_x)
                oled_data = color_letter;
                else if (x == param07_E_x+1 && (y - param07_E_y == 0 || y - param07_E_y == 2 || y - param07_E_y == 4))
                oled_data = color_letter;
                else if (x == param07_E_x+2 && (y - param07_E_y == 0 || y - param07_E_y == 4))
                oled_data = color_letter;
            end  
        end

        if ((y >= param07_M1_y) && (y < param07_M1_y+ 5)) // y value in range
        begin 
            if ((x >= param07_M1_x) && (x < param07_M1_x+ 5))
            begin 
                if (x == param07_M1_x)
                oled_data = color_letter;
                else if (x == param07_M1_x+1 && y - param07_M1_y == 1)
                oled_data = color_letter;
                else if (x == param07_M1_x+2 && y - param07_M1_y == 2)
                oled_data = color_letter;
                else if (x == param07_M1_x+3 && y - param07_M1_y == 1)
                oled_data = color_letter;
                else if (x == param07_M1_x+4)
                oled_data = color_letter;
            end  
        end

        if ((y >= param07_O_y) && (y < param07_O_y+ 5)) // y value in range
        begin 
            if ((x >= param07_O_x) && (x < param07_O_x+ 4))
            begin 
                if (x == param07_O_x && (y - param07_O_y <= 3)&& (y - param07_O_y >= 1))
                oled_data = color_letter;
                else if (x == param07_O_x+1 && (y - param07_O_y == 0 || y - param07_O_y == 4))
                oled_data = color_letter;
                else if (x == param07_O_x+2 && (y - param07_O_y == 0 || y - param07_O_y == 4))
                oled_data = color_letter;
                else if (x == param07_O_x + 3 && (y - param07_O_y <= 3)&& (y - param07_O_y >= 1))
                oled_data = color_letter;
            end  
        end

        if ((y >= param07_D_y) && (y < param07_D_y+ 5)) // y value in range
        begin 
            if ((x >= param07_D_x) && (x < param07_D_x+ 3))
            begin 
                if (x == param07_D_x)
                oled_data = color_letter;
                else if (x == param07_D_x+1 && (y - param07_D_y == 0 || y - param07_D_y == 4))
                oled_data = color_letter;
                else if (x == param07_D_x+2 && (y - param07_D_y <= 3)&& (y - param07_D_y >= 1))
                oled_data = color_letter;
            end  
        end

        if ((y >= param07_E1_y) && (y < param07_E1_y+ 5)) // y value in range
        begin 
            if ((x >= param07_E1_x) && (x < param07_E1_x+ 3))
            begin 
                if (x == param07_E1_x)
                oled_data = color_letter;
                else if (x == param07_E1_x+1 && (y - param07_E1_y == 0 || y - param07_E1_y == 2 || y - param07_E1_y == 4))
                oled_data = color_letter;
                else if (x == param07_E1_x+2 && (y - param07_E1_y == 0 || y - param07_E1_y == 4))
                oled_data = color_letter;
            end  
        end
    
    end
       
endmodule
