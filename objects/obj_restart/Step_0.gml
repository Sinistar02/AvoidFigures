if(global.afterPause==1) {
	global.afterPause=0
	room_persistent=false
	room_goto(mlimbo)
	show_debug_message("sent to limbo")
} else if (global.afterPause==2){
	global.afterPause=0
	room_persistent=false
	room_goto(mtitle)
	show_debug_message("exited")
}