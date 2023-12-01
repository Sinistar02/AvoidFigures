//장막 펼치기
if(isPressed==false) {
	for(var i=0;i<4;i++) {
		var touchX = device_mouse_x(i)
		var touchY = device_mouse_y(i)
		if(device_mouse_check_button_pressed(i,mb_left) and position_meeting(touchX,touchY,self)){
			touchNum=i
			isPressed=true
			image_index=1+2*(global.language-1)
			break;
		}
	}
//장막 해제
} else {
	if(device_mouse_check_button_released(touchNum,mb_left)){
		touchNum=-1
		isPressed=false
		image_index=0+2*(global.language-1)
	}
}