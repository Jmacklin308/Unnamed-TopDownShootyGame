global.totalEnemiesSpawned -= 1;

//add to players score
global.playerScore += 1;

//shake the screen on death
obj_camera.shakeValue = 1;

//freeze the game a little
Sleep(30);