if(!instance_exists(obj_copyright_screen) and !instance_exists(obj_credit)) {
	if(x==672){
		obj_button_indicator.whichButton="bgm"//BGM
		audio_play_sound(sd_button_hover,0,false)
	} else if(x==720){
		obj_button_indicator.whichButton="sfx"//SFX
		audio_play_sound(sd_button_hover,0,false)
	}
}