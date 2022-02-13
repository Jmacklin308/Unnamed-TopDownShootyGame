//move towards player
//get direction to move
//var moveDirection = point_direction(x,y,target.x,target.y);
//movement_and_collision(moveDirection,randomizedSpeed,obj_parent_colidable);

path = path_add();
mp_linear_path(path, target.x,target.y, randomizedSpeed, 1);
path_start(path, randomizedSpeed,path_action_stop, true);



//destroy if health is zero
if(totalHealth <= 0)
{
	instance_destroy();
}