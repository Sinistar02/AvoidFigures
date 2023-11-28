if(room==mgame_over or room==m30s_survived) {
	randomize()
	room_goto(mtitle)
} else if(room==mpause) {
	obj_pause_display.alarm[0]=1
}