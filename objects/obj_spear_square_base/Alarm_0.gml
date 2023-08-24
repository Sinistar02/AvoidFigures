/// @description 발사 준비
tracePlayer=false
if(difficulty<2)
	audio_play_sound(sd_spear_ready,2,false)
var delay = 60-10*difficulty//최대 1초
alarm[1]=delay