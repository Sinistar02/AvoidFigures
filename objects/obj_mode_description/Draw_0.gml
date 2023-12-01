setDraw(fa_middle,fa_center,galmooriBig)
if(global.language==1) {
	draw_text_transformed(270,90,"모드 선택",2,2,0)
	switch(selectMode) {
		case 0:
			modeName="일반 모드"
			break;
		case 1:
			modeName="하드 모드"
			break;
		case 2:
			modeName="30초 모드"
			break;
		case 3:
			modeName="30초 하드 모드"
			break;
		case 4:
			modeName="연습 모드"
			break;
	}
} else if(global.language==2) {
	draw_text_transformed(270,90,"SELECT MODE",2,2,0)
	switch(selectMode) {
		case 0:
			modeName="Normal"
			break;
		case 1:
			modeName="Hard"
			break;
		case 2:
			modeName="30 Seconds"
			break;
		case 3:
			modeName="30s Hard"
			break;
		case 4:
			modeName="Practice"
			break;
	}
}

//모드 이름
setDraw(fa_middle,fa_center,galmoori)
draw_text_transformed(270,875,modeName,2,2,0)
//모드 설명
setDraw(fa_top,fa_center)
draw_text_ext(270,170,modeDesc[selectMode+5*(global.language-1)],25,500)