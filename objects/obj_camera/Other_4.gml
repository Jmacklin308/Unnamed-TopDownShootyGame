//turn on views
view_enabled = true;

//set view enabled
view_visible[0]=true;



if(surface_exists(debrisSurf))
{
	surface_free(debrisSurf)
	debrisSurf = surface_create(room_width,room_height);
}

