`timescale 1ns / 1ps

    /*
          cow moods:
    0: neutral (just normal eye)
    1: happy (happy eye)
    2: angry
    3: eating animation
    4: very happy (after eating)
    */

    /*
    apple stage :
    
    0: no apple
    1: third apple
    2: half apple
    3: full apple
    */

module G2M7_mod(
    input clk,
    input clk0p25sec,
    input [7:0]x, 
    input [6:0]y,
    input bL, bR, bD, bU,
    input [5:0] G2_mode,
    
    output reg [2:0] apple_stage = 0, // how much apple there is 
    output reg [7:0] apple_x = 10,
    output reg [6:0] apple_y = 10,
    output reg [5:0] cow_mood = 0,
    output reg fed = 0,
    output reg [4:0] eye_direction = 0,
    output reg mode_7_end = 1
    );
    
    reg apple_move = 0;
    reg [2:0] mood_count = 0;
    
    // current values
    reg btnL_flip = 0;
    reg btnR_flip = 0;
    reg btnU_flip = 0;
    reg btnD_flip = 0;
    reg tick_flip = 0;

    // store old value
    reg btnL_store = 0;
    reg btnR_store = 0;
    reg btnU_store = 0;
    reg btnD_store = 0;
    reg tick_store = 0;

    // lower all flags first
    reg btnL_flag = 0;
    reg btnR_flag = 0;
    reg btnU_flag = 0;
    reg btnD_flag = 0;
    reg tick_flag = 0;
    
    reg [5:0] previous_submode = 0;
    
    always @ (posedge bL)
        btnL_flip <= ~btnL_flip;
    always @ (posedge bR)
        btnR_flip <= ~btnR_flip;
    always @ (posedge bD)
        btnD_flip <= ~btnD_flip;
    always @ (posedge bU)
        btnU_flip <= ~btnU_flip;
        
    always @ (posedge clk0p25sec)
        tick_flip <= ~tick_flip;

///////////////////////////////////////////////////////////////////////////////////
    
    always @ (x, y)
    begin
        // manage button flags to detect single press
        if (btnL_flip != btnL_store)
        begin
            btnL_store <= btnL_flip;
            btnL_flag <= 1; // raise on button press
        end
        if (btnR_flip != btnR_store)
        begin
            btnR_store <= btnR_flip;
            btnR_flag <= 1; // raise on button press
        end
        if (btnD_flip != btnD_store)
        begin
            btnD_store <= btnD_flip;
            btnD_flag <= 1; // raise on button press
        end
        if (btnU_flip != btnU_store)
        begin
            btnU_store <= btnU_flip;
            btnU_flag <= 1; // raise on button press
        end 
        
        if (tick_flip != tick_store)
        begin
            tick_store <= tick_flip;
            tick_flag <= 1; // raise on button press
        end 
  
    ///////////////////////////////////////////////////////////////////////////////////
    
        // FOR COW MOOD
        
        cow_mood = 0; // default normal mood
        
        // top left mood
        if (apple_x >= 16 && apple_x <= 23 && apple_y >= 12 && apple_y <= 25)
        begin
            if (btnL_flag == 1 || btnU_flag == 1)
            begin
                cow_mood = 2; // angry
            end    
            if (btnD_flag == 1 || btnR_flag == 1)
            begin
                cow_mood = 1; // happy
            end
        end
        
        // med left mood
        if (apple_x >= 16 && apple_x <= 23 && apple_y >= 26 && apple_y <= 37)
        begin
            if (btnL_flag == 1)
            begin
                cow_mood = 2; // angry
            end    
            if (btnR_flag == 1)
            begin
                cow_mood = 1; // happy
            end
        end
        
        // bottom left mood
        if (apple_x >= 16 && apple_x <= 23 && apple_y >= 38 && apple_y <= 47)
        begin
            if (btnR_flag == 1 || btnU_flag == 1)
            begin
                cow_mood = 1; // happy
            end    
            if (btnD_flag == 1 || btnL_flag == 1)
            begin
                cow_mood = 2; // angry
            end
        end
        
        // top mid mood
        if (apple_x >= 24 && apple_x <= 35 && apple_y >= 12 && apple_y <= 25)
        begin
            if (btnD_flag == 1)
            begin
                cow_mood = 1; // happy
            end    
            if (btnU_flag == 1)
            begin
                cow_mood = 2; // angu
            end
        end
        
        // bottom mid mood
        if (apple_x >= 38 && apple_x <= 47 && apple_y >= 24 && apple_y <= 35)
        begin
            if (btnD_flag == 1)
            begin
                cow_mood = 2; // angry
            end    
            if (btnU_flag == 1)
            begin
                cow_mood = 1; // happy
            end
        end
        
        // top right mood
        if (apple_x >= 36 && apple_x <= 74 && apple_y >= 12 && apple_y <= 25)
        begin
            if (btnL_flag == 1 || btnU_flag == 1)
            begin
                cow_mood = 2; // angry
            end    
            if (btnD_flag == 1 || btnR_flag == 1)
            begin
                cow_mood = 1; // happy
            end
        end
        
        // med right mood
        if (apple_x >= 36 && apple_x <= 74 && apple_y >= 26 && apple_y <= 37)
        begin
            if (btnR_flag == 1)
            begin
                cow_mood = 2; // angry
            end    
            if (btnL_flag == 1)
            begin
                cow_mood = 1; // happy
            end
        end
        
        // bottom right mood
        if (apple_x >= 36 && apple_x <= 74 && apple_y >= 38 && apple_y <= 47)
        begin
            if (btnL_flag == 1 || btnU_flag == 1)
            begin
                cow_mood = 1; // happy
            end    
            if (btnD_flag == 1 || btnR_flag == 1)
            begin
                cow_mood = 2; // angu
            end
        end
        
        /*
              cow moods:
        0: neutral (just normal eye)
        1: happy (happy eye)
        2: angry
        3: eating animation
        4: very happy (after eating)
        */
        
   ///////////////////////////////////////////////////////////////////////////////////
        // FOR IDLE COW EYE
        
        if (apple_x <= 49 && apple_y <= 24)
        begin
            eye_direction = 1;
        end
        
        if (apple_x <= 49 && apple_y <= 24)
        begin
            eye_direction = 1;
        end
        
        if (apple_x <= 49 && apple_y <= 24)
        begin
            eye_direction = 1;
        end
        
        if (apple_x <= 49 && apple_y <= 24)
        begin
            eye_direction = 1;
        end
        
        if (apple_x <= 49 && apple_y <= 24)
        begin
            eye_direction = 1;
        end
        
        
        
///////////////////////////////////////////////////////////////////////////////////
        // FOR EMOTIONS LASTING, CLEAR ON 0.5 sec timing

        if (tick_flag)
        begin
            mood_count <= (mood_count != 0) ? mood_count - 1 : mood_count;
        end
            
        if (cow_mood != 0)
        begin
            mood_count = 4;
        end
        
        if (mood_count == 0)
            cow_mood = 0;

///////////////////////////////////////////////////////////////////////////////////
        // post eating and return to cow main
        
        if (fed == 1)
            mode_7_end = 1;
        
///////////////////////////////////////////////////////////////////////////////////
          
                /*
                apple stage :
                
                0: no apple
                1: third apple
                2: half apple
                3: full apple
                */
                
                // if in range of mouth stop and run eathign animaion
                if (apple_x >= 24 && apple_x <= 35 && apple_y >= 26 && apple_y <= 37)
                begin
                    fed = 1; // start feeding animation 
                end        



///////////////////////////////////////////////////////////////////////////////////

        // move cursor (one pixel per button push)
        if (fed == 0)
        begin
            if (btnU_flag && apple_y > 2)
            begin
                apple_y <= apple_y - 2;
            end
            
            if (btnR_flag && apple_x < 86)
            begin
                apple_x <= apple_x + 2;
            end
            
            if (btnL_flag && apple_x > 2)
            begin
                apple_x <= apple_x - 2;
            end
            
            if (btnD_flag && apple_y < 50) 
            begin
                apple_y <= apple_y + 2;
            end
        end
        
  ///////////////////////////////////////////////////////////////////////////////////
  
        // spawn apple at 10 10 (reset) 
        if (previous_submode != 2 && G2_mode == 2)
        begin
            apple_x = 10;
            apple_y = 10;
            fed = 0;
            mode_7_end = 0;
        end
        
        previous_submode = G2_mode;
        
        

        
//    cow mood is good when apple is near and moving  towards
//    cow mood is neutral when apple is far away
//    cow get angry when apple move away
//    when apple is near 10 border around mouth mouth cow eat
//    cow is very happy after eating


    end
endmodule
