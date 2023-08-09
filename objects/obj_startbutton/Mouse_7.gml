if(keyboard_check(vk_f3)==true)
	global.debug=true

if(room==title_screen or room==how_to_play){
	audio_play_sound(sd_button,0,false)
	room_goto(game_mode)
} else if(room==game_mode){
	if(y<=230){
		if(x<=249){
			global.gamemode="normal"
		} else if(x<=524){
			global.gamemode="hard"
		} else {
			global.gamemode="30s normal"
		}
		room_goto(game_room)
	} else {
		if(x<=249){
			global.gamemode="30s hard"
			room_goto(game_room)
		} else if(x<=524){
			global.gamemode="practice"
			room_goto(practice_room)
		}
	}	
} else if(room==practice_room) {
	room_goto(game_room_for_practice)
}