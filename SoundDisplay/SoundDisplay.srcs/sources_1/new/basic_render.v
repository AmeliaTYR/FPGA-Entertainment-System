`timescale 1ns / 1ps


module basic_render(
    input [7:0] x,
    input [6:0] y,
    input [5:0] led_freeze,
    input border_width, 
    input [1:0] color_theme,
    input show_vol_bar, other_comp_on, border_on,
    output reg [15:0] oled_data 
    );
    
    reg [15:0] color_bg, color_a, color_b, color_c, color_border;
    reg color_set; // raise flag if the color has been set already
    
    // EDIT MEEEEEEE decide the colours here
    always @ (color_theme)
        begin
            case (color_theme)
                1: //normal red yellow green 
                begin
                    color_bg = 16'h0000; // background
                    color_a = 16'hF800; // top color: red
                    color_b = 16'hFFE0;// mid color: yellow
                    color_c = 16'h07E0;// bottom color: green
                    color_border = 16'hFFFF;// border color
                end
                2: // colour scheme pastel kind
                begin
                    color_bg = 16'h008D; // background
                    color_a = 16'hE3AE; // top color
                    color_b = 16'h6DBF;// mid color
                    color_c = 16'h9DE0;// bottom color
                    color_border = 16'hFE20;// border color   
                end 
                3: //colour scheme jungle kind
                begin
                    color_bg = 16'h07E0; // background
                    color_a = 16'hEDCC; // top color
                    color_b = 16'h7F6F;// mid color
                    color_c = 16'h9BC5;// bottom color
                    color_border = 16'h923D;// border color
                end
                default:
                begin 
                    color_bg = 16'hFFFF; // background
                    color_a = 16'hFFFF; // top color
                    color_b = 16'hFFFF;// mid color
                    color_c = 16'hFFFF;// bottom color
                    color_border = 16'hFFFF;// border color            
                end
            endcase
        end

    

    
    always @ (
        x, y, 
        border_width, color_theme, show_vol_bar, border_on,
        led_freeze,
        color_bg, color_a, color_b, color_c, color_border
        )
    begin            
        oled_data = color_bg;
        color_set = 0;
        
        // border pixels
        if (border_on)
            if (border_width == 1) // 1 pixel wide
            begin
                // code for left and right borders
                if (x == 0 || x == 95)
                begin
                    oled_data = color_border;
                    color_set = 1;
                end
                // code for upper and lower borders 
                else if (y == 0 || y == 63)
                begin
                    oled_data = color_border;
                    color_set = 1;
                end
            end
            else // border_width is 1, 3 pixels
            begin
                // code for left and right borders
                if (x == 0 || x == 1 || x == 2 || x == 93 || x == 94 || x == 95)
                begin
                    oled_data = color_border;
                    color_set = 1;
                end                
                // code for upper and lower borders
                else if (y == 0 || y == 1 || y == 2 || y == 61 || y == 62 || y == 63)
                begin
                    oled_data = color_border;
                    color_set = 1;
                end
            end
        
        // volumne bar pixels
        if (show_vol_bar && ~(color_set))
        begin
            if (x >= 20 && x <= 40) // within 20 pixels wide
            begin
                // for each of the 16 boxes have a if y value in for each range
                if ((y > 8) && (y < 57) && ((y - 9) % 3 != 2) && (16 - ((y - 9) / 3) <= led_freeze ))
                begin
                    if (y < 23)
                        oled_data = color_a;
                    else if (y < 38)
                        oled_data = color_b;
                    else 
                        oled_data = color_c;     
                    color_set = 1;
                end
            end  
        end
        
        
        if (~(color_set) && other_comp_on && led_freeze > 11)
        begin
            if (y == 13)
            begin 
                if (x == 50 || x == 52 || x == 54 || x == 57 || x == 58 || x == 61 || x == 63 || x == 65)                  
                    oled_data = color_a;
            end
            
            if (y == 14)
            begin
                if (x == 50 || x == 52 || x == 54 || x == 56 || x == 61 || x == 63 || x == 65)                  
                    oled_data = color_a;
            end
            
            if (y == 15)
            begin
                if (x == 50 || x == 51 || x == 52 || x == 54 || x == 56 || x == 58 || x == 59 || x == 61 || x == 62 || x == 63 || x == 65)                  
                    oled_data = color_a;
            end
            
            if (y == 16)
            begin
                if (x == 50 || x == 52 || x == 54 || x == 56 || x == 59 || x == 61 || x == 63)                  
                    oled_data = color_a;
            end
            
            if (y == 17)
            begin
                if (x == 50 || x == 52 || x == 54 || x == 57 || x == 58 || x == 61 || x == 63 || x == 65)                    
                    oled_data = color_a;
            end
        end  
    end
    
endmodule
