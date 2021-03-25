function NextRoom(){
	if(room == rmHome){
		room_goto(rmExpo1);
		
	}else if(room == rmExpo1){
		room_goto(rmLevel1);
		
	}else if(room == rmLevel1){
		room_goto(rmExpo2);
		instance_destroy(oPlayer);
		
	}else if(room == rmExpo2){
		room_goto(rmLevel2);
		
	}else if(room == rmLevel2){
		instance_destroy(oPlayer);
		room_goto(rmExpo3);
		
	}else if(room == rmExpo3){
		room_goto(rmLevel3);
		
	}else if(room == rmLevel3){
		instance_destroy(oPlayer);
		room_goto(rmExpoWin);
		
	}else if(room == rmExpoWin){
		room_goto(rmHome);
	}
}