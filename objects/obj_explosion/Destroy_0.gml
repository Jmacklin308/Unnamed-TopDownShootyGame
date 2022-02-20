obj_camera.shakeValue = 3;

//blood spurt
repeat(30)
{
	with(instance_create_depth(x,y,depth-1,obj_particle))
	{
		
		//prevents from staying on ground
		debris = false;
		
		sprite_index = spr_particle_blood;
		image_angle = random(360);
		fric = random_range(0.3,0.9);

		//move the particle
		//motion_add(random_range(difAngle-45,difAngle+45), random_range(4,9));
		
		motion_add(random(360), random_range(4,9));
		
	}
}


//blood fall
repeat(30)
{
	with(instance_create_depth(x,y,depth+500,obj_particle))
	{
		//keep on ground
		debris = true;
		
		sprite_index = spr_debris_blood;	
		image_index = random(image_number-1);
		image_speed = 0;
		
		var randFric = random_range(0.3,1.5);
		fric = randFric; // lower number - more drag. Higher - more distance
				
		
		
		motion_add( random(360), random_range(4,9));

	}
}


