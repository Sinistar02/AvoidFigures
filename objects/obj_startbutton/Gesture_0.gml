if(room==mtitle){
	if(!instance_exists(obj_copyright_screen) and !instance_exists(obj_credit)) {
		audio_play_sound(sd_button,0,false)
		room_goto(mgame_mode)
	}
} else if(room==mgame_mode){
	room_set_persistent(mgame_room,true)
	global.playCount++;
	switch(obj_mode_description.selectMode) {
		case 0:
			global.gamemode="normal"
			room_goto(mgame_room)
			break;
		case 1:
			global.gamemode="hard"
			room_goto(mgame_room)
			break;
		case 2:
			global.gamemode="30s normal"
			room_goto(mgame_room)
			break;
		case 3:
			global.gamemode="30s hard"
			room_goto(mgame_room)
			break;
		case 4:
			global.gamemode="practice"
			room_goto(mpractice_room)
			break;
	}
} else if(room==mpractice_room) {
	global.playCount++;
	room_goto(mgame_practice)
}