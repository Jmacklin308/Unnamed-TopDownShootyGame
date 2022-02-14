event_inherited();
totalHealth = 40;
randomizedSpeed = random_range(0.1, 0.5);

damage = 10;
attackCooldown = 5;
canAttack = false;

//for pathfinding
enemyPath = path_add()

#region debug
//DEBUGGING set random color
randR = random_range(0,255);
randG = random_range(0,255);
randB = random_range(0,255);

//randomized color
image_blend = make_color_rgb(randR,randG,randB);
#endregion 
