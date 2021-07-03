////Position camera after movment
#macro view view_camera[0]

//set size
camera_set_view_size(view,view_width,view_height);

//set camera on player
if (instance_exists(obj_player))
{
	//center the camera on the player
	var _x = obj_player.x - view_width/2;
	var _y = obj_player.y - view_height/2;
	camera_set_view_pos(view,_x,_y)
}
