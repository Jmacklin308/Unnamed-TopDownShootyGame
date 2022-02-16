if(other.totalHealth != 0)
{
	other.totalHealth -= BulletDamage;
}



repeat(8)
{
	with(instance_create_depth(x,y,depth-1,obj_particle))
	{
		sprite_index = spr_particle_blood;
		image_angle = random(360);
		fric = 0.8;
		
		//move the particle
		motion_add(other.image_angle + random_range(-70,70), random_range(-4,-9))
	}
}



instance_destroy();