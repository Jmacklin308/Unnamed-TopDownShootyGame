#macro c_myColor 95,47,69


event_inherited();
totalHealth = random_range(10,25);
randomizedSpeed = random_range(0.1, 0.5);
canExplode = Chance(0.20);
flash  = 0;




//attacking
damage = 10;
damageForce = 20;
attackCooldown = 5;
canAttack = false;

//for pathfinding
enemyPath = path_add()
target = obj_player;


#region debug


image_blend = make_color_rgb(c_myColor);

if(canExplode)
{
	image_blend = make_color_rgb(255,0,0);
}





#endregion 
