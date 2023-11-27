setDraw(fa_middle,fa_center)
if(room==mgame_over){
	draw_sprite(spr_balloon,0,64,464+animY)
	draw_text_ext_color(270,550+animY,text[textToShow],27,280,c_lime,c_lime,c_lime,c_lime,1)
} else if(room==m30s_survived) {
	draw_sprite(spr_balloon,0,64,416+animY)
	draw_text_ext_color(270,502+animY,text[textToShow],27,280,c_lime,c_lime,c_lime,c_lime,1)
}