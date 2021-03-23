`timescale 1ns / 1ps

//        mode list:
//        0: main/idle  //
//        1: sleep      //
//        2: hearts     // 
//        3: clap (scare)  //
//        4: alien
//        5: balloon
//        6: angry   //


// normal modes (not cow mini game modes)
// ie handle 0, 1, 2, 3, 6
module G2M1_render(
    input clk1sec,
    input clk0p5sec,
    input clk0p25sec,
    input [7:0]x, 
    input [6:0]y,
    input [5:0] mode,
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
    
    always @ (posedge clk1sec)
    begin

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
    
    /////////////////////////////////////////////////////////////////////////////////////////////
    if (mode == 0) // idle cow
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

    if (oled_data != color_bg)
        color_set = 1;    
        
    end 
    
    /////////////////////////////////////////////////////////////////////////////////////////////
    if (mode == 1) // sleep mode
    begin
    
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
    
    // render its sleep eye
    if (color_set == 0 && (x >= 48 && x <= 51) && (y >= 31  && y <= 33))
    begin
        if (y - 31 == 0)
        begin
            case (x - 48)
         0: oled_data = 16'h0000;
            endcase
        end
        else if (y - 31 == 1)
        begin
            case (x - 48)
         0: oled_data = 16'h0000;
         1: oled_data = 16'h0000;
            endcase
        end
        else if (y - 31 == 2)
        begin
            case (x - 48)
         1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            3: oled_data = 16'h0000;
            endcase
        end
        if (oled_data != color_bg)
            color_set = 1;
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

    // render first Z 
    if (color_set == 0 && anim%3 == 0 && (x >= 36 && x <= 40) && (y >= 26 && y <= 30))
    begin
        if (y - 26 == 0)
        begin
            case (x - 36)
            0: oled_data = 16'h0000;
            1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 26 == 1)
        begin
            case (x - 36)
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 26 == 2)
        begin
            case (x - 36)
            1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            endcase
        end
        else if (y - 26 == 3)
        begin
            case (x - 36)
            0: oled_data = 16'h0000;
            endcase
        end
        else if (y - 26 == 4)
        begin
            case (x - 36)
            0: oled_data = 16'h0000;
            1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            3: oled_data = 16'h0000;
            endcase
        end
     
        if (oled_data != color_bg)
            color_set = 1;
     
    end

    // render second Z 
    if (color_set == 0 && anim%3 == 1 && (x >= 30 && x <= 33) && (y >= 23 && y <= 27))
    begin
        if (y - 23 == 0)
        begin
            case (x - 30)
            0: oled_data = 16'h0000;
            1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 23 == 1)
        begin
            case (x - 30)
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 23 == 2)
        begin
            case (x - 30)
            1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            endcase
        end
        else if (y - 23 == 3)
        begin
            case (x - 30)
            0: oled_data = 16'h0000;
            endcase
        end
        else if (y - 23 == 4)
        begin
            case (x - 30)
            0: oled_data = 16'h0000;
            1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            3: oled_data = 16'h0000;
            endcase
        end
     
        if (oled_data != color_bg)
            color_set = 1;
     
    end

    // render third Z 
    if (color_set == 0 && anim%3 == 2 && (x >= 24 && x <= 27) && (y >= 18  && y <= 26))
    begin
        if (y - 18 == 0)
        begin
            case (x - 24)
            0: oled_data = 16'h0000;
            1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 18 == 1)
        begin
            case (x - 24)
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 18 == 2)
        begin
            case (x - 24)
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 18 == 3)
        begin
            case (x - 24)
            1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            endcase
        end
        else if (y - 18 == 4)
        begin
            case (x - 24)
            0: oled_data = 16'h0000;
            endcase
        end
        else if (y - 18 == 5)
        begin
            case (x - 24)
            0: oled_data = 16'h0000;
            endcase
        end
        else if (y - 18 == 6)
        begin
            case (x - 24)
            0: oled_data = 16'h0000;
            1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            3: oled_data = 16'h0000;
            endcase
        end
     
        if (oled_data != color_bg)
            color_set = 1;
     
    end

    
    end  //?
    
/////////////////////////////////////////////////////////////////////////////////////////////    
    if (mode == 3)  //STARTLED
    begin

    // render the tail 3
    if (color_set == 0 && (x <= 76 && x >= 70) && (y >= 42 && y <= 44)) 
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
    
    // render its startled eye
    if (color_set == 0 && (x >= 48 && x <= 51) && (y >= 31  && y <= 34))
    begin
        if (y - 31 == 0)
        begin
            case (x - 48)
         0: oled_data = 16'h0000;
         1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 31 == 1)
        begin
            case (x - 48)
         0: oled_data = 16'h0000;
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 31 == 2)
        begin
            case (x - 48)
         0: oled_data = 16'h0000;
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 31 == 3)
        begin
            case (x - 48)
         0: oled_data = 16'h0000;
         1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            3: oled_data = 16'h0000;
            endcase
        end
     
        if (oled_data != color_bg)
            color_set = 1; 
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

    if (color_set == 0 && exclaim != 0)
    begin
        // render the exlamation mark for 2 sec
        if ((x == 36 || x == 37) && (y - 22 >= 0 &&  y - 22 < 9 && y - 22 != 6))
        begin
            oled_data = 16'h0000;
            color_set = 1;
        end
    end
        
        if (oled_data != color_bg)
            color_set = 1;
    end
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    if (mode == 2) // moo mode
    begin
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
        
        // render its happy eye
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
        
        // render the M
        if (color_set == 0 && (pic%3 == 0 || pic%3 == 1 || pic%3 == 2) && (x >= 16 && x <= 21) && (y >= 19 && y <= 24))
        begin 
            if (x == 16)
            oled_data = 16'h0000;
            else if (x == 16+1 && y - 19 == 1)
            oled_data = 16'h0000;
            else if (x == 16+2 && y - 19 == 2)
            oled_data = 16'h0000;
            else if (x == 16+3 && y - 19 == 1)
            oled_data = 16'h0000;
            else if (x == 16+4)
            oled_data = 16'h0000;
        end
        
        // render the O
        if ((color_set == 0) && (pic%3 == 2 || pic%3 == 1) && (x >= 23 && x <= 28) && (y >= 19 && y <= 24))
        begin
            if (x == 23 && (y - 19 <= 3)&& (y - 19 >= 1))
            oled_data = 16'h0000;
            else if (x == 23+1 && (y - 19 == 0 || y - 19 == 4))
            oled_data = 16'h0000;
            else if (x == 23+2 && (y - 19 == 0 || y - 19 == 4))
            oled_data = 16'h0000;         
            else if (x == 23 + 3 && (y - 19 <= 3)&& (y - 19 >= 1))
            oled_data = 16'h0000;
        end
        
        // render the O
        if ((color_set == 0) && color_set == 0 && pic%3 == 2 && (x >= 30 && x <= 35) && (y >= 19 && y <= 24))
        begin
            if (x == 30 && (y - 19 <= 3)&& (y - 19 >= 1))
            oled_data = 16'h0000;
            else if (x == 30+1 && (y - 19 == 0 || y - 19 == 4))
            oled_data = 16'h0000;
            else if (x == 30+2 && (y - 19 == 0 || y - 19 == 4))
            oled_data = 16'h0000;
            else if (x == 30 + 3 && (y - 19 <= 3)&& (y - 19 >= 1))
            oled_data = 16'h0000;
        end
    
    end
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    if (mode == 7)  // HEART cow mode
    begin 
    
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
    
    // render its happy eye
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

    // render first heart 
    if (color_set == 0 && anim%3 == 0 && (x >= 32 && x <= 38) && (y >= 27 && y <= 33))
    begin
        if (y - 27 == 0)
        begin
            case (x - 32)
         1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            4: oled_data = 16'h0000;
            5: oled_data = 16'h0000;
            endcase
        end
        else if (y - 27 == 1)
        begin
            case (x - 32)
            0: oled_data = 16'h0000;
            1: oled_data = 16'b11111_000000_00000;
            2: oled_data = 16'b11111_000000_00000;
            3: oled_data = 16'h0000;
            4: oled_data = 16'b11111_000000_00000;
            5: oled_data = 16'b11111_000000_00000;
            6: oled_data = 16'h0000;
            endcase
        end
        else if (y - 27 == 2)
        begin
            case (x - 32)
            0: oled_data = 16'h0000;
            1: oled_data = 16'b11111_000000_00000;
            2: oled_data = 16'b11111_000000_00000;
            3: oled_data = 16'b11111_000000_00000;
            4: oled_data = 16'hFFFF;
            5: oled_data = 16'b11111_000000_00000;
            6: oled_data = 16'h0000;
            endcase
        end
        else if (y - 27 == 3)
        begin
            case (x - 32)
            0: oled_data = 16'h0000;
            1: oled_data = 16'b11111_000000_00000;
            2: oled_data = 16'b11111_000000_00000;
            3: oled_data = 16'b11111_000000_00000;
            4: oled_data = 16'b11111_000000_00000;
            5: oled_data = 16'b11111_000000_00000;
            6: oled_data = 16'h0000;
            endcase
        end
        else if (y - 27 == 4)
        begin
            case (x - 32)
            1: oled_data = 16'h0000;
            2: oled_data = 16'b11111_000000_00000;
            3: oled_data = 16'b11111_000000_00000;
            4: oled_data = 16'b11111_000000_00000;
            5: oled_data = 16'h0000;
            endcase
        end
        else if (y - 27 == 5)
        begin
            case (x - 32)
            2: oled_data = 16'h0000;
            3: oled_data = 16'b11111_000000_00000;
            4: oled_data = 16'h0000;
            endcase
        end
        else if (y - 27 == 6)
        begin
            case (x - 32)
            3: oled_data = 16'h0000;
            endcase
        end
     
        if (oled_data != color_bg)
            color_set = 1;
    end

    // render second heart 
    if (color_set == 0 && anim%3 == 1 && (x >= 42 && x <= 48) && (y >= 19 && y <= 25))
    begin
        if (y - 19 == 0)
        begin
            case (x - 42)
         1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            4: oled_data = 16'h0000;
            5: oled_data = 16'h0000;
            endcase
        end
        else if (y - 19 == 1)
        begin
            case (x - 42)
            0: oled_data = 16'h0000;
            1: oled_data = 16'b11111_000000_00000;
            2: oled_data = 16'b11111_000000_00000;
            3: oled_data = 16'h0000;
            4: oled_data = 16'b11111_000000_00000;
            5: oled_data = 16'b11111_000000_00000;
            6: oled_data = 16'h0000;
            endcase
        end
        else if (y - 19 == 2)
        begin
            case (x - 42)
            0: oled_data = 16'h0000;
            1: oled_data = 16'b11111_000000_00000;
            2: oled_data = 16'b11111_000000_00000;
            3: oled_data = 16'b11111_000000_00000;
            4: oled_data = 16'hFFFF;
            5: oled_data = 16'b11111_000000_00000;
            6: oled_data = 16'h0000;
            endcase
        end
        else if (y - 19 == 3)
        begin
            case (x - 42)
            0: oled_data = 16'h0000;
            1: oled_data = 16'b11111_000000_00000;
            2: oled_data = 16'b11111_000000_00000;
            3: oled_data = 16'b11111_000000_00000;
            4: oled_data = 16'b11111_000000_00000;
            5: oled_data = 16'b11111_000000_00000;
            6: oled_data = 16'h0000;
            endcase
        end
        else if (y - 19 == 4)
        begin
            case (x - 42)
            1: oled_data = 16'h0000;
            2: oled_data = 16'b11111_000000_00000;
            3: oled_data = 16'b11111_000000_00000;
            4: oled_data = 16'b11111_000000_00000;
            5: oled_data = 16'h0000;
            endcase
        end
        else if (y - 19 == 5)
        begin
            case (x - 42)
            2: oled_data = 16'h0000;
            3: oled_data = 16'b11111_000000_00000;
            4: oled_data = 16'h0000;
            endcase
        end
        else if (y - 19 == 6)
        begin
            case (x - 42)
            3: oled_data = 16'h0000;
            endcase
        end
     
        if (oled_data != color_bg)
            color_set = 1;
    end

    // render third heart
    if (color_set == 0 && anim%3 == 2 && (x >= 58 && x <= 69) && (y >= 27  && y <= 33))
    begin
        if (y - 27 == 0)
        begin
            case (x - 58)
         1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            4: oled_data = 16'h0000;
            5: oled_data = 16'h0000;
            endcase
        end
        else if (y - 27 == 1)
        begin
            case (x - 58)
            0: oled_data = 16'h0000;
            1: oled_data = 16'b11111_000000_00000;
            2: oled_data = 16'b11111_000000_00000;
            3: oled_data = 16'h0000;
            4: oled_data = 16'b11111_000000_00000;
            5: oled_data = 16'b11111_000000_00000;
            6: oled_data = 16'h0000;
            endcase
        end
        else if (y - 27 == 2)
        begin
            case (x - 58)
            0: oled_data = 16'h0000;
            1: oled_data = 16'b11111_000000_00000;
            2: oled_data = 16'b11111_000000_00000;
            3: oled_data = 16'b11111_000000_00000;
            4: oled_data = 16'hFFFF;
            5: oled_data = 16'b11111_000000_00000;
            6: oled_data = 16'h0000;
            endcase
        end
        else if (y - 27 == 3)
        begin
            case (x - 58)
            0: oled_data = 16'h0000;
            1: oled_data = 16'b11111_000000_00000;
            2: oled_data = 16'b11111_000000_00000;
            3: oled_data = 16'b11111_000000_00000;
            4: oled_data = 16'b11111_000000_00000;
            5: oled_data = 16'b11111_000000_00000;
            6: oled_data = 16'h0000;
            endcase
        end
        else if (y - 27 == 4)
        begin
            case (x - 58)
            1: oled_data = 16'h0000;
            2: oled_data = 16'b11111_000000_00000;
            3: oled_data = 16'b11111_000000_00000;
            4: oled_data = 16'b11111_000000_00000;
            5: oled_data = 16'h0000;
            endcase
        end
        else if (y - 27 == 5)
        begin
            case (x - 58)
            2: oled_data = 16'h0000;
            3: oled_data = 16'b11111_000000_00000;
            4: oled_data = 16'h0000;
            endcase
        end
        else if (y - 27 == 6)
        begin
            case (x - 58)
            3: oled_data = 16'h0000;
            endcase
        end
     
        if (oled_data != color_bg)
            color_set = 1;
    end

    end //?
    
    /////////////////////////////////////////////////////////////////////////////////////////////
    if (mode == 6) // angry
    begin 
    
    // render its angry eye
    if (color_set == 0 && (x >= 48 && x <= 51) && (y >= 31  && y <= 33))
    begin
        if (y - 31 == 0)
        begin
            case (x - 48)
            2: oled_data = 16'h0000;
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 31 == 1)
        begin
            case (x - 48)
            1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            endcase
        end
        else if (y - 31 == 2)
        begin
            case (x - 48)
            0: oled_data = 16'h0000;
            1: oled_data = 16'h0000;
            endcase
        end
        if (oled_data != color_bg)
            color_set = 1;
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

    
    // render the first big mark
    if (color_set == 0 && frame%2 == 0 && (x >= 36 && x <= 41) && (y >= 23 && y <= 29))
    begin
        if (y - 23 == 0)
        begin
            case (x - 36)
            2: oled_data = 16'h0000;
            endcase
        end
        else if (y - 23 == 1)
        begin
            case (x - 36)
            2: oled_data = 16'h0000;
            endcase
        end
        else if (y - 23 == 2)
        begin
            case (x - 36)
            0: oled_data = 16'h0000;
            1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            endcase
        end
        else if (y - 23 == 4)
        begin
            case (x - 36)
            3: oled_data = 16'h0000;
            4: oled_data = 16'h0000;
            5: oled_data = 16'h0000;
            endcase
        end
        else if (y - 23 == 5)
        begin
            case (x - 36)
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 23 == 6)
        begin
            case (x - 36)
            3: oled_data = 16'h0000;
            endcase
        end
     
        if (oled_data != color_bg)
            color_set = 1;
    end

    // render the first small mark
    if (color_set == 0 && frame%2 == 0 && (x >= 60 && x <= 63) && (y >= 30 && y <= 36 ))
    begin
        if (y - 30 == 0)
        begin
            case (x - 60)
            2: oled_data = 16'h0000;
            endcase
        end
        else if (y - 30 == 1)
        begin
            case (x - 60)
            2: oled_data = 16'h0000;
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 30 == 3)
        begin
            case (x - 60)
            0: oled_data = 16'h0000;
            1: oled_data = 16'h0000;
            endcase
        end
        else if (y - 30 == 4)
        begin
            case (x - 60)
            1: oled_data = 16'h0000;
            endcase
        end 
     
        if (oled_data != color_bg)
            color_set = 1;
    end

    // render the second small mark
    if (color_set == 0 && frame%2 == 1 && (x >= 35 && x <= 38) && (y >= 36 && y <= 40))
    begin
        if (y - 36 == 0)
        begin
            case (x - 35)
            2: oled_data = 16'h0000;
            endcase
        end
        else if (y - 36 == 1)
        begin
            case (x - 35)
            2: oled_data = 16'h0000;
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 36 == 3)
        begin
            case (x - 35)
            0: oled_data = 16'h0000;
            1: oled_data = 16'h0000;
            endcase
        end
        else if (y - 36 == 4)
        begin
            case (x - 35)
            1: oled_data = 16'h0000;
            endcase
        end 
     
        if (oled_data != color_bg)
            color_set = 1;
    end

    // render the second big mark
    if (color_set == 0 && frame%2 == 1 && (x >= 57 && x <= 62 ) && (y >= 18 && y <= 24))
    begin
        if (y - 18 == 0)
        begin
            case (x - 57)
            2: oled_data = 16'h0000;
            endcase
        end
        else if (y - 18 == 1)
        begin
            case (x - 57)
            2: oled_data = 16'h0000;
            endcase
        end
        else if (y - 18 == 2)
        begin
            case (x - 57)
            0: oled_data = 16'h0000;
            1: oled_data = 16'h0000;
            2: oled_data = 16'h0000;
            endcase
        end
        else if (y - 18 == 4)
        begin
            case (x - 57)
            3: oled_data = 16'h0000;
            4: oled_data = 16'h0000;
            5: oled_data = 16'h0000;
            endcase
        end
        else if (y - 18 == 5)
        begin
            case (x - 57)
            3: oled_data = 16'h0000;
            endcase
        end
        else if (y - 18 == 6)
        begin
            case (x - 57)
            3: oled_data = 16'h0000;
            endcase
        end
     
        if (oled_data != color_bg)
            color_set = 1;
    end
    
    end

    // render grass
    if (color_set == 0 && y > 58)
        oled_data = 16'b00001_001111_000010;
        
    if (pic%4 == 0)
    begin
        if (y == 58 && (x%10 == 1 || x%7 == 3))
            oled_data = 16'b00001_001111_000010;
        if (y == 57 && (x%10 == 1 || x%10 == 2 || x%7 == 3))
            oled_data = 16'b00001_001111_000010;
        if (y == 56 && (x%10 == 2 || x%10 == 3 || x%7 == 4))
            oled_data = 16'b00001_001111_000010;
        if (y == 55 && x%10 == 3)
            oled_data = 16'b00001_001111_000010;
    end
    
    if (pic%4 == 1)
    begin
        if (y == 58 && (x%10 == 1 || x%7 == 3))
            oled_data = 16'b00001_001111_000010;
        if (y == 57 && (x%10 == 1 || x%7 == 3))
            oled_data = 16'b00001_001111_000010;
        if (y == 56 && (x%10 == 1 || x%7 == 3))
            oled_data = 16'b00001_001111_000010;
        if (y == 55 && x%10 == 2)
            oled_data = 16'b00001_001111_000010;
    end
    
    if (pic%4 == 2)
    begin
        if (y == 58 && (x%10 == 1 || x%7 == 3))
            oled_data = 16'b00001_001111_000010;
        if (y == 57 && (x%10 == 1 || x%7 == 3))
            oled_data = 16'b00001_001111_000010;
        if (y == 56 && (x%10 == 1 || x%7 == 4))
            oled_data = 16'b00001_001111_000010;
        if (y == 55 && x%10 == 1)
            oled_data = 16'b00001_001111_000010;
    end
    
    if (pic%4 == 3)
    begin
        if (y == 58 && (x%10 == 1 || x%7 == 3))
            oled_data = 16'b00001_001111_000010;
        if (y == 57 && (x%10 == 1 || x%7 == 3))
            oled_data = 16'b00001_001111_000010;
        if (y == 56 && (x%10 == 1 || x%7 == 3))
            oled_data = 16'b00001_001111_000010;
        if (y == 55 && x%10 == 2)
            oled_data = 16'b00001_001111_000010;
    end

    // render clouds
    //if (color_set == 0 && x 
    
    previous_mode = mode; // update previous mode
    
    color_set = 0;
    tick_flag = 0;
    tick2_flag = 0;
    
    end
endmodule
