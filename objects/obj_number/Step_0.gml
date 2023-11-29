if(room==machievement_room){
	var progressPercent = floor(obj_progress_bar.progressPercent*100)
	switch(x){
		case 384:
		image_index=digitMap(100,progressPercent)
		break;
		case 416:
		image_index=digitMap(10,progressPercent)
		break;
		case 448:
		image_index=digitMap(1,progressPercent)
		break;
	}
}