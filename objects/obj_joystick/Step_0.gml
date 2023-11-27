//조이스틱을 움직이는 터치 번호 찾기
if(isCon==false) {
	x=160
	y=928
	wdir=0
	hdir=0
	for(var i=0;i<4;i++) {
		var touchX = device_mouse_x(i)
		var touchY = device_mouse_y(i)
		if(device_mouse_check_button_pressed(i,mb_left) and isTouchingintheArea(touchX,touchY)){
			x=touchX;
			y=touchY;
			touchNum=i
			isCon=true
			break;
		}
	}
} else {
	if(device_mouse_check_button_released(touchNum,mb_left)){
		touchNum=-1
		isCon=false
	}
}

//조작
stickTouchX=device_mouse_x(touchNum)
stickTouchY=device_mouse_y(touchNum)
if(isCon==true) {
	//손가락 따라가기
	dir = point_direction(160,928,stickTouchX,stickTouchY)
	wdir = cos(degtorad(dir))
	hdir = -sin(degtorad(dir))
	if(point_distance(stickTouchX,stickTouchY,160,928)<65) {
		x = stickTouchX
		y = stickTouchY
	} else {
		x = wdir * 70 +160;
		y = hdir * 70 +928;
	}
	//플레이어 조작
	/*
	if(abs(x-160)<22)
		wdir = 0
	else
		wdir = sign(x-160)
	if(abs(y-928)<22)
		hdir = 0
	else
		hdir = sign(y-928)
	*/
} else {
	x=160
	y=928
	wdir=0
	hdir=0
}