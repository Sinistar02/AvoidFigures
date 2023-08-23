/// @description 발사
if(speedMultiplier<1){
	alarm[3]=30
} else {
	phaze=2
	audio_play_sound(sd_laser,1,false)
	direction=point_direction(x,y,obj_aim.x,obj_aim.y)
	instance_destroy(obj_aim)
	instance_destroy(obj_aimline)
	alarm_set(10,-1)
	alarm_set(11,-1)
}