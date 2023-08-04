if(loading==true){
	draw_set_font(galmoori)
	draw_text(192,256,"기록을 불러오는 중입니다...")
} else {
	//기록 보이기
	draw_set_font(galmooriSmall)
	var line=0;
	draw_text(44+80,67,"날짜")
	draw_text(254,67,"시각")
	draw_text(324,67,"버전")
	draw_text(394,67,"점수")
	draw_text(484,67,"생존시간")
	for(var i=currentPage*16;i<=16*(currentPage+1)-1;i++){
		draw_text_ext(124,106+line*24,string(loadedSaveFile[i][0])+"."+string(loadedSaveFile[i][1])+"."+string(loadedSaveFile[i][2]),1024,16)
		draw_text_ext(254,106+line*24,string(loadedSaveFile[i][3])+":"+string(loadedSaveFile[i][4]),2048,16)
		draw_text_ext(324,106+line*24,loadedSaveFile[i][7],128,16)
		draw_text_ext(394,106+line*24,string(loadedSaveFile[i][5]),1024,16)
		draw_text_ext(484,106+line*24,string(getTime("minute",i))+":"+string(getTime("second",i)+getTime("rest",i)),1024,16)
		line++;
	}
}