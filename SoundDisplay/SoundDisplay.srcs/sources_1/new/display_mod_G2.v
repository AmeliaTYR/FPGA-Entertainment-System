`timescale 1ns / 1ps


module display_mod_G2(
    input basys_clk,
    input [5:0] G2_mode,
    input [15:0] oled_data_G2_normal,
    input [15:0] oled_data_G2M4,
    //input [15:0] oled_data_G2M7,
        
    output reg [15:0] oled_data
    );
    
    
    always @ (posedge basys_clk)
    begin
        case (G2_mode)
            4: 
            begin
                oled_data = oled_data_G2M4;
            end
//            7:
//            begin
//                oled_data = oled_data_G2M7;
//            end
            default: 
            begin
                oled_data = oled_data_G2_normal; 
            end
        endcase          
    end
    

endmodule
