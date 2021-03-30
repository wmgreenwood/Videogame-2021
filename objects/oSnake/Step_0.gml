createVenomSpeed --;
if(createVenomSpeed == 0){
	instance_create_depth(x, y, 101, oVenom);
	createVenomSpeed = spitSpeed*60;
}