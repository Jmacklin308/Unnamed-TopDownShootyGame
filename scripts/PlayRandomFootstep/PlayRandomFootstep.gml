function PlayRandomFootstep(){
	
 var randSoundArray = [
 	snd_Light__Concrete_footsteps_1,
 	snd_Light__Concrete_footsteps_2,
 	snd_Light__Concrete_footsteps_3,
 	snd_Light__Concrete_footsteps_4,
 	snd_Light__Concrete_footsteps_5,
 	];
	
	var _index  = random(array_length(randSoundArray));

	var _sound = randSoundArray[_index]
	
	//set random pitch
	audio_sound_pitch(_sound,random_range(0.2,0.4));
	audio_sound_gain(_sound, random_range(0.1,0.2),10);
	audio_play_sound(_sound,5,false);
	
}