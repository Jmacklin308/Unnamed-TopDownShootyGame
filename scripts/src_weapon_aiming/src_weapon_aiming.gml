function src_weapon_aiming(_turnSpeed){
	var _angle_to_mouse = point_direction(x,y,mouse_x,mouse_y);

	direction = angle_approach(direction,_angle_to_mouse, _turnSpeed);

	//set sprite angle
	image_angle = direction;

	//flip weapon if pointing left and right
	if (direction > 90 and direction < 270) image_yscale = -1; else image_yscale = 1;

}