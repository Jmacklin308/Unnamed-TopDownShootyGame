function PlayerMovement(plyrSpeed){
    //for changing sprite later
    changeSprite = false;
    speed_with_delta = plyrSpeed * DT;
	
	
    keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
    keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
    keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
    keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
	
	//assign inputs
    h_input = keyRight - keyLeft;
    v_input = keyDown - keyUp;
    

	
	
    input_direction = 0;
    //check if were moving
    if (h_input != 0 || v_input != 0)
	{
		//set globals for player
        global.Player_IsMoving = true;
		if(h_input == 1) global.Player_MovingRight = true; else global.Player_MovingRight = false;
		if(h_input == -1) global.Player_MovingLeft = true; else global.Player_MovingLeft = false;
		if(v_input == -1) global.Player_MovingUp = true; else global.Player_MovingUp = false;
		if(v_input == 1) global.Player_MovingDown = true; else global.Player_MovingDown = false;
		
		
		speedtimer = 0; // for twerp
        input_direction = point_direction(0,0,h_input , v_input);
        
        //keep player from coasting to the right
        if (input_direction == 0) input_direction = 360;

        speedtimer++; // count down
        smooth_speed = twerp(TwerpType.inout_quart, 0, speed_with_delta,speedtimer);
        
        //call movement script 
        movement_and_collision(input_direction, smooth_speed, obj_parent_colidable);
        
        //set player movement animation
        //if moving right
        if (h_input == 1){
            if(v_input != 0) {
                //check diag movement
                if (v_input == -1) sprite_index = spr_player_running_up_right;
                if (v_input == 1 ) sprite_index = spr_player_running_down_right;
            }else {
                sprite_index = spr_player_running_right;
            }
        } 
        
        //if moving left
        if (h_input == -1) 
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
        
        
    }else { //If the player is idle
            
			global.Player_IsMoving = false;
			global.Player_MovingRight = false;
			global.Player_MovingLeft = false;
			global.Player_MovingUp = false;
			global.Player_MovingDown = false;
			
            if (global.weapon_right) sprite_index = spr_player_idle_right;
            if (global.weapon_up_right) sprite_index = spr_player_idle_up_right;
            if (global.weapon_up_left) sprite_index = spr_player_idle_up_left;
            if (global.weapon_left) sprite_index = spr_player_idle_left;
            if (global.weapon_down_left) sprite_index = spr_player_idle_down_left;
            if (global.weapon_down_right) sprite_index = spr_player_idle_down_right;
        }
        
        return h_input;
        return v_input;
    }   