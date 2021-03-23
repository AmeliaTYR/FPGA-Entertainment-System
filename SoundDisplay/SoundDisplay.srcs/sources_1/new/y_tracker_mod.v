`timescale 1ns / 1ps

// handles the position and interaction of all characters and elements and explosions
module y_tracker_mod(
    input update_clk,
    input spawn_clk,
    input despawn_clk,
    input laser_despawn_clk,
    input laser_spawn_clk,
    input ex_ds_clk,
    
    input [2:0] rand,
    input [3:0] laser_y,
    input [3:0] player_pos,
    input [3:0] mode,
    
    output reg [3:0] pos_EA1 = 8,
    output reg [3:0] EA1_y = 8,
    output reg [3:0] pos_EA2 = 8,
    output reg [3:0] EA2_y = 8,
    output reg [3:0] pos_EA3 = 8,
    output reg [3:0] EA3_y = 8,
    output reg [3:0] pos_EB = 8,
    output reg [3:0] EB_y = 8,
    
    output reg [3:0] laser_exist = 8,
    output reg [3:0] explosion_x = 8,
    output reg [3:0] explosion_y = 5,
    
    output reg EA1_hit = 0,
    output reg EA2_hit = 0,
    output reg EA3_hit = 0,
    output reg EB_hit = 0
    );
    
    reg x_track [8:0]; // keeps track of empty and open spaces

    // current values
    reg spawn_flip = 0;
    reg despawn_flip = 0;
    reg laser_ds_flip = 0;
    reg laser_s_flip = 0;
    reg ex_ds_flip = 0;

    // store old value
    reg spawn_store = 0;
    reg despawn_store = 0;
    reg laser_ds_store = 0;
    reg laser_s_store = 0;
    reg ex_ds_store = 0;

    // lower all flags first
    reg spawn_flag = 0;
    reg despawn_flag = 0;
    reg laser_dsf = 0;
    reg laser_sf = 0;
    reg ex_dsf = 0;
    
    // spawn counters staggered
    reg [1:0] sc_EA1 = 0;
    reg [1:0] sc_EA2 = 3;
    reg [1:0] sc_EA3 = 1;
    reg [1:0] sc_EB = 2;
    
    // despawn counters
    reg [1:0] dsc_EA1 = 3;
    reg [1:0] dsc_EA2 = 3;
    reg [1:0] dsc_EA3 = 3;
    reg [1:0] dsc_EB = 3;
    reg [1:0] dsc_laser = 0;
    reg [3:0] dsc_ex = 0;
    
    reg laser_hit = 0;
    reg [2:0] laser_count = 0;

    initial begin
         x_track [0] = 0;
         x_track [1] = 0;
         x_track [2] = 0;
         x_track [3] = 0;
         x_track [4] = 0;
         x_track [5] = 0;
         x_track [6] = 0;
         x_track [7] = 0;
         x_track [8] = 0;
    end
    
    always @ (posedge spawn_clk)
    begin
        spawn_flip <= ~spawn_flip;
    end 
    
    always @ (posedge despawn_clk)
    begin
        despawn_flip <= ~despawn_flip;
    end

    always @ (posedge laser_despawn_clk)
    begin
        laser_ds_flip <= ~laser_ds_flip;
    end
    
    always @ (posedge laser_spawn_clk)
    begin
        laser_s_flip <= ~laser_s_flip;
    end

    always @ (posedge ex_ds_clk)
    begin
        ex_ds_flip <= ~ex_ds_flip;
    end
    

    always @ (posedge update_clk)
    begin
        // reset the game when the game is over
        if (mode != 2)
        begin
            x_track [0] = 0;
            x_track [1] = 0;
            x_track [2] = 0;
            x_track [3] = 0;
            x_track [4] = 0;
            x_track [5] = 0;
            x_track [6] = 0;            
            x_track [7] = 0;
            x_track [8] = 0;
        end
        
        laser_hit = 0;
        
        // raise flags
        if (spawn_flip != spawn_store)
        begin
            spawn_store <= spawn_flip;
            spawn_flag <= 1; // raise on button press
        end
        if (despawn_flip != despawn_store)
        begin
            despawn_store <= despawn_flip;
            despawn_flag <= 1; // raise on button press
        end
        if (laser_ds_flip != laser_ds_store)
        begin
            laser_ds_store = laser_ds_flip;
            laser_dsf = 1;
        end
        if (laser_s_flip != laser_s_store)
        begin
            laser_s_store = laser_s_flip;
            laser_sf = 1;
        end
        if (ex_ds_flip != ex_ds_store)
        begin
            ex_ds_store = ex_ds_flip;
            ex_dsf = 1;
        end
          
        // despawn old laser
        if (laser_dsf)
        begin
            if (laser_exist != 8) // if the laser still exists
            begin
                if (dsc_laser == 0) // time to despawn!
                begin
                    x_track [laser_exist] = 0; // reset the pos tracker
                    laser_exist = 8; // say laser does not exist
                    dsc_laser = 3; // reset countdown for next despawn
                end
                else
                begin 
                    dsc_laser <= dsc_laser - 1; // decrement the laser
                end
            end
        end

        // despawn explosion
        if (ex_dsf)
        begin
            if (explosion_x != 8) // if explosion still exists
            begin
                if (dsc_ex != 0) // time to despawn!
                begin
                    dsc_ex <= dsc_ex - 1; // decrement the explosion despawner                
                end
                else
                begin 
                    x_track [explosion_x] = 0; // reset the pos tracker
                    explosion_y = 5; // remove explosion flag
                    explosion_x = 8; // remove explosion flag
                end
            end
        end
        
        // spawn laser with collision detection
        if (laser_sf && laser_y != 0 && laser_y != 1) // if there is possible collision
        begin
            dsc_laser = 3; // reset countdown for next despawn     
                    
            if(x_track [player_pos] != 0) // if there is already something there that can only be an enemy cause of timing
            begin 
                // figure out which enemy it is
                if (pos_EB == player_pos)
                begin
                    // figure out the distance to the enemy
                    if (laser_y >= EB_y)
                    begin 
                        // a 10 point enemy has been hit raise a flag and count 3 counts of the basys clock 
                        EB_hit = 1; // signal that the enemy EB has been hit
                        explosion_x = pos_EB; // set the explosion coord 
                        explosion_y = EB_y; // set the explosion coord
                        dsc_ex = 5;
                        pos_EB = 8; // despawn enemy
                        EB_y = 5; // despawn enemy
                        dsc_EB = 3; // reset enemy despawn counter 
                        laser_hit = 1;               
                    end
                end
        
                else if (pos_EA1 == player_pos)
                begin
                    // figure out the distance to the enemy
                    if (laser_y >= EA1_y)
                    begin 
                        // a 5 point enemy has been hit raise a flag and count 3 counts of the basys clock 
                        EA1_hit = 1; // signal that the enemy EA1 has been hit
                        explosion_x = pos_EA1; // set the explosion coord 
                        explosion_y = EA1_y; // set the explosion coord
                        dsc_ex = 5;
                        pos_EA1 = 8; // despawn enemy
                        EA1_y = 5; // despawn enemy
                        dsc_EA1 = 3; // reset enemy despawn counter
                        laser_hit = 1;                 
                    end   
                end
        
                else if (pos_EA2 == player_pos)
                begin
                    // figure out the distance to the enemy
                    if (laser_y >= EA2_y)
                    begin 
                        // a 5 point enemy has been hit raise a flag and count 3 counts of the basys clock 
                        EA2_hit = 1; // signal that the enemy EA2 has been hit
                        explosion_x = pos_EA2; // set the explosion coord 
                        explosion_y = EA2_y; // set the explosion coord
                        dsc_ex = 5;
                        pos_EA2 = 8; // despawn enemy
                        EA2_y = 5; // despawn enemy
                        dsc_EA2 = 3; // reset enemy despawn counter    
                        laser_hit = 1;            
                    end   
                end
        
                else if (pos_EA3 == player_pos)
                begin
                   // figure out the distance to the enemy
                    if (laser_y >= EA3_y)
                    begin 
                        // a 5 point enemy has been hit raise a flag and count 3 counts of the basys clock 
                        EA3_hit = 1; // signal that the enemy EA3 has been hit
                        explosion_x = pos_EA3; // set the explosion coord 
                        explosion_y = EA3_y; // set the explosion coord
                        dsc_ex = 5;
                        pos_EA3 = 8; // despawn enemy
                        EA3_y = 5; // despawn enemy
                        dsc_EA3 = 3; // reset enemy despawn counter
                        laser_hit = 1;                
                    end   
                end
                
            end
            x_track [player_pos] = 1; // its just a laser in that lane
            laser_exist = player_pos; // tell where the laser is since it exists
        end

        // despawn enemy          
        if (despawn_flag)
        begin
            // for each enemy if they exist, check if they should despawn
            // EA1
            if (pos_EA1 != 8) // it exists
            begin
                if (dsc_EA1 == 0) // time to despawn!
                begin
                    x_track [pos_EA1] = 0; // reset the pos tracker
                    pos_EA1 = 8; // set the enemy to not exist
                    EA1_y = 5; // set the x position of the enemy to be not exist
                    dsc_EA1 = 3; // prep for next despawn
                end
                else 
                    dsc_EA1 <= dsc_EA1 - 1; // countdown to next despawn
            end
            
            // EA2
            if (pos_EA2 != 8) // it exists
            begin
                if (dsc_EA2 == 0) // time to despawn!
                begin
                    x_track [pos_EA2] = 0; // reset the pos tracker
                    pos_EA2 = 8; // set the enemy to not exist
                    EA2_y = 5; // set the x position of the enemy to be not exist
                    dsc_EA2 = 3; // prep for next despawn
                end
                else 
                    dsc_EA2 <= dsc_EA2 - 1; // countdown to next despawn
            end
            
            // EA3
            if (pos_EA3 != 8) // it exists
            begin
                if (dsc_EA3 == 0) // time to despawn!
                begin
                    x_track [pos_EA3] = 0; // reset the pos tracker
                    pos_EA3 = 8; // set the enemy to not exist
                    EA3_y = 5; // set the x position of the enemy to be not exist
                    dsc_EA3 = 3; // prep for next despawn
                end
                else 
                    dsc_EA3 <= dsc_EA3 - 1; // countdown to next despawn
            end
            
            
            // EB
            if (pos_EB != 8) // it exists
            begin
                if (dsc_EB == 0) // time to despawn!
                begin
                    x_track [pos_EB] = 0; // reset the pos tracker
                    pos_EB = 8; // set the enemy to not exist
                    EB_y = 5; // set the x position of the enemy to be not exist
                    dsc_EB = 3; // prep for next despawn
                end
                else 
                    dsc_EB <= dsc_EB - 1; // countdown to next despawn
            end
            despawn_flag = 0;
        end
        
        
        // spawn enemy
        if (spawn_flag)
        begin
            // for each enemy if they don't already exist, attempt to spawn them in a random location
            // EA1
            if (pos_EA1 == 8) // it doesn't exist yet
            begin
                if (sc_EA1 == 0) // time to spawn!
                begin
                    pos_EA1 = (rand) % 8; // pick a position from 0 to 7
                    if (x_track [pos_EA1] == 0) // if its empty
                    begin
                        x_track [pos_EA1] = 1; // fill that position
                        EA1_y = (rand + 1) % 3 + 2; // give it a height
                    end
                    else 
                        pos_EA1 = 8;  // set it to no spawn position (ie doesnt exist)
                    sc_EA1 = 3; // prep for next spawn
                end
                else 
                    sc_EA1 <= sc_EA1 - 1; // countdown to next spawn
            end
            
            // EA2
            if (pos_EA2 == 8) // it doesn't exist yet
            begin
                if (sc_EA2 == 0) // time to spawn!
                begin
                    pos_EA2 = (rand + 5) % 8; // pick a position
                    if (x_track [pos_EA2] == 0) // if its empty
                    begin
                        x_track [pos_EA2] = 1; // fill that position
                        EA2_y = (rand + 2) % 3 + 2; // give it a height
                    end
                    else 
                        pos_EA2 = 8;  // set it to no spawn position (ie doesnt exist)
                    sc_EA2 = 3; // prep for next spawn
                end
                else 
                    sc_EA2 <= sc_EA2 - 1; // countdown to next spawn
            end
            
            // EA3
            if (pos_EA3 == 8) // it doesn't exist yet
            begin
                if (sc_EA3 == 0) // time to spawn!
                begin
                    pos_EA3 = (rand + 2) % 8; // pick a position
                    if (x_track [pos_EA3] == 0) // if its empty
                    begin
                        x_track [pos_EA3] = 1; // fill that position
                        EA3_y = (rand) % 3 + 2; // give it a height
                    end
                    else 
                        pos_EA3 = 8;  // set it to no spawn position (ie doesnt exist)
                    sc_EA3 = 3; // prep for next spawn
                end
                else 
                    sc_EA3 <= sc_EA3 - 1; // countdown to next spawn
            end
            
            // EB
            if (pos_EB == 8) // it doesn't exist yet
            begin
                if (sc_EB == 0) // time to spawn!
                begin
                    pos_EB = (rand + 3) % 8; // pick a position
                    if (x_track [pos_EB] == 0) // if its empty
                    begin
                        x_track [pos_EB] = 1; // fill that position
                        EB_y = (rand + 2) % 3 + 2; // give it a height
                    end
                    else 
                        pos_EB = 8;  // set it to no spawn position (ie doesnt exist)
                    sc_EB = 3; // prep for next spawn
                end
                else 
                    sc_EB <= sc_EB - 1; // countdown to next spawn
            end
            spawn_flag = 0;
        end // end of enemy spawning      
        
        // raise keep the flags raised
        if (laser_hit)
        begin
            laser_count = 3;
        end

        // create a pulse to signal to score mod to increase score
        if (laser_count != 0)
        begin
            laser_count <= laser_count - 1;
        end
        else
        begin
            EA1_hit = 0;
            EA2_hit = 0;
            EA3_hit = 0;
            EB_hit = 0;  
        end
    end
 
endmodule
