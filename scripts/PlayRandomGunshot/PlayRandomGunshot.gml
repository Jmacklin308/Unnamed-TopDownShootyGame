function PlayRandomGunshot(){
	
 var randSoundArray = [
	snd_Pistol_Single_Shot,
	snd_Pistol_Single_Shot_2
 	];
	
	var _index  = random(array_length(randSoundArray));

	var _sound = randSoundArray[_index]
	
	//set random pitch
	audio_sound_pitch(_sound,random_range(0.9,1.1));
	audio_sound_gain(_sound, random_range(0.5,0.7),0);
	audio_play_sound(_sound,9,false);
	
}