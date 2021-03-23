`timescale 1ns / 1ps


module led_display_mod(
    input [5:0] led_out,
    output reg [15:0] led
    );
    
    always @ (led_out)
    begin 
        case (led_out)
            5'd0: led = 16'h0000;
            5'd1: led = 16'h0001;
            5'd2: led = 16'h0003;
            5'd3: led = 16'h0007;
            5'd4: led = 16'h000F;
            5'd5: led = 16'h001F;
            5'd6: led = 16'h003F;
            5'd7: led = 16'h007F;
            5'd8: led = 16'h00FF;
            5'd9: led = 16'h01FF;
            5'd10: led = 16'h03FF;
            5'd11: led = 16'h07FF;
            5'd12: led = 16'h0FFF;
            5'd13: led = 16'h1FFF;
            5'd14: led = 16'h3FFF;
            5'd15: led = 16'h7FFF;
            5'd16: led = 16'hFFFF;
            default: led = 16'h0100;
        endcase
    end
    
endmodule
