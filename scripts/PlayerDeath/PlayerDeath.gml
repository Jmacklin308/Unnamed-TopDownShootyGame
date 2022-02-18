function PlayerDeath()
{
	var _sequence = sq_PlayerDeath;
	var _layer = "DeathLayer";
	
	//create the layer
	layer_sequence_create(_layer,x,y,_sequence);

}