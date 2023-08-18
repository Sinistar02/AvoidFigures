if(!instance_exists(obj_copyright_screen) and !instance_exists(obj_credit)) {
	audio_play_sound(sd_button,0,false)
	room_goto(record_room)
}