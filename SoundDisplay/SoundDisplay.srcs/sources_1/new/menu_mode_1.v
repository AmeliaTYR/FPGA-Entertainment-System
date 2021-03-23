`timescale 1ns / 1ps


module menu_mode_1(
    input clock, 
    input bL, 
    input bR, 
    input bC, 
    input [3:0] menu_mode,
    output reg done_1, 
    output reg [3:0] option_1,
    output reg border_on
    );

    // current value
    reg btnL_flip = 0;
    reg btnR_flip = 0;
    reg btnC_flip = 0;
    
    // store old value
    reg btnL_store = 0;
    reg btnR_store = 0;
    reg btnC_store = 0;
    
    // lower all flags first
    reg btnL_flag = 0;
    reg btnR_flag = 0;
    reg btnC_flag = 0;
    
    reg [2:0] flag_count = 0;
    
    //////////////////////////////////////////////////////////////////////////////////////
    
    initial begin
        border_on = 1;
        option_1 = 1;
        done_1 = 0;
        flag_count = 0;
    end
    
    //button flips
    always @ (posedge bL)
        btnL_flip <= ~btnL_flip;
    always @ (posedge bR)
        btnR_flip <= ~btnR_flip;
    always @ (posedge bC)
        btnC_flip <= ~btnC_flip;
 
    //////////////////////////////////////////////////////////////////////////////////////
 
    always @ (posedge clock)
    begin
        
        //button flags
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
        
   //////////////////////////////////////////////////////////////////////////////////////        
        
        //switching between options when press right
        if (menu_mode == 1 && option_1 == 1 && btnR_flag == 1)
        begin
            option_1 <= 0;
            btnR_flag <= 0;
        end
        if (menu_mode == 1 && option_1 == 0 && btnR_flag == 1)
        begin
            option_1 <= 0;
            btnR_flag <= 0;
        end        
        
        //switching betwee options when press left
        if (menu_mode == 1 && option_1 == 0 && btnL_flag == 1)
        begin
            option_1 <= 1;
            btnL_flag <= 0;
        end
        if (menu_mode == 1 && option_1 == 1 && btnL_flag == 1)
        begin
            option_1 <= 1;
            btnL_flag <= 0;
        end      
        
        //option selection
        if (menu_mode == 1 && btnC_flag == 1 && flag_count == 0)
        begin
            border_on <= option_1;
            done_1 <= 1;
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
            done_1 <= 0;
        end
 
    //////////////////////////////////////////////////////////////////////////////////////        
        
        // lower flags
        btnC_flag = 0;
        btnL_flag = 0;
        btnR_flag = 0; 
    end
    
endmodule