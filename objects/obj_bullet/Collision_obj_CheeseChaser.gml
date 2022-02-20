var prevAngle = image_angle;
var difAngle = 0;

with(other)
{
	if(totalHealth != 0)
	{
		//subtract from enemy health what the bullet delt
		totalHealth -= other.BulletDamage;
		flash = 3;
	}
}


//blood spurt
repeat(10)
{
	with(instance_create_depth(x,y,depth-1,obj_particle))
	{
		
		//prevents from staying on ground
		debris = false;
		
		sprite_index = spr_particle_blood;
		image_angle = random(360);
		fric = random_range(0.3,0.9);
		image_xscale = random_range(1,1.4);
		image_yscale = random_range(1,1.4);
		image_alpha = random_range(0.87,1);
		
		difAngle = angle_difference(other.image_angle,prevAngle);
		
		
		var newAngle = prevAngle + difAngle;
		
		//move the particle
		//motion_add(random_range(difAngle-45,difAngle+45), random_range(4,9));
		
		motion_add(newAngle + random_range(-90,90), random_range(4,9));
		
	}
}


//blood fall
repeat(16)
{
	with(instance_create_depth(x,y,depth+500,obj_particle))
	{
		//keep on ground
		debris = true;
		
		sprite_index = spr_debris_blood;	
		image_index = random(image_number-1);
		image_speed = 0;
		image_xscale = random_range(1,1.4);
		image_yscale = random_range(1,1.4);
		
		
		var randFric = random_range(0.3,0.9);
		fric = randFric; // lower number - more drag. Higher - more distance
				
		difAngle = angle_difference(other.image_angle,prevAngle);
		
		var newAngle = prevAngle + difAngle;
		
		motion_add(newAngle + random_range(-30,30), random_range(4,9));

	}
}


var playerAdjustmentX = obj_player.x + obj_camera.view_width * 0.5;
var playerAdjustmentY = obj_player.y + obj_camera.view_height * 0.5;

if((other.x < playerAdjustmentX || other.x > -playerAdjustmentX) && (other.y < playerAdjustmentY || other.y > -playerAdjustmentY))
{
	
	var randsound = round(random_range(1,3));
	switch (randsound) {
    case 1:
        audio_play_sound(snd_wetPunch1,5,0);
        break;
	case 2:
		audio_play_sound(snd_wetPunch2,5,0);
		break;
	case 3:
		audio_play_sound(snd_wetPunch3,5,0);
		break;
    default:
        break;
	}
}


instance_destroy();