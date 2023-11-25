//점수
setDraw(fa_middle,fa_left,galmooriBig)
draw_text_transformed(16,50,ExtendDigit(global.score,6),1,1,0);

//제한시간
var t = obj_timer.timer
if(t<=600)
	timerColor=c_red
else
	timerColor=c_white
draw_sprite_ext(spr_timer_icon,0,280,50,2,2,0,timerColor,1);
draw_text_transformed_color(320,50,$"{ExtendDigit(getTime("minute",t),2)}:{ExtendDigit(getTime("second",t),2)}",
1,1,0,timerColor,timerColor,timerColor,timerColor,1);

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

//게임 시간, 타이머