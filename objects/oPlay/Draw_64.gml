if(drawHome){
	if(point_in_rectangle(mouse_x*2, mouse_y*2, play_x1, play_y1, play_x2, play_y2)){
		NineSliceBox(sBox, play_x1, play_y1, play_x2, play_y2, 1);
		if(mouse_check_button_pressed(mb_left)){
			TransitionMode(TRANS_MODE.NEXT, -1);
			drawHome = false;
		}
	}else{
		NineSliceBox(sBox, play_x1, play_y1, play_x2, play_y2, 0);
	}

	DrawSetText(fa_center, fa_middle, fBigText, c_black, RESOLUTION_W/2, (play_y1+play_y2)/2, "PLAY");
	DrawSetText(fa_center, fa_middle, fBigText, c_white, RESOLUTION_W/2, ((play_y1+play_y2)/2)+3, "PLAY");
}