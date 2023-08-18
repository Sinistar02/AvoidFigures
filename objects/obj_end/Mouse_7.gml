if(!instance_exists(obj_copyright_screen) and !instance_exists(obj_credit)) {
	global.debug=false
	randomize()
	room_goto(title_screen)
}