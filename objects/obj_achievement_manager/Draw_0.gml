if(room==machievement_room){
	//제목과 페이지
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(galmooriBig)
	if(global.language==1) {
		draw_text_transformed(270,90,"업 적",2,2,0)
		draw_set_font(galmoori)
		draw_text_transformed(270,1047,string(currentPage+1)+" 페이지",2,2,0)
	} else if(global.language==2) {
		draw_text_transformed(270,90,"Achievements",2,2,0)
		draw_set_font(galmoori)
		draw_text_transformed(270,1047,"Page "+string(currentPage+1),2,2,0)
	}
	//내용
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	if(currentPage<=1){
		color=c_lime
	} else if(currentPage<=3){
		color=c_yellow
	} else if(currentPage<=5){
		color=c_red
	}
	var num=currentPage*5;
	for(var line=0;line<5;line++){
		setDraw(fa_bottom,fa_left)
		draw_text_color(24,154+line*130,achiTitle[num],color,color,color,color,1)
		setDraw(fa_top,fa_left)
		draw_text_ext_transformed(24,159+line*130,achievements[num],22,424,1.2,1.2,0)
		num++;
	}
}