if(room==mrecord_room){
	with(obj_show_record){
		if(other.y>980 and currentPage >= page){
			other.image_alpha=0.4
		} else {
			other.image_alpha=1
		}
	}
} else if(room==machievement_room){
	with(obj_achievement_manager){
		if(currentPage >= maxPage){
			other.image_alpha=0.4
		} else {
			other.image_alpha=1
		}
	}
}