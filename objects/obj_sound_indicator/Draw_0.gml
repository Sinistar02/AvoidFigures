draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(galmooriSmall)
if(global.language==1) {
	if(whichSound==1)
		draw_text(687,349,"BGM")
	else if(whichSound==2)
		draw_text(735,349,"효과음")
} else if(global.language==2) {
	if(whichSound==1)
		draw_text(687,349,"BGM")
	else if(whichSound==2)
		draw_text(735,349,"SFX")
}
draw_set_halign(fa_left)
draw_set_valign(fa_top)