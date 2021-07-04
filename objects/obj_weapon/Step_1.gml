/// @description 


//Draw weapon on player
x = obj_player.x;
y = obj_player.y-10;




//Aiming
src_weapon_aiming(weapon_turn_speed);

//Animate the player off weapon position
src_animating_player();


//shooting weapon
    //mouse button
    var _mouse_button = mouse_check_button(mb_left);
    
    //checks if the weapon is ready to fire
	var _inital_cooldown = cooldown;
    
    cooldown = cooldown - 1;
    if (_mouse_button and (cooldown < 0)){
        cooldown = rateOfFire;
        
        xdir = lengthdir_x(length_to_barel,direction);
        ydir = lengthdir_y(length_to_barel,direction);
        
        
        show_debug_message(string(_inital_cooldown));
        
        //create bullet while interfacing with it
        with (instance_create_layer(x+ xdir,y+ ydir,"bullets",obj_bullet)){
            speed = other.bullet_speed;
            direction = other.image_angle;
			image_angle = direction;
        };
        
        
        
        
    }
        

