//draw particles
if(BulletCollisionLimit > 0)
{ 
	BulletCollisionLimit -= 1;
	
	move_bounce_solid(true);
	image_angle = direction;
	
}else
{
	DebugLog("DESTROY");
	instance_destroy();
}

//smoke
repeat(6)
{
	with(instance_create_depth(x,y,depth-1,obj_particle))
	{
		//prevents from staying on ground
		debris = false;
		
		sprite_index = spr_particle_wall;
		image_angle = random(360);
		fric = 0.8;
		
		//move the particle
		motion_add(other.image_angle + random_range(-70,70), random_range(-4,-9));
	}
}

//spark
repeat(5)
{
	with(instance_create_depth(x,y,depth-1,obj_particle))
	{
		//prevents from staying on ground
		debris = false;
		sprite_index = spr_spark;
		fric = 0.9;
		motion_add(other.direction+random_range(-90,90), random_range(-4,-6));
		image_angle = direction;
	}
}


PlayRandomHit();
