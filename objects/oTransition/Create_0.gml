guiw = display_get_gui_width();
guih = display_get_gui_height();

//enumerater that has the 5 possible modes we will use when we need a trasistion
//going to: next room, a specific room, restarting the game, or starting the game
enum TRANS_MODE{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO,
}

mode = TRANS_MODE.INTRO;
percent = 1;
targetRoom = room;
targetShoot = 1.1;