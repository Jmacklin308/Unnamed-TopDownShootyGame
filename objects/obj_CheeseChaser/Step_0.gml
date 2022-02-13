//move towards player
path = path_add();
mp_linear_path(path, target.x,target.y, randomizedSpeed, 1);
path_start(path, randomizedSpeed,path_action_stop, true);


DebugLog(canAttack);

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

