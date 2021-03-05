//gets the correct viewport (there is only 1 we are using)
//gets the object we want to follow (the player)
cam = view_camera[0];
followObject = oPlayer;

//just some constants
viewWidthHalf = camera_get_view_width(cam)*0.5;
viewHeightHalf = camera_get_view_height(cam)*0.5;

//this stores the coordinates of the x and y positions the camera needs to move to
//(look in the step event where we get the coordiantes of the player)
goTo = [xstart, ystart];