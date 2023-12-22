/// @description 재시작
restart++;
image_alpha=1
if(restart==48 and room==game_room){
	if(global.survivedTime>=300){
		global.playCount++;
	}
	room_persistent=false
	room_restart()
} else if(restart==48 and room==game_room_for_practice){
	global.playCount++;
	var file = file_text_open_write("play count.txt")
	file_text_write_real(file,global.playCount)
	file_text_close(file)
	room_goto(practice_room)
}