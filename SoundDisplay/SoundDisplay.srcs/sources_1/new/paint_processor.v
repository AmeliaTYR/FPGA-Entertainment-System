`timescale 1ns / 1ps


module paint_processor(
    input [7:0]x, 
    input [6:0]y,
    input clk, clk0p1sec, clk1sec,
    input [3:0] overall_mode, 
    input bL, bR, bD, bU,
    input select_on, // SW[0]
    input is_painting, // SW[1]
    
    output reg [7:0] cursor_x = 30, // cursor position
    output reg [6:0] cursor_y = 30, // cursor position
    output reg [2:0] scheme = 1, // color scheme
    output reg [2:0] brush = 1, // brush size
    output reg [3:0] color = 1, // actual numbered color chosen currently
    
    output reg [2:0] data = 0, // which numbered color was used for that pixel in the grid
    output reg paint_done = 0  
    );
    
    reg [3:0] file_now = 1;
    
    reg [8:0] i_1, j_1;
    reg [8:0] i_2, j_2;
    reg [8:0] i_3, j_3;

    reg [2:0] file_1_a [11:0] [11:0];
    reg [2:0] file_2_a [11:0] [11:0];
    reg [2:0] file_3_a [6:0] [6:0];
    
    reg reset_file_1 = 0;
    reg reset_file_2 = 0;
    reg reset_file_3 = 0;
    

    reg [3:0] previous_mode = 0;
    
    // current values
    reg btnL_flip = 0;
    reg btnR_flip = 0;
    reg btnU_flip = 0;
    reg btnD_flip = 0;

    // store old value
    reg btnL_store = 0;
    reg btnR_store = 0;
    reg btnU_store = 0;
    reg btnD_store = 0;

    // lower all flags first
    reg btnL_flag = 0;
    reg btnR_flag = 0;
    reg btnU_flag = 0;
    reg btnD_flag = 0;
    
    initial
    begin
        i_1 = 0;
        j_1 = 0;
        reset_file_1 = 1;
        i_2 = 0;
        j_2 = 0;
        reset_file_2 = 1;
        i_3 = 0;
        j_3 = 0;
        reset_file_3 = 1;
    end
    
    always @ (posedge bL)
        btnL_flip <= ~btnL_flip;
    always @ (posedge bR)
        btnR_flip <= ~btnR_flip;
    always @ (posedge bD)
        btnD_flip <= ~btnD_flip;
    always @ (posedge bU)
        btnU_flip <= ~btnU_flip;


///////////////////////////////////////////////////////////////////////////////////
    
    always @ (posedge clk)
    begin
        // manage button flags to detect single press
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
        if (btnD_flip != btnD_store)
        begin
            btnD_store <= btnD_flip;
            btnD_flag <= 1; // raise on button press
        end
        if (btnU_flip != btnU_store)
        begin
            btnU_store <= btnU_flip;
            btnU_flag <= 1; // raise on button press
        end 
///////////////////////////////////////////////////////////////////////////////////

        // move cursor (two pixel per button push)
        if (overall_mode == 4)
        begin
            if (btnU_flag && cursor_y > 2)
            begin
                cursor_y <= cursor_y - 2;
            end
            
            if (btnR_flag && cursor_x < 90)
            begin
                cursor_x <= cursor_x + 2;
            end
            
            if (btnL_flag && cursor_x > 2)
            begin
                cursor_x <= cursor_x - 2;
            end
            
            if (btnD_flag && cursor_y < 60) 
            begin
                cursor_y <= cursor_y + 2;
            end
        end

///////////////////////////////////////////////////////////////////////////////////
        
        if (previous_mode != 4 && overall_mode == 4)
        begin
            // reset paint_done flag
            paint_done = 0;
            cursor_x = 30;
            cursor_y = 30;
        end
        
///////////////////////////////////////////////////////////////////////////////////
    
        // SELECT BRUSH
        // select small
        // if cursor top left corner over icon
        if (select_on == 1 && cursor_x >= 60 && cursor_x <= 64 && cursor_y >= 3 && cursor_y <= 7) 
        begin
            // process selected option
            brush <= 1;
        end
        
        // select med
        // if cursor top left corner over icon
        else if (select_on == 1 && cursor_x >= 70 && cursor_x <= 75 && cursor_y >= 3 && cursor_y <= 8) 
        begin
            // process selected option
            brush <= 2;
        end
        
        // select big
        // if cursor top left corner over icon
        else if (select_on == 1 && cursor_x >= 79 && cursor_x <= 85 && cursor_y >= 2 && cursor_y <= 8) 
        begin
            // process selected option
            brush <= 3;
        end
    
///////////////////////////////////////////////////////////////////////////////////

        // SELECT COLOR_SCHEME

        // scheme 1
        if (select_on == 1 && cursor_x >= 59 && cursor_x <= 65 && cursor_y >= 43 && cursor_y <= 58) 
        begin
            // process selected option
            scheme <= 1;
        end
        
        // scheme 2
        else if (select_on == 1 && cursor_x >= 69 && cursor_x <= 75 && cursor_y >= 43 && cursor_y <= 58) 
        begin
            // process selected option
            scheme <= 2;
        end
        
        // scheme 3
        else if (select_on == 1 && cursor_x >= 79 && cursor_x <= 85 && cursor_y >= 43 && cursor_y <= 58)
        begin
            // process selected option
            scheme <= 3;
        end
///////////////////////////////////////////////////////////////////////////////////

        // SELECT FILE
        // if cursor top left corner over icon
        // file 1
        if (select_on == 1 && cursor_x >= 8 && cursor_x <= 16 && cursor_y >= 52 && cursor_y <= 60) 
        begin
            // process selected option
            file_now = 1;
        end

        // file 2
        else if (select_on == 1 && cursor_x >= 20 && cursor_x <= 28 && cursor_y >= 52 && cursor_y <= 60) 
        begin
            // process selected option
            file_now = 2;
        end
        
        // file 3
        else if (select_on == 1 && cursor_x >= 32 && cursor_x <= 40 && cursor_y >= 52 && cursor_y <= 60) 
        begin
            // process selected option
            file_now = 3;
        end

///////////////////////////////////////////////////////////////////////////////////

        // clear current file
        if (select_on == 1 && cursor_x >= 46 && cursor_x <= 53 && cursor_y >= 54 && cursor_y <= 62) 
        begin
            if (file_now == 1)
            begin
                i_1 = 0;
                j_1 = 0;
                reset_file_1 = 1;
            end
            else if (file_now == 2)
            begin
                i_2 = 0;
                j_2 = 0;
                reset_file_2 = 1;
            end
            else if (file_now == 3)
            begin
                i_3 = 0;
                j_3 = 0;
                reset_file_3 = 1;
            end 
        end
///////////////////////////////////////////////////////////////////////////////////
        
        // 10 change to 40 max
        
        // start clearing process
        // clear file 1
        if (reset_file_1)
        begin
            file_1_a[i_1][j_1] = 0; // set it to 0
            i_1 = (i_1 == 11) ? 0 : i_1 + 1; // increment i to 44
            j_1 = (i_1 == 0) ? j_1 + 1 : j_1; // increment j everytime i rolls over
        end
        if (j_1 == 11 && i_1 == 11) // when it reach the end
        begin
            reset_file_1 = 0; // done resetting
        end

        // clear file 2
        if(reset_file_2)
        begin
            file_2_a[i_2][j_2] = 3; // set it to 0
            i_2 = (i_2 == 11) ? 0 : i_2 + 1; // increment i to 44
            j_2 = (i_2 == 0) ? j_2 + 1 : j_2; // increment j everytime i rolls over
        end
        if (j_2 == 11 && i_2 == 11) // when it reach the end
        begin
            reset_file_2 = 0; // done resetting
        end
                
        // clear file 3
        if(reset_file_3)
        begin
            file_3_a[i_3][j_3] = 4; // set it to 0
            i_3 = (i_3 == 6) ? 0 : i_3 + 1; // increment i to 44
            j_3 = (i_3 == 0) ? j_3 + 1 : j_3; // increment j everytime i rolls over
        end
        if (j_3 == 6 && i_3 == 6) // when it reach the end
        begin
            reset_file_3 = 0; // done resetting
        end
        
///////////////////////////////////////////////////////////////////////////////////
        
        // CHOOSE COLOR
        // color 1
        if (select_on == 1 && cursor_x >= 59 && cursor_x <= 65 && cursor_y >= 11 && cursor_y <= 17) 
        begin
            // process selected option
            color <= 1;
        end
        // color 2
        else if (select_on == 1 && cursor_x >= 69 && cursor_x <= 75 && cursor_y >= 11 && cursor_y <= 17) 
        begin
            // process selected option
            color <= 2;
        end
        
        // color 3
        else if (select_on == 1 && cursor_x >= 79 && cursor_x <= 85 && cursor_y >= 11 && cursor_y <= 17)
        begin
            // process selected option
            color <= 3;
        end
        // color 4
        else if (select_on == 1 && cursor_x >= 59 && cursor_x <= 65 && cursor_y >= 21 && cursor_y <= 27) 
        begin
            // process selected option
            color <= 4;
        end
        
        // color 5
        else if (select_on == 1 && cursor_x >= 69 && cursor_x <= 75 && cursor_y >= 21 && cursor_y <= 27) 
        begin
            // process selected option
            color <= 5;
        end
        // color 6
        else if (select_on == 1 && cursor_x >= 79 && cursor_x <= 85 && cursor_y >= 21 && cursor_y <= 27)
        begin
            // process selected option
            color <= 6;
        end
        // color 0
        else if (select_on == 1 && cursor_x >= 59 && cursor_x <= 65 && cursor_y >= 31 && cursor_y <= 37) 
        begin
            // process selected option
            color <= 0;
        end


///////////////////////////////////////////////////////////////////////////////////
    
        // paint using small brush
        if (brush == 1 && is_painting == 1 && cursor_x >= 13 && cursor_x <= 52 && cursor_y >= 9 && cursor_y <= 48) 
        begin
            // modify to current file
            // add just that one pixel
            if (file_now == 1)
                file_1_a [(cursor_x-13)/4] [(cursor_y-9)/4] = color;
            if (file_now == 2)
                file_2_a [(cursor_x-13)/4] [(cursor_y-9)/4] = color;
            if (file_now == 3)
                file_3_a [(cursor_x-13)/8] [(cursor_y-9)/8] = color;
        end


///////////////////////////////////////////////////////////////////////////////////
    
        // paint using med brush
        else if (brush == 2 && is_painting == 1 && cursor_x >= 13 && cursor_x <= 52 && cursor_y >= 9 && cursor_y <= 48) 
       
        begin
            // modify to current file
            // add the 4 pixels
            if (file_now == 1)
            begin
                file_1_a [(cursor_x-13)/4] [(cursor_y-9)/4] = color;
                file_1_a [(cursor_x-13)/4] [(cursor_y-9)/4 + 1] = color;
                file_1_a [(cursor_x-13)/4 + 1] [(cursor_y-9)/4 + 1] = color;
                file_1_a [(cursor_x-13)/4 + 1] [(cursor_y-9)/4] = color;
            end
            if (file_now == 2)
            begin
                file_2_a [(cursor_x-13)/4] [(cursor_y-9)/4] = color;
                file_2_a [(cursor_x-13)/4] [(cursor_y-9)/4 + 1] = color;
                file_2_a [(cursor_x-13)/4+1] [(cursor_y-9)/4 + 1] = color;
                file_2_a [(cursor_x-13)/4+1] [(cursor_y-9)/4] = color;
            end
            if (file_now == 3)
            begin
                file_3_a [(cursor_x-13)/8] [(cursor_y-9)/8] = color;
                file_3_a [(cursor_x-13)/8] [(cursor_y-9)/8+1] = color;
                file_3_a [(cursor_x-13)/8+1] [(cursor_y-9)/8+1] = color;
                file_3_a [(cursor_x-13)/8+1] [(cursor_y-9)/8] = color;
            end
        end

///////////////////////////////////////////////////////////////////////////////////
    
        // paint using big brush
        else if (brush == 3 && is_painting == 1 && cursor_x >= 13 && cursor_x <= 52 && cursor_y >= 9 && cursor_y <= 48)
        begin
            // modify to current file
            // add the 9 pixels 
            if (file_now == 1)
            begin
                file_1_a [(cursor_x-13)/4] [(cursor_y-9)/4] = color;
                file_1_a [(cursor_x-13)/4] [(cursor_y-9)/4 + 1] = color;
                file_1_a [(cursor_x-13)/4] [(cursor_y-9)/4+2] = color;
                file_1_a [(cursor_x-13)/4+1] [(cursor_y-9)/4] = color;
                file_1_a [(cursor_x-13)/4+1] [(cursor_y-9)/4+1] = color;
                file_1_a [(cursor_x-13)/4+1] [(cursor_y-9)/4+2] = color;
                file_1_a [(cursor_x-13)/4+2] [(cursor_y-9)/4] = color;
                file_1_a [(cursor_x-13)/4+2] [(cursor_y-9)/4+1] = color;
                file_1_a [(cursor_x-13)/4+2] [(cursor_y-9)/4+2] = color;
            end
            else if (file_now == 2)
            begin
                file_2_a [(cursor_x-13)/4] [(cursor_y-9)/4] = color;
                file_2_a [(cursor_x-13)/4] [(cursor_y-9)/4 + 1] = color;
                file_2_a [(cursor_x-13)/4] [(cursor_y-9)/4+2] = color;
                file_2_a [(cursor_x-13)/4+1] [(cursor_y-9)/4] = color;
                file_2_a [(cursor_x-13)/4+1] [(cursor_y-9)/4+1] = color;
                file_2_a [(cursor_x-13)/4+1] [(cursor_y-9)/4+2] = color;
                file_2_a [(cursor_x-13)/4+2] [(cursor_y-9)/4] = color;
                file_2_a [(cursor_x-13)/4+2] [(cursor_y-9)/4+1] = color;
                file_2_a [(cursor_x-13)/4+2] [(cursor_y-9)/4+2] = color;

            end
            else if (file_now == 3)
            begin
                file_3_a [(cursor_x-13)/8] [(cursor_y-9)/8] = color;
                file_3_a [(cursor_x-13)/8] [(cursor_y-9)/8 + 1] = color;
                file_3_a [(cursor_x-13)/8] [(cursor_y-9)/8+2] = color;
                file_3_a [(cursor_x-13)/8+1] [(cursor_y-9)/8] = color;
                file_3_a [(cursor_x-13)/8+1] [(cursor_y-9)/8+1] = color;
                file_3_a [(cursor_x-13)/8+1] [(cursor_y-9)/8+2] = color;
                file_3_a [(cursor_x-13)/8+2] [(cursor_y-9)/8] = color;
                file_3_a [(cursor_x-13)/8+2] [(cursor_y-9)/8+1] = color;
                file_3_a [(cursor_x-13)/8+2] [(cursor_y-9)/8+2] = color;
            end
        end

///////////////////////////////////////////////////////////////////////////////////
    
        // exit the program
        else if (select_on == 1 && cursor_x >= 0 && cursor_x <= 9 && cursor_y >= 0 && cursor_y <= 9) 
        begin
            paint_done = 1; 
                    
        end

///////////////////////////////////////////////////////////////////////////////////

        // read out correct pixel data for given x,y on canvas
        if (x >= 15 && x <= 54 && y >= 11 && y <= 52)
        begin
            if (file_now == 1)
                data = file_1_a [(x-15)/4] [(y-11)/4];
            else if (file_now == 2)
                data = file_2_a [(x-15)/4] [(y-11)/4];
            else if (file_now == 3)
                data = file_3_a [(x-15)/8] [(y-11)/8];
        end
        
///////////////////////////////////////////////////////////////////////////////////
        // lower flags
        btnU_flag = 0;
        btnL_flag = 0;
        btnD_flag = 0;
        btnR_flag = 0;
        previous_mode = overall_mode;
    end
    
endmodule
