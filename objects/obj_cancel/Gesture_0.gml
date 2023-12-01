if(room==mrecord_room or room==mgame_mode or room==moptions){
	room_goto(mtitle)
	audio_play_sound(sd_button,0,false)
} else if(room==machievement_room or room==mpractice_room or room==moptions){
	room_goto(mtitle)
	audio_play_sound(sd_button,0,false)
} else if(room==mgame_practice) {
	room_goto(mpractice_room)
	audio_play_sound(sd_button,0,false)
} else {
	if(instance_exists(obj_credit))
		instance_destroy(obj_credit)
	else if(instance_exists(obj_copyright_screen))
		instance_destroy(obj_copyright_screen)
	audio_play_sound(sd_button,0,false)
	instance_destroy(self)
}