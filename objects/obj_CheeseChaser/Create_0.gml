event_inherited();
totalHealth = random_range(10,25);
randomizedSpeed = random_range(0.1, 0.5);

//attacking
damage = 10;
damageForce = 20;
attackCooldown = 5;
canAttack = false;

//for pathfinding
enemyPath = path_add()
target = obj_player;


#region debug
//DEBUGGING set random color
randR = random_range(0,255);
randG = random_range(0,255);
randB = random_range(0,255);

//flash when damages (Dont set)
flash = 0; //frames

//randomized color
image_blend = make_color_rgb(randR,randG,randB);






#endregion 
