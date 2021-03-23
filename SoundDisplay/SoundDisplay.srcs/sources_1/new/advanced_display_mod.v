`timescale 1ns / 1ps

module advanced_display_mod(
    input stars_clk,
    input [3:0] mode,
    input [7:0] x,
    input [6:0] y,
    input [1:0] color_theme,
    input clk0p025sec,
    input rand,


    input [3:0] pos_EA1,
    input [3:0] EA1_y,
    input [3:0] pos_EA2,
    input [3:0] EA2_y,
    input [3:0] pos_EA3,
    input [3:0] EA3_y,
    input [3:0] pos_EB,
    input [3:0] EB_y,
    input [3:0] laser_exist,
    input [3:0] laser_y,
    input [3:0] explosion_x,
    input [3:0] explosion_y,
    input [3:0] player_pos,

    output reg [15:0] oled_data    
    );

    reg [15:0] color_bg, color_EA, color_EB, color_ship, color_laser, color_explosion, color_stars;
    reg color_set; // raise flag if the color has been set already
    

    reg [7:0] x_var_EA1;
    reg [6:0] y_var_EA1;
    reg [7:0] x_var_EA2;
    reg [6:0] y_var_EA2;
    reg [7:0] x_var_EA3;
    reg [6:0] y_var_EA3;
    reg [7:0] x_var_EB;
    reg [6:0] y_var_EB;
    reg [7:0] x_var_explosion;
    reg [6:0] y_var_explosion;
    reg [7:0] x_var_laser;
    reg [6:0] y_var_laser;
    reg [7:0] x_var_player;
    
    reg [3:0] stars_mode = 0;
    
    //registers
    reg [15:0] param01_G_x=28, param01_G_y=29, 
        param01_A_x=33, param01_A_y=29, 
        param01_M_x=37, param01_M_y=29, 
        param01_E_x=43, param01_E_y=29, 
        param01_O_x=48, param01_O_y=29, 
        param01_V_x=53, param01_V_y=29, 
        param01_E1_x=59, param01_E1_y=29, 
        param01_R_x=63, param01_R_y=29, 
    
        param02_S_x=23, param02_S_y=29, 
        param02_P_x=27, param02_P_y=29, 
        param02_A_x=31, param02_A_y=29, 
        param02_C_x=35, param02_C_y=29, 
        param02_E_x=39, param02_E_y=29, 
        param02_S1_x=44, param02_S1_y=29, 
        param02_H_x=48, param02_H_y=29, 
        param02_O_x=52, param02_O_y=29,
        param02_O1_x=57, param02_O1_y=29, 
        param02_T_x=62, param02_T_y=29, 
        param02_E1_x=66, param02_E1_y=29, 
        param02_R_x=70, param02_R_y=29; 
        
    reg [15:0] color_letter = 16'hFFFF;
    
    reg [15:0] param_chase_position = 0, param_enemy_y = 0, param_spaceship_y = 0; 
            
        reg [3:0] chase_count = 0;

//     always @ (posedge clk0p025sec)
//         tick_flip <= ~tick_flip;
       
       

    

    // stars render animation
    always @ (posedge stars_clk)
    begin
        stars_mode = 1 + stars_mode;
        if (stars_mode == 3)
            stars_mode = 0;
    end 


    // EDIT MEEEEEEE decide the colours here
    always @ (color_theme)
    begin
        case (color_theme)
            1: 
            begin
                color_bg = 16'h0000; // background
                color_EA = 16'b11111_000000_00000; 
                color_EB = 16'b00000_000000_11111;
                color_ship = 16'b00010_111111_10011;
                color_laser = 16'hFFFF;
                color_explosion = 16'hF00F;
                color_stars = 16'hFFFF;
            end
            2:
            begin
                color_bg = 16'h0000; // background
                color_EA = 16'b11111_000000_00100; 
                color_EB = 16'b11111_000000_00000; // challenge mode same color
                color_ship = 16'b01000_000110_11000;
                color_laser = 16'b11111_001110_11100;   
                color_explosion = 16'hFFFF;
                color_stars = 16'hFFFF;
            end 
            3:
            begin
                color_bg = 16'h0000; // background
                color_EA = 16'b11111_000000_00000; 
                color_EB = 16'b10011_111000_00000;
                color_ship = 16'b00011_000000_11111;
                color_laser = 16'b00010_001111_00000;
                color_explosion = 16'hFFFF;
                color_stars = 16'hFFFF;
            end
            default:
            begin 
                color_bg = 16'h0000; // background
                color_EA = 16'b11111_000000_00000; 
                color_EB = 16'b00000_111111_00000;
                color_ship = 16'b00000_000000_11111;
                color_laser = 16'b11111_111111_11111;    
                color_explosion = 16'hF900;     
            end
        endcase
    end
    
    // get the top left corner of each game object
    always @ (pos_EA1, EA1_y)
    begin
        // EA1       
        x_var_EA1 = (pos_EA1 * 10) + 10;  // get the y var
        y_var_EA1 = (4 - EA1_y) * 10 + 9; // get the x var
    end
    
    always @ (pos_EA2, EA2_y)
    begin
        // EA2       
        x_var_EA2 = (pos_EA2 * 10) + 10;  // get the y var
        y_var_EA2 = (4 - EA2_y) * 10 + 9; // get the x var
    end

    always @ (pos_EA3, EA3_y)
    begin
        // EA3       
        x_var_EA3 = (pos_EA3 * 10) + 10;  // get the y var
        y_var_EA3 = (4 - EA3_y) * 10 + 9; // get the x var
    end

    always @ (pos_EB, EB_y)
    begin
        // EB       
        x_var_EB = (pos_EB * 10) + 10;  // get the y var
        y_var_EB = (4 - EB_y) * 10 + 9; // get the x var
    end

    always @ (explosion_y, explosion_x)
    begin
        // explosion 
        x_var_explosion =  (explosion_x * 10) + 10;
        y_var_explosion = (4 - explosion_y) * 10 + 9;
    end

    always @ (laser_exist, laser_y)
    begin
        // laser
        x_var_laser = (laser_exist * 10) + 12;
        y_var_laser =  (4 - laser_y) * 10 + 11;
    end

    always @ (player_pos)
    begin
        x_var_player = (player_pos * 10) + 10; // edit the player tracker to that y 0 is at the left
    end

    always @ (
        x, y, 
        color_bg, color_ship, color_laser, color_EA, color_EB, color_explosion
        )
    begin

       oled_data = color_bg;
       color_set = 0;
       
////////////////////////////////////////////////////////////////////////////////////////////////////  
////////////////////////////////////////////////////////////////////////////////////////////////////  

       if (mode ==  1)
       begin
           // render start screen
           oled_data = 16'b00001_000001_00111;
           

           //rendering for "SPACE SHOOTER"
           
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
           
                   if ((y >= param02_S1_y) && (y < param02_S1_y+ 5)) // y value in range
                   begin 
                       if ((x >= param02_S1_x) && (x < param02_S1_x+ 3))
                       begin 
                           if (x == param02_S1_x && y - param02_S1_y != 3)
                           oled_data = color_letter;
                           else if (x == param02_S1_x+1 && (y - param02_S1_y != 1) && ( y - param02_S1_y != 3))
                           oled_data = color_letter;
                           else if (x == param02_S1_x + 2 && (y - param02_S1_y != 1)&& (y - param02_S1_y != 2))
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
           
                   if ((y >= param02_T_y) && (y < param02_T_y+ 5)) // y value in range
                   begin 
                       if ((x >= param02_T_x) && (x < param02_T_x+ 3))
                       begin 
                           if (x == param02_T_x && y - param02_T_y == 0)
                           oled_data = color_letter;
                           else if (x == param02_T_x+1)
                           oled_data = color_letter;
                           else if (x == param02_T_x + 2 && y - param02_T_y == 0)
                           oled_data = color_letter;
                       end  
                   end
           
           
                   if ((y >= param02_E1_y) && (y < param02_E1_y+ 5)) // y value in range
                   begin 
                       if ((x >= param02_E1_x) && (x < param02_E1_x+ 3))
                       begin 
                           if (x == param02_E1_x)
                           oled_data = color_letter;
                           else if (x == param02_E1_x+1 && (y - param02_E1_y == 0 || y - param02_E1_y == 2 || y - param02_E1_y == 4))
                           oled_data = color_letter;
                           else if (x == param02_E1_x+2 && (y - param02_E1_y == 0 || y - param02_E1_y == 4))
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


       end // end of mode 1
       
////////////////////////////////////////////////////////////////////////////////////////////////////  
////////////////////////////////////////////////////////////////////////////////////////////////////  

       else if (mode == 3)
       begin
           // render end screen
           oled_data = 16'h0000;
            //rendering for "GAME OVER"
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

           
       end // end of mode 2
       
////////////////////////////////////////////////////////////////////////////////////////////////////  
////////////////////////////////////////////////////////////////////////////////////////////////////  
       else if (mode == 2)
       begin
       // render enemies, EA1, EA2, EA3, EB
       if (pos_EA1 != 8)
       begin
           if ((y >= y_var_EA1 ) && (y < y_var_EA1 + 5)) // y value in range
           begin 
               if ((x >= x_var_EA1 ) && (x < x_var_EA1 + 5)) // x value in range
               begin
                   // run the render formula 
                   if (y - y_var_EA1 < 3)
                       oled_data = color_EA;
                   else if (y - y_var_EA1 == 3 && (x - x_var_EA1 != 0 && x - x_var_EA1 != 4))
                       oled_data = color_EA;
                   else if (y - y_var_EA1 == 4 && x - x_var_EA1 == 2)
                       oled_data = color_EA;
                   color_set = 1;
               end
           end 
       end

       if (color_set == 0 && pos_EA2 != 8)
       begin
           if ((y >= y_var_EA2 ) && (y < y_var_EA2 + 5)) // y value in range
           begin 
               if ((x >= x_var_EA2 ) && (x < x_var_EA2 + 5)) // x value in range
               begin
                   // run the render formula 
                   if (y - y_var_EA2 < 3)
                       oled_data = color_EA;
                   else if (y - y_var_EA2 == 3 && (x - x_var_EA2 != 0 && x - x_var_EA2 != 4))
                       oled_data = color_EA;
                   else if (y - y_var_EA2 == 4 && x - x_var_EA2 == 2)
                       oled_data = color_EA;
                   color_set = 1;
               end
           end 
       end


       if (color_set == 0 && pos_EA3 != 8)
       begin
           if ((y >= y_var_EA3 ) && (y < y_var_EA3 + 5)) // y value in range
           begin 
               if ((x >= x_var_EA3 ) && (x < x_var_EA3 + 5)) // x value in range
               begin
                   // run the render formula 
                   if (y - y_var_EA3 < 3)
                       oled_data = color_EA;
                   else if (y - y_var_EA3 == 3 && (x - x_var_EA3 == 1 || x - x_var_EA3 == 2 || x - x_var_EA3 == 3))
                       oled_data = color_EA;
                   else if (y - y_var_EA3 == 4 && x - x_var_EA3 == 2)
                       oled_data = color_EA;
                   color_set = 1;
               end
           end 
       end

       if (color_set == 0 && pos_EB != 8)
       begin
           if ((y >= y_var_EB ) && (y < y_var_EB + 5)) // y value in range
           begin 
               if ((x >= x_var_EB ) && (x < x_var_EB + 5)) // x value in range
               begin
                   // run the render formula 
                   if (y - y_var_EB < 3)
                       oled_data = color_EB ;
                   else if (y - y_var_EB == 3 && (x - x_var_EB != 0 && x - x_var_EB != 4))
                       oled_data = color_EB ;
                   else if (y - y_var_EB == 4 && x - x_var_EB == 2)
                       oled_data = color_EB ;
                   color_set = 1;
               end
           end 
       end
       
////////////////////////////////////////////////////////////////////////////////////////////////////  

       // render explosion
       if (explosion_y != 8) // the explosion exist
       begin
           if (y == y_var_explosion && (x - x_var_explosion == 4 || x == x_var_explosion))
           begin
               oled_data = color_explosion;
               color_set = 1;
           end
           else if (y == y_var_explosion + 1 && (x - x_var_explosion == 3 || x == x_var_explosion + 1))
           begin
               oled_data = color_explosion;
               color_set = 1;
           end
           else if (y == y_var_explosion + 3 && (x - x_var_explosion == 3 || x == x_var_explosion + 1))
           begin
               oled_data = color_explosion;
               color_set = 1;
           end
           else if (y == y_var_explosion + 4 && (x - x_var_explosion == 4 || x == x_var_explosion))
           begin
               oled_data = color_explosion;
               color_set = 1;
           end
       end
       
////////////////////////////////////////////////////////////////////////////////////////////////////  

       // render player
       if (color_set == 0 && y > 48 && y < 53) 
       begin
           if ((x >= x_var_player ) && (x < x_var_player + 5))
           begin
               // run the player render formula
               case (y-49)
                   0: 
                   begin
                        case (x - x_var_player)
                            2: oled_data = color_ship;
                        endcase
                   end
                   1: 
                   begin
                        case (x - x_var_player)
                            1: oled_data = color_ship;
                            2: oled_data = color_ship;
                            3: oled_data = color_ship;
                        endcase
                   end
                   2: 
                   begin
                        case (x - x_var_player)
                            0: oled_data = color_ship;
                            1: oled_data = color_ship;
                            2: oled_data = color_ship;
                            3: oled_data = color_ship;
                            4: oled_data = color_ship;
                        endcase
                   end
                   3: 
                   begin
                        case (x - x_var_player)
                            1: oled_data = color_ship;
                            3: oled_data = color_ship;
                        endcase
                   end
               endcase
               color_set = 1;
           end
       end
       
////////////////////////////////////////////////////////////////////////////////////////////////////  

       // render laser
       if (color_set == 0 && laser_exist != 8 && laser_y != 0 && x == x_var_laser) // the laser exist y is in range
       begin
           // run the laser render formula
           if ((y - y_var_laser) % 10 < 7 && (y - y_var_laser) / 10 < laser_y) // x is within the x range
              oled_data = color_laser;
       color_set = 1;
       end
          
       end // end of mode 2 
       
          
////////////////////////////////////////////////////////////////////////////////////////////////////  
////////////////////////////////////////////////////////////////////////////////////////////////////  
       // render stars

        if (stars_mode == 0)
        begin
            if (x == 2+y && x%23 == 3)
                 oled_data = color_stars; 
            if (x == 7+y && x%19 == 10)
                 oled_data = color_stars; 
            if (x == 31-y && x%59 == 23)
                 oled_data = color_stars; 
            if (89 -x == 7+y && x%19 == 10)
                 oled_data = color_stars; 
            if (76-x == 31-y && x%59 == 23)
                 oled_data = color_stars; 
            if (x + 42 == 7+y && x%31 == 23)
                 oled_data = color_stars; 
            if (x +30 == 24-y && x%13 == 8)
                 oled_data = color_stars; 
            if (x == 56-y && x%10 == 7)
                 oled_data = color_stars; 
        end
        
        if (stars_mode == 1)
        begin
            if (x == 3+y && x%15 == 3)
                 oled_data = color_stars; 
            if (x == 5+y && x%30 == 29)
                 oled_data = color_stars; 
            if (x == 34-y && x%15 == 8)
                 oled_data = color_stars; 
            if (x +38 == 7+y && x%31 == 23)
                 oled_data = color_stars; 
            if (56 + x == 24-y && x%13 == 8)
                 oled_data = color_stars; 
            if (x + 70 == 7+y && x%31 == 23)
                 oled_data = color_stars; 
            if (80 - x == 24-y && x%13 == 8)
                  oled_data = color_stars; 
            if (x == 13-y && x%29 == 14)
                 oled_data = color_stars; 
        end
        
        if (stars_mode == 2)
        begin
            if (x == 4+y && x%19 == 3)
                 oled_data = color_stars; 
            if (x == 7+y && x%31 == 23)
                 oled_data = color_stars; 
            if (x == 24-y && x%13 == 8)
                 oled_data = color_stars; 
            if (95 - x == 7+y && x%31 == 23)
                 oled_data = color_stars; 
            if (90 - x == 24-y && x%13 == 8)
                 oled_data = color_stars; 
            if (x + 25 == 7+y && x%31 == 23)
                 oled_data = color_stars; 
            if (x + 64 == 24-y && x%13 == 8)
                 oled_data = color_stars; 
            if (x == 46-y && x%23 == 14)
                 oled_data = color_stars; 
        end
    
    end
endmodule
