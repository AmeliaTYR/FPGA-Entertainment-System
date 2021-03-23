`timescale 1ns / 1ps

module number_decoder(
    input basys_clk, 
    input [3:0] value_seg, 
    output reg [6:0] display_seg
    );
    
    initial begin
        display_seg <= 7'b1111111;
    end
    
    always @ (posedge basys_clk) begin
        case (value_seg)
            0: display_seg = 7'b1000000; //0
            1: display_seg = 7'b1111001; // 1
            2: display_seg = 7'b0100100; // 2
            3: display_seg = 7'b0110000; // 3
            4: display_seg = 7'b0011001; // 4
            5: display_seg = 7'b0010010; // 5
            6: display_seg = 7'b0000010; // 6
            7: display_seg = 7'b1111000; // 7
            8: display_seg = 7'b0000000; // 8
            9: display_seg = 7'b0010000; // 9
            default: display_seg = 7'b1010101; 
        endcase
    end
endmodule