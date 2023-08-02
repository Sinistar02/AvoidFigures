image_index=0
with(obj_show_record){
	if(other.y>200 and currentPage < page){
		audio_play_sound(sd_button,0,false)
		currentPage++;
	} else if(other.y<=200) {
		audio_play_sound(sd_button,0,false)
		if(mode==2)
			mode=0
		else
			mode++;
		alarm[0]=1
	}
}