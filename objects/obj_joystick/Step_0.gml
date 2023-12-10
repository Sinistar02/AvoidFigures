if(isCon==false) {
	x=160
	y=928
	wdir=0
	hdir=0
	//조이스틱을 움직이는 터치 번호 찾기
	for(var i=0;i<4;i++) {
		var touchX = device_mouse_x(i)
		var touchY = device_mouse_y(i)
		if(device_mouse_check_button_pressed(i,mb_left) and isTouchingintheArea(touchX,touchY)){
			x=touchX;
			y=touchY;
			touchNum=i
			//조이스틱 작동 시작
			isCon=true
			break;
		}
	}
} else {
	//조이스틱 오작동 방지 코드
	//이 씨1발것 고치는 데 한 1주일은 머리 싸맸나? 싸맨 시간만 추려내서
	//모바일 포팅 솔직히 그냥 3일 딸깍하고 던질려고 했는데 이 지랄맞은 놈(및 여러 것들) 때문에 1달을 질질 끌었음 ㅅㅂ
	//결국 고치긴 했다. 내가 이겼어! 내가 이겼다고 씨1발
	//몰라 이거보다 더 깔끔한 방법이 있어도 안 쓸거야
	//ㅈ까라지 난 이 게임 질렸어 빨리 다음 거 만들어야 한다고
	var touchCount = 0;
	var istouchingGrazeButton = false;
	for(var i=0;i<4;i++){
		if(device_mouse_check_button(i,mb_left))
			touchCount++;
		if(touchCount>=2)
			break;
	}
	if(position_meeting(device_mouse_x(touchNum),device_mouse_y(touchNum),obj_graze_button))
		istouchingGrazeButton=true;
	if(!device_mouse_check_button(touchNum,mb_left) or touchCount==1 and istouchingGrazeButton==true){
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
} else {
	x=160
	y=928
	wdir=0
	hdir=0
}