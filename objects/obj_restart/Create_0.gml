if(room==mlimbo) {
	room_goto(mgame_room)
	show_debug_message("restarted")
	instance_destroy(self)
}