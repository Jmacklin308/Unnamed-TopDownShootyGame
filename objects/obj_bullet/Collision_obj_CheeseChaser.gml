
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
repeat(5)
{
	with(instance_create_depth(x,y,depth-1,obj_particle))
	{
		
		//prevents from staying on ground
		debris = false
		
		
		sprite_index = spr_particle_blood;
		image_angle = random(360);
		fric = 0.5;
		
		//move the particle
		motion_add(other.image_angle + random_range(-70,70), random_range(-4,-9))
	}
}


//blood fall
repeat(5)
{
	with(instance_create_depth(x,y,depth+500,obj_particle))
	{
		//keep on ground
		debris = true;
		
		sprite_index = spr_debris_blood;	
		image_index = random(image_number-1);
		image_speed = 0;
		fric =0.8 // lower number - more drag
		motion_add(other.image_angle+random_range(-40,40),random_range(-1,-6));
	}
}



instance_destroy();