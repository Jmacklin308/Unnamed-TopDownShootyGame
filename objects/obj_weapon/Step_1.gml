if(!global.gameOver)
{
	//Draw weapon on player
	x = obj_player.x;
	y = obj_player.y-10;

	curvPos = 0
	curvSpd = 0.05;
	
	//Aiming
	src_weapon_aiming(weapon_turn_speed);

	//Animate the player off weapon position
	src_animating_player();


	//UPGRADING WEAPON
	var scoreDiff = global.playerScore - tempScore;
	if(scoreDiff == 100)
	{
		//prevent lowering rate of fire too much
		if(rateOfFire > 3)
		{
			rateOfFire -= 1;
			tempScore = global.playerScore
		}
	}


	//for debugline
	_tempRecoilX = lengthdir_x(recoilPlayerPush,-image_angle);
	_tempRecoilY = lengthdir_y(recoilPlayerPush,image_angle);

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
                
		            speed = random_range(other.bullet_speed*.80,other.bullet_speed);
		            direction = other.image_angle + _rand_dir;
		    		image_angle = direction;
				
					//stretch bullet
					image_xscale = max(1, other.bullet_speed/sprite_width);
    			
		    		//play gunshot
		    		PlayRandomGunshot();
    			
					//set bullet damage to weapon damage
					BulletDamage = other.damage;
    			
		    		//shake the screen
		    		obj_camera.shakeValue = random_range(other.cameraShakeAmount*.90, other.cameraShakeAmount);
					
					//if colliding - dont recoil back
					var recoilDirX = 0;
					var recoilDirY = 0;
				
					/////PUSH back player
					recoilDirX = lengthdir_x(other.recoilPlayerPush,-other.direction);
					recoilDirY = lengthdir_y(other.recoilPlayerPush,+other.direction);
						
					if(place_meeting(obj_player.x - recoilDirX*4, obj_player.y, obj_parent_colidable))
					{
						DebugLog("COLLIDING X");

						
					}else
					{
						obj_player.x -= recoilDirX;
					}
					
					if(place_meeting(obj_player.x , obj_player.y - recoilDirY*4, obj_parent_colidable))
					{
						DebugLog("COLLIDING Y");
						
						
					}else
					{
						obj_player.y -= recoilDirY;
					}
					
					
						
					//PUSH weapon
					var recoilAmount = lerp(other.recoil,0,0.3)
					other.x-= lengthdir_x(recoilAmount,-other.direction);
					other.y-= lengthdir_y(recoilAmount,+other.direction);
					
					//Create shell casing
					repeat(other.number_of_projectiles)
					{
						with(instance_create_depth(x- other.xdir,y-other.ydir,depth+100,obj_particle))
						{
							bullet = true;
							//prevents from staying on ground
							debris = true
		
							sprite_index = spr_shell_casing;
							image_angle = random(360);
							fric =0.8;
		
							//move the particle
							motion_add(other.image_angle - random_range(120,150),random_range(4,9));
							
					
						}
					}
			};
		}
	}
}else
{
	instance_destroy();
}

dontRecoil = false;