if(timer==0){
	if(global.gamemode=="30s normal")
		room_goto(game_30s_survived)
	else
		obj_player.hp=0
} else if(obj_player.hp>0){
	timer--;
	global.survivedTime++;
	if(timer<=600 and timer mod 60==0)
		audio_play_sound(sd_countdown,99,false)
}