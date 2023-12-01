if(room==mpractice_room){
	setDraw(fa_middle,fa_center,galmooriBig)
	if(global.language==1) {
		draw_text(300,772,"연습 모드")
		draw_text_transformed(270,90,description[0],2,2,0)
	} else if(global.language==2) {
		draw_text(300,772,"PRACTICE MODE")
		draw_text_transformed(270,90,description[0],1.5,1.5,0)
	}
	setDraw(fa_top,fa_center,galmoori)
	draw_text_ext(270,185,description[1],25,500)
	setDraw(fa_middle,fa_center,galmoori)
	if(global.language==1)
		draw_text_transformed(270,896,$"{currentPage+1} 페이지",2,2,0)
	else if(global.language==2)
		draw_text_transformed(270,896,$"Page {currentPage+1}",2,2,0)
} else {
	global.practiceTimer++;
}