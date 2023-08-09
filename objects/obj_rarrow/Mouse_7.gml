image_index=0
if(room==record_room){
	with(obj_show_record){
		//기록 페이지 넘기기
		if(other.y>200 and currentPage < page){
			audio_play_sound(sd_button,0,false)
			currentPage++;
		//모드 페이지 넘기기
		} else if(other.y<=200) {
			audio_play_sound(sd_button,0,false)
			if(mode==3)
				mode=0
			else
				mode++;
			alarm[0]=1
		}
	}
} else if(room==practice_room){
	audio_play_sound(sd_button,0,false)
	with(obj_practice_manager){
		if(currentPage==maxPage)
			currentPage=0
		else
			currentPage++;
	}
}