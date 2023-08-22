///@desc 멈추기
if(cycle>0) {
	image_index=0
	originalSpeed=0
	cycle--;
	alarm[1]=30
	show_debug_message("alarm0:"+string(cycle))
}