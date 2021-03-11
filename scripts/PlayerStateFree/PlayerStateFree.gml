function PlayerStateFree(){
	
	//Movement and Collision
	
	var move = moveRight - moveLeft;
	hsp = move*walksp;
	vsp += grv;
	if(place_meeting(x, y+1, oWall)) && (moveJump){
		vsp =- jumpHeight;
	}

	if(place_meeting(x+hsp, y, oWall)){
		while(!place_meeting(x+sign(hsp), y, oWall)){
			x += sign(hsp);	
		}
		hsp = 0;
	}
	x  += hsp;

	if(place_meeting(x, y+vsp, oWall)){
		while(!place_meeting(x, y+sign(vsp), oWall)){
			y += sign(vsp);	
		}
		vsp = 0;
	}
	y  += vsp;


	//Animation
	
	if(!place_meeting(x, y+1, oWall)){
		sprite_index = sPlayerRun;
		image_index = 1;
		image_speed = 0;
	}else{
		image_speed = 1;
		if(hsp == 0){
			sprite_index = sPlayerIdle;
		}else{
			sprite_index = sPlayerRun;
		}
	}
	if(hsp != 0) image_xscale = sign(hsp);
}