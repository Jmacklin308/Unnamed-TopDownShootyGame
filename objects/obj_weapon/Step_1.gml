//Draw weapon on player
x = obj_player.x;
y = obj_player.y-10;

curvPos = 0
curvSpd = 0.05;

//Aiming
src_weapon_aiming(weapon_turn_speed);

//Animate the player off weapon position
src_animating_player();

//set weapon ROF based on how many enemies you killed


var scoreDiff = global.playerScore - tempScore;
DebugLog(scoreDiff)
if(scoreDiff == 100)
{
	//prevent lowering rate of fire too much
	if(rateOfFire > 3)
	{
		rateOfFire -= 1;
		DebugLog("UPGRADING weapon speed")
		tempScore = global.playerScore
	}else if( number_of_projectiles < 3) //max out at 3 projectiles
	{
		number_of_projectiles += 1;
		DebugLog("INCREASING PROJECTILES");
		tempScore = global.playerScore;
	}
}


//SHOOTING
var _mouse_button = mouse_check_button(mb_left);
    
cooldown = cooldown - 1;
if (_mouse_button and (cooldown < 0))
{
    cooldown = rateOfFire;
        
    xdir = lengthdir_x(length_to_barel,direction);
    ydir = lengthdir_y(length_to_barel,direction);
        
	//for every number of projectiles -= 
    repeat(number_of_projectiles)
	{
        with (instance_create_layer(x+ xdir,y+ ydir,"bullets",obj_bullet))
		{
	            //random direction (weapon spread)
	            var _rand_dir = random_range(-other.weapon_spread,other.weapon_spread);
                
	            speed = other.bullet_speed;
	            direction = other.image_angle + _rand_dir;
	    		image_angle = direction;
				
				//stretch bullet
				image_xscale = max(1, other.bullet_speed/sprite_width);
    			
	    		//play gunshot
	    		var _rand_sound = random_range(1,3);
	    		if (_rand_sound == 1)audio_play_sound(snd_gunshot_high_bass,10,0); else audio_play_sound(snd_gunshot_high_bass,10,0);
    			
				//set bullet damage to weapon damage
				BulletDamage = other.damage;
    			
	    		//shake the screen
	    		obj_camera.shakeValue = other.cameraShakeAmount;
					
				
				//if colliding - dont recoil back
				var recoilDirX = 0;
				var recoilDirY = 0;
				
				/////PUSH back player
				if(place_meeting(obj_player.x + recoilDirX, obj_player.y + recoilDirY,obj_parent_colidable))
				{
					recoilDirY = 0;
					recoilDirX = 0;
				}else
				{
					recoilDirX = lengthdir_x(other.recoilPlayerPush,-other.direction);
					recoilDirY = lengthdir_y(other.recoilPlayerPush,+other.direction);
				}
				
				obj_player.x -= recoilDirX;
				obj_player.y -= recoilDirY;
				
						
				//PUSH weapon
				var recoilAmount = lerp(other.recoil,0,0.3)
				other.x-= lengthdir_x(recoilAmount,recoilDirX);
				other.y-= lengthdir_y(recoilAmount,recoilDirY);
		};
	}
}