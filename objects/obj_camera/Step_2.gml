////Position camera after movment
#macro VIEW view_camera[0]

//set size
camera_set_view_size(VIEW,view_width,view_height);


//set camera on player
if (instance_exists(obj_player))
{
	//center the camera on the player
	var _x = clamp((obj_player.x + ((mouse_x - obj_player.x) / 2)) - camera_get_view_width(VIEW) / 2, 0, room_width - view_width);
	var _y = clamp((obj_player.y + ((mouse_y - obj_player.y) / 2)) - camera_get_view_height(VIEW) / 2,0, room_height -view_height);
	camera_set_view_pos(VIEW,_x,_y);
}
