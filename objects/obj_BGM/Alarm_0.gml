/// @description 노말, 하드 브금
var songSelector=irandom(1)
var songName=0

if(global.gamemode=="normal"){
	if(songSelector==0)
		songName=sd_normal_1
	else if(songSelector==1)
		songName=sd_normal_2
} else if(global.gamemode=="hard"){
	if(songSelector==0)
		songName=sd_hard_1
	else if(songSelector==1)
		songName=sd_hard_2
}
	
var songLength=audio_sound_length(sd_normal_1)*60+240
audio_play_sound(songName,100,false)
alarm[0]=songLength