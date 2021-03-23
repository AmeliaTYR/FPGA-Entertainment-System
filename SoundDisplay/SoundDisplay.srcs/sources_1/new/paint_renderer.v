`timescale 1ns / 1ps

module paint_renderer(
    input [7:0]x, 
    input [6:0]y,
    input [2:0] scheme,
    input [2:0] data,
    input [7:0] cursor_x,
    input [6:0] cursor_y,
    input [2:0] brush,
    input [3:0] color,
    
    output reg [15:0] oled_data
    );
    
///////////////////////////////////////////////////////////////////////////////////

    // regs
    reg [15:0] current_color = 0;
    reg [15:0] data_color = 0;
    
    reg [15:0] color_bg = 16'hFFFF;
    reg [15:0] color_outline = 16'h0000;
    
    reg [15:0] color_1 = 0;
    reg [15:0] color_2 = 0;
    reg [15:0] color_3 = 0;
    reg [15:0] color_4 = 0;
    reg [15:0] color_5 = 0;
    reg [15:0] color_6 = 0;
    reg [15:0] color_0 = 0;
    
    reg color_set = 0;
    
///////////////////////////////////////////////////////////////////////////////////
    // set colors according to scheme 
    always @ (scheme)
    begin
        case (scheme)
        1:
        begin
            color_1 = 16'b11111_000000_00000; // red
            color_2 = 16'b11101_001110_00010; // orange
            color_3 = 16'hFFE0; // yellow
            color_4 = 16'b00010_111111_00010; // green
            color_5 = 16'b00000_001110_11111; // blue
            color_6 = 16'b10011_000000_10011;  // purple
            color_0 = 16'hFFFF; // white
            color_outline = 16'h0000; // black
            color_bg = 16'hFFFF; // white
        end
        2:
        begin
            color_1 = 16'b11101_001110_11000; // dark red
            color_2 = 16'b11101_001110_00000; // yellowish
            color_3 = 16'b01111_001111_01111; // grey ish
            color_4 = 16'b11101_101110_11000; 
            color_5 = 16'b10001_000100_11100;
            color_6 = 16'b00011_011011_10011; 
            color_0 = 16'b00111_000000_00000;
            color_outline = 16'h0000;
            color_bg = 16'hFFFF;
        end
        3:
        begin
            color_1 = 16'h243F; // pastel blue
            color_2 = 16'h5553; // pastel green
            color_3 = 16'b11011_001100_01100; // orange
            color_4 = 16'b11111_011110_01110; // hot pink
            color_5 = 16'b11101_001110_11000;
            color_6 = 16'b10011_000000_10011;  
            color_0 = 16'b11111_000010_00100; // pastel purple
    
            color_outline = 16'h0000;
            color_bg = 16'hFFFF;
        end
        default:
        begin
            color_1 = 16'h243F;
            color_2 = 16'h5553; 
            color_3 = 16'b11011_001100_01100;
            color_4 = 16'b11101_001110_11000; 
            color_5 = 16'b11011_000000_01100;
            color_6 = 16'b11101_001110_11000; 
            color_0 = 16'b11101_001110_11000;
            color_outline = 16'h0000;
            color_bg = 16'hFFFF;
        end
        endcase
    end

///////////////////////////////////////////////////////////////////////////////////
    always @  (x, y, scheme, data)
    begin
        oled_data = color_bg;
        
        // set current color
        case (color)
        0: current_color = color_0;
        1: current_color = color_1;
        2: current_color = color_2;
        3: current_color = color_3;
        4: current_color = color_4;
        5: current_color = color_5;
        6: current_color = color_6;
        endcase
        
        // set the data color
        case (data)
        0: data_color = color_0;
        1: data_color = color_1;
        2: data_color = color_2;
        3: data_color = color_3;
        4: data_color = color_4;
        5: data_color = color_5;
        6: data_color = color_6;
        endcase
        
///////////////////////////////////////////////////////////////////////////////////
    
        // render scheme 1 (all fixed colors)
        // first color
        if (y >= 46 && y <= 59 && x >= 62 && x <= 66)
        // render scheme 1
        begin
        if ((y == 46 || y == 47) && x>= 62 && x <= 66)
             oled_data = 16'b11111_000000_00000;
        if ((y == 48 || y == 49) && x>= 62 && x <= 66)
             oled_data = 16'b11101_001110_00010;
        if ((y == 50 || y == 51) && x>= 62 && x <= 66)
             oled_data = 16'hFFE0;
        if ((y == 52 || y == 53) && x>= 62 && x <= 66)
             oled_data = 16'b00010_111111_00010;
        if ((y == 54 || y == 55) && x>= 62 && x <= 66)
             oled_data = 16'b00000_001110_11111;
        if ((y == 56 || y == 57) && x>= 62 && x <= 66)
             oled_data =  16'b10011_000000_10011;
        if ((y == 58 || y == 59) && x>= 62 && x <= 66)
             oled_data = 16'hFFFF;
         
        
            if (oled_data != color_bg)
                color_set = 1;
         
        end



        // render scheme 2 
        if (color_set == 0 && y >= 46 && y <= 59 && x >= 72 && x <= 76)
        // render scheme 2
        begin
        if ((y == 46 || y == 47) && x>= 72 && x <= 76)
             oled_data = 16'b11101_001110_11000;
        if ((y == 48 || y == 49) && x>= 72 && x <= 76)
             oled_data = 16'b11101_001110_00000;
        if ((y == 50 || y == 51) && x>= 72 && x <= 76)
             oled_data = 16'b01111_001111_01111;
        if ((y == 52 || y == 53) && x>= 72 && x <= 76)
             oled_data = 16'b11101_101110_11000;
        if ((y == 54 || y == 55) && x>= 72 && x <= 76)
             oled_data =  16'b10001_000100_11100;
        if ((y == 56 || y == 57) && x>= 72 && x <= 76)
             oled_data =  16'b00011_011011_10011;
        if ((y == 58 || y == 59) && x>= 72 && x <= 76)
             oled_data = 16'b00111_000000_00000;
         
            if (oled_data != color_bg)
                color_set = 1;
         
        end


        // render scheme 3
        if (color_set == 0 && y >= 46 && y <= 59 && x >= 82 && x <= 86)
        // render scheme 3
        begin
        if ((y == 46 || y == 47) && x>= 82 && x <= 86)
             oled_data = 16'h243F;
        if ((y == 48 || y == 49) && x>= 82 && x <= 86)
             oled_data = 16'h5553;
        if ((y == 50 || y == 51) && x>= 82 && x <= 86)
             oled_data =  16'b11011_001100_01100;
        if ((y == 52 || y == 53) && x>= 82 && x <= 86)
             oled_data = 16'b11111_011110_01110;
        if ((y == 54 || y == 55) && x>= 82 && x <= 86)
             oled_data = 16'b11101_001110_11000;
        if ((y == 56 || y == 57) && x>= 82 && x <= 86)
             oled_data =  16'b10011_000000_10011;
        if ((y == 58 || y == 59) && x>= 82 && x <= 86)
             oled_data =  16'b11111_000010_00100;
         
            if (oled_data != color_bg)
                color_set = 1;
         
        end




///////////////////////////////////////////////////////////////////////////////////
    
        // RENDER OUTLINES
        // colour outlines        
        // canvas outline
        // current color outline
        // schemes outlines
        
        if (x == 61)
        begin
            if ((y >= 13 && y <= 19) || (y >= 45 && y <= 60) || (y >= 23 && y <= 29) || (y >= 33 && y <= 39) )
                oled_data = color_outline;
        end 
        
        else if (x == 67)
        begin
            if ((y >= 13 && y <= 19) || (y >= 45 && y <= 60) || (y >= 23 && y <= 29) || (y >= 33 && y <= 39) )
                oled_data = color_outline;
        end 
        
        else if (x == 71)
        begin
            if ((y >= 13 && y <= 19) || (y >= 45 && y <= 60) || (y >= 23 && y <= 29) || (y >= 34 && y <= 38))
                oled_data = color_outline;
        end 
        
        else if (x == 77)
        begin
            if ((y >= 13 && y <= 19) || (y >= 45 && y <= 60) || (y >= 23 && y <= 29))
                oled_data = color_outline;
        end 
        
        else if (x == 81)
        begin
            if ((y >= 33 && y <= 39) || (y >= 13 && y <= 19) || (y >= 45 && y <= 60) || (y >= 23 && y <= 29))
                oled_data = color_outline;
        end 
        
        else if (x == 87)
        begin
            if ((y >= 33 && y <= 39) || (y >= 13 && y <= 19) || (y >= 45 && y <= 60) || (y >= 23 && y <= 29))
                oled_data = color_outline;
        end 
        
        else if (x == 14)
        begin
            if ((y >= 10 && y <= 51))
                oled_data = color_outline;
        end 
        
        else if (x == 55)
        begin
            if ((y >= 10 && y <= 51))
                oled_data = color_outline;
        end 
        
        else if (x == 86)
        begin
            if ((y >= 35 && y <= 37))
                oled_data = color_outline;
        end 
        
        else if (x == 72)
        begin
            if ((y >= 35 && y <= 37))
                oled_data = color_outline;
        end 
        
        if (y == 10)
        begin
            if (x >= 15 && x <= 54)
                oled_data = color_outline;
        end
        
        else if (y == 51)
        begin
            if (x >= 15 && x <= 54)
                oled_data = color_outline;
        end
        
        else if (y == 13)
        begin
            if ((x >= 62 && x <= 66) || (x >= 72 && x <= 76) || (x >= 82 && x <= 86))
                oled_data = color_outline;
        end
        
        else if (y == 19)
        begin
            if ((x >= 62 && x <= 66) || (x >= 72 && x <= 76) || (x >= 82 && x <= 86))
                oled_data = color_outline;
        end
        
        else if (y == 23)
        begin
            if ((x >= 62 && x <= 66) || (x >= 72 && x <= 76) || (x >= 82 && x <= 86))
                oled_data = color_outline;
        end
        
        else if (y == 29)
        begin
            if ((x >= 62 && x <= 66) || (x >= 72 && x <= 76) || (x >= 82 && x <= 86))
                oled_data = color_outline;
        end

        else if (y == 33)
        begin
            if ((x >= 62 && x <= 66) || (x >= 71 && x <= 86))
                oled_data = color_outline;
        end

        else if (y == 39)
        begin
            if ((x >= 62 && x <= 66) || (x >= 71 && x <= 86))
                oled_data = color_outline;
        end
        
        else if (y == 34)
        begin
            if ((x >= 72 && x <= 86))
                oled_data = color_outline;
        end
        
        else if (y == 38)
        begin
            if ((x >= 72 && x <= 86))
                oled_data = color_outline;
        end

        else if (y == 45)
        begin
            if ((x >= 62 && x <= 66) || (x >= 72 && x <= 76) || (x >= 82 && x <= 86))
                oled_data = color_outline;
        end

        else if (y == 60)
        begin
            if ((x >= 62 && x <= 66) || (x >= 72 && x <= 76) || (x >= 82 && x <= 86))
                oled_data = color_outline;
        end
        

///////////////////////////////////////////////////////////////////////////////////

        // render color 0 (base)
        if (x >= 62 && x <= 66 && y >= 34 && y <= 38)
        begin
            oled_data = color_0;
        end
        // render color 1
        else if (x >= 62 && x <= 66 && y >= 14 && y <= 18)
        begin
            oled_data = color_1;
        end
        
        // render color 2
        else if (x >= 72 && x <= 76 && y >= 14 && y <= 18)
        begin
            oled_data = color_2;
        end
        
        // render color 3
        else if (x >= 82 && x <= 86 && y >= 14 && y <= 18)
        begin
            oled_data = color_3;
        end
        
        // render color 4
        else if (x >= 62 && x <= 66 && y >= 24 && y <= 28)
        begin
            oled_data = color_4;
        end        
        
        // render color 5
        else if (x >= 72 && x <= 76 && y >= 24 && y <= 28)
        begin
            oled_data = color_5;
        end
        
        // render color 6
        else if (x >= 82 && x <= 86 && y >= 24 && y <= 28)
        begin
            oled_data = color_6;
        end
            
///////////////////////////////////////////////////////////////////////////////////
        // render current color bar
        if (x >= 73 && x <= 85 && y >= 35 && y <= 37)
        begin
            oled_data = current_color;
        end
    

///////////////////////////////////////////////////////////////////////////////////
        
        // render small cursor 
        if (x == 64 && (y == 5 || y == 6 || y == 8 || y == 9))
        begin
            oled_data = color_outline;
        end
        if (y == 7 && (x == 62 || x == 63 || x == 65 || x == 66))
        begin
            oled_data = color_outline;
        end
        
        // render med cursor
        if ((x == 74 || x == 75) && (y == 5 || y == 6 || y == 9 || y == 10))
        begin
            oled_data = color_outline;
        end
        if ((y == 7 || y == 8) && (x == 72 || x == 73 || x == 76 || x == 77))
        begin
            oled_data = color_outline;
        end
        
        // render big cursor
        if ((x == 85 || x == 83 || x == 84 ) && (y == 5 || y == 4 || y == 9 || y == 10))
        begin
            oled_data = color_outline;
        end
        if ((y == 7 || y == 8 || y == 6) && (x == 81 || x == 82 || x == 86 || x == 87))
        begin
            oled_data = color_outline;
        end




///////////////////////////////////////////////////////////////////////////////////
        
        // render file 1
        // render 1
        begin
        if ((x == 10 || x == 18) && y>= 54 && y <= 62)
             oled_data = color_outline;
        if ((y == 54 || y == 62) && x>= 11 && x <= 17)
             oled_data = color_outline;
         
            if (y == 56)
            begin
                case (x )
                14: oled_data = color_outline;
                endcase
            end
            else if (y == 57)
            begin
                case (x)
                13: oled_data = color_outline;
             14: oled_data = color_outline;
                endcase
            end
            else if (y == 58)
            begin
                case (x )
                14: oled_data = color_outline;
                endcase
            end
            else if (y == 59)
            begin
                case (x )
                14: oled_data = color_outline;
                endcase
            end
            else if (y == 60)
            begin
                case (x )
                13: oled_data = color_outline;
                14: oled_data = color_outline;
                15: oled_data = color_outline;
                endcase
            end 
            if (oled_data != color_bg)
                color_set = 1;
         
        end

        
        // render file 2
        // render 2
        begin
            if ((x == 22 || x == 30) && y>= 54 && y <= 62)
                oled_data = color_outline;
            if ((y == 54 || y == 62) && x>= 23 && x <= 29)
                oled_data = color_outline;
        
            if (y == 56)
            begin
                case (x )
                25: oled_data = color_outline;
                26: oled_data = color_outline;
                27: oled_data = color_outline;
                endcase
            end
            else if (y == 57)
            begin
                case (x)
                27: oled_data = color_outline;
                endcase
            end
            else if (y == 58)
            begin
                case (x )
                25: oled_data = color_outline;
                26: oled_data = color_outline;
                27: oled_data = color_outline;
                endcase
            end
            else if (y == 59)
            begin
                case (x )
                25: oled_data = color_outline;
                endcase
            end
            else if (y == 60)
            begin
                case (x )
                25: oled_data = color_outline;
                26: oled_data = color_outline;
                27: oled_data = color_outline;
                endcase
            end 
            if (oled_data != color_bg)
                color_set = 1;
         
        end

        
        // render file 3
        // render 3
        begin
            if ((x == 34 || x == 42) && y>= 54 && y <= 62)
                oled_data = color_outline;
            if ((y == 54 || y == 62) && x>= 35 && x <= 41)
                oled_data = color_outline;
        
            if (y == 56)
            begin
                case (x )
                37: oled_data = color_outline;
                38: oled_data = color_outline;
                39: oled_data = color_outline;
                endcase
            end
            else if (y == 57)
            begin
                case (x)
                39: oled_data = color_outline;
                endcase
            end
            else if (y == 58)
            begin
                case (x )
                37: oled_data = color_outline;
                38: oled_data = color_outline;
                39: oled_data = color_outline;
                endcase
            end
            else if (y == 59)
            begin
                case (x )
                39: oled_data = color_outline;
                endcase
            end
            else if (y == 60)
            begin
                case (x )
                37: oled_data = color_outline;
                38: oled_data = color_outline;
                39: oled_data = color_outline;
                endcase
            end 
            if (oled_data != color_bg)
                color_set = 1;
        end


///////////////////////////////////////////////////////////////////////////////////
    
        // render clear file option
        // render c
        begin
            if ((x == 46 || x == 53) && y>= 54 && y <= 62)
                oled_data = color_outline;
            if ((y == 54 || y == 62) && x>= 47 && x <= 52)
                oled_data = color_outline;
        
            if (y == 56)
            begin
                case (x )
                49: oled_data = color_outline;
                50: oled_data = color_outline;
                endcase
            end
            else if (y == 57)
            begin
                case (x)
                48: oled_data = color_outline;
                51: oled_data = color_outline;
                endcase
            end
            else if (y == 58)
            begin
                case (x )
                48: oled_data = color_outline;
                endcase
            end
            else if (y == 59)
            begin
                case (x )
                48: oled_data = color_outline;
                51: oled_data = color_outline;
                endcase
            end
            else if (y == 60)
            begin
                case (x )
                49: oled_data = color_outline;
                50: oled_data = color_outline;
                endcase
            end 
            if (oled_data != color_bg)
                color_set = 1;
        end

///////////////////////////////////////////////////////////////////////////////////
    
        // render canvas colours (from data based on x,y) from 0 to 39
        if (x >= 15 && x <= 54 && y >= 11 && y <= 50)
        begin
            oled_data = data_color;
        end

///////////////////////////////////////////////////////////////////////////////////    
        
        // render exit button
        // render x
        if (x >= 3 && x <= 11 && y >= 3 && y <= 11)
        begin
            if ((x == 3 || x == 11) && y>= 3 && y <= 11)
                oled_data = color_outline;
            if ((y == 3 || y == 11) && x>= 4 && x <= 10)
                oled_data = color_outline;
        
            if (y == 4)
            begin
                case (x )
                4: oled_data = color_outline;
                10: oled_data = color_outline;
                endcase
            end
            else if (y == 5)
            begin
                case (x)
                5: oled_data = color_outline;
                9: oled_data = color_outline;
                endcase
            end
            else if (y == 6)
            begin
                case (x )
                6: oled_data = color_outline;
                8: oled_data = color_outline;
                endcase
            end
            else if (y == 7)
            begin
                case (x )
                7: oled_data = color_outline;
                endcase
            end
            else if (y == 8)
            begin
                case (x )
                6: oled_data = color_outline;
                8: oled_data = color_outline;
                endcase
            end 
            else if (y == 9)
            begin
                case (x )
                5: oled_data = color_outline;
                9: oled_data = color_outline;
                endcase
            end 
            else if (y == 10)
            begin
                case (x )
                4: oled_data = color_outline;
                10: oled_data = color_outline;
                endcase
            end 
        
            if (oled_data != color_bg)
                color_set = 1;
         
        end

///////////////////////////////////////////////////////////////////////////////////
    
        // render current cursor (color depends on color scheme)
        if (x >= cursor_x && x <= cursor_x + 8 && y >= cursor_y && y <= cursor_y + 8)
        begin
            if (brush == 1)
            begin
                if (y == cursor_y)
                begin
                    case (x - cursor_x )
                    2: oled_data = color_outline;
                     endcase
                end
                else if (y == cursor_y + 1)
                begin
                    case (x - cursor_x )
                    2: oled_data = color_outline;
                    endcase
                end
                else if (y == cursor_y + 2)
                begin
                    case (x - cursor_x )
                    0: oled_data = color_outline;
                    1: oled_data = color_outline;
                    3: oled_data = color_outline;
                    4: oled_data = color_outline;
                    endcase
                end
                else if (y == cursor_y + 3)
                begin
                    case (x - cursor_x )
                    2: oled_data = color_outline;
                    endcase
                end
                else if (y == cursor_y + 4)
                begin
                    case (x - cursor_x )
                    2: oled_data = color_outline;
                    endcase
                end 
                if (oled_data != color_bg)
                    color_set = 1;
            end
            
            else if (brush == 2)
            begin
                if (y == cursor_y)
                begin
                    case (x - cursor_x )
                    2: oled_data = color_outline;
                    3: oled_data = color_outline;
                     endcase
                end
                else if (y == cursor_y + 1)
                begin
                    case (x - cursor_x )
                    2: oled_data = color_outline;
                    3: oled_data = color_outline;
                    endcase
                end
                else if (y == cursor_y + 2)
                begin
                    case (x - cursor_x )
                    0: oled_data = color_outline;
                    1: oled_data = color_outline;
                    4: oled_data = color_outline;
                    5: oled_data = color_outline;
                    endcase
                end
                else if (y == cursor_y + 3)
                begin
                    case (x - cursor_x )
                    0: oled_data = color_outline;
                    1: oled_data = color_outline;
                    4: oled_data = color_outline;
                    5: oled_data = color_outline;
                    endcase
                end
                else if (y == cursor_y + 4)
                begin
                    case (x - cursor_x )
                    2: oled_data = color_outline;
                    3: oled_data = color_outline;
                    endcase
                end 
                else if (y == cursor_y + 5)
                begin
                    case (x - cursor_x )
                    2: oled_data = color_outline;
                    3: oled_data = color_outline;
                    endcase
                end 
            
                if (oled_data != color_bg)
                    color_set = 1;
            end

            
            else if (brush == 3)  
            begin
                if (y == cursor_y)
                begin
                    case (x - cursor_x )
                    2: oled_data = color_outline;
                    3: oled_data = color_outline;
                    4: oled_data = color_outline;
                     endcase
                end
                else if (y == cursor_y + 1)
                begin
                    case (x - cursor_x )
                    2: oled_data = color_outline;
                    3: oled_data = color_outline;
                    4: oled_data = color_outline;
                    endcase
                end
                else if (y == cursor_y + 2)
                begin
                    case (x - cursor_x )
                    0: oled_data = color_outline;
                    1: oled_data = color_outline;
                    5: oled_data = color_outline;
                    6: oled_data = color_outline;
                    endcase
                end
                else if (y == cursor_y + 3)
                begin
                    case (x - cursor_x )
                    0: oled_data = color_outline;
                    1: oled_data = color_outline;
                    5: oled_data = color_outline;
                    6: oled_data = color_outline;
                    endcase
                end
                else if (y == cursor_y + 4)
                begin
                    case (x - cursor_x )
                    0: oled_data = color_outline;
                    1: oled_data = color_outline;
                    5: oled_data = color_outline;
                    6: oled_data = color_outline;
                    endcase
                end 
                else if (y == cursor_y + 5)
                begin
                    case (x - cursor_x )
                    2: oled_data = color_outline;
                    3: oled_data = color_outline;
                    4: oled_data = color_outline;
                    endcase
                end
                else if (y == cursor_y + 6)
                begin
                    case (x - cursor_x )
                    2: oled_data = color_outline;
                    3: oled_data = color_outline;
                    4: oled_data = color_outline;
                    endcase
                end
            
                if (oled_data != color_bg)
                    color_set = 1;
             
            end

        end
        
///////////////////////////////////////////////////////////////////////////////////

        color_set = 0;
    end
    


endmodule
