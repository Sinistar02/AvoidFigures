if(canDraw==true){
	if(room==game_over){
		draw_sprite_ext(spr_balloon,0,-8,208+animY,0.8,0.8,0,balloonColor,1)
		draw_set_font(galmoori)
		draw_text_ext(48,248+animY,text[textToShow],26,232)
	} else if(room==game_30s_survived) {
		draw_sprite_ext(spr_balloon,1,0,192+animY,0.8,0.8,0,balloonColor,1)
		draw_set_font(galmoori)
		draw_text_ext(67,360+animY,text[textToShow],26,212)
	}
}