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

//for alarm - damage system
playerDamageTaken = 0;

//for damage recieved
beingAttacked = false;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();


//states
enum PLAYERSTATE
{
	FREE,
}