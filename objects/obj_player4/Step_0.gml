h_input = keyboard_check(ord("D")) - keyboard_check(ord("A")) 
v_input = keyboard_check(ord("S")) - keyboard_check(ord("W")) 


//need direction
dir = point_direction(x,y,h_input,v_input)


//need speed



//need object to collide with



movement_and_collision(dir, movement_speed, obj_parent_colidable)