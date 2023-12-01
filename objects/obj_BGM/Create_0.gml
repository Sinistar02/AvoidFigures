if(room==mtitle or room==mgame_mode) { //타이틀 화면
	if(!audio_is_playing(sd_title_theme)){
		audio_stop_all()
		audio_play_sound(sd_title_theme,100,true)
	}
} else if(room==mgame_room){	//게임 진행
	audio_stop_all()
	audio_play_sound(sd_button,99,false)
	if(global.gamemode=="30s normal" or global.gamemode=="30s hard")
		audio_play_sound(sd_30sec,100,false)
	else
		alarm[0]=1
} else if(room==mgame_over){ //게임 오버
	audio_stop_all()
	audio_play_sound(sd_game_over,100,true)
} else if(room==m30s_survived) { //30초 생존
	audio_stop_all()
	audio_play_sound(sd_survived,100,true)
} else if(room==machievement_room){
	if(audio_is_playing(sd_title_theme))
		song = sd_title_theme
	else if(audio_is_playing(sd_game_over))
		song = sd_game_over
} else if(room==mpractice_room or room==mgame_practice or room==moptions){ //연습모드, 설정
	if(!audio_is_playing(sd_practice_selection)) {
		audio_stop_all()
		audio_play_sound(sd_practice_selection,100,true)
	}
	audio_play_sound(sd_button,99,false)
} else if(room==mpause){
	pauseVolume = audio_group_get_gain(BGM)
	audio_group_set_gain(BGM,pauseVolume*0.5,0)
}