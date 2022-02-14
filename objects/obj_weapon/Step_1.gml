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
        
        
		//for every number of projectiles -= 
        repeat(number_of_projectiles){
            with (instance_create_layer(x+ xdir,y+ ydir,"bullets",obj_bullet))
			{
                //random direction (weapon spread)
                var _rand_dir = random_range(-other.weapon_spread,other.weapon_spread);
                
                speed = other.bullet_speed;
                direction = other.image_angle + _rand_dir;
    			image_angle = direction;
    			
    			//play gunshot
    			var _rand_sound = random_range(1,3);
    			if (_rand_sound == 1)audio_play_sound(snd_gunshot_high,10,0); else audio_play_sound(snd_gunshot_Low,10,0);
    			
				//set bullet damage to weapon damage
				BulletDamage = other.damage;
    			
    			//shake the screen
    			obj_camera.shakeValue = 0.5;
    			
				//movebackward
				
    			////push player back
    			obj_player.x -= lengthdir_x(other.recoil,-other.direction);
    			obj_player.y -= lengthdir_y(other.recoil,+other.direction);
    			
            };
        }
    }
        

