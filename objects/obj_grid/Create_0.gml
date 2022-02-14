var playerWidth = obj_player.sprite_width;
var playerHeight = obj_player.sprite_height;


var hCells = room_width div playerWidth;
var vCells = room_width div playerHeight;

//create our grid
global.EnemyGrid = mp_grid_create(0,0,hCells,vCells,playerWidth,playerHeight);
global.PlayerGrid = mp_grid_create(0,0,hCells,vCells,playerWidth,playerHeight);


//add obsticles for enemy to avoid
mp_grid_add_instances(global.EnemyGrid,obj_parent_colidable, false)
mp_grid_add_instances(global.EnemyGrid,obj_parent_enemy, true)