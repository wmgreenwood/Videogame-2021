textProg += textSpeed;

if(keyboard_check_pressed(vk_space)){
	var _messageLength = string_length(textMessage);
	
	if(textProg >= _messageLength){
		textSpeed = 0.5;
		rate = 1000;
		NextRoom();
	}else{
		if(textProg > 2){
			textSpeed = 2;
			rate = 50;
		}
	}
}