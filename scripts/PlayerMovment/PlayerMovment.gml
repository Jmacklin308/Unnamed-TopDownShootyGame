// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerMovment(plyrSpeed){
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
        show_debug_message(string(speedtimer));
        
        //Set sprite to running
        sprite_index = spr_player_running;
        
        
        
        
        
        
        
        
    }else {
        //set sprite to idle again
        sprite_index = spr_player_idle;
    }
}