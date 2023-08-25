///@desc 디버그 및 최종업적 특전 3
if(global.debug==true){
	audio_play_sound(sd_item,0,false)
	if(global.gamemode=="normal" or global.gamemode=="hard")
		obj_timer.timer=99990
	hp=99
}
if(getFinalProgress()==6){
	audio_play_sound(sd_item,0,false)
	if((global.gamemode=="normal" or global.gamemode=="hard") and hp>0){
		hp++;
		obj_timer.timer+=3600
	}
}