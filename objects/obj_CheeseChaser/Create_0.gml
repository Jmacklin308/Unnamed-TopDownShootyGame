event_inherited();

totalHealth = 40;

randomizedSpeed = random_range(0.1, 0.5);

//damage delt to player
damage = 10;

//in seconds
attackCooldown = 5;


//for attacking
canAttack = false;


//for pathfinding
enemyPath = path_add()


//DEBUGGING set random color
randR = random_range(0,255);
randG = random_range(0,255);
randB = random_range(0,255);

image_blend = make_color_rgb(randR,randG,randB);