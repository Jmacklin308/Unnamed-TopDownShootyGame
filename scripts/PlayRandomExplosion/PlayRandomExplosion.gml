function PlayRandomExplosion(){
	
 var randSoundArray = [
	snd_Explosion_Flesh_1,
	snd_Explosion_Flesh_2,
	snd_Explosion_Flesh_3,
	snd_Explosion_Flesh_4,
	snd_Explosion_Flesh_5,
	snd_Explosion_Flesh_6,
 	];
	
	var _index  = random(array_length(randSoundArray));

	var _sound = randSoundArray[_index]
	
	//set random pitch
	audio_sound_pitch(_sound,random_range(0.8,1.2));
	audio_sound_gain(_sound,random_range(0.5,0.7),0.5);
	audio_play_sound(_sound,random_range(10,25),false);
	
}