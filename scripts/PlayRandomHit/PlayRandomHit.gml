function PlayRandomHit(){
	
 var randSoundArray = [
	snd_punch1,
	snd_punch2,
	snd_punch3,
	snd_punch4,
	snd_punch5
 	];
	
	var _index  = random(array_length(randSoundArray));

	var _sound = randSoundArray[_index]
	
	//set random pitch
	audio_sound_pitch(_sound,random_range(0.8,1.2));
	audio_sound_gain(_sound,random_range(0.4,0.7),0.5);
	audio_play_sound(_sound,random_range(10,25),false);
	
}