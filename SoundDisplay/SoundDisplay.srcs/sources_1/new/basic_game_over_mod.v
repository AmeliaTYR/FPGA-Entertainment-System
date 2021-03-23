`timescale 1ns / 1ps

module basic_game_over_mod(
    input clk,
    input [3:0] overall_mode, 
    input bU,
     
    output reg game_over_1 = 1
    );
    
    reg bU_flip = 0;
    reg bU_store = 0;
    reg [3:0] previous_mode = 0;
    
    always @ (posedge bU)
        bU_flip <= ~ bU_flip;
        
    always @ (posedge clk)
    begin
        
        if (game_over_1 == 0 && bU_flip != bU_store)
        begin
            bU_store = bU_flip;
            game_over_1 = 1;
        end 
        
        if (previous_mode != overall_mode && overall_mode == 1)
        begin
            game_over_1 = 0;
        end
        
        previous_mode = overall_mode;
    end
endmodule
