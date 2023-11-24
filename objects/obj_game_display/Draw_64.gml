//점수
setDraw(fa_middle,fa_left,galmooriBig)
draw_text_transformed(16,46,ExtendDigit(global.score,6),1,1,0);

//제한시간
draw_sprite_ext(spr_timer_icon,0,280,46,2,2,0,-1,1);
draw_text_transformed(320,46,$"{ExtendDigit(getTime("minute",obj_timer.timer),2)}:{ExtendDigit(getTime("second",obj_timer.timer),2)}",1,1,0);

//체력
if(obj_player.hp<=5) {
	for(var i=0;i<obj_player.hp;i++){
		draw_sprite(spr_heart,0,16+40*i,120)
	}
} else {
	for(var i=0;i<5;i++)
		draw_sprite(spr_heart,0,16+40*i,120)
	draw_sprite(spr_heart,1,216,120)
}
