if(room==practice_room){
	draw_sprite_ext(spr_prac_title,global.language-1,138,16,0.8,0.8,0,c_white,1)
	draw_set_font(galmooriBig)
	draw_text_ext(464,252,description[0],45,280)
	draw_set_font(galmoori)
	draw_text_ext(40,264,description[1],26,384)
} else {
	draw_set_font(galmoori)
	draw_text_ext(552,192,exitDesc,22,180)
	global.practiceTimer++;
}
