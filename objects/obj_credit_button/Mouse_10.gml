if(!instance_exists(obj_copyright_screen) and !instance_exists(obj_credit)) {
	obj_button_indicator.whichButton="credit"
	audio_play_sound(sd_button_hover,0,false)
}