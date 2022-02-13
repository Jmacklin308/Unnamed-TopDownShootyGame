var processingDamage = false;
other.attackCooldown = other.attackCooldown - 1;




if (!processingDamage and (other.attackCooldown < 0))
{
	processingDamage = true;
	//remove health from player
	playerHealth -= other.enemyDamage;
	return;
	
}