switch (state)
{
	case PLAYERSTATE.FREE: PlayerMovement(movement_speed); break;
	case PLAYERSTATE.DEATH: PlayerDeath(); break;
	case PLAYERSTATE.FREEZE: PlayerMovement(0) break;
}


if(!global.gamePaused)
{
	state = PLAYERSTATE.FREE;
	
	invulnerable = max(invulnerable-1,0);
	flash = max(flash-0.05,0);
}else
{
	state = PLAYERSTATE.FREEZE;
}

//game over
if(global.playerHealth <= 0) state = PLAYERSTATE.DEATH;
if(global.playerDeathAnimDone) instance_destroy();

