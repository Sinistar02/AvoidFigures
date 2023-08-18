if(global.debug==true){
	if(keyboard_check(vk_f10))
		game_set_speed(240,gamespeed_fps)
	else if(keyboard_check(vk_f11))
		game_set_speed(5,gamespeed_fps)
	else
		game_set_speed(60,gamespeed_fps)
	
	if(keyboard_check_pressed(vk_f5))
		game_restart()
}