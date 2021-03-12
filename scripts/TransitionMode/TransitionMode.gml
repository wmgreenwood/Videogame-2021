function TransitionMode(_mode, _targetRoom){
	with(oTransition){
		mode = _mode;
		if(_targetRoom != -1) targetRoom = _targetRoom;
	}
}