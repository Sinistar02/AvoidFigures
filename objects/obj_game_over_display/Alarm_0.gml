phase++
if(phase==3) {
	instance_create_depth(0,0,0,obj_balloon)
	instance_create_depth(78,895,3,obj_retry,{image_xscale:2,image_yscale:2})
	instance_create_depth(78,1053,3,obj_achievement_button,{image_xscale:2,image_yscale:2})
	instance_create_depth(174,1053,3,obj_end)
	instance_create_depth(398,1053,3,obj_save_record_button)
} else {
	alarm[0]=25
}
show_debug_message(phase)