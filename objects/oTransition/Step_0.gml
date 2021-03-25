if(mode != TRANS_MODE.OFF){
	if(mode = TRANS_MODE.INTRO){
		percent = max(0, percent * 0.905);
	}else{
		percent = min(targetShoot, percent + max(((targetShoot - percent)/20), 0.005));
	}
	//Switch to correct trans mode
	if(percent <= 0) || (percent >= 1){
		switch(mode){
			case TRANS_MODE.INTRO:{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:{
				mode = TRANS_MODE.INTRO;
				NextRoom();
				break;
			}
			case TRANS_MODE.GOTO:{
				mode = TRANS_MODE.INTRO;
				room_goto(targetRoom);
				PlayerSetCoordiantes();
				break;
			}
			case TRANS_MODE.RESTART:{
				game_restart();
				break;
			}
		}
	}
}