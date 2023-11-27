setDraw(fa_middle,fa_center,galmooriBig)
if(phase>=0) {
	if((global.gamemode=="30s normal" or global.gamemode=="30s hard") and global.survivedTime==1800)
		draw_text_transformed(270,90,display[global.language-1][3],2,2,0)
	else
		draw_text_transformed(270,90,display[global.language-1][0],2,2,0)
}

//총 점수
setDraw(fa_top,fa_center,galmoori)
if(phase>=1) {
	draw_text_transformed(270,150,display[global.language-1][1],2,2,0)
	draw_text_transformed(270,210,global.score,1.5,1.5,0)
}
//생존 시간
if(phase>=2) {
	draw_text_transformed(270,280,display[global.language-1][2],2,2,0)
	draw_text_transformed(270,340,$"{ExtendDigit(getTime("minute",global.survivedTime),2)}:{ExtendDigit(getTime("second",global.survivedTime,0),2)}",1.5,1.5,0)
}

if(phase==3) {
	setDraw(fa_top,fa_center)
	if(room==mgame_over) {
		draw_sprite(spr_char_fail_cg,0,256,528)
	} else if(room==m30s_survived) {
		draw_sprite(spr_char_succ_cg,0,256,528)
	}
}