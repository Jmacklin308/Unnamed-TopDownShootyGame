switch (state)
{
	case PLAYERSTATE.FREE: PlayerMovement(movement_speed); break;
	case PLAYERSTATE.DEATH: PlayerDeath(); break;
}


if(!global.gamePaused)
{
	invulnerable = max(invulnerable-1,0);
	flash = max(flash-0.05,0);
}


//game over

if(global.playerHealth <= 0) state = PLAYERSTATE.DEATH;
if(global.playerDeathAnimDone) instance_destroy();