/// @description 


//Draw weapon on player
x = obj_player.x;
y = obj_player.y-10;




//////TESTING
///smooth aiming

//start aim


end_aim = point_direction(x,y,mouse_x,mouse_y);


aim_timer++;
twerp_dir = twerp(twerp_type,start_aim,end_aim,aim_timer / length);

show_debug_message(string(twerp_dir));



image_angle = direction;



//set wweapon direction






//flip weapon if pointing left and right
if (direction > 90 and direction < 270) image_yscale = -1; else image_yscale = 1;



//Push weapon behind player if moving up
if (obj_player.v_input == -1) {
    depth = obj_player.depth + 1; 
}else depth = obj_player.depth - 3;


#region Set player sprite depending on weapon direction

//Broadcast weapon location based on 4 directions
////idle right
if(direction < 45 or (direction >= 315)) global.weapon_right = true;else global.weapon_right = false;


////idle up
if(direction >= 45 and direction < 135){
    
    //idle right
    if(direction <= 90) global.weapon_up_right = true; else global.weapon_up_right = false;
    
    //idle left
    if(direction > 90) global.weapon_up_left = true; else global.weapon_up_left = false;
    
    
    
    //set weapon behind player
    depth = obj_player.depth + 1; 
    
}else {
    
    //reset
    global.weapon_up_right = false;
    global.weapon_up_left = false;
    
}

////idle left 
if(direction >= 135 and direction < 225) global.weapon_left = true; else global.weapon_left = false;

////idle down
if(direction >= 225 and direction < 315 ){
    //idle left
    if(direction <= 270 ) global.weapon_down_left = true; else global.weapon_down_left = false;
    
    //idle right
    if(direction > 270 ) global.weapon_down_right = true; else global.weapon_down_right = false;
    
    //set weapon back in front of player
    
    depth = obj_player.depth - 2;
    
}else{
    //reset
    global.weapon_down_left = false;
    global.weapon_down_right = false;
}

#endregion









