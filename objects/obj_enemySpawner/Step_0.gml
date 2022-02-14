//spawn every 5 seconds if not maxed out on enemies
if(wait(2) && !(global.totalEnemiesSpawned >= global.maxEnemies) )
{
	instance = instance_create_layer(x,y,spawnLayer,obj_CheeseChaser);
	instance.image_xscale = .5;
	instance.image_yscale = .5;
	
	global.totalEnemiesSpawned += 1;
}