`timescale 1ns / 1ps

// main cow module
module game2_mode_selector(
    input clk,
    input clk0p25sec,
    input clk0p025sec,
    input clk20k,
    input [11:0] mic_in,
    input [11:0] peak_in,
    
    input bL,
    input bR,
    input bD,
    input bU,
    
    input mode_5_end, mode_4_end, //mode_7_end,
    input [5:0] overall_mode,
    
    output reg [5:0] mode = 0,
    output reg game_over_3 = 0
    );
    
    
    
    // in case faster mic to register snapping is needed
    reg [13:0] count4 = 0;
    reg [11:0] mic_max = 0;
    reg [11:0] mic_min = 0;
    reg [11:0] current_max;
    reg [11:0] current_min;
    reg [11:0] current_diff;
    
    ///////////////////////////////////////////////////////////////////////////////////////////////

    // to check if there is a sudden jump within
    always @ (posedge clk20k)
    begin
        count4 <= (count4 == 1500) ? 0 : count4 + 1;
        if (count4 == 0)
        begin
            mic_max = 0;
            mic_min = 4000;
        end
        if (mic_min > mic_in)
            mic_max = mic_in;
            
        if (mic_max < mic_in)
            mic_max = mic_in;
            
        if (count4 == 1500)
        begin
            current_max = mic_max;
            current_min = mic_min;
            current_diff = mic_max - mic_min;
        end        
    end
    
    ///////////////////////////////////////////////////////////////////////////////////////////////
    
    // regs to keep time
    reg tick_flip = 0;
    reg tick_store = 0;
    reg tick_flag = 0;
    
    reg tick2_flip = 0;
    reg tick2_store = 0;
    reg tick2_flag = 0;
    
    reg [11:0] tick3_flip = 0;
    reg tick3_flag = 0;
    
    ///////////////////////////////////////////////////////////////////////////////////////////////
    reg [3:0] count = 0;    
    reg [10:0]count2 = 0;
    reg [8:0] count3 = 0;
    reg [13:0] count5 = 0;
    reg [8:0] count6 = 0;
    reg [31:0] count7 = 0;
    
    // regs to process noise
    reg high_quiet_flag = 0;
    reg med_quiet_flag = 0;
    reg low_quiet_flag = 0;
    reg quiet_flag = 0;

    reg [10:0] high_noise_period = 0;
    reg [10:0] med_noise_period = 0;    
    reg [10:0] low_noise_period = 0;
    reg [10:0] quiet_period = 0;

    reg [10:0] high_last_period = 0;
    reg [10:0] med_last_period = 0;    
    reg [10:0] low_last_period = 0;
    reg [10:0] quiet_last_period = 0;
    
    reg [10:0] since_quiet = 0;

    reg quiet = 0;
    reg [11:0] sound_now = 0;
    
    //////////////////////////////////////////////////////////////////////////////////////////////
        
    
    // current values
    reg btnL_flip;
    reg btnR_flip;
    reg btnU_flip;
    reg btnD_flip;
    // store old value
    reg btnL_store = 0;
    reg btnR_store = 0;
    reg btnU_store = 0;
    reg btnD_store = 0;
    // lower all flags first
    reg btnL_flag = 0;
    reg btnR_flag = 0;
    reg btnU_flag = 0;
    reg btnD_flag = 0;
    
    reg flag_1_to_3 = 0;

    reg [5:0] previous_mode;
    reg [5:0] previous_overall = 0;
    
    //////////////////////////////////////////////////////////////////////////////////////////////
        
    
    always @ (posedge bL)
        btnL_flip <= ~btnL_flip;
    always @ (posedge bR)
        btnR_flip <= ~btnR_flip;
    always @ (posedge bD)
        btnD_flip <= ~btnD_flip;
    always @ (posedge bU)
        btnU_flip <= ~btnU_flip;

    always @ (posedge clk0p025sec)
    begin
        tick_flip <= ~tick_flip;
    end
    
    always @ (posedge clk0p25sec)
    begin
        tick2_flip <= ~tick2_flip;
    end
    
    always @ (posedge clk20k)
    begin
        tick3_flip <= (tick3_flip == 1500) ? 0: tick3_flip  + 1;      
    end

//////////////////////////////////////////////////////////////////////////////////////////////
    
    always @ (posedge clk)
    begin
        sound_now = peak_in;

        if (tick3_flip == 0)
        begin
            tick3_flag = 1; // raises every time peak is updated (0.00005 sec)
        end
        // time tracker 0.25 sec
        if (tick2_flip != tick2_store)
        begin
            tick2_store = tick2_flip;
            tick2_flag = 1; // raises every 0.5 seconds
        end
    
        // time tracker 0.025 sec
        if (tick_flip != tick_store)
        begin
            tick_store = tick_flip;
            tick_flag = 1; // raises every 0.05 seconds
        end
   //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        // manage button flags
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
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////            
                
        if (previous_overall != overall_mode)
        begin
            game_over_3 = 0;
            mode = 1;        
        end
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////            
        
        // SOUND PROCESSING
        // count the duration for which a sound level is sustained
        if (tick3_flag == 1) // 0.075 sec
        begin
            if (sound_now > 3602) // more than lvl 12
            begin
                high_noise_period <= high_noise_period + 1; // count how long the noise last for
            end
            else 
            begin
                high_last_period = high_noise_period;
                high_noise_period = 0;
                high_quiet_flag = 1; 
            end       
                 
            if (sound_now >= 2271 && sound_now < 3602) // more than lvl 1, less than 12
            begin
                med_noise_period <= med_noise_period + 1; // count how long the noise last for
            end
            else 
            begin
                med_last_period = med_noise_period;
                med_noise_period = 0;
                med_quiet_flag = 1; 
            end
            
            if (sound_now >= 2271 && sound_now < 2997) // more than lvl 1, less than 7
            begin
                low_noise_period <= low_noise_period + 1; // count how long the noise last for
            end
            else 
            begin
                low_last_period = low_noise_period; // 
                low_noise_period = 0; // reset
                low_quiet_flag = 1; // raise flag for processing
            end
            
            if (sound_now < 2271) // quiet, less than lvl 1
            begin
                quiet_period <= quiet_period + 1;
                quiet = 1;
            end
            else
            begin
                quiet_last_period = quiet_period; // 
                quiet_period = 0; // reset
                quiet_flag = 1; // raise flag for processing
                quiet = 0;
            end
            
            
            // detect quiet to loud suddenly and raise flag
            if (quiet)
                since_quiet <= since_quiet + 1;
            else 
                since_quiet <= 0;
                
        end
        
        
        //////////////////////////////////////////////////////////////////////////////////////////////
            
         // 0.5 sec
        if (tick2_flag)
        begin
            count <= (count == 3) ? 0: count + 1; // 1 sec clock
            count3 <= (count3 == 59) ? 0: count + 1; // 15 sec clk
            count5 <= (count5 == 10) ? 0 : count5 + 1; 
            count2 <= (count2 != 0) ? count2 - 1 : 0;
            count6 <= (count6 != 10) ? count6 + 1: 0;
        end
        
        if (previous_overall != 2 && overall_mode == 2)
        begin
            game_over_3 = 0;
        end
        
        //////////////////////////////////////////////////////////////////////////////////////////////
   
/*      mode list:
        0: main/idle
        1: sleep
        2: hearts
        3: clap (scare)
        4: alien
        5: balloon
        6: angry 
        7: feed
        8: heart
*/        

       
        // MODE HANDLING
        // entering side modes / leaving sleep mode
        if (overall_mode == 3)
        begin 
        
            if (mode == 1 && high_noise_period > 15) // snap or clapped startled awake (snap 0.15 sec)
            begin
                mode = 3; // scared (startled awake)
                count2 = 5; // for 2.5 sec
                flag_1_to_3 = 1;
            end
            
            
            if (flag_1_to_3 == 1 && count2 == 0)
            begin
                mode = 6;
                count2 = 7; // 5 sec angry
                flag_1_to_3 = 0;
            end
            
            if (mode == 6 && count2 == 0)
            begin
                mode = 0; // reset from angry
                count7 = 0;
            end
            
            if (mode == 0 && high_noise_period > 15) // snap startled (snap 0.15 sec)
            begin
                mode = 3; // scared 
                count2 = 7; // 5 sec
            end
            
            if (mode == 3 && flag_1_to_3 == 0 && count2 == 0) // regular startled
            begin
                mode = 0; // reset from startled
                count7 = 0;
            end
            
            if (mode == 1 && med_last_period > 30) // just some noise that isnt a scare
            begin
                mode = 0; // wake up abruptly
                count7 = 0;
            end
            
            if (mode == 0 && med_last_period > 30) // med noise  for 1.5 sec (talking) 
            begin
                mode = 2; // cow moos back
                count2 = 14; // 
            end
            
            if (mode == 2 &&  count2 == 0)
            begin
                mode = 0; // reset from moo
                count7 = 0;
            end
            
            if (mode == 0 && high_noise_period > 30) // very noisy for a long time
            begin
                mode = 6;
                count2 = 7;
            end
            
    //        if (mode == 0 && btnL_flag == 1)
    //        begin
    //            mode = 5; // balloon challange
    //            btnL_flag = 0;
    //        end
            
    //        if (mode_5_end == 1 && mode == 5)
    //        begin
    //            mode = 0; // reset
    //            count7 = 0;
    //        end
            
            if (mode == 0 && btnD_flag == 1)
            begin
                mode = 4; // enter alien cow game
                btnD_flag = 0;    
            end
            
            if (mode_4_end == 1 && mode == 4)
            begin
                mode = 0; // reset
                count7 = 0;
            end
            
    //        if (mode == 7 && mode_7_end == 1)
    //        begin
    //            mode = 0;
    //            count7 = 0;
    //        end
            
    //        if (mode == 0 && btnR_flag == 1)
    //        begin
    //            btnR_flag = 0;
    //            mode = 7;
    //        end
    
    
            if (mode == 0 && btnU_flag == 1)
            begin
                game_over_3 = 1;
                btnU_flag = 0;
            end
            
            count7 = (mode == 0) ? count7 + 1: 0; 
            
            if (mode == 0 && count7 == 700000000) // sleep after been idle for 7 seconds 
            begin
                mode = 1; // cow to sleep zzz
            end
            
        end
        //////////////////////////////////////////////////////////////////////////////////////////////
            
        previous_mode = mode;
        previous_overall = overall_mode;
        


        // lower flags at end if not processed
        tick_flag = 0;
        tick2_flag = 0;
        tick3_flag = 0;
        
        btnU_flag = 0;
        btnL_flag = 0;
        btnD_flag = 0;
        btnR_flag = 0;
        
        quiet_last_period = 0;
        low_last_period = 0;
        med_last_period = 0;
        high_last_period = 0;
        
    end
    
    
    
endmodule
