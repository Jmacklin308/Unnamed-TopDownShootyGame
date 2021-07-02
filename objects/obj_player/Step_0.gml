



keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyUp = keyboard_check(ord("W"))
keyDown = keyboard_check(ord("S"))





input_direction = point_direction(0,0,keyRight - keyLeft, keyDown - keyUp);
movement_and_collision(input_direction, movement_speed, obj_parent_colidable)
show_debug_message(string(input_direction))