`timescale 1ns / 1ps

// abduction 2 player game
module G2_mode_4_processor(
    input clk, clk0p1sec, clk1sec,
    input bL, bR, bD, bU, bC,
    input [5:0] peak,
    input [2:0] rand,
    input [5:0] mode, // G2_mode
    

    output reg cow_direction = 1, // 1 is right
    output reg [2:0] clouds = 0,
    output reg [9:0] alien_x,
    output reg [9:0] cow_x,
    output reg end_game = 0,
    output reg win = 0,
    output reg mode_4_end = 0,
    output reg [11:0] time_taken = 0, // counts up to 600
    output reg [11:0] abduction = 0, // counts up tp 1000
    output reg hit = 0,
    output reg [11:0] time_out = 0
    );

    reg [5:0] previous_mode = 0;
    reg [9:0] cow_v_x1;
    reg [9:0] cow_v_x2;
    
    // current values
    reg btnL_flip = 0;
    reg btnR_flip = 0;
    reg btnU_flip = 0;
    reg btnD_flip = 0;
    reg btnC_flip = 0;
    // store old value
    reg btnL_store = 0;
    reg btnR_store = 0;
    reg btnU_store = 0;
    reg btnD_store = 0;
    reg btnC_store = 0;
    // lower all flags first
    reg btnL_flag = 0;
    reg btnR_flag = 0;
    reg btnU_flag = 0;
    reg btnD_flag = 0;
    reg btnC_flag = 0;
    
    reg tick_flip = 0;
    reg tick_store = 0;
    reg tick_flag = 0;
    
    reg tick2_flip = 0;
    reg tick2_store = 0;
    reg tick2_flag = 0;
    
    always @ (posedge bL)
        btnL_flip <= ~btnL_flip;
    always @ (posedge bR)
        btnR_flip <= ~btnR_flip;
    always @ (posedge bD)
        btnD_flip <= ~btnD_flip;
    always @ (posedge bU)
        btnU_flip <= ~btnU_flip;
    always @ (posedge bC)
        btnC_flip <= ~btnC_flip;  
        
    always @ (posedge clk0p1sec)
    begin
        tick_flip <= ~tick_flip;
    end
    
    always @ (posedge clk1sec)
    begin
        tick2_flip <= ~tick2_flip;
    end  
           
////////////////////////////////////////////////////////////
           
    always @ (posedge clk)
    begin
    
        // time tracker 0.1 sec
        if (tick_flip != tick_store)
        begin
            tick_store = tick_flip;
            tick_flag = 1; // raises every 0.1 seconds
        end
        
        if (tick2_flip != tick2_store)
        begin
            tick2_store = tick2_flip;
            tick2_flag = 1; // raises every 1 second
        end
    
    ////////////////////////////////////////////////////////////
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
        
        if (btnC_flip != btnC_store)
        begin
            btnC_store <= btnC_flip;
            btnC_flag <= 1; // raise on button press
        end 
    ////////////////////////////////////////////////////////////
      
        // SET UP GAME
        if (previous_mode != 4)
        begin
            // reset positions
            cow_x = 5; // at the right
            alien_x = 65; // at the left
            abduction = 0; // count up to 2000
            clouds = 0; // no trees at first
            time_taken = 0; // reset timer
            cow_direction = 1; // cow face right
            end_game = 0; // stop the game
            win = 0; // tell if alien won
            mode_4_end = 0;
        end
        
    ////////////////////////////////////////////////////////////
    
        // PROCESS THE INPUTS AND GENERATE POSITIONS

        // up and right player 2 (controlling the alien)
        if (btnU_flag && alien_x != 5)
        begin
            alien_x <= alien_x - 3;
        end
        
        if (btnR_flag && alien_x != 65)
        begin
            alien_x <= alien_x + 3;
        end
        
        // left and down is for player 1 (controlling the cow)
        if (btnL_flag && cow_x != 5)
        begin
            cow_x <= cow_x - 3;
            cow_direction = 0;
        end
        
        if (btnD_flag && cow_x != 74) // move right
        begin
            cow_x <= cow_x + 3;
            cow_direction = 1;
        end
        
        // change clouds every second
        if (tick2_flag)
        begin
            clouds = rand;
        end
        
        
    ////////////////////////////////////////////////////////////
            
        // on the timer
        if (tick_flag) // every 0.1 sec
        begin
            // re calc the visible cow range, one cloud appear every 2 sec only
            cow_v_x1 = cow_x;
            cow_v_x2 = cow_x + 6;
            
            if (clouds[0] == 1)
            begin
                // if the cow is in the range of the first cloud
                if (cow_x <= 25  &&  cow_x >= 14)
                begin
                    if (cow_x >= 20) // left half cut off
                    begin
                        cow_v_x1 = 26;
                        cow_v_x2 = cow_x + 6;
                    end
                    else 
                    begin
                        cow_v_x1 = cow_x;
                        cow_v_x2 = 19;
                    end
                end
            end
            
            if (clouds[1] == 1)
            begin
                // if the cow is in the range of the second cloud
                if (cow_x <= 42  &&  cow_x  >= 31)
                begin
                    if (cow_x >= 37) // left half cut off
                    begin
                        cow_v_x1 = 43;
                        cow_v_x2 = cow_x + 6;
                    end
                    else 
                    begin
                        cow_v_x1 = cow_x;
                        cow_v_x2 = 36;
                    end
                end
            end
            
            if (clouds[2] == 1)
            begin
                // if the cow is in the range of the third cloud
                if (cow_x <= 60  &&  cow_x  >= 49)
                begin
                    if (cow_x >= 55) // left half cut off
                    begin
                        cow_v_x1 = 61;
                        cow_v_x2 = cow_x + 6 ;
                    end
                    else 
                    begin
                        cow_v_x1 = cow_x;
                        cow_v_x2 = 54;
                    end
                end
            end   
            
             
            
             // if the visible cow is in range
            if (cow_v_x2 >= alien_x +6 &&  cow_v_x1 <= alien_x + 12 && peak != 0)
            begin
                abduction <= abduction + peak; // then increase abduction
                hit = 1;
            end
            else 
                hit = 0;
            
            if (abduction >= 1000)
            begin
                win = 1;
                end_game = 1;
                abduction = 0;
                time_out = time_taken;
            end
            
            time_taken <= time_taken + 1;
            
            if (time_taken == 600)
                end_game = 1;
        end
        
        
     ////////////////////////////////////////////////////////////
        // process end screen
        if (end_game)
        begin
            if (btnU_flag)
                mode_4_end = 1; // return to main          
        end
        
        
     ////////////////////////////////////////////////////////////
        
        // leave early
        if (btnC_flag == 1)
        begin
            mode_4_end = 1;
            btnC_flag = 0;
        end
     
        // lower flags
        btnU_flag = 0;
        btnL_flag = 0;
        btnD_flag = 0;
        btnR_flag = 0;
        btnC_flag = 0;
        
        
        tick_flag = 0;
        tick2_flag = 0;
        previous_mode = mode;
    end
    
    

    
endmodule
