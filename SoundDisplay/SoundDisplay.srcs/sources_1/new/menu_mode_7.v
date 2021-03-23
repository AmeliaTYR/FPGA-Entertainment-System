`timescale 1ns / 1ps


module menu_mode_7(
    input clock, 
    input bL, 
    input bR, 
    input bC, bU,
    input [3:0] menu_mode,
    input game_over_1, 
    input game_over_2, 
    input game_over_3, 
    input game_over_4,
    
    output reg done_7,
    output reg [3:0] option_7 = 1,
    output reg [3:0] overall_mode
    );
        
        
    // current value
    reg btnL_flip = 0;
    reg btnR_flip = 0;
    reg btnC_flip = 0;
    reg btnU_flip = 0;
    
//    reg done_8_flip = 0;
    
    // store old value
    reg btnL_store = 0;
    reg btnR_store = 0;
    reg btnC_store = 0; 
    reg btnU_store = 0;       
//    reg done_8_store = 0;
    
    // lower all flags first
    reg btnL_flag = 0;
    reg btnR_flag = 0;
    reg btnC_flag = 0;
    reg btnU_flag = 0;
//    reg done_8_flag = 0;
    
    // game over regs
    reg g1_flip = 0;
    reg g2_flip = 0;
    reg g3_flip = 0;
    reg g4_flip = 0;
    
    reg g1_store = 0;
    reg g2_store = 0;
    reg g3_store = 0;
    reg g4_store = 0;
    
    reg g1_flag = 0;
    reg g2_flag = 0;
    reg g3_flag = 0;
    reg g4_flag = 0;    
    
    reg [3:0] flag_count = 0;
    
    initial begin
        overall_mode = 0;
        option_7 = 1;
    end
    
    //bCtton flips
    always @ (posedge bL)
        btnL_flip <= ~btnL_flip;
    always @ (posedge bR)
        btnR_flip <= ~btnR_flip;
    always @ (posedge bC)
        btnC_flip <= ~btnC_flip;
    always @ (posedge bU)
        btnU_flip <= ~btnU_flip;
        
    always @ (posedge game_over_1)
        g1_flip <= ~ g1_flip;
    always @ (posedge game_over_2)
        g2_flip <= ~ g2_flip;
    always @ (posedge game_over_3)
        g3_flip <= ~ g3_flip;
    always @ (posedge game_over_4)
        g4_flip <= ~ g4_flip;
        
//    always @ (posedge done_8)
//        done_8_flip <= ~done_8_flip;
        
/////////////////////////////////////////////////////////////////////////////////////////////

   
    always @ (posedge clock)
    begin
        //bCtton flags
        if (btnL_flip != btnL_store)
        begin
            btnL_store <= btnL_flip;
            btnL_flag <= 1;
        end
        if (btnR_flip != btnR_store)
        begin
            btnR_store <= btnR_flip;
            btnR_flag <= 1;
        end
        if (btnC_flip != btnC_store)
        begin
            btnC_store <= btnC_flip;
            btnC_flag <= 1;
        end
        
        if (g1_flip != g1_store)
        begin
            g1_store <= g1_flip;
            g1_flag <= 1;
        end
        
        if (g2_flip != g2_store)
        begin
            g2_store <= g2_flip;
            g2_flag <= 1;
        end
        
        if (g3_flip != g3_store)
        begin
            g3_store <= g3_flip;
            g3_flag <= 1;
        end
        
        if (g4_flip != g4_store)
        begin
            g4_store <= g4_flip;
            g4_flag <= 1;
        end
//        if (done_8_flip != done_8_store)
//        begin
//            done_8_store <= done_8_flip;
//            done_8_flag <= 1;
//        end

//////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        if (g1_flag || g2_flag || g3_flag || g4_flag)
        begin
            overall_mode = 0;
        end
        
        //switching between options when press right
        if (menu_mode == 7 && option_7 != 4 && btnR_flag == 1)
        begin
            option_7 <= option_7 + 1;
            btnR_flag <= 0;
        end

        //switching betwee options when press left
        if (menu_mode == 7 && option_7 != 1 && btnL_flag == 1)
        begin
            option_7 <= option_7 - 1;
            btnL_flag <= 0;
        end
        
        if (menu_mode == 7 && option_7 != 1 && btnU_flag == 1)
        begin
            done_7 <= 1;
            btnU_flag = 0;
            flag_count <= 1;
        end
   
        //option selection
        if (menu_mode == 7 && overall_mode == 0 && btnC_flag == 1)
        begin
            overall_mode <= option_7;
            done_7 <= 1;
            btnC_flag <= 0;
            flag_count <= 1;
        end
        
        if (flag_count == 1)
        begin
            flag_count <= 2;
        end
        
        if (flag_count == 2)
        begin
            flag_count <= 0;
            done_7 <= 0; // auto lowered after 3 basys_clk ticks
        end     
        

 ////////////////////////////////////////////////////////////////////////////////////////////
        
        
         // lower flags
        btnC_flag = 0;
        btnL_flag = 0;
        btnR_flag = 0;  
        btnU_flag = 0;
        
        g1_flag = 0;
        g2_flag = 0;
        g3_flag = 0;
        g4_flag = 0;
         
               
    end
    
endmodule
