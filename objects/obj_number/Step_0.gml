function getTime(m){
	var time=obj_timer.timer/60;
	if(m=="minute")
		return time / 60
	else if(m=="second")
		return time % 60
}

if(room==game_room or room==game_room_for_practice){
	if(y==112){
		switch(x){
			case 688:
				image_index=digitMap(1,global.score)
				break;
			case 656:
				image_index=digitMap(10,global.score)
				break;
			case 624:
				image_index=digitMap(100,global.score)
				break;
			case 592:
				image_index=digitMap(1000,global.score)
				break;
			case 560:
				image_index=digitMap(10000,global.score)
				break;
		}
	} else if(y==336){
		if(obj_timer.timer <= 600){
			image_blend=c_red
		} else {
			image_blend=c_white
		}
		switch(x){
			case 560:
				image_index=digitMap(10,getTime("minute"))
				break;
			case 592:
				image_index=digitMap(1,getTime("minute"))
				break;
			case 656:
				image_index=digitMap(10,getTime("second"))
				break;
			case 688:
				image_index=digitMap(1,getTime("second"))
				break;
		}
	}
} else if(room==game_over or room==game_30s_survived){
	switch(x){
		case 704:
			image_index=digitMap(1,global.score)
			break;
		case 672:
			image_index=digitMap(10,global.score)
			break;
		case 640:
			image_index=digitMap(100,global.score)
			break;
		case 608:
			image_index=digitMap(1000,global.score)
			break;
		case 576:
			image_index=digitMap(10000,global.score)
			break;
		case 544:
			image_index=digitMap(100000,global.score)
			break;
	}
} else if(room==achievement_room){
	var progressPercent = floor(obj_progress_bar.progressPercent*100)
	switch(x){
		case 624:
		image_index=digitMap(100,progressPercent)
		break;
		case 656:
		image_index=digitMap(10,progressPercent)
		break;
		case 688:
		image_index=digitMap(1,progressPercent)
		break;
	}
}