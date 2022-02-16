event_inherited();

/// @description 
//Weapon attributes

damage = 10;
recoil = 4;
recoilPlayerPush = 1;
length_to_barel = 17;
cooldown = 4;
bullet_speed = 15;
cameraShakeAmount = 0.6;
ammo_count = 0;
rateOfFire = cooldown;
screen_shake_power = 2;
weapon_spread = 3;
number_of_projectiles = 1;


//for recoil
_x = x;
_imgAngle = image_angle;
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
weapon_turn_speed = 9;