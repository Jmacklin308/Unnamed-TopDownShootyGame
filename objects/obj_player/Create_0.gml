h_input = 0;
v_input = 9;

//globals for player
global.Player_MovingUp = false;
global.Player_MovingDown = false;
global.Player_MovingLeft = false;
global.Player_MovingRight = false;
global.Player_IsMoving = false;

global.playerHealth = 100;

//for alarm - damage system
playerDamageTaken = 0;

//for damage recieved
beingAttacked = false;


//spawn mask
instance_create_layer(x,y,"CollisionMask",obj_playerMask)