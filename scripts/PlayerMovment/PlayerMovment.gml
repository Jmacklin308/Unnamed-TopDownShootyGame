// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerMovment(plyrSpeed){
    //for changing sprite later
    changeSprite = false;
    
    
    speed_with_delta = plyrSpeed * DT;
    
    
    keyLeft = keyboard_check(ord("A"));
    keyRight = keyboard_check(ord("D"));
    keyUp = keyboard_check(ord("W"));
    keyDown = keyboard_check(ord("S"));
    
    
    h_input = keyRight - keyLeft;
    v_input = keyDown - keyUp;
    
    //smooth out that speed
    
    input_direction = 0;
    //check if were moving
    if (h_input != 0 || v_input != 0){
        speedtimer = 0; // for twerp
        input_direction = point_direction(0,0,h_input , v_input);
        
        //keep player from coasting to the right
        if (input_direction == 0) input_direction = 360;
        

        speedtimer++; // count dimer
        smooth_speed = twerp(TwerpType.inout_quart, 0, speed_with_delta,speedtimer);
        
        //call movement script 
        movement_and_collision(input_direction, smooth_speed, obj_parent_colidable);
        
        
        
        ///////////////////////////////////////////////////////////////////
        //TODO: Fix this nonsense. Maybe to a stuct or enum switch thinngy
        //////////////////////////////////////////////////////////////////
        
        
        
        //left right (leave it on the corrisponding idle direction)
        if (h_input == 1){
            
            if(v_input != 0) {
                //check diag movement
                if (v_input == -1) sprite_index = spr_player_running_up_right;
                if (v_input == 1 ) sprite_index = spr_player_running_down_right;
            }else {
                sprite_index = spr_player_running_right;
            }
            
        } else if (h_input == -1) 
        {
            if (v_input != 0){
                if (v_input == -1) sprite_index = spr_player_running_up_left;
                if (v_input == 1 ) sprite_index = spr_player_running_down_left;
            }else {
                sprite_index = spr_player_running_left;
            }
        }else {
            
            //up and down on their own default to the right animation to match the base idle (shown below)
            if (v_input == -1 ) sprite_index = spr_player_running_up_right;
            if (v_input == 1 ) sprite_index = spr_player_running_down_right;
        }
        
        
        
    }else {
            //Player is standing still now. Facing the right
            sprite_index = spr_player_idle_right;
        }
    }   