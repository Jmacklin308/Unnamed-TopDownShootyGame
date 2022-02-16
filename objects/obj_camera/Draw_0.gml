if(surface_exists(debrisSurf))
{
	draw_surface(debrisSurf,0,0)
}else
{
	debrisSurf = surface_create(room_width,room_height);
}