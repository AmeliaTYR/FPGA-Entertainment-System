`timescale 1ns / 1ps


module menu_mode_8(
    input clock, 
    input bU,
    input [3:0] menu_mode,
    
    output reg done_8
    );
    
    // current value
    reg btnU_flip = 0;
    
    // store old value
    reg btnU_store = 0;           
    
    // lower all flags first
    reg btnU_flag = 0;
    
    reg [3:0] flag_count;

    //button flips
    always @ (posedge bU)
        btnU_flip <= ~btnU_flip;
   
    always @ (posedge clock)
    begin
        //bCtton flags
        if (btnU_flip != btnU_store && menu_mode == 8)
        begin
            btnU_store <= btnU_flip;
            btnU_flag <= 1;
        end
        //option selection
        if (menu_mode == 8 && btnU_flag == 1 && flag_count == 0)
        begin
          done_8 <= 1;
          btnU_flag <= 0;
          flag_count <= 1;
        end
        
        if (flag_count == 1)
        begin
          flag_count <= 2;
        end
        
        if (flag_count == 2)
        begin
          flag_count <= 0;
          done_8 <= 0;
        end   
               
    end
    
endmodule
