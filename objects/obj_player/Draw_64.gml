var healthvalues = "total health: " + string(global.playerHealth) + "/" + string(startingHealth);
draw_text_color(0,20,healthvalues,c_white,c_white,c_white,c_white,1);

var enemiesSpawned = "total enemies: " + string(global.totalEnemiesSpawned) + "/" + string(global.maxEnemies);
draw_text_color(0,40,enemiesSpawned,c_white,c_white,c_white,c_white,1);

var s_score = "PlayerScore: " + string(global.playerScore);
draw_text_color(0,60,s_score,c_white,c_white,c_white,c_white,1);


var bullet_instances = "Bullet instances: " + string(instance_number(obj_bullet));
draw_text_color(0,80,bullet_instances,c_white,c_white,c_white,c_white,1);



draw_text_color(0,100,"gameOver: " + string(global.gameOver),c_white,c_white,c_white,c_white,1);
draw_text_color(0,120,"playerAnim: " + string(global.playerDeathAnimDone),c_white,c_white,c_white,c_white,1);
