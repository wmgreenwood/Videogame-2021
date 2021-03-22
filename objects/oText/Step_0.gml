textProg += textSpeed;

if(keyboard_check_pressed(vk_space)){
	var _messageLength = string_length(textMessage);
	
	if(textProg >= _messageLength){
		textSpeed = 0.3;
		rate = 1000;
		instance_destroy();
	}else{
		if(textProg > 2){
			textSpeed = 1.5;
			rate = 50;
		}
	}
}