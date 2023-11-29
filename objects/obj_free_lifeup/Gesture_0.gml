audio_play_sound(sd_item,0,false)
if((global.gamemode=="normal" or global.gamemode=="hard") and obj_player.hp>0){
	obj_player.hp++;
	obj_timer.timer+=3600
}