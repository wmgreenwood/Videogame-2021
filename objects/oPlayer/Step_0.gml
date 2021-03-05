moveLeft = keyboard_check(ord("A"));
moveRight = keyboard_check(ord("D"));
moveJump = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left);

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
x  += hsp

if(place_meeting(x, y+vsp, oWall)){
	while(!place_meeting(x, y+sign(vsp), oWall)){
		y += sign(vsp);	
	}
vsp = 0;
}
y  += vsp