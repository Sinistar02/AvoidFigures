///@desc 멈추기
if(cycle>0) {
	image_index=0
	originalSpeed=0
	audio_play_sound(sd_chase_stop,2,false)
	cycle--;
	alarm[1]=30-difficulty*10
}