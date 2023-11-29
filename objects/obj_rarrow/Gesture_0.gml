if(room==mgame_mode){
	audio_play_sound(sd_button,0,false)
	with(obj_mode_description){
		if(selectMode==4)
			selectMode=0;
		else
			selectMode++;
	}
} else if(room==mrecord_room){
	with(obj_show_record){
		//기록 페이지 넘기기
		if(other.y>900 and currentPage < page){
			audio_play_sound(sd_button,0,false)
			currentPage++;
		//모드 페이지 넘기기
		} else if(other.y<=900) {
			audio_play_sound(sd_button,0,false)
			if(mode==3)
				mode=0
			else
				mode++;
			alarm[0]=1
		}
	}
} else if(room==machievement_room){
	with(obj_achievement_manager){
		if(currentPage < maxPage){
			audio_play_sound(sd_button,0,false)
			currentPage++;
		}
	}
} else if(room==mpractice_room){
	audio_play_sound(sd_button,0,false)
	with(obj_practice_manager){
		if(currentPage==maxPage)
			currentPage=0
		else
			currentPage++;
	}
}