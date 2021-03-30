//gets the coordinates that the camera needs to travel to
//stores the coordinates in goTo
if(instance_exists(followObject)){
	goTo[0] = followObject.x;
	goTo[1] = followObject.y;
}

//gets the diiference between the target coordinates
//divides it by 15 each frame to create smooth camera movement
x += (goTo[0] - x) / 20;
y += (goTo[1] - y) / 20;

//keeps camera from moveing outside of the room
x = clamp(x, viewWidthHalf, room_width-viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height-viewHeightHalf);

//updates camera position
camera_set_view_pos(cam, x-viewWidthHalf, y-viewHeightHalf);