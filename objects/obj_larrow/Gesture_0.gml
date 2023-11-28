image_index=0

if(room==mgame_mode){
	audio_play_sound(sd_button,0,false)
	with(obj_mode_description){
		if(selectMode==0)
			selectMode=4;
		else
			selectMode--;
	}
} else if(room==mrecord_room){
	with(obj_show_record){
		//기록 페이지 넘기기
		if(other.y>900 and currentPage > 0){
			audio_play_sound(sd_button,0,false)
			currentPage--;
		//모드 페이지 넘기기
		} else if(other.y<=900) {
			audio_play_sound(sd_button,0,false)
			if(mode==0)
				mode=3
			else
				mode--;
			alarm[0]=1
		}
	}
}
/*else if(room==practice_room){
	audio_play_sound(sd_button,0,false)
	with(obj_practice_manager){
		if(currentPage==0)
			currentPage=maxPage
		else
			currentPage--;
	}
} else if(room==achievement_room){
	with(obj_achievement_manager){
		if(currentPage > 0){
			audio_play_sound(sd_button,0,false)
			currentPage--;
		}
	}
}
*/