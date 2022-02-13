function CheeseChaserChase(_targetObject,_curX,_curY, _speed)
{
	
	//if not at the target position - move
	if(_curX != _targetObject.x || _curY != _targetObject.y)
	{
		_curX -= _targetObject.x * (_speed * delta_time);
		_curY -= _targetObject.y * (_speed * delta_time);
	}
}