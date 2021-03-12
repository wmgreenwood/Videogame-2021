moveLeft = keyboard_check(ord("A"));
moveRight = keyboard_check(ord("D"));
moveJump = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left);


//State machine
script_execute(state);

//Kill barier: currently broken; broke when trasistions were applied
//if(y > room_height) room_restart();