if(room==record_room or room==how_to_play){
	room_goto(title_screen)
} else {
	if(instance_exists(obj_credit))
		instance_destroy(obj_credit)
	else if(instance_exists(obj_copyright_screen))
		instance_destroy(obj_copyright_screen)
	audio_play_sound(sd_button,0,false)
	instance_destroy(self)
}