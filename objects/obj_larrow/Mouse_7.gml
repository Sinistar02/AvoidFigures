image_index=0
with(obj_show_record){
	if(other.y>200 and currentPage > 0){
		audio_play_sound(sd_button,0,false)
		currentPage--;
	} else if(other.y<=200) {
		audio_play_sound(sd_button,0,false)
		if(mode==0)
			mode=2
		else
			mode--;
		alarm[0]=1
	}
}