if(keyboard_check_pressed(vk_escape)){
	audio_play_sound(sd_button,0,false)
	if(room==game_room){
		audio_group_set_gain(BGM,volume*0.5,0)
		pause(pause_room)
	} else {
		surface_free(pauseSurf)
		audio_group_set_gain(BGM,volume*2,0)
		room_goto(game_room)
	}
}

if(room==pause_room){
	drawPauseScreen();
	draw_sprite_ext(spr_cover,0,0,0,24,16,0,-1,0.6)
	draw_sprite_ext(spr_pause,0,672,384,16,16,0,-1,1)
	draw_set_halign(fa_center)
	draw_set_font(galmoori)
	if(global.language==1)
		draw_text_transformed(797,700,"Q를 눌러 메인화면으로 나갈 수 있습니다\n(플레이 횟수는 올라가지 않습니다!)",2,2,0)
	else if(global.language==2)
		draw_text_transformed(797,700,"Press Q to quit to title\n(Play count won't go up!)",2,2,0)
	draw_set_halign(fa_left)
	if(keyboard_check_pressed(ord("Q"))){
		global.quit=true
		room_goto(game_room)
	}
} else if(global.quit==true) {
	room_persistent=false
	audio_group_set_gain(BGM,volume*2,0)
	global.quit=false
	room_goto(title_screen)
}