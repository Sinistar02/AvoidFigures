if(canRevive==true and obj_player.hp<=0){
	obj_player.hp=3
	obj_timer.timer+=600
	audio_play_sound(sd_revive,99,false)
	instance_destroy(self)
}