if(!instance_exists(obj_copyright_screen) and !instance_exists(obj_credit)) {
	instance_create_depth(0,0,0,obj_lang_selection)
	audio_play_sound(sd_button_hover,0,false)
}