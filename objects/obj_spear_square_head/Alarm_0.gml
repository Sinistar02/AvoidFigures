/// @description 발사
if(y>192){
	y-=20*speedMultiplier
	alarm[0]=1
} else {
	y=192
	audio_play_sound(sd_cannon,2,false)
	alarm[1]=20
}