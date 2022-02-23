global.gameStarted = true;

//create explosion
repeat(10)
{
	instance_create_depth(x,y,depth-100,obj_explosion)
	PlayRandomExplosion();
}

instance_destroy();