`timescale 1ns / 1ps


module player_tracker(
    input update_clk,
    input [3:0] adv_mode,
    input bL,
    input bR,
    output reg [3:0] player_pos
    );
    
    // current values
    reg btnL_flip;
    reg btnR_flip;
    // store old value
    reg btnL_store = 0;
    reg btnR_store = 0;
    // lower all flags first
    reg btnL_flag = 0;
    reg btnR_flag = 0;
    
    initial
    begin
        player_pos = 0;
    end
    
    
    always @ (posedge bL)
        btnL_flip <= ~btnL_flip;
    
    always @ (posedge bR)
        btnR_flip <= ~btnR_flip;
        
    always @ (posedge update_clk)
    begin
        if (adv_mode != 2) // reset
            player_pos = 0;
            
        // manage flags
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
        
        if (player_pos != 0 && btnL_flag == 1) // where 0 is on the right
            begin
                player_pos <= player_pos - 1;
                btnL_flag = 0;
            end
        
        
        if (player_pos != 7 && btnR_flag == 1) // where 7 is on the left
            begin
                player_pos <= player_pos + 1;
                btnR_flag = 0;
            end     
    end
        
endmodule

