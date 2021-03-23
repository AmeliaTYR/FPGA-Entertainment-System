`timescale 1ns / 1ps

module G2M4_render(
    input clk0p5sec,
    input [7:0] x, 
    input [6:0] y,
    input cow_direction, // 1 is right
    input [2:0] clouds,
    input [9:0] alien_x,
    input [9:0] cow_x,
    input  end_game,
    input  win,
    input [11:0] time_taken, // counts up to 600
    input [11:0] abduction, // counts up tp 2000
    input hit,
    input [11:0] time_out,
    
    output reg [15:0] oled_data
    );
    
    reg [15:0] color_bg = 16'h309F;
    reg [15:0] color_cow = 16'h0000;
    reg [15:0] color_ship_a = 16'h0000;
    reg [15:0] color_ship_b = 16'h0000;
    reg [15:0] color_ship_c = 16'hFFFF;
    reg [15:0] color_meter_t = 16'h0000;
    reg [15:0] color_meter_a = 16'hFFFF;
    reg [15:0] color_cow_b = 16'h0000;

    reg [10:0] t_meter_y = 0;
    reg [10:0] a_meter_y = 0;
    
    reg [5:0] count = 0;
    reg color_set;
    
    reg tick_flip = 0;
    reg tick_store = 0;
    reg tick_flag = 0;
    
    always @ (posedge clk0p5sec)
    begin
        tick_flip <= ~tick_flip;
        count <= (count == 6) ? 0: count + 1;
        
        case (count)
        0:
        begin
            color_ship_a = 16'h0000;
            color_ship_b = 16'b00111_001111_00111;
            color_ship_c = 16'b11101_000000_00000; // red
        end
        1:
        begin
            color_ship_a = 16'b00111_001111_00111;
            color_ship_b = 16'h0000;
            color_ship_c = 16'b11101_001110_00000; // orange
        end
        2:
        begin
            color_ship_a = 16'h0000;
            color_ship_b = 16'b00111_001111_00111;
            color_ship_c = 16'hFFE0; // yellow
        end
        3:
        begin
            color_ship_a = 16'b00111_001111_00111;
            color_ship_b = 16'h0000;
            color_ship_c = 16'b00010_111111_00010; // green
        end
        4:
        begin
            color_ship_a = 16'h0000;
            color_ship_b = 16'b00111_001111_00111;
            color_ship_c = 16'b00100_001110_10111; // blue
        end
        5:
        begin
            color_ship_a = 16'b00111_001111_00111;
            color_ship_b = 16'h0000;
            color_ship_c = 16'b11101_000000_11101; // purple
        end
        6:
        begin
            color_ship_a = 16'h0000;
            color_ship_b = 16'b00111_001111_00111;
            color_ship_c = 16'b11110_000011_00111; // ???
        end
        
        endcase
    end
    
    always @ (x,y, time_taken, abduction) 
    begin
        // time tracker 0.5 sec
        if (tick_flip != tick_store)
        begin
            tick_store = tick_flip;
            tick_flag = 1; // raises every 0.5 seconds
        end
        
        oled_data = color_bg;
        
        if (hit)
            color_cow = 16'h7800;
        else 
            color_cow = 16'h0000;
            
        if (tick_flag)
        begin
            
        end
        
        if (end_game == 0)
        begin
        
///////////////////////////////////////////////////////////////////////////////////

        // render the mini-cow with direction left
        if (cow_direction == 1 && x >=  cow_x && x < cow_x + 7 && y >= 52 && y <= 58)
        begin
            if (y - 52 == 0)
            begin
                case (6 - (x - cow_x))
                2: oled_data = color_cow;
                endcase
            end
            else if (y - 52 == 1)
            begin
                case (6 - (x - cow_x))
                0: oled_data = color_cow;
                1: oled_data = color_cow;
                2: oled_data = color_cow;
                endcase
            end
            else if (y - 52 == 2)
            begin
                case (6 - (x - cow_x))
                0: oled_data = color_cow;
                1: oled_data = 16'hFFFF;
                2: oled_data = color_cow;
                endcase
            end
            else if (y - 52 == 3)
            begin
                case (6 - (x - cow_x))
                0: oled_data = color_cow;
                1: oled_data = color_cow;
                2: oled_data = color_cow;
                3: oled_data = color_cow;
                4: oled_data = color_cow;
                5: oled_data = color_cow;
                6: oled_data = color_cow;
                endcase
            end
            else if (y - 52 == 4)
            begin
                case (6 - (x - cow_x))
                2: oled_data = color_cow;
                3: oled_data = color_cow;
                4: oled_data = 16'hFFFF;
                5: oled_data = color_cow;
                endcase
            end
            else if (y - 52 == 5)
            begin
                case (6 - (x - cow_x))
                2: oled_data = color_cow;
                3: oled_data = color_cow;
                4: oled_data = color_cow;
                5: oled_data = color_cow;
                endcase
            end
            else if (y - 52 == 6)
            begin
                case (6 - (x - cow_x))
                2: oled_data = color_cow;
                5: oled_data = color_cow;
                endcase
            end
         
            if (oled_data != color_bg)
                color_set = 1;
        end

///////////////////////////////////////////////////////////////////////////////////

        // render the mini-cow with direction right
        if (cow_direction == 0 && x >=  cow_x && x < cow_x + 7 && y >= 52 && y <= 58)
        begin
            if (y - 52 == 0)
            begin
                case (x - cow_x)
                2: oled_data = color_cow;
                endcase
            end
            else if (y - 52 == 1)
            begin
                case (x - cow_x)
                0: oled_data = color_cow;
                1: oled_data = color_cow;
                2: oled_data = color_cow;
                endcase
            end
            else if (y - 52 == 2)
            begin
                case (x - cow_x)
                0: oled_data = color_cow;
                1: oled_data = 16'hFFFF;
                2: oled_data = color_cow;
                endcase
            end
            else if (y - 52 == 3)
            begin
                case (x - cow_x)
                0: oled_data = color_cow;
                1: oled_data = color_cow;
                2: oled_data = color_cow;
                3: oled_data = color_cow;
                4: oled_data = color_cow;
                5: oled_data = color_cow;
                6: oled_data = color_cow;
                endcase
            end
            else if (y - 52 == 4)
            begin
                case (x - cow_x)
                2: oled_data = color_cow;
                3: oled_data = color_cow;
                4: oled_data = 16'hFFFF;
                5: oled_data = color_cow;
                endcase
            end
            else if (y - 52 == 5)
            begin
                case (x - cow_x)
                2: oled_data = color_cow;
                3: oled_data = color_cow;
                4: oled_data = color_cow;
                5: oled_data = color_cow;
                endcase
            end
            else if (y - 52 == 6)
            begin
                case (x - cow_x)
                2: oled_data = color_cow;
                5: oled_data = color_cow;
                endcase
            end
         
            if (oled_data != color_bg)
                color_set = 1;
        end

///////////////////////////////////////////////////////////////////////////////////

        // render cloud 1
        if (color_set == 0 && clouds[0] == 1)
        begin
            if (x >= 20 && x <= 25 && y >= 30 && y <= 33)
            begin
                if (y - 30 == 0)
                begin
                    case (x - 20)
                    1: oled_data = 16'hFFFF;
                    2: oled_data = 16'hFFFF;
                    3: oled_data = 16'hFFFF;
                    endcase
                end
                else if (y - 30 == 1)
                begin
                    case (x - 20)
                    0: oled_data = 16'hFFFF;
                    1: oled_data = 16'hFFFF;
                    2: oled_data = 16'hFFFF;
                    3: oled_data = 16'hFFFF;
                    4: oled_data = 16'hFFFF;
                    endcase
                end
                else if (y - 30 == 2)
                begin
                    case (x - 20)
                    1: oled_data = 16'hFFFF;
                    2: oled_data = 16'hFFFF;
                    3: oled_data = 16'hFFFF;
                    4: oled_data = 16'hFFFF;
                    5: oled_data = 16'hFFFF;
                    endcase
                end
                else if (y - 30 == 3)
                begin
                    case (x - 20)
                    2: oled_data = 16'hFFFF;
                    3: oled_data = 16'hFFFF;
                    endcase
                end
                    
                if (oled_data != color_bg)
                    color_set = 1;
             
            end

        end
        
        // render cloud 2
        if (color_set == 0 && clouds[1] == 1)
        begin
            if (x >= 37 && x <= 42 && y >= 30 && y <= 33)
            begin
                if (y - 30 == 0)
                begin
                    case (x - 37)
                    2: oled_data = 16'hFFFF;
                    3: oled_data = 16'hFFFF;
                    endcase
                end
                else if (y - 30 == 1)
                begin
                    case (x - 37)
                    0: oled_data = 16'hFFFF;
                    1: oled_data = 16'hFFFF;
                    2: oled_data = 16'hFFFF;
                    3: oled_data = 16'hFFFF;
                    4: oled_data = 16'hFFFF;
                    endcase
                end
                else if (y - 30 == 2)
                begin
                    case (x - 37)
                    1: oled_data = 16'hFFFF;
                    2: oled_data = 16'hFFFF;
                    3: oled_data = 16'hFFFF;
                    4: oled_data = 16'hFFFF;
                    5: oled_data = 16'hFFFF;
                    endcase
                end
                else if (y - 30 == 3)
                begin
                    case (x - 37)
                    2: oled_data = 16'hFFFF;
                    3: oled_data = 16'hFFFF;
                    4: oled_data = 16'hFFFF;
                    endcase
                end
                    
                if (oled_data != color_bg)
                    color_set = 1;
            end
        end
        
        // render cloud 3
        if (color_set == 0 && clouds[2] == 1)
        begin
            if (x >= 55 && x <= 60 && y >= 30 && y <= 33)
            begin
                if (y - 30 == 0)
                begin
                    case (x - 55)
                    3: oled_data = 16'hFFFF;
                    4: oled_data = 16'hFFFF;
                    5: oled_data = 16'hFFFF;
                    endcase
                end
                else if (y - 30 == 1)
                begin
                    case (x - 55)
                    1: oled_data = 16'hFFFF;
                    2: oled_data = 16'hFFFF;
                    3: oled_data = 16'hFFFF;
                    4: oled_data = 16'hFFFF;
                    5: oled_data = 16'hFFFF;
                    endcase
                end
                else if (y - 30 == 2)
                begin
                    case (x - 55)
                    0: oled_data = 16'hFFFF;
                    1: oled_data = 16'hFFFF;
                    2: oled_data = 16'hFFFF;
                    3: oled_data = 16'hFFFF;
                    4: oled_data = 16'hFFFF;
                    5: oled_data = 16'hFFFF;
                    endcase
                end
                else if (y - 30 == 3)
                begin
                    case (x - 55)
                    2: oled_data = 16'hFFFF;
                    3: oled_data = 16'hFFFF;
                    endcase
                end
                    
                if (oled_data != color_bg)
                    color_set = 1;
             
            end
        end
        
///////////////////////////////////////////////////////////////////////////////////

        // render alien ship
        if (color_set == 0 && x >=  alien_x && x < alien_x + 19 && y >= 5 && y <= 15)
        begin
            if (y - 5 == 0)
            begin
                case (x - alien_x)
                7: oled_data = 16'h0000;
                8: oled_data = 16'h0000;
                9: oled_data = 16'h0000;
                10: oled_data = 16'h0000;
                11: oled_data = 16'h0000;
                endcase
            end
            else if (y - 5 == 1)
            begin
                case (x - alien_x)
                6: oled_data = 16'h0000;
                7: oled_data = 16'h0000;
                8: oled_data = color_ship_c;
                9: oled_data = color_ship_c;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'h0000;
                12: oled_data = 16'h0000;
                endcase
            end
            else if (y - 5 == 2)
            begin
                case (x - alien_x)
                5: oled_data = 16'h0000;
                6: oled_data = 16'h0000;
                7: oled_data = color_ship_c;
                8: oled_data = color_ship_c;
                9: oled_data = color_ship_c;
                10: oled_data = color_ship_c;
                11: oled_data = 16'hFFFF;
                12: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                endcase
            end
            else if (y - 5 == 3)
            begin
                case (x - alien_x)
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = color_ship_c;
                7: oled_data = color_ship_c;
                8: oled_data = color_ship_c;
                9: oled_data = color_ship_c;
                10: oled_data = color_ship_c;
                11: oled_data = 16'hFFFF;
                12: oled_data = color_ship_c;
                13: oled_data = 16'h0000;
                14: oled_data = 16'h0000;
                 endcase
            end
            else if (y - 5 == 4)
            begin
                case (x - alien_x)
                4: oled_data = 16'h0000;
                5: oled_data = color_ship_c;
                6: oled_data = color_ship_c;
                7: oled_data = color_ship_c;
                8: oled_data = color_ship_c;
                9: oled_data = color_ship_c;
                10: oled_data = color_ship_c;
                11: oled_data = color_ship_c;
                12: oled_data = color_ship_c;
                13: oled_data = color_ship_c;
                14: oled_data = 16'h0000;
                endcase
            end
            else if (y - 5 == 5)
            begin
                case (x - alien_x)
                  3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = color_ship_c;
                6: oled_data = color_ship_c;
                7: oled_data = color_ship_c;
                8: oled_data = color_ship_c;
                9: oled_data = color_ship_c;
                10: oled_data = color_ship_c;
                11: oled_data = color_ship_c;
                12: oled_data = 16'hFFFF;
                13: oled_data = color_ship_c;
                14: oled_data = 16'h0000;
                15: oled_data = 16'h0000;
                endcase
            end
            else if (y - 5 == 6)
            begin
                case (x - alien_x)
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = 16'h0000;
                7: oled_data = 16'h0000;
                8: oled_data = 16'h0000;
                9: oled_data = 16'h0000;
                10: oled_data = 16'h0000;
                11: oled_data = 16'h0000;
                12: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                14: oled_data = 16'h0000;
                15: oled_data = 16'h0000;
                16: oled_data = 16'h0000;
                17: oled_data = 16'h0000;
                endcase
            end
          else if (y - 5 == 7)
            begin
                case (x - alien_x)
           0: oled_data = color_ship_a;
                1: oled_data = 16'h0000;
                2: oled_data = color_ship_b;
                3: oled_data = color_ship_a;
                4: oled_data = 16'h0000;
                5: oled_data = color_ship_b;
                6: oled_data = color_ship_a;
                7: oled_data = 16'h0000;
                8: oled_data = color_ship_b;
                9: oled_data = color_ship_a;
                10: oled_data = 16'h0000;
                11: oled_data = color_ship_b;
                12: oled_data = color_ship_a;
                13: oled_data = 16'h0000;
                14: oled_data = color_ship_b;
                15: oled_data = color_ship_a;
                16: oled_data = 16'h0000;
                17: oled_data = color_ship_b;
                18: oled_data = color_ship_a;
                endcase
            end
          else if (y - 5 == 8)
            begin
                case (x - alien_x)
                1: oled_data = 16'hFFFF;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'hFFFF;
                5: oled_data = 16'hFFFF;
                6: oled_data = 16'h0000;
                7: oled_data = 16'h0000;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'h0000;
                11: oled_data = 16'h0000;
                12: oled_data = 16'hFFFF;
                13: oled_data = 16'hFFFF;
                14: oled_data = 16'h0000;
                15: oled_data = 16'h0000;
                16: oled_data = 16'hFFFF;
                17: oled_data = 16'h0000;
                endcase
            end
          else if (y - 5 == 9)
            begin
                case (x - alien_x)
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = 16'h0000;
                7: oled_data = 16'h0000;
                8: oled_data = 16'h0000;
                9: oled_data = 16'h0000;
                10: oled_data = 16'h0000;
                11: oled_data = 16'h0000;
                12: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                14: oled_data = 16'h0000;
                15: oled_data = 16'h0000;
                16: oled_data = 16'h0000;
                endcase
            end
          else if (y - 5 == 10)
            begin
                case (x - alien_x)
                5: oled_data = 16'h0000;
                6: oled_data = 16'h0000;
                7: oled_data = 16'h0000;
                8: oled_data = 16'h0000;
                9: oled_data = 16'h0000;
                10: oled_data = 16'h0000;
                11: oled_data = 16'h0000;
                12: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                endcase
            end
         
            if (oled_data != color_bg)
                color_set = 1;
        end
        
///////////////////////////////////////////////////////////////////////////////////

        // render the alien beam
        if (color_set == 0 && x - alien_x >= 6 && x - alien_x <= 12 && y > 14 && y < 59)
        begin
            oled_data = color_ship_c;
        end

///////////////////////////////////////////////////////////////////////////////////

        if (abduction < 350)
            color_meter_a = 16'b0000;
        else if (abduction < 750)
            color_meter_a = 16'b01111_011111_00011;
        else 
            color_meter_a = 16'hF800;
        
        // render the abduction meter
        if (x >= 92 && x <= 94) 
        begin
            a_meter_y = 45 - (abduction / 25);
            if (y > a_meter_y && y < 45)
                oled_data = color_meter_a;     
        end
        
        // render exclamation mark
        if (x == 93 && (y == 50 || y == 51 || y == 52 || y == 54))
            oled_data = 16'h0000;

///////////////////////////////////////////////////////////////////////////////////

        if (time_taken > 400)
            color_meter_t = 16'hF800;
        else if (time_taken > 200)
            color_meter_t = 16'b01111_011111_00011;
        else 
            color_meter_t = 16'h0000;
        
        // render the timer meter
        if (x >= 87 && x <= 89)
        begin
            t_meter_y = (time_taken /15);
            if (y > t_meter_y && y < 45)
                oled_data = color_meter_t;     
        end
                
        // render clock
        if (x >= 86 && x <= 91 && y >= 50 && y <= 55)
        begin
            if (y - 50 == 0)
            begin
                case (x - 86)
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                endcase
            end
            else if (y - 50 == 1)
            begin
                case (x - 86)
                0: oled_data = 16'h0000;
                1: oled_data = 16'hFFFF;
                2: oled_data = 16'hFFFF;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                endcase
            end
            else if (y - 50 == 2)
            begin
                case (x - 86)
                0: oled_data = 16'h0000;
                1: oled_data = 16'hFFFF;
                2: oled_data = 16'h0000;
                3: oled_data = 16'hFFFF;
                4: oled_data = 16'h0000;
                endcase
            end
            else if (y - 50 == 3)
            begin
                case (x - 86)
                0: oled_data = 16'h0000;
                1: oled_data = 16'hFFFF;
                2: oled_data = 16'hFFFF;
                3: oled_data = 16'hFFFF;
                4: oled_data = 16'h0000;
                endcase
            end
            else if (y - 50 == 4)
            begin
                case (x - 86)
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                endcase
            end
         
            if (oled_data != color_bg)
                color_set = 1;
         
        end
        
///////////////////////////////////////////////////////////////////////////////////

        // render the grass
        if (y > 58)
            oled_data = 16'b00001_001111_000010;
        
        end
        
///////////////////////////////////////////////////////////////////////////////////

        if (end_game)
        begin
            if (win) // render alien ship with rainbow colours
            begin
                if (y - 25 == 0)
                begin
                    case (x - 40)
                    7: oled_data = 16'h0000;
                    8: oled_data = 16'h0000;
                    9: oled_data = 16'h0000;
                    10: oled_data = 16'h0000;
                    11: oled_data = 16'h0000;
                    endcase
                end
                else if (y - 25 == 1)
                begin
                    case (x - 40)
                    6: oled_data = 16'h0000;
                    7: oled_data = 16'h0000;
                    8: oled_data = color_ship_c;
                    9: oled_data = color_ship_c;
                    10: oled_data = 16'hFFFF;
                    11: oled_data = 16'h0000;
                    12: oled_data = 16'h0000;
                    endcase
                end
                else if (y - 25 == 2)
                begin
                    case (x - 40)
                    5: oled_data = 16'h0000;
                    6: oled_data = 16'h0000;
                    7: oled_data = color_ship_c;
                    8: oled_data = color_ship_c;
                    9: oled_data = color_ship_c;
                    10: oled_data = color_ship_c;
                    11: oled_data = 16'hFFFF;
                    12: oled_data = 16'h0000;
                    13: oled_data = 16'h0000;
                    endcase
                end
                else if (y - 25 == 3)
                begin
                    case (x - 40)
                    4: oled_data = 16'h0000;
                    5: oled_data = 16'h0000;
                    6: oled_data = color_ship_c;
                    7: oled_data = color_ship_c;
                    8: oled_data = color_ship_c;
                    9: oled_data = color_ship_c;
                    10: oled_data = color_ship_c;
                    11: oled_data = 16'hFFFF;
                    12: oled_data = color_ship_c;
                    13: oled_data = 16'h0000;
                    14: oled_data = 16'h0000;
                     endcase
                end
                else if (y - 25 == 4)
                begin
                    case (x - 40)
                    4: oled_data = 16'h0000;
                    5: oled_data = color_ship_c;
                    6: oled_data = color_ship_c;
                    7: oled_data = color_ship_c;
                    8: oled_data = color_ship_c;
                    9: oled_data = color_ship_c;
                    10: oled_data = color_ship_c;
                    11: oled_data = color_ship_c;
                    12: oled_data = color_ship_c;
                    13: oled_data = color_ship_c;
                    14: oled_data = 16'h0000;
                    endcase
                end
                else if (y - 25 == 5)
                begin
                    case (x - 40)
                      3: oled_data = 16'h0000;
                    4: oled_data = 16'h0000;
                    5: oled_data = color_ship_c;
                    6: oled_data = color_ship_c;
                    7: oled_data = color_ship_c;
                    8: oled_data = color_ship_c;
                    9: oled_data = color_ship_c;
                    10: oled_data = color_ship_c;
                    11: oled_data = color_ship_c;
                    12: oled_data = 16'hFFFF;
                    13: oled_data = color_ship_c;
                    14: oled_data = 16'h0000;
                    15: oled_data = 16'h0000;
                    endcase
                end
                else if (y - 25 == 6)
                begin
                    case (x - 40)
                    1: oled_data = 16'h0000;
                    2: oled_data = 16'h0000;
                    3: oled_data = 16'h0000;
                    4: oled_data = 16'h0000;
                    5: oled_data = 16'h0000;
                    6: oled_data = 16'h0000;
                    7: oled_data = 16'h0000;
                    8: oled_data = 16'h0000;
                    9: oled_data = 16'h0000;
                    10: oled_data = 16'h0000;
                    11: oled_data = 16'h0000;
                    12: oled_data = 16'h0000;
                    13: oled_data = 16'h0000;
                    14: oled_data = 16'h0000;
                    15: oled_data = 16'h0000;
                    16: oled_data = 16'h0000;
                    17: oled_data = 16'h0000;
                    endcase
                end
              else if (y - 25 == 7)
                begin
                    case (x - 40)
               0: oled_data = color_ship_a;
                    1: oled_data = 16'h0000;
                    2: oled_data = color_ship_b;
                    3: oled_data = color_ship_a;
                    4: oled_data = 16'h0000;
                    5: oled_data = color_ship_b;
                    6: oled_data = color_ship_a;
                    7: oled_data = 16'h0000;
                    8: oled_data = color_ship_b;
                    9: oled_data = color_ship_a;
                    10: oled_data = 16'h0000;
                    11: oled_data = color_ship_b;
                    12: oled_data = color_ship_a;
                    13: oled_data = 16'h0000;
                    14: oled_data = color_ship_b;
                    15: oled_data = color_ship_a;
                    16: oled_data = 16'h0000;
                    17: oled_data = color_ship_b;
                    18: oled_data = color_ship_a;
                    endcase
                end
              else if (y - 25 == 8)
                begin
                    case (x - 40)
                    1: oled_data = 16'hFFFF;
                    2: oled_data = 16'h0000;
                    3: oled_data = 16'h0000;
                    4: oled_data = 16'hFFFF;
                    5: oled_data = 16'hFFFF;
                    6: oled_data = 16'h0000;
                    7: oled_data = 16'h0000;
                    8: oled_data = 16'hFFFF;
                    9: oled_data = 16'hFFFF;
                    10: oled_data = 16'h0000;
                    11: oled_data = 16'h0000;
                    12: oled_data = 16'hFFFF;
                    13: oled_data = 16'hFFFF;
                    14: oled_data = 16'h0000;
                    15: oled_data = 16'h0000;
                    16: oled_data = 16'hFFFF;
                    17: oled_data = 16'h0000;
                    endcase
                end
              else if (y - 25 == 9)
                begin
                    case (x - 40)
                    2: oled_data = 16'h0000;
                    3: oled_data = 16'h0000;
                    4: oled_data = 16'h0000;
                    5: oled_data = 16'h0000;
                    6: oled_data = 16'h0000;
                    7: oled_data = 16'h0000;
                    8: oled_data = 16'h0000;
                    9: oled_data = 16'h0000;
                    10: oled_data = 16'h0000;
                    11: oled_data = 16'h0000;
                    12: oled_data = 16'h0000;
                    13: oled_data = 16'h0000;
                    14: oled_data = 16'h0000;
                    15: oled_data = 16'h0000;
                    16: oled_data = 16'h0000;
                    endcase
                end
              else if (y - 25 == 10)
                begin
                    case (x - 40)
                    5: oled_data = 16'h0000;
                    6: oled_data = 16'h0000;
                    7: oled_data = 16'h0000;
                    8: oled_data = 16'h0000;
                    9: oled_data = 16'h0000;
                    10: oled_data = 16'h0000;
                    11: oled_data = 16'h0000;
                    12: oled_data = 16'h0000;
                    13: oled_data = 16'h0000;
                    endcase
                end
             
                if (oled_data != color_bg)
                    color_set = 1;
            end


            
///////////////////////////////////////////////////////////////////////////////////

            else // render cow with rainbow colous
            begin
                oled_data = 16'hFFFF;
                color_cow_b = color_ship_c;
                
                if (y - 30 == 0)
                begin
                    case (x - 45)
                    2: oled_data = color_cow_b;
                    endcase
                end
                else if (y - 30 == 1)
                begin
                    case (x - 45)
                    0: oled_data = color_cow_b;
                    1: oled_data = color_cow_b;
                    2: oled_data = color_cow_b;
                    endcase
                end
                else if (y - 30 == 2)
                begin
                    case (x - 45)
                    0: oled_data = color_cow_b;
                    1: oled_data = 16'hFFFF;
                    2: oled_data = color_cow_b;
                    endcase
                end
                else if (y - 30 == 3)
                begin
                    case (x - 45)
                    0: oled_data = color_cow_b;
                    1: oled_data = color_cow_b;
                    2: oled_data = color_cow_b;
                    3: oled_data = color_cow_b;
                    4: oled_data = color_cow_b;
                    5: oled_data = color_cow_b;
                    6: oled_data = color_cow_b;
                    endcase
                end
                else if (y - 30 == 4)
                begin
                    case (x - 45)
                    2: oled_data = color_cow_b;
                    3: oled_data = color_cow_b;
                    4: oled_data = 16'hFFFF;
                    5: oled_data = color_cow_b;
                    endcase
                end
                else if (y - 30 == 5)
                begin
                    case (x - 45)
                    2: oled_data = color_cow_b;
                    3: oled_data = color_cow_b;
                    4: oled_data = color_cow_b;
                    5: oled_data = color_cow_b;
                    endcase
                end
                else if (y - 30 == 6)
                begin
                    case (x - 45)
                    2: oled_data = color_cow_b;
                    5: oled_data = color_cow_b;
                    endcase
                end
             
             
                if (oled_data != color_bg)
                    color_set = 1;
             
            end                        
        end
            
        color_set = 0;
        tick_flag = 0;
    end
endmodule

