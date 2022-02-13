//attack once on collidion
if(wait(attackCooldown))
{
	global.playerHealth -= damage;
}else
{
	global.playerHealth -= 1;
}
