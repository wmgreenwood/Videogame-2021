function NewTextBox(stringText){
	var _obj = oText;
	with (instance_create_layer(0, 0, "Instances", _obj)){
		textMessage = stringText;
		if (instance_exists(other)) originInstance = other.id else originInstance = noone;
	}
}