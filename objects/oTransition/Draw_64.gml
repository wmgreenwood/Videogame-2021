if(mode != TRANS_MODE.OFF){
	draw_set_color(c_black);
	if(percent > 0.005){
		if(mode == TRANS_MODE.INTRO){
			draw_rectangle(0, 0, guiw, percent*guih, false);
		}else{
			draw_rectangle(0, 0, percent*guiw, guih, false);
		}
	}
}