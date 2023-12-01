if(room==mpause) {
	global.afterPause=2
	audio_group_set_gain(BGM,obj_BGM.pauseVolume,0)
	randomize()
	room_goto(mgame_room)
}