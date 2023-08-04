if(y==soundY){
	audio_play_sound(sd_buzz,10,false)
	if(room==game_over){
		instance_create_depth(512,320,0,obj_retry)
		instance_create_depth(448,416,0,obj_end)
		instance_create_depth(672,416,0,obj_save_record_button)
	} else if(room==game_30s_survived){
		instance_create_depth(496,336,0,obj_retry)
		instance_create_depth(432,432,0,obj_end)
		instance_create_depth(656,432,0,obj_save_record_button)
	}
}
instance_destroy(self)