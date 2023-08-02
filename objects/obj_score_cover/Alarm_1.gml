if(y==160){
	audio_play_sound(sd_buzz,10,false)
	instance_create_depth(512,320,0,obj_retry)
	instance_create_depth(448,416,0,obj_end)
	instance_create_depth(672,416,0,obj_save_record_button)
}
instance_destroy(self)