event_inherited();
//for moving
h_input = 0;
v_input = 0;

//globals for player
global.Player_MovingUp = false;
global.Player_MovingDown = false;
global.Player_MovingLeft = false;
global.Player_MovingRight = false;
global.Player_IsMoving = false;

//player variables
startingHealth = 100
global.playerHealth = startingHealth;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

//states
enum PLAYERSTATE
{
	FREE,
}


//damage
invulnerable = 0; //timer for damage
flash = 0
knockBackDistance = 0;


