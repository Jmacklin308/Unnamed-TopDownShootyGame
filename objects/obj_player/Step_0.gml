

delta_movement = delta_time / 1000000;
speed_with_delta = movement_speed * delta_movement;

keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));


h_input = keyRight - keyLeft;
v_input = keyDown - keyUp;


input_direction = 0;
//check if were moving
if (h_input != 0 || v_input != 0){
    input_direction = point_direction(0,0,h_input , v_input);
    
    if (input_direction == 0) input_direction = 360;
    
    //call movement script 
    movement_and_collision(input_direction, speed_with_delta, obj_parent_colidable);
    
    //Set sprite to running
    sprite_index = spr_player_running;
    
}else {
    //set sprite to idle again
    sprite_index = spr_player_idle;
}


