function PlayRandomCaseImpact(){
	
 var randSoundArray = [
	snd_Pistol_Shell_Dropping_On_Cement__1_,
	snd_Pistol_Shell_Dropping_On_Cement__2_,
	snd_Pistol_Shell_Dropping_On_Cement__3_,
	snd_Pistol_Shell_Dropping_On_Cement__4_,
	snd_Pistol_Shell_Dropping_On_Cement__5_
 	];
	
	var _index  = random(array_length(randSoundArray));

	var _sound = randSoundArray[_index]
	
	//set random pitch
	audio_play_sound(_sound,3,false);
	audio_sound_gain(_sound,random_range(0.01,0.014),1);
}