//게임 내 타이머
if(timerMode==true){
	switch(x){
		case 36:
			image_index=digitMap(10,getTime("minute"))
			break;
		case 52:
			image_index=digitMap(1,getTime("minute"))
			break;
		case 78:
			image_index=digitMap(10,getTime("second"))
			break;
		case 94:
			image_index=digitMap(1,getTime("second"))
			break;
		case 115:
			image_index=digitMap(10,getTime("msecond"))
			break;
		case 124:
			image_index=digitMap(1,getTime("msecond"))
			break;
	}
	if(keyboard_check_pressed(vk_f1)){
		if(image_alpha=0.2)
			image_alpha=0
		else
			image_alpha=0.2
	}
}