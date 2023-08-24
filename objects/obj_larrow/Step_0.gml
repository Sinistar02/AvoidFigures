if(room==record_room){
	with(obj_show_record){
		if(other.y>200 and currentPage <= 0){
			other.image_alpha=0.4
		} else {
			other.image_alpha=1
		}
	}
} else if(room==achievement_room){
	with(obj_achievement_manager){
		if(currentPage <= 0){
			other.image_alpha=0.4
		} else {
			other.image_alpha=1
		}
	}
}