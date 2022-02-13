function src_animating_player(){
	
	
	DebugLog(global.Player_MovingUp);
	
	////set weapon behind if moving up (always)
	if(global.Player_MovingUp) depth = obj_player.depth + 1; else depth = obj_player.depth - 1;
	
	////set weapon in front if moving down (always)
	//if(global.Player_MovingDown) depth = obj_player.depth - 1; else depth = obj_player.depth + 1;
	
	
	//IDLE
	////idle right
	if(direction < 45 or (direction >= 315)) global.weapon_right = true;else global.weapon_right = false;

	////idle up
	if(direction >= 45 and direction < 135)
	{
    
	    //idle right
	    if(direction <= 90) global.weapon_up_right = true; else global.weapon_up_right = false;
    
	    //idle left
	    if(direction > 90) global.weapon_up_left = true; else global.weapon_up_left = false;
    
    
	    //set weapon behind player
	    depth = obj_player.depth + 1; 
    
	}else 
	{
    
	    //reset
	    global.weapon_up_right = false;
	    global.weapon_up_left = false;
    
	}

	////idle left 
	if(direction >= 135 and direction < 225) global.weapon_left = true; else global.weapon_left = false;

	////idle down
	if(direction >= 225 and direction < 315 )
	{
	    //idle left
	    if(direction <= 270 ) global.weapon_down_left = true; else global.weapon_down_left = false;
    
	    //idle right
	    if(direction > 270 ) global.weapon_down_right = true; else global.weapon_down_right = false;
    
	    //set weapon back in front of player
	    depth = obj_player.depth - 1;
    
	}else{
	    //reset
	    global.weapon_down_left = false;
	    global.weapon_down_right = false;

	}
}