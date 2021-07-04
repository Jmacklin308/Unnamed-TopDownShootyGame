/// @description 


//Draw weapon on player
x = obj_player.x;
y = obj_player.y-10;




//Aiming
src_weapon_aiming(weapon_turn_speed);

//Animate the player off weapon position
src_animating_player();


//shooting weapon
src_weapon_shooting(damage,recoil,recoil_push,length_to_barel,cooldown,bullet_speed,ammo_count,sprite_used);



