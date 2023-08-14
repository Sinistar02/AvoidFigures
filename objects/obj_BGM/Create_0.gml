if(room==title_screen or room==game_mode) {
	if(!audio_is_playing(sd_title_theme)){
		audio_stop_all()
		audio_play_sound(sd_title_theme,100,true)
	}
} else if(room==game_room){
	audio_stop_all()
	audio_play_sound(sd_button,99,false)
	if(global.gamemode=="30s normal" or global.gamemode=="30s hard")
		audio_play_sound(sd_30sec,100,false)
	else
		alarm[0]=1
} else if(room==game_over){
	audio_stop_all()
	audio_play_sound(sd_game_over,100,true)
} else if(room==game_30s_survived) {
	audio_stop_all()
	audio_play_sound(sd_survived,100,true)
} else if(room==practice_room){
	if(!audio_is_playing(sd_practice_selection)) {
		audio_stop_all()
		audio_play_sound(sd_practice_selection,100,true)
	}
	audio_play_sound(sd_button,99,false)
} else if(room==game_room_for_practice) {
	audio_play_sound(sd_button,99,false)
}