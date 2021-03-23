`timescale 1ns / 1ps


module score_tracker_mod(
    input basys_clk,
    input laser_clk,
    input [3:0] laser_y,
    input EA1_hit,
    input EA2_hit,
    input EA3_hit,
    input EB_hit,
    input [1:0] mode,
    
    output reg [12:0] score = 1500,
    output reg [12:0] lastscore = 0
    );
        
    // current values
    reg EA1_flip = 0;
    reg EA2_flip = 0;
    reg EA3_flip = 0;
    reg EB_flip = 0;
    reg laser_flip = 0;
    
    // store old value
    reg EA1_store = 0;
    reg EA2_store = 0;
    reg EA3_store = 0;
    reg EB_store = 0;
    reg laser_store = 0;
    
    reg [3:0] previous_mode;  
    
    initial begin
        score = 1500;
    end
        
    always @ (posedge EA1_hit)
        EA1_flip <= ~EA1_flip;
    always @ (posedge EA2_hit)
        EA2_flip <= ~EA2_flip;
    always @ (posedge EA3_hit)
        EA3_flip <= ~EA3_flip;
    always @ (posedge EB_hit)
        EB_flip <= ~EB_flip;
    always @ (posedge laser_clk)
        laser_flip <= ~laser_flip;
        
    always @ (posedge basys_clk)
    begin
        // raise flags
        if (EA1_flip != EA1_store)
        begin
            EA1_store <= EA1_flip;
            score <= score + 10;
        end
        if (EA2_flip != EA2_store)
        begin
            EA2_store <= EA2_flip;
            score <= score + 10;
        end
        if (EA3_flip != EA3_store)
        begin
            EA3_store <= EA3_flip;
            score <= score + 10;
        end
        if (EB_flip != EB_store)
        begin
            EB_store <= EB_flip;
            score <= score + 20;
        end
        if (laser_flip != laser_store)
        begin
            laser_store <= laser_flip;
            score <= score - laser_y;
        end
        
        if (previous_mode == 2 && mode == 3)
            lastscore = score;
            
        if (mode != 2)
            score = 1500;
            
        previous_mode = mode;
    end
   
    
endmodule
