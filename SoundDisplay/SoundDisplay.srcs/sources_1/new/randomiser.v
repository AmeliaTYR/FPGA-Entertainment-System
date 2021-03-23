`timescale 1ns / 1ps


module randomiser(
    input clk,
    input EA1_hit,
    input EA2_hit,
    output reg [2:0] rand
    );
        
    // current values
    reg EA1_flip = 0;
    reg EA2_flip = 0;
    
    // store old value
    reg EA1_store = 0;
    reg EA2_store = 0;

    always @ (posedge EA1_hit)
        EA1_flip <= ~EA1_flip;
    always @ (posedge EA2_hit)
        EA2_flip <= ~EA2_flip;
    
    always @(posedge clk) 
    begin
        if (EA1_flip != EA1_store)
        begin
            EA1_store <= EA1_flip;
            rand = rand + 2;
        end
        if (EA2_flip != EA2_store)
        begin
            EA2_store <= EA2_flip;
            rand = rand + 3;
        end
        
        rand = rand + 1;
        if (rand == 8)
            rand = 0;
    end
    
    
endmodule
