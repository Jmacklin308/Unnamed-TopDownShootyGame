//spawn every 5 seconds if not maxed out on enemies
if(wait(global.enemySpawnRate + random(5)) && !(global.totalEnemiesSpawned >= global.maxEnemies) && global.gameStarted)
{
	instance = instance_create_layer(x,y,spawnLayer,obj_CheeseChaser);
	instance.image_xscale = .5;
	instance.image_yscale = .5;
	instance.depth = 4;
	
	global.totalEnemiesSpawned += 1;
}