if(room==title_screen) {
	if(!audio_is_playing(sd_title_theme))
		audio_play_sound(sd_title_theme,100,true)
} else if(room==game_room){
	audio_stop_all()
	audio_play_sound(sd_button,99,false)
	if(global.gamemode=="30s normal")
		audio_play_sound(sd_30sec,100,false)
	else
		alarm[0]=1
} else if(room==game_over){
	audio_stop_all()
	audio_play_sound(sd_game_over,100,true)
}