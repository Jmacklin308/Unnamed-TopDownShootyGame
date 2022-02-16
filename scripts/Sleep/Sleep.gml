function Sleep(_duration){
	var _t = current_time + _duration;
	
	while(current_time < _t){};
}