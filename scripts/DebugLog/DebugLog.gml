function DebugLog(whatever){
	
	if(typeof(whatever) == "string")
	{
		show_debug_message(whatever)
	}else
	{
		show_debug_message(string(whatever))
	}
}