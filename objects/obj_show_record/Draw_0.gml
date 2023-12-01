if(loading==true){
	setDraw(fa_middle,fa_center)
	draw_text(264,378,"기록을 불러오는 중입니다...")
} else {
	//기록 보이기
	setDraw(fa_bottom,fa_left,galmooriSmall)
	var line=0;
	if(global.language==1){
		draw_text_transformed(47,80,"날짜",1.4,1.4,0)
		draw_text_transformed(156,80,"시각",1.4,1.4,0)
		draw_text_transformed(240,80,"버전",1.4,1.4,0)
		draw_text_transformed(322,80,"점수",1.4,1.4,0)
		draw_text_transformed(390,80,"생존시간",1.4,1.4,0)
	} else if(global.language==2) {
		draw_text(47,80,"DATE")
		draw_text(156,80,"TIME")
		draw_text(240,80,"VERSION")
		draw_text(322,80,"SCORE")
		draw_text(397,80,"SURVIVED FOR")
	}
	setDraw(fa_top,fa_left,galmooriSmall)
	for(var i=currentPage*17;i<=17*(currentPage+1)-1;i++){
		var year = string(loadedSaveFile[i][0])
		if(string_length(string(loadedSaveFile[i][0]))>2)
			year = string_delete(year,1,2)
		draw_text_transformed(47,106+line*36,
		year+"."+string(loadedSaveFile[i][1])+"."+string(loadedSaveFile[i][2]),1.4,1.4,0)
		draw_text_transformed(156,106+line*36,string(loadedSaveFile[i][3])+":"+string(loadedSaveFile[i][4]),1.4,1.4,0)
		draw_text_transformed(240,106+line*36,loadedSaveFile[i][7],1.4,1.4,0)
		draw_text_transformed(322,106+line*36,string(loadedSaveFile[i][5]),1.4,1.4,0)
		draw_text_transformed(397,106+line*36,string(getTime("minute",i))+":"+string(getTime("second",i)),1.4,1.4,0)
		line++;
	}
}

if(global.language==1) {
	setDraw(fa_middle,fa_center,galmooriBig)
	draw_text(319,794,"개인 기록")
	setDraw(fa_middle,fa_center,galmoori)
	draw_text_transformed(270,1050,$"페이지 {currentPage+1}/{page+1}",2,2,0)
} else if(global.language==2) {
	setDraw(fa_middle,fa_center,galmooriBig)
	draw_text(319,794,"RECORDS")
	setDraw(fa_middle,fa_center,galmoori)
	draw_text_transformed(270,1050,$"Page {currentPage+1}/{page+1}",2,2,0)
}