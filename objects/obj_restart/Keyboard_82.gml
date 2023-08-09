/// @description 재시작
restart++;
image_alpha=1
if(restart==48 and room==game_room)
	room_restart()
else if(restart==48 and room==game_room_for_practice)
	room_goto(practice_room)