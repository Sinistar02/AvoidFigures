/// @description 폭발 경고
if(warningFlash==10){//폭발로 넘어감
	image_index=2
	audio_play_sound(sd_explosion,2,false)
	alarm[1]=12
} else {//폭발
	alarm[0]=4
	image_index=warningFlash mod 2
	warningFlash++;
}