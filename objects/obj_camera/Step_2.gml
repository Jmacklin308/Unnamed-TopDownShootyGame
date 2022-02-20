////Position camera after movment
#macro VIEW view_camera[0]

var zoom = 0.9;


camera_set_view_size(VIEW,view_width*zoom ,view_height*zoom);


//set camera on player
if (instance_exists(obj_player))
{
	//camera variables
	var _cam_range = 2;
	
	//keep camera in room
	var _cam_max_x = room_width - view_width;
	var _cam_max_y = room_height - view_height;
	
	//center the camera on the player
	var _x = clamp((obj_player.x + ((mouse_x - obj_player.x) / _cam_range)) - camera_get_view_width(VIEW) / 2, 0, _cam_max_x);
	var _y = clamp((obj_player.y + ((mouse_y - obj_player.y) / _cam_range)) - camera_get_view_height(VIEW) / 2, 0, _cam_max_y);
	
	//get view current position
	var _cur_x = camera_get_view_x(VIEW);
	var _cur_y = camera_get_view_y(VIEW);
	
	var _spd = .1; //higher this number, faster it'll move
	var _lerp_x = lerp(_cur_x,_x,_spd);
	var _lerp_y = lerp(_cur_y,_y,_spd);
	
	//apply shake (might need to move this)
	var shake = power(shakeValue, 2) * shake_power;
	_lerp_x += random_range(-shake, shake);
	_lerp_y += random_range(-shake, shake);
	
	
	camera_set_view_pos(VIEW,_lerp_x,_lerp_y);
	
	//reduce shake
	if (shakeValue > 0) shakeValue -= 0.1;
	
}


