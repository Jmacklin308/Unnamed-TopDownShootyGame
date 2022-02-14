var healthvalues = "total health: " + string(global.playerHealth) + "/" + string(startingHealth);
draw_text_color(0,0,healthvalues,c_white,c_white,c_white,c_white,1);

var enemiesSpawned = "total enemies: " + string(global.totalEnemiesSpawned) + "/" + string(global.maxEnemies);
draw_text_color(0,20,enemiesSpawned,c_white,c_white,c_white,c_white,1);

var s_score = "PlayerScore: " + string(global.playerScore);
draw_text_color(0,40,s_score,c_white,c_white,c_white,c_white,1);
