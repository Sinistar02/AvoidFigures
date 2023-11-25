if(isCon==false) {
	if(obj_graze_button.isPressed==true) {
		touchNum=1
	} else {
		touchNum=0
	}
}

if(device_mouse_check_button_released(touchNum,mb_left)){
	x=160
	y=928
	wdir=0
	hdir=0
	isCon=false
}
/*
if(device_mouse_check_button(1,mb_left)==true){
	
}
*/