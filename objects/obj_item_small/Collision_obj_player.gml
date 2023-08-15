event_inherited()
if(obj_player.image_xscale==1) {
	alarm[1]=1
	alarm_set(0,-1)
	speed=0
	x=999
	y=999
} else {
	alarm_set(0,1)
}