// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HitEnemy(bad1, bad2, bad3, bad4){
	if(place_meeting(x, y, bad1)) || (place_meeting(x, y, bad2)) || (place_meeting(x, y, bad3)) || (place_meeting(x, y, bad4)){
		PlayerSetCoordiantes();
	}
}
