/// @description 저장 상태 표시
draw_set_font(galmooriSmall)
if(room==game_over)
	draw_text_color(672,390,saveNotif,notifColor,notifColor,notifColor,notifColor,1)
else if(room==game_30s_survived)
	draw_text_color(656,406,saveNotif,notifColor,notifColor,notifColor,notifColor,1)