`timescale 1ns / 1ps

//        mode list:
//        0: main/idle  //
//        1: sleep      
//        2: hearts     // 
//        3: clap (scare)  
//        4: alien
//        5: balloon
//        6: angry   //


// normal modes (not cow mini game modes)
// ie handle 0, 1, 2, 3, 6
module G2M7_render(
    input clk1sec,
    input clk0p5sec,
    input clk0p25sec,
    input [7:0]x, 
    input [6:0]y,
    input [5:0] mode,
    input [5:0] cow_mood,
    input fed,
    input [7:0] apple_x,
    input [6:0] apple_y,
    input [2:0] apple_stage,
    input [4:0] eye_direction,
    
    output reg [15:0] oled_data
    );
    
    
    reg [5:0] previous_mode = 0;    
    reg [1:0] anim = 0;
    reg [2:0] pic = 0;
    reg [1:0] frame = 0;
    reg [1:0] exclaim = 0;
    reg [2:0] cloud = 0;
    
    reg color_set = 0;
    
    reg tick_flip = 0;
    reg tick_store = 0;
    reg tick_flag = 0;
    
    reg tick2_flip = 0;
    reg tick2_store = 0;
    reg tick2_flag = 0;
    
    reg [15:0] color_bg = 16'h309F;
    
    always @ (posedge clk0p5sec)
    begin
        tick_flip <= ~tick_flip;
        pic <= (pic == 3) ? 0: pic + 1; 
        anim <= (anim == 2) ? 0: anim + 1; 
        frame <= (frame == 1) ? 0: frame + 1;  
        cloud <= (cloud == 10) ? 0 :cloud + 1;
    end 
    
    always @ (posedge clk0p25sec)
    begin
        tick2_flip <= ~tick2_flip;
        exclaim <= ~exclaim;
    end 
    
    always @ (x,y, mode) 
    begin

        oled_data = color_bg;
        
        
        
        // clock ticks every second
        if (tick_flip != tick_store)
        begin
            tick_store = tick_flip;
            tick_flag = 1;   
             
            tick_store = tick_flip;
            tick_flag = 1;                  
    
        end 
        
        if (tick2_flip != tick2_store)
        begin
            tick2_store = tick2_flip;
            tick2_flag = 1;  
        end  
        
        // render apple eating animation
        
        
        // render each mood and animation
        
        if (cow_mood == 0)
        begin

        // render its closed eye
        if (color_set == 0 && pic%4 == 0 && (x - 48 >= 0 && x - 48 <= 3) &&  (y - 31 == 2))
        begin
            oled_data = 16'h0000;
            color_set = 1;
        end
        
        // render its normal eye
        if (color_set == 0 && pic%4 != 0 && (x == 49 || x == 50) &&  (y - 31 >= 0 && y - 31 < 3))
        begin
            oled_data = 16'h0000;
            color_set = 1;
        end
        end
        
        if (cow_mood == 1)
        begin
            if (color_set == 0 && (x >= 48 && x <= 51) && (y >= 31  && y <= 33))
                begin
                    if (y - 31 == 0)
                    begin
                        case (x - 48)
                     0: oled_data = 16'h0000;
                     1: oled_data = 16'h0000;
                        2: oled_data = 16'h0000;
                        endcase
                    end
                    else if (y - 31 == 1)
                    begin
                        case (x - 48)
                        2: oled_data = 16'h0000;
                        3: oled_data = 16'h0000;
                        endcase
                    end
                    else if (y - 31 == 2)
                    begin
                        case (x - 48)
                        3: oled_data = 16'h0000;
                        endcase
                    end
                    if (oled_data != color_bg)
                        color_set = 1;
                 
                end
        end
        
        // render its head
        if (color_set == 0 && (x <= 55 && x >= 41) && (y >= 24 && y <= 39))
        begin
            if (y - 24 == 0)
            begin
                case (x - 41)
                12: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 1)
            begin
                case (x - 41)
                11: oled_data = 16'h0000;
                12: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 2)
            begin
                case (x - 41)
                10: oled_data = 16'h0000;
                11: oled_data = 16'h0000;
                12: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 3)
            begin
                case (x - 41)
                9: oled_data = 16'h0000;
                10: oled_data = 16'h0000;
                11: oled_data = 16'h0000;
                12: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 4)
            begin
                case (x - 41)
                6: oled_data = 16'h0000;
                7: oled_data = 16'h0000;
                8: oled_data = 16'h0000;
                9: oled_data = 16'h0000;
                10: oled_data = 16'h0000;
                11: oled_data = 16'h0000;
                12: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                14: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 5)
            begin
                case (x - 41)
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'h0000;
                12: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                14: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 6)
            begin
                case (x - 41)
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'hFFFF;
                5: oled_data = 16'hFFFF;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'hFFFF;
                12: oled_data = 16'hFFFF;
                13: oled_data = 16'h0000;
                14: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 7)
            begin
                case (x - 41)
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'hFFFF;
                4: oled_data = 16'hFFFF;
                5: oled_data = 16'hFFFF;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'hFFFF;
                12: oled_data = 16'hFFFF;
                13: oled_data = 16'hFFFF;
                14: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 8)
            begin
                case (x - 41)
                0: oled_data = 16'h0000;
                1: oled_data = 16'h0000;
                2: oled_data = 16'hFFFF;
                3: oled_data = 16'hFFFF;
                4: oled_data = 16'hFFFF;
                5: oled_data = 16'hFFFF;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'hFFFF;
                12: oled_data = 16'hFFFF;
                13: oled_data = 16'hFFFF;
                14: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 9)
            begin
                case (x - 41)
                0: oled_data = 16'h0000;
                1: oled_data = 16'hFFFF;
                2: oled_data = 16'hFFFF;
                3: oled_data = 16'hFFFF;
                4: oled_data = 16'hFFFF;
                5: oled_data = 16'hFFFF;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'hFFFF;
                12: oled_data = 16'hFFFF;
                13: oled_data = 16'hFFFF;
                14: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 10)
            begin
                case (x - 41)
                0: oled_data = 16'h0000;
                1: oled_data = 16'hFFFF;
                2: oled_data = 16'hFFFF;
                3: oled_data = 16'hFFFF;
                4: oled_data = 16'hFFFF;
                5: oled_data = 16'hFFFF;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'hFFFF;
                12: oled_data = 16'hFFFF;
                13: oled_data = 16'hFFFF;
                14: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 11)
            begin
                case (x - 41)
                0: oled_data = 16'h0000;
                1: oled_data = 16'hFFFF;
                2: oled_data = 16'hFFFF;
                3: oled_data = 16'hFFFF;
                4: oled_data = 16'hFFFF;
                5: oled_data = 16'hFFFF;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'hFFFF;
                12: oled_data = 16'hFFFF;
                13: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 12)
            begin
                case (x - 41)
                0: oled_data = 16'h0000;
                1: oled_data = 16'h0000;
                2: oled_data = 16'hFFFF;
                3: oled_data = 16'hFFFF;
                4: oled_data = 16'hFFFF;
                5: oled_data = 16'hFFFF;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'hFFFF;
                12: oled_data = 16'hFFFF;
                13: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 13)
            begin
                case (x - 41)
                0: oled_data = 16'h0000;
                1: oled_data = 16'h0000;
                2: oled_data = 16'hFFFF;
                3: oled_data = 16'hFFFF;
                4: oled_data = 16'hFFFF;
                5: oled_data = 16'hFFFF;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'h0000;
                12: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 14)
            begin
                case (x - 41)
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'hFFFF;
                5: oled_data = 16'hFFFF;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'h0000;
                9: oled_data = 16'h0000;
                10: oled_data = 16'h0000;
                11: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                endcase
            end
            else if (y - 24 == 15)
            begin
                case (x - 41)
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = 16'h0000;
                7: oled_data = 16'h0000;
                8: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                endcase
            end
         
            if (oled_data != color_bg)
                color_set = 1;
        end
        
        
        // render its body
        if (color_set == 0 && (x <= 71 && x >= 50) && (y >= 40  && y <= 58)) 
        begin
            if (y - 40 == 0)
            begin
                case (x - 50)
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
                18: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 1)
            begin
                case (x - 50)
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
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
                18: oled_data = 16'h0000;
                19: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 2)
            begin
                case (x - 50)
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'hFFFF;
                5: oled_data = 16'hFFFF;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
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
                18: oled_data = 16'hFFFF;
                19: oled_data = 16'hFFFF;
                20: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 3)
            begin
                case (x - 50)
                2: oled_data = 16'h0000;
                3: oled_data = 16'hFFFF;
                4: oled_data = 16'hFFFF;
                5: oled_data = 16'hFFFF;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'h0000;
                10: oled_data = 16'h0000;
                11: oled_data = 16'h0000;
                12: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                14: oled_data = 16'h0000;
                15: oled_data = 16'h0000;
                16: oled_data = 16'h0000;
                17: oled_data = 16'h0000;
                18: oled_data = 16'hFFFF;
                19: oled_data = 16'hFFFF;
                20: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 4)
            begin
                case (x - 50)
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'hFFFF;
                5: oled_data = 16'hFFFF;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'h0000;
                10: oled_data = 16'h0000;
                11: oled_data = 16'h0000;
                12: oled_data = 16'hFFFF;
                13: oled_data = 16'h0000;
                14: oled_data = 16'h0000;
                15: oled_data = 16'h0000;
                16: oled_data = 16'hFFFF;
                17: oled_data = 16'hFFFF;
                18: oled_data = 16'hFFFF;
                19: oled_data = 16'hFFFF;
                20: oled_data = 16'h0000;
                21: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 5)
            begin
                case (x - 50)
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'hFFFF;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'hFFFF;
                12: oled_data = 16'hFFFF;
                13: oled_data = 16'hFFFF;
                14: oled_data = 16'hFFFF;
                15: oled_data = 16'hFFFF;
                16: oled_data = 16'hFFFF;
                17: oled_data = 16'hFFFF;
                18: oled_data = 16'hFFFF;
                19: oled_data = 16'hFFFF;
                20: oled_data = 16'hFFFF;
                21: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 6)
            begin
                case (x - 50)
                0: oled_data = 16'h0000;
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'hFFFF;
                12: oled_data = 16'hFFFF;
                13: oled_data = 16'hFFFF;
                14: oled_data = 16'hFFFF;
                15: oled_data = 16'hFFFF;
                16: oled_data = 16'hFFFF;
                17: oled_data = 16'hFFFF;
                18: oled_data = 16'hFFFF;
                19: oled_data = 16'hFFFF;
                20: oled_data = 16'hFFFF;
                21: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 7)
            begin
                case (x - 50)
                0: oled_data = 16'h0000;
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'h0000;
                12: oled_data = 16'h0000;
                13: oled_data = 16'hFFFF;
                14: oled_data = 16'hFFFF;
                15: oled_data = 16'hFFFF;
                16: oled_data = 16'hFFFF;
                17: oled_data = 16'hFFFF;
                18: oled_data = 16'hFFFF;
                19: oled_data = 16'hFFFF;
                20: oled_data = 16'hFFFF;
                21: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 8)
            begin
                case (x - 50)
                0: oled_data = 16'h0000;
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = 16'hFFFF;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'h0000;
                11: oled_data = 16'h0000;
                12: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                14: oled_data = 16'hFFFF;
                15: oled_data = 16'hFFFF;
                16: oled_data = 16'hFFFF;
                17: oled_data = 16'hFFFF;
                18: oled_data = 16'hFFFF;
                19: oled_data = 16'hFFFF;
                20: oled_data = 16'hFFFF;
                21: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 9)
            begin
                case (x - 50)
                0: oled_data = 16'h0000;
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = 16'h0000;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'h0000;
                11: oled_data = 16'h0000;
                12: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                14: oled_data = 16'h0000;
                15: oled_data = 16'h0000;
                16: oled_data = 16'hFFFF;
                17: oled_data = 16'hFFFF;
                18: oled_data = 16'hFFFF;
                19: oled_data = 16'hFFFF;
                20: oled_data = 16'h0000;
                21: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 10)
            begin
                case (x - 50)
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = 16'h0000;
                7: oled_data = 16'h0000;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'hFFFF;
                12: oled_data = 16'h0000;
                13: oled_data = 16'h0000;
                14: oled_data = 16'h0000;
                15: oled_data = 16'h0000;
                16: oled_data = 16'hFFFF;
                17: oled_data = 16'hFFFF;
                18: oled_data = 16'hFFFF;
                19: oled_data = 16'hFFFF;
                20: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 11)
            begin
                case (x - 50)
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = 16'h0000;
                7: oled_data = 16'h0000;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'hFFFF;
                12: oled_data = 16'hFFFF;
                13: oled_data = 16'h0000;
                14: oled_data = 16'h0000;
                15: oled_data = 16'h0000;
                16: oled_data = 16'hFFFF;
                17: oled_data = 16'hFFFF;
                18: oled_data = 16'hFFFF;
                19: oled_data = 16'h0000;
                20: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 12)
            begin
                case (x - 50)
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = 16'h0000;
                7: oled_data = 16'hFFFF;
                8: oled_data = 16'hFFFF;
                9: oled_data = 16'hFFFF;
                10: oled_data = 16'hFFFF;
                11: oled_data = 16'hFFFF;
                12: oled_data = 16'hFFFF;
                13: oled_data = 16'hFFFF;
                14: oled_data = 16'hFFFF;
                15: oled_data = 16'hFFFF;
                16: oled_data = 16'hFFFF;
                17: oled_data = 16'hFFFF;
                18: oled_data = 16'h0000;
                19: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 13)
            begin
                case (x - 50)
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
                18: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 14)
            begin
                case (x - 50)
                4: oled_data = 16'h0000;
                18: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 15)
            begin
                case (x - 50)
                4: oled_data = 16'h0000;
                18: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 16)
            begin
                case (x - 50)
                4: oled_data = 16'h0000;
                18: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 17)
            begin
                case (x - 50)
                4: oled_data = 16'h0000;
                18: oled_data = 16'h0000;
                endcase
            end
            else if (y - 40 == 18)
            begin
                case (x - 50)
                4: oled_data = 16'h0000;
                18: oled_data = 16'h0000;
                endcase
            end
         
            if (oled_data != color_bg)
                color_set = 1;
         
        end
        
        // render the tail 1
        if (color_set == 0 && anim%3 == 0 && (x <= 75 && x >= 70) && (y >= 42 && y <= 45))   
        begin
            if (y - 42 == 0)
            begin
                case (x - 70)
                0: oled_data = 16'h0000;
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                endcase
            end
            else if (y - 42 == 1)
            begin
                case (x - 70)
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                endcase
            end
            else if (y - 42 == 2)
            begin
                case (x - 70)
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                endcase
            end
            else if (y - 42 == 3)
            begin
                case (x - 70)
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                endcase
            end
         
            if (oled_data != color_bg)
                color_set = 1;
        end
        
        // render the tail 2
        if (color_set == 0 && anim%3 == 1 && (x <= 74 && x >= 70) && (y >= 42 && y <= 46)) 
        begin
            if (y - 42 == 0)
            begin
                case (x - 70)
                0: oled_data = 16'h0000;
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                endcase
            end
            else if (y - 42 == 1)
            begin
                case (x - 70)
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                endcase
            end
            else if (y - 42 == 2)
            begin
                case (x - 70)
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                endcase
            end
            else if (y - 42 == 3)
            begin
                case (x - 70)
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                endcase
            end
            else if (y - 42 == 4)
            begin
                case (x - 70)
                3: oled_data = 16'h0000;
                endcase
            end
         
            if (oled_data != color_bg)
                color_set = 1;
        end
        
        // render the tail 3
        if (color_set == 0 && anim%3 == 2 && (x <= 76 && x >= 70) && (y >= 42 && y <= 44)) 
        begin
            if (y - 42 == 0)
            begin
                case (x - 70)
                0: oled_data = 16'h0000;
                1: oled_data = 16'h0000;
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                endcase
            end
            else if (y - 42 == 1)
            begin
                case (x - 70)
                2: oled_data = 16'h0000;
                3: oled_data = 16'h0000;
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = 16'h0000;
                endcase
            end
            else if (y - 42 == 2)
            begin
                case (x - 70)
                4: oled_data = 16'h0000;
                5: oled_data = 16'h0000;
                6: oled_data = 16'h0000;
                endcase
            end
         
            if (oled_data != color_bg)
                color_set = 1; 
        end
        

        
        color_set  = 0;
   end

endmodule
