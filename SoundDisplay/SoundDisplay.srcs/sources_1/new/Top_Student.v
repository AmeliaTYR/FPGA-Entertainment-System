`timescale 1ns / 1ps


module Top_Student (
    // MIC
    input  J_MIC3_Pin3,   // Connect from this signal to Audio_Capture.v
    output J_MIC3_Pin1,   // Connect to this signal from Audio_Capture.v
    output J_MIC3_Pin4,    // Connect to this signal from Audio_Capture.v
        
    // OLED
    input btnC, // to refresh screen
    input basys_clk,
    output [7:0] JC,
    
    // basys 3
    input btnL,
    input btnR,
    input btnD,
    input btnU,
    input [15:0] SW, 
    output [15:0] led,
    output [6:0] seg,
    output [3:0] an,
    output dp
    );
    
    // clocks
    wire clk6p25m, clk20k, clk20, clk381;
    wire clk0p375sec, clk1sec, clk0p25sec, clk0p125sec, clk0p75sec;
    wire clk2sec, clk0p1sec;
    wire clk0p5sec, clk0p025sec;
    
    // buttons
    wire reset;
    wire bR;
    wire bL;
    wire bD;
    wire bU;
    
    // misc OLED wires
    wire frame_begin;
    wire [12:0] pixel_index;
    wire sending_pixels;
    wire sample_pixel;
    wire [4:0] teststate;
    
    
    reg [11:0] sample; // to store mic_in value
    wire [11:0] mic_in; // 12 bit value from the mic
    
    // convert to a number from 1 to 16
    wire [5:0] mic_out;
    wire [11:0] peak;
    wire [5:0] peak_out;
    wire [5:0] led_out;
    
    // seven seg wires
    wire [3:0] value_seg1;
    wire [3:0] value_seg2;
    wire [3:0] value_peakseg0;
    wire [3:0] value_peakseg1;
    wire [3:0] value_peakseg2;
    wire [3:0] value_peakseg3;
    wire [6:0] display_seg1;
    wire [6:0] display_seg2;
    wire [6:0] display_peakseg0;
    wire [6:0] display_peakseg1;
    wire [6:0] display_peakseg2;
    wire [6:0] display_peakseg3;
    wire [6:0] seg1;
    wire [3:0] an1; 
    wire [6:0] seg2;
    wire [3:0] an2;
    wire [6:0] seg3;
    wire [3:0] an3;

    // for coordinates
    wire [7:0] x;
    wire [6:0] y;
    
    // basic render data
    wire border_width; // default set to thickness 1
    wire [1:0] color_theme; // themes 1 to 3, default 1
    wire show_vol_bar; // 0: on, 1: off
    wire border_on; // 0: on, 1: off
    wire other_comp_on; // 0: on, 1:off
    reg [5:0] led_freeze = 0; // save to freeze value, initialised to 0 
    wire [15:0] oled_data_basic; // basic_render output
    wire [15:0] oled_data; // actual output
    
    wire game_over_1;
    wire game_over_2;
    wire game_over_3;
    wire game_over_4;    
    

    // clocks
    clock_divider_module clk_slow (basys_clk, 1048575, clk20); // for buttons
    clock_divider_module clk_oled (basys_clk, 7, clk6p25m); // for Oled_Display
    clock_divider_module clk_voice (basys_clk, 2499, clk20k); // for Audio_Capture
    clock_divider_module clk_segment (basys_clk, 131234, clk381); // seven seg steps
    
    clock_divider_module spawn_clk (basys_clk, 18750000, clk0p375sec); // spawn_clk 
    clock_divider_module despawn_clk (basys_clk, 50_000_000, clk1sec); // despawn_clk 
    clock_divider_module laser_spawn_clk(basys_clk, 12500000, clk0p25sec); // laser_spawn_clk
    clock_divider_module laser_despawn_clk(basys_clk, 6250000, clk0p125sec); // laser_despawn_clk
    clock_divider_module explosion_despawn_clk(basys_clk, 37500000, clk0p75sec); // explosion_despawn_clk
    
    clock_divider_module stars_clk (basys_clk, 100_000_000, clk2sec); //  
    clock_divider_module p1sec_clk (basys_clk, 5_000_000, clk0p1sec); //  
    clock_divider_module p5sec_clk (basys_clk, 25_000_000, clk0p5sec); //  
    clock_divider_module p05sec_clk(basys_clk, 1_250_000, clk0p025sec); // p05sec_clk
    
    // button inputs
    single_pulse_mod reset_pulse (clk20, btnC, reset);
    single_pulse_mod button_L (clk20, btnL, bL);
    single_pulse_mod button_R (clk20, btnR, bR);
    single_pulse_mod button_D (clk20, btnD, bD);
    single_pulse_mod button_U (clk20, btnU, bU);
    
////////////////////////////////////////////////////////////////////////////////////////////////////  
    // provided modules
        
    Oled_Display unit_oled (clk6p25m, reset, frame_begin, sending_pixels,
          sample_pixel, pixel_index, oled_data[15:0], JC[0], JC[1], JC[3], JC[4], JC[5], JC[6],
          JC[7], teststate[4:0]);     
          
    Audio_Capture audioC(basys_clk, clk20k, J_MIC3_Pin3, J_MIC3_Pin1, J_MIC3_Pin4, mic_in[11:0]);    

////////////////////////////////////////////////////////////////////////////////////////////////////  

    //menu stuff
    wire done_1; //show border
    wire done_2; //show volume bar
    wire done_3; //show indicator
    wire done_4; //border thickness
    wire done_5; //mic in or peak on LED
    wire done_6; //mic in or peak on 7 Seg
    wire done_7; //Game Modes
    wire done_8; //Game end
    
    wire [3:0] menu_mode;
    wire [3:0] choice; 
    wire [3:0] option_1;
    wire [3:0] option_2;
    wire [3:0] option_3;
    wire [3:0] option_4; 
    wire [3:0] option_5; 
    wire [3:0] option_6;
    wire [3:0] option_7;
    wire [15:0] oled_data_menu_0;
    wire [15:0] oled_data_menu_1;
    wire [15:0] oled_data_menu_2;
    wire [15:0] oled_data_menu_3;
    wire [15:0] oled_data_menu_4;
    wire [15:0] oled_data_menu_5;
    wire [15:0] oled_data_menu_6;
    wire [15:0] oled_data_menu_7;
    wire [15:0] oled_data_menu;
    
    //signals
    wire led_choice;
    wire segment_choice;
    
    menu_mode_selector menu_mode_select (basys_clk, bD, bU, bR, done_1, done_2,
            done_3, done_4, done_5, done_6, done_7, menu_mode[3:0], choice[3:0]);
    menu_mode_1 mode_1 (basys_clk, bL, bR, reset, menu_mode[3:0], done_1, option_1[3:0], border_on);
    menu_mode_2 mode_2 (basys_clk, bL, bR, reset, menu_mode[3:0], done_2, option_2[3:0], show_vol_bar);
    menu_mode_3 mode_3 (basys_clk, bL, bR, reset, menu_mode[3:0], done_3, option_3[3:0], other_comp_on); //1:show, 0:don't show   
    menu_mode_4 mode_4 (basys_clk, bL, bR, reset, menu_mode[3:0], done_4, option_4[3:0], border_width); //1: 1px, 0: 3px
    menu_mode_5 mode_5 (basys_clk, bL, bR, reset, menu_mode[3:0], done_5, option_5[3:0], led_choice); //1: mic_in, 0: peak
    menu_mode_6 mode_6 (basys_clk, bL, bR, reset, menu_mode[3:0], done_6, option_6[3:0], segment_choice); //1: mic_in, 0: peak
    menu_mode_7 mode_7 (
        basys_clk, 
        bL, bR, reset, bU,
        menu_mode[3:0], 
        game_over_1, game_over_2, game_over_3, game_over_4,
        done_7, option_7[3:0], 
        overall_mode [3:0]
        ); 
    //menu_mode_8 mode_8 (basys_clk, bU, menu_mode[3:0], done_8);

    display_menu_0 menu_0 (x[7:0], y[6:0], color_theme[1:0], choice[3:0], oled_data_menu_0[15:0]); //scroll menu
    display_menu_1 menu_1 (x[7:0], y[6:0], color_theme[1:0], option_1 [3:0], oled_data_menu_1[15:0]);
    display_menu_2 menu_2 (x[7:0], y[6:0], color_theme[1:0], option_2 [3:0], oled_data_menu_2[15:0]);
    display_menu_3 menu_3 (x[7:0], y[6:0], color_theme[1:0], option_3 [3:0], oled_data_menu_3[15:0]);
    display_menu_4 menu_4 (x[7:0], y[6:0], color_theme[1:0], option_4 [3:0], oled_data_menu_4[15:0]);
    display_menu_5 menu_5 (x[7:0], y[6:0], color_theme[1:0], option_5 [3:0], oled_data_menu_5[15:0]); 
    display_menu_6 menu_6 (x[7:0], y[6:0], color_theme[1:0], option_6 [3:0], oled_data_menu_6[15:0]); 
    display_menu_7 menu_7 (x[7:0], y[6:0], color_theme[1:0], option_7 [3:0], oled_data_menu_7[15:0]); 
    

    
    oled_menu_mux (
        basys_clk, menu_mode[3:0],
        oled_data_menu_0 [15:0],
        oled_data_menu_1 [15:0],
        oled_data_menu_2 [15:0],
        oled_data_menu_3 [15:0],
        oled_data_menu_4 [15:0],
        oled_data_menu_5 [15:0],
        oled_data_menu_6 [15:0],
        oled_data_menu_7 [15:0],
        oled_data_menu [15:0]
        );


////////////////////////////////////////////////////////////////////////////////////////////////////  

    // CODE FOR BASIC STUDENT A BASIC TASK
    peak_amp_mod peak_amp (clk20k, mic_in[11:0], peak[11:0]);
    mic_range_mod mic_range (mic_in[11:0], mic_out[5:0]);
    mic_range_mod peak_range (peak[11:0], peak_out[5:0]);
    assign led_out[5:0] = segment_choice ? mic_out[5:0] : peak_out[5:0];
    
    // modules to display number from 0 to 16    
    segment_disp_1 display1 (led_out[5:0], value_seg1[3:0]);
    segment_disp_2 display2 (led_out[5:0], value_seg2[3:0]);
    number_decoder n1 (basys_clk, value_seg1[3:0], display_seg1[6:0]);
    number_decoder n2 (basys_clk, value_seg2[3:0], display_seg2[6:0]);
    segment_selector segment_select (clk381, display_seg1[6:0], display_seg2[6:0], seg1[6:0], an1[3:0]);
    
    // modules to display 4 digit mic_in value
    segment_peakdisp_0 peakdisplay0 (peak[11:0], value_peakseg0[3:0]);
    segment_peakdisp_1 peakdisplay1 (peak[11:0], value_peakseg1[3:0]);
    segment_peakdisp_2 peakdisplay2 (peak[11:0], value_peakseg2[3:0]);
    segment_peakdisp_3 peakdisplay3 (peak[11:0], value_peakseg3[3:0]);
        
    number_decoder peakn0 (basys_clk, value_peakseg0[3:0], display_peakseg0[6:0]);
    number_decoder peakn1 (basys_clk, value_peakseg1[3:0], display_peakseg1[6:0]);
    number_decoder peakn2 (basys_clk, value_peakseg2[3:0], display_peakseg2[6:0]);
    number_decoder peakn3 (basys_clk, value_peakseg3[3:0], display_peakseg3[6:0]);
        
    segment_peak segment_peak_mod (clk381, 
        display_peakseg0[6:0], display_peakseg1[6:0], 
        display_peakseg2[6:0], display_peakseg3[6:0], 
        seg2[6:0], an2[3:0]
        );
     
////////////////////////////////////////////////////////////////////////////////////////////////////  

    // CODE FOR BASIC STUDENT B BASIC TASK
    coordinate_converter coord_convert (pixel_index[12:0], x[7:0], y[6:0]);
    assign color_theme[1:0] = SW[14] ? 2 : (SW[13] ? 3 : 1); 

    always @ (posedge basys_clk)
    begin 
        if (SW[15] == 0)
            led_freeze[5:0] <= led_out[5:0];
    end
    
    basic_game_over_mod basic_over (basys_clk, overall_mode[3:0], bU, game_over_1);
    
    // to generate oled_output for basic mode
    basic_render basic (
        x[7:0], y[6:0], led_freeze[5:0],
        border_width, color_theme[1:0], 
        show_vol_bar, other_comp_on, border_on,
        oled_data_basic[15:0]
        );
        
////////////////////////////////////////////////////////////////////////////////////////////////////  

    // advanced features wires
    wire [3:0] player_pos;
    wire [3:0] laser_y;
    wire [2:0] rand;
    wire [3:0] pos_EA1;
    wire [3:0] EA1_y;
    wire [3:0] pos_EA2;
    wire [3:0] EA2_y;
    wire [3:0] pos_EA3;
    wire [3:0] EA3_y;
    wire [3:0] pos_EB;
    wire [3:0] EB_y;
    wire [3:0] laser_exist;
    wire [3:0] explosion_x;
    wire [3:0] explosion_y;
    wire EA1_hit;
    wire EA2_hit;
    wire EA3_hit;
    wire EB_hit;
    wire [12:0] score, lastscore;

    // seven seg score display wires
    wire [12:0] score_now;
    wire [3:0] score_seg0;
    wire [3:0] score_seg1;
    wire [3:0] score_seg2;
    wire [3:0] score_seg3;
    wire [6:0] display_scoreseg0;
    wire [6:0] display_scoreseg1;
    wire [6:0] display_scoreseg2;
    wire [6:0] display_scoreseg3;
    
    wire [3:0] adv_mode;
    wire [15:0] oled_data_gamemode_2;
    wire [15:0] oled_data_advanced_team;
    wire [3:0] overall_mode; // 0: basic, 1 : advanced, 2: stu A, 3: stu B 

    
    // ADVANCED MODE MODULES
    // to select submode from advanced mode
    advanced_mode_mod advanced_mode (basys_clk, bD, bU, overall_mode[3:0],  adv_mode[3:0], game_over_2);
    
    player_tracker p_tracker (basys_clk, adv_mode[3:0], bL, bR, player_pos [3:0]);
    
    randomiser random (basys_clk, bL, bR, rand[2:0]);
   
    // shooting processor 
    laser_pos_mod laser_power (clk0p25sec, peak_out [5:0], laser_y[3:0]);
    
    y_tracker_mod game_processor (
        basys_clk, clk0p375sec, clk1sec, clk0p25sec, clk0p125sec, clk0p75sec,
        rand[2:0], laser_y[3:0], player_pos[3:0], 
        adv_mode[3:0],
        
        pos_EA1[3:0], EA1_y[3:0], 
        pos_EA2[3:0], EA2_y[3:0],
        pos_EA3[3:0], EA3_y[3:0],
        pos_EB[3:0], EB_y[3:0],
        laser_exist[3:0], 
        explosion_x[3:0], explosion_y[3:0],
        EA1_hit, EA2_hit, EA3_hit, EB_hit
        );
    
    score_tracker_mod score_track (
        basys_clk, clk0p25sec,
        laser_y [3:0],
        EA1_hit, EA2_hit, EA3_hit, EB_hit,
        adv_mode[3:0],
        score [12:0], lastscore [12:0]
        );
        
    assign score_now = (adv_mode == 2) ? score : lastscore;   

    // modules to display 4 digit score value
    segment_scoredisp_0 score_display0 (score_now[12:0], score_seg0[3:0]);
    segment_scoredisp_1 score_display1 (score_now[12:0], score_seg1[3:0]);
    segment_scoredisp_2 score_display2 (score_now[12:0], score_seg2[3:0]);
    segment_scoredisp_3 score_display3 (score_now[12:0], score_seg3[3:0]);
        
    number_decoder score_decoder0 (basys_clk, score_seg0[3:0], display_scoreseg0[6:0]);
    number_decoder score_decoder1 (basys_clk, score_seg1[3:0], display_scoreseg1[6:0]);
    number_decoder score_decoder2 (basys_clk, score_seg2[3:0], display_scoreseg2[6:0]);
    number_decoder score_decoder3 (basys_clk, score_seg3[3:0], display_scoreseg3[6:0]);
    
    segment_peak segment_score_mod (clk381, 
        display_scoreseg0[6:0], display_scoreseg1[6:0], 
        display_scoreseg2[6:0], display_scoreseg3[6:0], 
        seg3[6:0], an3[3:0]
        );

    advanced_display_mod adv_mode_2_render (
        clk2sec,
        adv_mode [3:0], 
        x[7:0], y[6:0], 
        color_theme[1:0],
        
        clk0p025sec,
        rand,
        
        pos_EA1[3:0], EA1_y[3:0], 
        pos_EA2[3:0], EA2_y[3:0],
        pos_EA3[3:0], EA3_y[3:0],
        pos_EB[3:0], EB_y[3:0],
        laser_exist[3:0],  laser_y[3:0],
        explosion_x[3:0], explosion_y[3:0],
        player_pos[3:0],
        oled_data_gamemode_2[15:0]
        );
        
        
////////////////////////////////////////////////////////////////////////////////////////////////////  

    // G2 wires
    wire [15:0] oled_data_G2_normal;
    wire [5:0] G2_mode;
    
    wire mode_5_end;
    wire mode_4_end;
    
    // abduction wires
    wire [2:0] clouds;
    wire [9:0] alien_x;
    wire [9:0] cow_x;
    wire [11:0] time_taken;
    wire [11:0] abduction;    
    wire cow_direction;
    wire end_game;
    wire win;
    wire hit;    
    wire [11:0] time_out;
    wire [15:0] oled_data_G2M4; 
    wire [15:0] oled_data_G2_overall;  

    wire [12:0] G2_seg;
    wire [3:0] G2_seg0;
    wire [3:0] G2_seg1;
    wire [3:0] G2_seg2;
    wire [3:0] G2_seg3;
    wire [6:0] display_G2seg0;
    wire [6:0] display_G2seg1;
    wire [6:0] display_G2seg2;
    wire [6:0] display_G2seg3;
    wire [6:0] seg4;
    wire [3:0] an4;


    
    // GAME 2 MODS
    game2_mode_selector G2_mode_selector(
        basys_clk, clk0p25sec, clk0p025sec, clk20k,
        mic_in [11:0], peak[11:0],
        bL, bR, bD, bU, 
        mode_5_end, mode_4_end,
        overall_mode [3:0],
        
        G2_mode[5:0],
        game_over_3
        );
        
    G2M1_render G2_normal_render (
        clk1sec,
        clk0p5sec, 
        clk0p25sec,
        x[7:0], y[6:0], 
        G2_mode[5:0], 

        oled_data_G2_normal[15:0]
        );
        
    
    G2_mode_4_processor G2_M4_processor(
        basys_clk, clk0p1sec, clk1sec,
        bL, bR, bD, bU, reset,
        peak_out[5:0],
        rand[2:0],
        G2_mode[5:0], // G2_mode
        
        cow_direction, // 1 is right
        clouds[2:0], alien_x[9:0], cow_x[9:0],
        end_game, win, mode_4_end,

        time_taken [11:0], // counts up to 600
        abduction [11:0], // counts up tp 2000
        hit, 
        time_out [11:0]
        );
            
    G2M4_render G2M4_renderer(
        clk0p5sec,
        x[7:0], 
        y[6:0],
        cow_direction, // 1 is right
        clouds[2:0], alien_x[9:0], cow_x[9:0],
        end_game, win,
        time_taken[11:0], // counts up to 600
        abduction [11:0], // counts up tp 2000
        hit,
        time_out [11:0],
                
        oled_data_G2M4 [15:0]
        );
    
    display_mod_G2 G2_display_mux (
        basys_clk,
        G2_mode[5:0],
        oled_data_G2_normal[15:0], 
        oled_data_G2M4[15:0], 
            
        oled_data_G2_overall[15:0]
        );
    
    assign G2_seg = (end_game) ? time_taken : abduction;

    // modules to display 4 digit score value
    segment_scoredisp_0 G2_display0 (G2_seg[12:0], G2_seg0[3:0]);
    segment_scoredisp_1 G2_display1 (G2_seg[12:0], G2_seg1[3:0]);
    segment_scoredisp_2 G2_display2 (G2_seg[12:0], G2_seg2[3:0]);
    segment_scoredisp_3 G2_display3 (G2_seg[12:0], G2_seg3[3:0]);
           
    number_decoder G2_decoder0 (basys_clk, G2_seg0[3:0], display_G2seg0[6:0]);
    number_decoder G2_decoder1 (basys_clk, G2_seg1[3:0], display_G2seg1[6:0]);
    number_decoder G2_decoder2 (basys_clk, G2_seg2[3:0], display_G2seg2[6:0]);
    number_decoder G2_decoder3 (basys_clk, G2_seg3[3:0], display_G2seg3[6:0]);

    segment_peak segment_G2_mod (
        clk381, 
        display_G2seg0[6:0], display_G2seg1[6:0], 
        display_G2seg2[6:0], display_G2seg3[6:0], 
        seg4[6:0], an4[3:0]
        );
            
////////////////////////////////////////////////////////////////////////////////////////////////////  
    
    // MS PAINT MODS    
    wire [2:0] scheme;
    wire [2:0] data;
    wire [7:0] cursor_x;
    wire [6:0] cursor_y;
    wire [2:0] brush;
    wire [3:0] color;
    wire select_on;
    wire is_painting;
    wire [15:0] oled_data_paint;
    
    assign select_on = SW[0] ? 1 : 0;
    assign is_painting = SW[1] ? 1 : 0;
    
    paint_processor ms_paint(
        x [7:0], y [6:0],
        basys_clk, clk0p1sec, clk1sec,
        overall_mode [3:0],
        bL, bR, bD, bU,
        select_on, // SW[0]
        is_painting, // SW[1]
        
        cursor_x [7:0], cursor_y [6:0],
        scheme [2:0], brush[2:0], color[3:0],
        
        data[2:0],
        game_over_4
        );

    paint_renderer paint_render(
        x [7:0], y [6:0],
        scheme [2:0],
        data[2:0],
        cursor_x [7:0], cursor_y [6:0],
        brush[2:0], color[3:0],
        
        oled_data_paint [15:0]
        );
        
        

////////////////////////////////////////////////////////////////////////////////////////////////////  
    
    // OVERALL OUTPUTS
        
    // display outputs for oled
    display_mod oled_display_mux (
        basys_clk,
        overall_mode[3:0],
        
        oled_data_basic[15:0],  // basic task
        oled_data_gamemode_2 [15:0], // space shooter
        oled_data_G2_overall[15:0], // cow game
        oled_data_paint[15:0],
        
        oled_data_menu [15:0],
        
        oled_data[15:0]
        );
       
    // display outputs for seven seg
    display_seven_seg sev_seg_disp (
        basys_clk, 
        overall_mode[3:0], 
        ~led_choice,
        adv_mode[3:0],
        end_game,
        G2_mode[5:0],
        seg1[6:0], an1[3:0],
        seg2[6:0], an2[3:0],
        seg3[6:0], an3[3:0],
        seg4[6:0], an4[3:0],
        seg[6:0], an[3:0], dp
        );      
        
    // display outputs for leds
    led_display_mod led_display (led_out[5:0] , led[15:0]);

////////////////////////////////////////////////////////////////////////////////////////////////////  
    
    // ????

    // to store the value in sample (first proj lab thing???
//    always @ (mic_in)
//    begin
//        sample <= mic_in;  
//    end

////////////////////////////////////////////////////////////////////////////////////////////////////  

    
endmodule
