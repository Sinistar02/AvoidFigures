/// @description 업적 달성 알림
audio_play_sound(sd_lifeup,100,false)
if(global.language==1){
	notification="업적 달성!"
} else if(global.language==2){
	notification="Achievement\nmade!"
}
alarm[1]=90