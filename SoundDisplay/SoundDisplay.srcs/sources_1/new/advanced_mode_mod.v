`timescale 1ns / 1ps


module advanced_mode_mod(
    input update_clk,
    input bD,
    input bU,
    input [3:0] overall_mode,
    
    output reg [3:0] mode = 1,
    output reg game_over_2 = 1
    );
    
    
    // current value
    reg btnD_flip = 0;
    reg btnU_flip = 0;
    // store old value
    reg btnD_store = 0;
    reg btnU_store = 0;
    // lower all flags first
    reg btnD_flag = 0;
    reg btnU_flag = 0;
    
    reg [20:0] timer_count_a = 0;
    reg [20:0] timer_count_b = 0;
    
    reg [3:0] previous_mode = 0;
    
    initial begin
        mode = 1;
    end
    
    always @ (posedge bD)
        btnD_flip <= ~btnD_flip;
    always @ (posedge bU)
        btnU_flip <= ~btnU_flip;
                
    always @ (posedge update_clk)
    begin
        if (btnD_flip != btnD_store)
        begin
            btnD_store <= btnD_flip;
            btnD_flag <= 1;
        end
        if (btnU_flip != btnU_store)
        begin
            btnU_store <= btnU_flip;
            btnU_flag <= 1;
        end
        
        timer_count_a = timer_count_a + 1;
        
        if (timer_count_a == 94869)
        begin
            timer_count_b = timer_count_b + 1;
            timer_count_a = 0;
        end
        
        if (overall_mode == 2)
        begin
        
            if (mode == 3 && btnD_flag == 1)
            begin
                mode <= 1;
                btnD_flag = 0;
            end
            
            if (btnD_flag == 1 && mode == 1)
            begin
                mode <= 2;
                btnD_flag = 0;
                timer_count_a = 0;
                timer_count_b = 0;
            end
            
            if (mode == 2 && timer_count_b == 94869)
            begin
                mode <= 3;
                timer_count_a = 0;
                timer_count_b = 0;
            end
            
            if (mode == 2 && btnU_flag == 1)
            begin
                mode <= 1;
                btnU_flag = 0;
            end        
            
            if (mode == 1 && btnU_flag == 1)
            begin
                game_over_2 = 1;
            end
        end
        
        
        if(previous_mode != overall_mode && overall_mode == 2)
            game_over_2 = 0;
        
        btnD_flag = 0;
        btnU_flag = 0;  
        
        previous_mode = overall_mode;
    end
    
    
endmodule
