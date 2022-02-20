event_inherited();

/// @description 
//Weapon attributes

damage = 10;
recoil = 4;
recoilPlayerPush = 4;
length_to_barel = 17;
cooldown = 6;
bullet_speed = 15;
cameraShakeAmount = 0.7;
rateOfFire = 6;
number_of_projectiles =1;
weapon_spread = 4 * number_of_projectiles;

//for recoil
_x = x;
curvPos = 0;
curvSpd = 0;

//for player sprite in relation to the weapon angle
global.weapon_right = false;
global.weapon_up_right = false;
global.weapon_up_left = false;
global.weapon_left = false;
global.weapon_down_left = false;
global.weapon_down_right = false;

//for smooth aiming using twerp
weapon_turn_speed = 8;


tempScore = global.playerScore;


//for recoil collision checking
_tempRecoilX = lengthdir_x(recoilPlayerPush,direction);
_tempRecoilY = lengthdir_y(recoilPlayerPush,direction);


