stickTouchX=device_mouse_x(touchNum)
stickTouchY=device_mouse_y(touchNum)

if(isCon==true) {
	//손가락 따라가기
	if(point_distance(stickTouchX,stickTouchY,160,928)<65) {
		x=stickTouchX
		y=stickTouchY
	} else {
		var theta=point_direction(stickTouchX,stickTouchY,160,928)
		x = -cos(degtorad(theta)) * 70 +160;
		y = sin(degtorad(theta)) * 70 +928;
	}
	//플레이어 조작
	if(abs(x-160)<32)
		wdir = 0
	else
		wdir = sign(x-160)
	if(abs(y-928)<32)
		hdir = 0
	else
		hdir = sign(y-928)
} else {
	x=160
	y=928
	wdir=0
	hdir=0
}