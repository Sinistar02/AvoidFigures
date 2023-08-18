/// @description 점멸 빠르기
audio_play_sound(sd_crystal_beep,2,false,volume)
if(imageChangeInterval>6){
	image_index++;
	imageChangeInterval-=4;
	alarm[0]=imageChangeInterval
} else {
	volume=0.6
	image_index++;
	alarm[0]=6
}