e_hsp = e_walksp * e_direction;

if(place_meeting(x+e_hsp, y, oWall)){
	while(!place_meeting(x+sign(e_hsp), y, oWall)){
		x += sign(e_hsp);	
	}
	e_direction *= -1;
}
x  += e_hsp;