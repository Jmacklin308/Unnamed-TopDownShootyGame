/// @function DebugLog(a,b,c) - Concatinates everything passed in
///@param {Any} _a - string to concat

function DebugLog(_a){
	
	if(typeof(_a) == "string")
	{
		show_debug_message(_a);
	}else
	{
		show_debug_message(string(_a));
	}
}