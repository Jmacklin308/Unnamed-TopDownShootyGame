speed *= fric;



switch(debris)
{
	case false:
		if(image_index >= image_number-1)
		{
			instance_destroy();
		}
		break;
		
	case true:
		if(bullet && speed < 0.5 && speed > 0.3)
		{
			PlayRandomCaseImpact();
		}
	
	
		if(speed <= 0)
		{
			
			surface_set_target(obj_surface.debrisSurf);
			draw_self();
			surface_reset_target();
			instance_destroy();
		}
		break;
	break;
}



