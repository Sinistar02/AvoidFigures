if(room==title_screen or room==game_mode) { //타이틀 화면
	if(!audio_is_playing(sd_title_theme)){
		audio_stop_all()
		audio_play_sound(sd_title_theme,100,true)
	}
} else if(room==game_room){	//게임 진행
	audio_stop_all()
	audio_play_sound(sd_button,99,false)
	if(global.gamemode=="30s normal" or global.gamemode=="30s hard")
		audio_play_sound(sd_30sec,100,false)
	else
		alarm[0]=1
} else if(room==game_over){ //게임 오버
	audio_stop_all()
	audio_play_sound(sd_game_over,100,true)
} else if(room==game_30s_survived) { //30초 생존
	audio_stop_all()
	audio_play_sound(sd_survived,100,true)
} else if(room==practice_room){ //연습모드, 업적
	if(!audio_is_playing(sd_practice_selection)) {
		audio_stop_all()
		audio_play_sound(sd_practice_selection,100,true)
	}
	audio_play_sound(sd_button,99,false)
} else if(room==game_room_for_practice) { //연습모드 진행
	audio_play_sound(sd_button,99,false)
}