
if(!global.gameOver)
{
	var pathBool = mp_grid_path(global.EnemyGrid,enemyPath,x,y,target.x,target.y,true);
	//pathfinding
	if(pathBool)
	{
		path_start(enemyPath,randomizedSpeed, path_action_continue,false);
	}; 

	//destroy if health is zero
	if(totalHealth <= 0)
	{
		
		if(canExplode)
		{
			instance_create_depth(x,y,depth-100,obj_explosion)
			PlayRandomExplosion();
			
		}
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

}else
{
	path_speed = 0
}


