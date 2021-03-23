`timescale 1ns / 1ps

module menu_mode_selector(
    input clock, //basys_clk
    input bD,
    input bU,
    input bR,
    
    input done_1, //show border
    input done_2, //show volume bar
    input done_3, //show indicator
    input done_4, //border thickness
    input done_5, //mic in or peak on LED
    input done_6, //mic in or peak on 7 Seg
    input done_7, //Game Modes
    
    output reg [3:0] menu_mode,
    output reg [3:0] choice
    );
    
     // current value
    reg btnD_flip = 0;
    reg btnU_flip = 0;
    reg btnR_flip = 0;
    
    reg done_0_flip = 0;
    reg done_1_flip = 0;
    reg done_2_flip = 0;
    reg done_3_flip = 0;
    reg done_4_flip = 0;
    reg done_5_flip = 0;
    reg done_6_flip = 0;
    reg done_7_flip = 0;
    reg done_8_flip = 0;
    
    // store old value
    reg btnD_store = 0;
    reg btnU_store = 0;
    reg btnR_store = 0;
    
    reg done_0_store = 0;
    reg done_1_store = 0;
    reg done_2_store = 0;
    reg done_3_store = 0;
    reg done_4_store = 0;
    reg done_5_store = 0;
    reg done_6_store = 0;
    reg done_7_store = 0;
    reg done_8_store = 0;
    
    // lower all flags first
    reg btnD_flag = 0;
    reg btnU_flag = 0;
    reg btnR_flag = 0;
    
    reg done_1_flag = 0;
    reg done_2_flag = 0;
    reg done_3_flag = 0;
    reg done_4_flag = 0;
    reg done_5_flag = 0;
    reg done_6_flag = 0;
    reg done_7_flag = 0;
    reg done_8_flag = 0;
    
    reg [3:0] previous_mode = 0;
    
    initial begin
        menu_mode = 0;
        choice = 1;
    end
  //////////////////////////////////////////////////////////////////////////////////////
    
    //RECIEVE SIGNALS
       
    //button flips
    always @ (posedge bD)
        btnD_flip <= ~btnD_flip;
    always @ (posedge bU)
        btnU_flip <= ~btnU_flip;
    always @ (posedge bR)
        btnR_flip <= ~btnR_flip;
        
    always @ (posedge done_1)
        done_1_flip <= ~done_1_flip;
    always @ (posedge done_2)
        done_2_flip <= ~done_2_flip;
    always @ (posedge done_3)
        done_3_flip <= ~done_3_flip;
    always @ (posedge done_4)
        done_4_flip <= ~done_4_flip;
    always @ (posedge done_5)
        done_5_flip <= ~done_5_flip;
    always @ (posedge done_6)
        done_6_flip <= ~done_6_flip;
    always @ (posedge done_7)
        done_7_flip <= ~done_7_flip;

 
 //////////////////////////////////////////////////////////////////////////////////////
 
 
    always @ (posedge clock)
    begin
        
        // RAISE FLAGS
        
        //button flags
        if (btnD_flip != btnD_store )
        begin
            btnD_store <= btnD_flip;
            btnD_flag <= 1;
        end
        if (btnU_flip != btnU_store)
        begin
            btnU_store <= btnU_flip;
            btnU_flag <= 1;
        end
        if (btnR_flip != btnR_store )
        begin
            btnR_store <= btnR_flip;
            btnR_flag <= 1;
        end
        
        //done flags
        if (done_1_flip != done_1_store)
        begin
            done_1_store <= done_1_flip;
            done_1_flag <= 1;
        end  
        if (done_2_flip != done_2_store)
        begin
            done_2_store <= done_2_flip;
            done_2_flag <= 1;
        end
        if (done_3_flip != done_3_store)
        begin
            done_3_store <= done_3_flip;
            done_3_flag <= 1;
        end
        if (done_4_flip != done_4_store)
        begin
            done_4_store <= done_4_flip;
            done_4_flag <= 1;
        end
        if (done_5_flip != done_5_store)
        begin
            done_5_store <= done_5_flip;
            done_5_flag <= 1;
        end
        if (done_6_flip != done_6_store)
        begin
            done_6_store <= done_6_flip;
            done_6_flag <= 1;
        end
        if (done_7_flip != done_7_store)
        begin
            done_7_store <= done_7_flip;
            done_7_flag <= 1;
        end
    
 
   //////////////////////////////////////////////////////////////////////////////////////
   
        // PROCESS FLAGS
        
        //switching between choices when press down
        if (menu_mode == 0 && choice != 7 && btnD_flag == 1)
        begin
            choice <= choice + 1;
            btnD_flag <= 0;
        end

        
        //switching between modes when press up
        if (menu_mode == 0 && choice != 1 && btnU_flag == 1)
        begin
            choice <= choice - 1;
            btnU_flag <= 0;
        end
        
        if (previous_mode != 0 && menu_mode == 0)
            choice <= 1;
        
       
      //////////////////////////////////////////////////////////////////////////////////////

        //menu mode selection
        if (menu_mode == 0 && btnR_flag == 1)
        begin
            menu_mode <= choice;
            btnR_flag <= 0;
        end
        
        //when done selection with mode
        if (menu_mode == 1 && done_1_flag == 1)
        begin
            menu_mode <= 0;
            done_1_flag <= 0;
        end
        if (menu_mode == 2 && done_2_flag == 1)
        begin
            menu_mode <= 0;
            done_2_flag <= 0;
        end
        if (menu_mode == 3 && done_3_flag == 1)
        begin
            menu_mode <= 0;
            done_3_flag <= 0;
        end
        if (menu_mode == 4 && done_4_flag == 1)
        begin
            menu_mode <= 0;
            done_4_flag <= 0;
        end
        if (menu_mode == 5 && done_5_flag == 1)
        begin
            menu_mode <= 0;
            done_5_flag <= 0;
        end
        if (menu_mode == 6 && done_6_flag == 1)
        begin
            menu_mode <= 0;
            done_6_flag <= 0;
        end
        if (menu_mode == 7 && done_7_flag == 1)
        begin
            menu_mode <= 0;
            done_7_flag <= 0;
        end
        
        previous_mode = menu_mode;
        
   
/////////////////////////////////////////////////////////////////////////////////////////////
   
        // lower all flags at end of processing
        btnU_flag = 0;
        btnD_flag = 0;
        btnR_flag = 0;
        
        done_1_flag = 0;
        done_2_flag = 0;
        done_3_flag = 0;
        done_4_flag = 0;
        done_5_flag = 0;
        done_6_flag = 0;
        done_7_flag = 0;
        
    end
        
endmodule
