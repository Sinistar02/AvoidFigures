audio_play_sound(sd_button,0,false)
if(room==mgame_over or room==m30s_survived) {
	randomize()
	room_persistent=false
	room_goto(mtitle)
} else if(room==mpause) {
	obj_pause_display.alarm[0]=1
}