
switch (state)
{
	case PLAYERSTATE.FREE: PlayerMovement(movement_speed); break;
}


DebugLog(beingAttacked);

if(beingAttacked)
{
	playerHealth -= 1;
}


