function HurtPlayer(_direction, _force, _damage)
{
	if(obj_player.invulnerable <= 0)
	{
		global.playerHealth = max(0, global.playerHealth - _damage);
		
		if(global.playerHealth > 0)
		{
			with(obj_player)
			{
				direction = _direction-180;
				obj_camera.cameraShakeAmount = irandom_range(4,8);
				//shove player back
				movement_and_collision(_direction,_force,obj_parent_colidable);
				
				audio_play_sound(snd_wetPunch2,10,0);
				
				
				flash = 0.7;
				invulnerable = 60;
			}
		}
	}else
	{
		//kill the player
	}
}