//move towards player
//path = path_add();
//mp_linear_path(path, target.x,target.y, randomizedSpeed, 1);
//path_start(path, randomizedSpeed,path_action_stop, true);

var prevX = x;

var pathBool = mp_grid_path(global.EnemyGrid,enemyPath,x,y,obj_player.x,obj_player.y,true);
//pathfinding
if(pathBool)
{
	path_start(enemyPath,randomizedSpeed, path_action_continue,false);
}; 


//var pointDir = point_direction(x,y,obj_player.x,obj_player.y);
//movement_and_collision(pointDir,randomizedSpeed,obj_parent_colidable);

if(place_meeting(x+sprite_width, y+sprite_width,obj_CheeseChaser))
{
	speed = 0;
}


//destroy if health is zero
if(totalHealth <= 0)
{
	instance_destroy();
}

if(canAttack)
{
	//play once
	global.playerHealth -= damage;
	
	//play again after the cooldown
	if(wait(attackCooldown))
	{
		global.playerHealth -= damage;
	}
}

canAttack = false;

