//draw particles
repeat(6)
{
	with(instance_create_depth(x,y,depth-1,obj_particle))
	{
		
		//prevents from staying on ground
		debris = false
		
		sprite_index = spr_particle_wall;
		image_angle = random(360);
		fric = 0.8;
		
		//move the particle
		motion_add(other.image_angle + random_range(-70,70), random_range(-4,-9))
	}
}

//spark
repeat(5)
{
	with(instance_create_depth(x,y,depth-1,obj_particle))
	{
		//prevents from staying on ground
		debris = false
		
		sprite_index = spr_spark;
		fric = 0.9;
		motion_add(other.image_angle+random_range(-90,90), random_range(-4,-6))
		image_angle = direction;
	}
}

var randsound = round(random_range(1,5));

DebugLog(randsound);
switch (randsound) {
    case 1:
        audio_play_sound(snd_punch1,5,0);
        break;
	case 2:
		audio_play_sound(snd_punch2,5,0);
		break;
	case 3:
		audio_play_sound(snd_punch3,5,0);
		break;
	case 4:
		audio_play_sound(snd_punch4,5,0);
		break;
	case 5:
		audio_play_sound(snd_punch5,5,0);
		break;
    default:
        // code here
        break;
}


instance_destroy();
