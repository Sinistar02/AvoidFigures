if(room==achievement_room){
	//제목과 페이지
	draw_set_halign(fa_middle)
	draw_set_valign(fa_middle)
	draw_set_font(galmooriBig)
	if(global.language==1) {
		draw_text(372,50,"업  적")
		draw_set_font(galmoori)
		draw_text(638,44,string(currentPage+1)+" 페이지")
	} else if(global.language==2) {
		draw_text(372,50,"Achievements")
		draw_set_font(galmoori)
		draw_text(638,44,"Page "+string(currentPage+1))
	}
	//내용
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	if(currentPage==0){
		color=c_lime
	} else if(currentPage==1){
		color=c_yellow
	} else if(currentPage==2){
		color=c_red
	}
	var num=currentPage*10;
	for(var col=0;col<2;col++){
		for(var line=0;line<5;line++){
			draw_text_transformed_color(16+col*376,93+line*72,achiTitle[num],0.8,0.8,0,color,color,color,color,1)
			draw_text_ext(16+col*376,110+line*72,achievements[num],22,304)
			num++;
		}
	}
}